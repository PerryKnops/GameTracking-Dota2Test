--============ Copyright (c) Valve Corporation, All rights reserved. ==========
--
-- source1import auto-generated animation script
-- local changes will be overwritten if source1import if run again on this asset
--
-- qc:  models/items/death_prophet/exorcism/burial_robes_spirit/burial_robes_spirit.qc
-- mdl: items/death_prophet/exorcism/burial_robes_spirit/burial_robes_spirit.mdl
--
--=============================================================================

model:CreateSequence(
	{
		name = "exorcism_turn_center",
		delta = true,
		fadeInTime = 0,
		fadeOutTime = 0,
		fps = 30,
		framerangesequence = "burial_robes_spirit_anim_turnposecenter.dmx",
		cmds = {
			{ cmd = "sequence", sequence = "burial_robes_spirit_anim_turnposecenter.dmx", dst = 1 },
			{ cmd = "fetchframe", sequence = "center_pose", frame = 0, dst = 2 },
			{ cmd = "subtract", dst = 1, src = 2 },
			{ cmd = "slerp", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "exorcism_turn_left",
		delta = true,
		fadeInTime = 0,
		fadeOutTime = 0,
		fps = 30,
		cmds = {
			{ cmd = "fetchframe", sequence = "burial_robes_spirit_anim_turnposeleft.dmx", frame = 0, dst = 1 },
			{ cmd = "fetchframe", sequence = "center_pose", frame = 0, dst = 2 },
			{ cmd = "subtract", dst = 1, src = 2 },
			{ cmd = "slerp", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "exorcism_turn_right",
		delta = true,
		fadeInTime = 0,
		fadeOutTime = 0,
		fps = 30,
		cmds = {
			{ cmd = "fetchframe", sequence = "burial_robes_spirit_anim_turnposeright.dmx", frame = 0, dst = 1 },
			{ cmd = "fetchframe", sequence = "center_pose", frame = 0, dst = 2 },
			{ cmd = "subtract", dst = 1, src = 2 },
			{ cmd = "slerp", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "exorcism_turns",
		delta = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		poseParamX = model:CreatePoseParameter( "turn", -1, 1, 0, false ),
		sequences = {
			{ "exorcism_turn_left", "exorcism_turn_center", "exorcism_turn_right" }
		}
	}
)


model:CreateSequence(
	{
		name = "exorcism_run_alt",
		looping = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		sequences = {
			{ "@exorcism_run_alt" }
		},
		addlayer = { "exorcism_turns" },
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 }
		}
	}
)


model:CreateSequence(
	{
		name = "exorcism_run",
		looping = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		sequences = {
			{ "@exorcism_run" }
		},
		addlayer = { "exorcism_turns" },
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 }
		}
	}
)

