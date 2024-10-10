-- Pillbox hospital: 307.1680, -590.807, 43.280
exports('GetPillboxHospitalObject', function()
    return PillboxHospital
end)

PillboxHospital = {
    ipl = "rc12b_default",

    State = {
        default = "rc12b_default",
        fixed = "rc12b_fixed",
        destroyed = {
            "rc12b_destroyed",
            "rc12b_hospitalinterior"
        },

        Set = function(state)
            PillboxHospital.State.Clear()

            EnableIpl(state, true)
        end,
        Clear = function()
            EnableIpl({
                PillboxHospital.State.default,
                PillboxHospital.State.fixed,
                PillboxHospital.State.destroyed
            }, false)
        end
    },

    -- Kept for backwards compatibility
    Enable = function(state)
        PillboxHospital.State.Clear()

        EnableIpl(PillboxHospital.ipl, state)
    end,

    LoadDefault = function()
        PillboxHospital.State.Set(PillboxHospital.State.default)
    end
}
