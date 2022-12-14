package com.vstu.department.model;

import javax.persistence.AttributeOverride;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.vstu.department.model.enums.AnketaParameterStatusType;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Entity
@RequiredArgsConstructor
@Table(name = "emp_param")
@AttributeOverride(name = "id", column = @Column(name = "emp_param_id"))
public class EmployeeParameter extends PersistentEntity {

    @ManyToOne
    @JoinColumn(name = "a_id")
    private Anketa anketa;

    @ManyToOne
    @JoinColumn(name = "p_id")
    private Parameter parameter;

    @NotNull
    @Column(name = "emp_status")
    private AnketaParameterStatusType status;

    @NotNull
    @Column(name = "emp_count")
    private Double count;

    @NotNull
    @Column(name = "emp_coefficient")
    private Double coefficient;
}
