### DO NOT EDIT THIS FILE
### This file is auto-generated by the Dyad command-line compiler.
### If you edit this code it is likely to get overwritten.
### Instead, update the Dyad source code and regenerate this file


using DyadInterface

using DyadControlSystems: AbstractPIDAutotuningAnalysisSpec, PIDAutotuningAnalysisSpec
@kwdef mutable struct ActiveSuspensionPIDAutotuningAnalysisSpec <: AbstractPIDAutotuningAnalysisSpec
  name::Symbol = :ActiveSuspensionPIDAutotuningAnalysis
  var"measurement"::String = "y"
  var"control_input"::String = "u"
  var"step_input"::String = "u"
  var"step_output"::String = "y"
  var"ref"::Float64 = 0
  var"Ts"::Float64 = 0.01
  var"duration"::Float64 = 10
  var"Ms"::Float64 = 1.2
  var"Mt"::Float64 = 1.1
  var"Mks"::Float64 = 30000
  var"disc"::String = "tustin"
  var"kp_lb"::Float64 = 0
  var"ki_lb"::Float64 = 2000
  var"kd_lb"::Float64 = 0
  var"Tf_lb"::Float64 = 1e-16
  var"kp_ub"::Float64 = 1e+300
  var"ki_ub"::Float64 = 1e+300
  var"kd_ub"::Float64 = 1e+300
  var"Tf_ub"::Float64 = 1e+300
  var"kp_guess"::Float64 = -1
  var"ki_guess"::Float64 = -1
  var"kd_guess"::Float64 = -1
  var"Tf_guess"::Float64 = -1
  var"timeweight"::Bool = false
  var"filter_order"::Int64 = 2
  var"optimize_d"::Bool = false
  var"wl"::Float64 = 0.01
  var"wu"::Float64 = 1000
  var"num_frequencies"::Int64 = 200
  var"model"::Union{Nothing, ODESystem} = ActiveSuspension(; name=:ActiveSuspension)
end

function DyadInterface.run_analysis(spec::ActiveSuspensionPIDAutotuningAnalysisSpec)
  spec.model = DyadInterface.update_model(spec.model, (; ))
  base_spec = PIDAutotuningAnalysisSpec(;
    name=:PIDAutotuningAnalysis, measurement=spec.measurement, control_input=spec.control_input, step_input=spec.step_input, step_output=spec.step_output, ref=spec.ref, Ts=spec.Ts, duration=spec.duration, Ms=spec.Ms, Mt=spec.Mt, Mks=spec.Mks, disc=spec.disc, kp_lb=spec.kp_lb, ki_lb=spec.ki_lb, kd_lb=spec.kd_lb, Tf_lb=spec.Tf_lb, kp_ub=spec.kp_ub, ki_ub=spec.ki_ub, kd_ub=spec.kd_ub, Tf_ub=spec.Tf_ub, kp_guess=spec.kp_guess, ki_guess=spec.ki_guess, kd_guess=spec.kd_guess, Tf_guess=spec.Tf_guess, timeweight=spec.timeweight, filter_order=spec.filter_order, optimize_d=spec.optimize_d, wl=spec.wl, wu=spec.wu, num_frequencies=spec.num_frequencies, model=spec.model
  )
  run_analysis(base_spec)
end

ActiveSuspensionPIDAutotuningAnalysis(;kwargs...) = run_analysis(ActiveSuspensionPIDAutotuningAnalysisSpec(;kwargs...))
export ActiveSuspensionPIDAutotuningAnalysis, ActiveSuspensionPIDAutotuningAnalysisSpec
export ActiveSuspensionPIDAutotuningAnalysisSpec, ActiveSuspensionPIDAutotuningAnalysis
