--============ Copyright (c) Valve Corporation, All rights reserved. ==========
--
-- source1import auto-generated animation script
-- local changes will be overwritten if source1import if run again on this asset
--
-- mdl: models\heroes\enigma\eidelon.mdl
--
--=============================================================================


-- AsLookLayer
model:CreateSequence(
	{
		name = "@eidelon_turns_lookFrame_0",
		snap = true,
		delta = true,
		hidden = true,
		cmds = {
			{ cmd = "fetchframe", sequence = "@eidelon_turns", frame = 0, dst = 0 },
			{ cmd = "fetchframe", sequence = "@eidelon_turns", frame = 1, dst = 1 },
			{ cmd = "subtract", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "@eidelon_turns_lookFrame_1",
		snap = true,
		delta = true,
		hidden = true,
		cmds = {
			{ cmd = "fetchframe", sequence = "@eidelon_turns", frame = 1, dst = 0 },
			{ cmd = "fetchframe", sequence = "@eidelon_turns", frame = 1, dst = 1 },
			{ cmd = "subtract", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "@eidelon_turns_lookFrame_2",
		snap = true,
		delta = true,
		hidden = true,
		cmds = {
			{ cmd = "fetchframe", sequence = "@eidelon_turns", frame = 2, dst = 0 },
			{ cmd = "fetchframe", sequence = "@eidelon_turns", frame = 1, dst = 1 },
			{ cmd = "subtract", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "eidelon_turns",
		delta = true,
		poseParamX = model:CreatePoseParameter( "TURN", -1, 1, 0, false ),
		sequences = {
			{ "@eidelon_turns_lookFrame_0", "@eidelon_turns_lookFrame_1", "@eidelon_turns_lookFrame_2" }
		}
	}
)


model:CreateSequence(
	{
		name = "eidelon_run",
		sequences = {
			{ "@eidelon_run" }
		},
		addlayer = {
			"eidelon_turns"
		},
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 }
		}
	}
)
