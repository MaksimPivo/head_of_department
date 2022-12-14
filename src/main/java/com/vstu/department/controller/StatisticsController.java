package com.vstu.department.controller;

import java.util.List;

import org.apache.logging.log4j.util.Strings;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.vstu.department.dto.statistics.GeneralEmployeStatisticsDTO;
import com.vstu.department.dto.statistics.StatisticsDTO;
import com.vstu.department.model.enums.ParameterGroupType;
import com.vstu.department.service.StatisticsService;
import com.vstu.department.util.UtilService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/statistics")
public class StatisticsController {

    private final StatisticsService statisticsService;

    @GetMapping
    @PreAuthorize("hasAnyRole('DEP_HEAD', 'VICE-RECTOR', 'DEAN')")
    public StatisticsDTO get(@RequestParam int type, @RequestParam String halfYear,
            @RequestParam(required = false) String department) {
        String tabelHead = (String) UtilService.getFieldFromAuthentificationDetails("tabel");
        if (tabelHead.startsWith(UtilService.getDefaultViceRectorPrefix())
                && Strings.isNotEmpty(department) /** && department.length() > 3 */
        ) {
            tabelHead = department;
        }
        return statisticsService.getEmployeeParameterStats(tabelHead, ParameterGroupType.getByIndex(type), halfYear);
    }

    @GetMapping("/general")
    @PreAuthorize("hasAnyRole('DEP_HEAD', 'VICE-RECTOR')")
    public List<GeneralEmployeStatisticsDTO> getGeneralStatistics(@RequestParam String halfYear,
            @RequestParam(required = false) String department) {

        String tabelHead = (String) UtilService.getFieldFromAuthentificationDetails("tabel");
        if (tabelHead.startsWith(UtilService.getDefaultViceRectorPrefix())) {
            tabelHead = Strings.isEmpty(department) ? UtilService.getDefaultViceRectorPrefix() : department;
        }
        return statisticsService.getEmployeeGeneralStatistics(tabelHead, halfYear);
    }
}
