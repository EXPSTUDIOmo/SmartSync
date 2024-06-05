{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 9.0, 131.0, 1353.0, 756.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 324.0, 103.0, 50.0, 22.0 ],
					"text" : "play 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 0,
					"patching_rect" : [ 241.0, 445.0, 115.0, 22.0 ],
					"text" : "dac~ 1 2 3 4 5 6 7 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 447.0, 156.0, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 447.0, 124.0, 61.0, 22.0 ],
					"text" : "route play"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 369.0, 151.0, 36.0, 22.0 ],
					"text" : "route"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 442.0, 477.0, 134.0, 22.0 ],
					"text" : "mc.dac~ 1 2 3 4 5 6 7 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"lastchannelcount" : 8,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 442.0, 323.0, 150.0, 129.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "mc.live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"channelcount" : 8,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "SSD-Sys:/Users/swrexperimentalstudio/Documents/GitHub/SmartSync/public/Samples/SS_ForestAtmo.wav",
								"filename" : "SS_ForestAtmo.wav",
								"filekind" : "audiofile",
								"id" : "u457003554",
								"loop" : 0,
								"content_state" : 								{

								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-60",
					"maxclass" : "mc.playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 4,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "multichannelsignal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 442.0, 264.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"channels" : 8,
					"id" : "obj-58",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 8,
					"numoutlets" : 11,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 241.0, 286.0, 124.0, 133.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 241.0, 196.0, 49.0, 22.0 ],
					"text" : "note $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 241.0, 226.0, 124.0, 22.0 ],
					"text" : "poly~ mo.ssPlayer 16"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 582.0, 5.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 582.0, 42.0, 55.0, 22.0 ],
					"text" : "mode $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 638.0, 68.0, 79.0, 22.0 ],
					"text" : "route running"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 513.0, 42.0, 63.0, 22.0 ],
					"text" : "script stop"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-4",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "n4m.monitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 698.0, 103.0, 400.0, 220.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 447.0, 42.0, 64.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 447.0, 90.0, 111.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"watch" : 0
					}
,
					"text" : "node.script index.js"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 1 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"order" : 1,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 7 ],
					"source" : [ "obj-55", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 6 ],
					"source" : [ "obj-55", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 5 ],
					"source" : [ "obj-55", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 4 ],
					"source" : [ "obj-55", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 3 ],
					"source" : [ "obj-55", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 2 ],
					"source" : [ "obj-55", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 1 ],
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 7 ],
					"source" : [ "obj-58", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 6 ],
					"source" : [ "obj-58", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 5 ],
					"source" : [ "obj-58", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 4 ],
					"source" : [ "obj-58", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 3 ],
					"source" : [ "obj-58", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 2 ],
					"source" : [ "obj-58", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 1 ],
					"source" : [ "obj-58", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-8", 1 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-55.10::obj-15::obj-128" : [ "Rotation[8]", "Rotation", 0 ],
			"obj-55.10::obj-15::obj-143" : [ "X-Axis[8]", "X-Axis", 0 ],
			"obj-55.10::obj-15::obj-27" : [ "SpeakerPositions[8]", "SpeakerPos", 0 ],
			"obj-55.10::obj-15::obj-3" : [ "Smooth[8]", "Smooth", 0 ],
			"obj-55.10::obj-15::obj-37" : [ "Focus[8]", "Focus", 0 ],
			"obj-55.10::obj-15::obj-38" : [ "Y-Axis[8]", "Y-Axis", 0 ],
			"obj-55.10::obj-15::obj-6" : [ "Center[8]", "Center", 0 ],
			"obj-55.11::obj-15::obj-128" : [ "Rotation[9]", "Rotation", 0 ],
			"obj-55.11::obj-15::obj-143" : [ "X-Axis[9]", "X-Axis", 0 ],
			"obj-55.11::obj-15::obj-27" : [ "SpeakerPositions[9]", "SpeakerPos", 0 ],
			"obj-55.11::obj-15::obj-3" : [ "Smooth[9]", "Smooth", 0 ],
			"obj-55.11::obj-15::obj-37" : [ "Focus[9]", "Focus", 0 ],
			"obj-55.11::obj-15::obj-38" : [ "Y-Axis[9]", "Y-Axis", 0 ],
			"obj-55.11::obj-15::obj-6" : [ "Center[9]", "Center", 0 ],
			"obj-55.12::obj-15::obj-128" : [ "Rotation[10]", "Rotation", 0 ],
			"obj-55.12::obj-15::obj-143" : [ "X-Axis[10]", "X-Axis", 0 ],
			"obj-55.12::obj-15::obj-27" : [ "SpeakerPositions[10]", "SpeakerPos", 0 ],
			"obj-55.12::obj-15::obj-3" : [ "Smooth[10]", "Smooth", 0 ],
			"obj-55.12::obj-15::obj-37" : [ "Focus[10]", "Focus", 0 ],
			"obj-55.12::obj-15::obj-38" : [ "Y-Axis[10]", "Y-Axis", 0 ],
			"obj-55.12::obj-15::obj-6" : [ "Center[10]", "Center", 0 ],
			"obj-55.13::obj-15::obj-128" : [ "Rotation[11]", "Rotation", 0 ],
			"obj-55.13::obj-15::obj-143" : [ "X-Axis[11]", "X-Axis", 0 ],
			"obj-55.13::obj-15::obj-27" : [ "SpeakerPositions[11]", "SpeakerPos", 0 ],
			"obj-55.13::obj-15::obj-3" : [ "Smooth[11]", "Smooth", 0 ],
			"obj-55.13::obj-15::obj-37" : [ "Focus[11]", "Focus", 0 ],
			"obj-55.13::obj-15::obj-38" : [ "Y-Axis[11]", "Y-Axis", 0 ],
			"obj-55.13::obj-15::obj-6" : [ "Center[11]", "Center", 0 ],
			"obj-55.14::obj-15::obj-128" : [ "Rotation[12]", "Rotation", 0 ],
			"obj-55.14::obj-15::obj-143" : [ "X-Axis[12]", "X-Axis", 0 ],
			"obj-55.14::obj-15::obj-27" : [ "SpeakerPositions[12]", "SpeakerPos", 0 ],
			"obj-55.14::obj-15::obj-3" : [ "Smooth[12]", "Smooth", 0 ],
			"obj-55.14::obj-15::obj-37" : [ "Focus[12]", "Focus", 0 ],
			"obj-55.14::obj-15::obj-38" : [ "Y-Axis[12]", "Y-Axis", 0 ],
			"obj-55.14::obj-15::obj-6" : [ "Center[12]", "Center", 0 ],
			"obj-55.15::obj-15::obj-128" : [ "Rotation[13]", "Rotation", 0 ],
			"obj-55.15::obj-15::obj-143" : [ "X-Axis[13]", "X-Axis", 0 ],
			"obj-55.15::obj-15::obj-27" : [ "SpeakerPositions[13]", "SpeakerPos", 0 ],
			"obj-55.15::obj-15::obj-3" : [ "Smooth[13]", "Smooth", 0 ],
			"obj-55.15::obj-15::obj-37" : [ "Focus[13]", "Focus", 0 ],
			"obj-55.15::obj-15::obj-38" : [ "Y-Axis[13]", "Y-Axis", 0 ],
			"obj-55.15::obj-15::obj-6" : [ "Center[13]", "Center", 0 ],
			"obj-55.16::obj-15::obj-128" : [ "Rotation[14]", "Rotation", 0 ],
			"obj-55.16::obj-15::obj-143" : [ "X-Axis[14]", "X-Axis", 0 ],
			"obj-55.16::obj-15::obj-27" : [ "SpeakerPositions[14]", "SpeakerPos", 0 ],
			"obj-55.16::obj-15::obj-3" : [ "Smooth[14]", "Smooth", 0 ],
			"obj-55.16::obj-15::obj-37" : [ "Focus[14]", "Focus", 0 ],
			"obj-55.16::obj-15::obj-38" : [ "Y-Axis[14]", "Y-Axis", 0 ],
			"obj-55.16::obj-15::obj-6" : [ "Center[14]", "Center", 0 ],
			"obj-55.1::obj-15::obj-128" : [ "Rotation[15]", "Rotation", 0 ],
			"obj-55.1::obj-15::obj-143" : [ "X-Axis[15]", "X-Axis", 0 ],
			"obj-55.1::obj-15::obj-27" : [ "SpeakerPositions[15]", "SpeakerPos", 0 ],
			"obj-55.1::obj-15::obj-3" : [ "Smooth[15]", "Smooth", 0 ],
			"obj-55.1::obj-15::obj-37" : [ "Focus[15]", "Focus", 0 ],
			"obj-55.1::obj-15::obj-38" : [ "Y-Axis[15]", "Y-Axis", 0 ],
			"obj-55.1::obj-15::obj-6" : [ "Center[15]", "Center", 0 ],
			"obj-55.2::obj-15::obj-128" : [ "Rotation", "Rotation", 0 ],
			"obj-55.2::obj-15::obj-143" : [ "X-Axis", "X-Axis", 0 ],
			"obj-55.2::obj-15::obj-27" : [ "SpeakerPositions", "SpeakerPos", 0 ],
			"obj-55.2::obj-15::obj-3" : [ "Smooth", "Smooth", 0 ],
			"obj-55.2::obj-15::obj-37" : [ "Focus", "Focus", 0 ],
			"obj-55.2::obj-15::obj-38" : [ "Y-Axis", "Y-Axis", 0 ],
			"obj-55.2::obj-15::obj-6" : [ "Center", "Center", 0 ],
			"obj-55.3::obj-15::obj-128" : [ "Rotation[1]", "Rotation", 0 ],
			"obj-55.3::obj-15::obj-143" : [ "X-Axis[1]", "X-Axis", 0 ],
			"obj-55.3::obj-15::obj-27" : [ "SpeakerPositions[1]", "SpeakerPos", 0 ],
			"obj-55.3::obj-15::obj-3" : [ "Smooth[1]", "Smooth", 0 ],
			"obj-55.3::obj-15::obj-37" : [ "Focus[1]", "Focus", 0 ],
			"obj-55.3::obj-15::obj-38" : [ "Y-Axis[1]", "Y-Axis", 0 ],
			"obj-55.3::obj-15::obj-6" : [ "Center[1]", "Center", 0 ],
			"obj-55.4::obj-15::obj-128" : [ "Rotation[2]", "Rotation", 0 ],
			"obj-55.4::obj-15::obj-143" : [ "X-Axis[2]", "X-Axis", 0 ],
			"obj-55.4::obj-15::obj-27" : [ "SpeakerPositions[2]", "SpeakerPos", 0 ],
			"obj-55.4::obj-15::obj-3" : [ "Smooth[2]", "Smooth", 0 ],
			"obj-55.4::obj-15::obj-37" : [ "Focus[2]", "Focus", 0 ],
			"obj-55.4::obj-15::obj-38" : [ "Y-Axis[2]", "Y-Axis", 0 ],
			"obj-55.4::obj-15::obj-6" : [ "Center[2]", "Center", 0 ],
			"obj-55.5::obj-15::obj-128" : [ "Rotation[3]", "Rotation", 0 ],
			"obj-55.5::obj-15::obj-143" : [ "X-Axis[3]", "X-Axis", 0 ],
			"obj-55.5::obj-15::obj-27" : [ "SpeakerPositions[3]", "SpeakerPos", 0 ],
			"obj-55.5::obj-15::obj-3" : [ "Smooth[3]", "Smooth", 0 ],
			"obj-55.5::obj-15::obj-37" : [ "Focus[3]", "Focus", 0 ],
			"obj-55.5::obj-15::obj-38" : [ "Y-Axis[3]", "Y-Axis", 0 ],
			"obj-55.5::obj-15::obj-6" : [ "Center[3]", "Center", 0 ],
			"obj-55.6::obj-15::obj-128" : [ "Rotation[4]", "Rotation", 0 ],
			"obj-55.6::obj-15::obj-143" : [ "X-Axis[4]", "X-Axis", 0 ],
			"obj-55.6::obj-15::obj-27" : [ "SpeakerPositions[4]", "SpeakerPos", 0 ],
			"obj-55.6::obj-15::obj-3" : [ "Smooth[4]", "Smooth", 0 ],
			"obj-55.6::obj-15::obj-37" : [ "Focus[4]", "Focus", 0 ],
			"obj-55.6::obj-15::obj-38" : [ "Y-Axis[4]", "Y-Axis", 0 ],
			"obj-55.6::obj-15::obj-6" : [ "Center[4]", "Center", 0 ],
			"obj-55.7::obj-15::obj-128" : [ "Rotation[5]", "Rotation", 0 ],
			"obj-55.7::obj-15::obj-143" : [ "X-Axis[5]", "X-Axis", 0 ],
			"obj-55.7::obj-15::obj-27" : [ "SpeakerPositions[5]", "SpeakerPos", 0 ],
			"obj-55.7::obj-15::obj-3" : [ "Smooth[5]", "Smooth", 0 ],
			"obj-55.7::obj-15::obj-37" : [ "Focus[5]", "Focus", 0 ],
			"obj-55.7::obj-15::obj-38" : [ "Y-Axis[5]", "Y-Axis", 0 ],
			"obj-55.7::obj-15::obj-6" : [ "Center[5]", "Center", 0 ],
			"obj-55.8::obj-15::obj-128" : [ "Rotation[6]", "Rotation", 0 ],
			"obj-55.8::obj-15::obj-143" : [ "X-Axis[6]", "X-Axis", 0 ],
			"obj-55.8::obj-15::obj-27" : [ "SpeakerPositions[6]", "SpeakerPos", 0 ],
			"obj-55.8::obj-15::obj-3" : [ "Smooth[6]", "Smooth", 0 ],
			"obj-55.8::obj-15::obj-37" : [ "Focus[6]", "Focus", 0 ],
			"obj-55.8::obj-15::obj-38" : [ "Y-Axis[6]", "Y-Axis", 0 ],
			"obj-55.8::obj-15::obj-6" : [ "Center[6]", "Center", 0 ],
			"obj-55.9::obj-15::obj-128" : [ "Rotation[7]", "Rotation", 0 ],
			"obj-55.9::obj-15::obj-143" : [ "X-Axis[7]", "X-Axis", 0 ],
			"obj-55.9::obj-15::obj-27" : [ "SpeakerPositions[7]", "SpeakerPos", 0 ],
			"obj-55.9::obj-15::obj-3" : [ "Smooth[7]", "Smooth", 0 ],
			"obj-55.9::obj-15::obj-37" : [ "Focus[7]", "Focus", 0 ],
			"obj-55.9::obj-15::obj-38" : [ "Y-Axis[7]", "Y-Axis", 0 ],
			"obj-55.9::obj-15::obj-6" : [ "Center[7]", "Center", 0 ],
			"obj-58" : [ "live.gain~", "live.gain~", 0 ],
			"obj-62" : [ "mc.live.gain~", "mc.live.gain~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"parameter_overrides" : 			{
				"obj-55.10::obj-15::obj-128" : 				{
					"parameter_longname" : "Rotation[8]"
				}
,
				"obj-55.10::obj-15::obj-143" : 				{
					"parameter_longname" : "X-Axis[8]"
				}
,
				"obj-55.10::obj-15::obj-27" : 				{
					"parameter_longname" : "SpeakerPositions[8]"
				}
,
				"obj-55.10::obj-15::obj-3" : 				{
					"parameter_longname" : "Smooth[8]"
				}
,
				"obj-55.10::obj-15::obj-37" : 				{
					"parameter_longname" : "Focus[8]"
				}
,
				"obj-55.10::obj-15::obj-38" : 				{
					"parameter_longname" : "Y-Axis[8]"
				}
,
				"obj-55.10::obj-15::obj-6" : 				{
					"parameter_longname" : "Center[8]"
				}
,
				"obj-55.11::obj-15::obj-128" : 				{
					"parameter_longname" : "Rotation[9]"
				}
,
				"obj-55.11::obj-15::obj-143" : 				{
					"parameter_longname" : "X-Axis[9]"
				}
,
				"obj-55.11::obj-15::obj-27" : 				{
					"parameter_longname" : "SpeakerPositions[9]"
				}
,
				"obj-55.11::obj-15::obj-3" : 				{
					"parameter_longname" : "Smooth[9]"
				}
,
				"obj-55.11::obj-15::obj-37" : 				{
					"parameter_longname" : "Focus[9]"
				}
,
				"obj-55.11::obj-15::obj-38" : 				{
					"parameter_longname" : "Y-Axis[9]"
				}
,
				"obj-55.11::obj-15::obj-6" : 				{
					"parameter_longname" : "Center[9]"
				}
,
				"obj-55.12::obj-15::obj-128" : 				{
					"parameter_longname" : "Rotation[10]"
				}
,
				"obj-55.12::obj-15::obj-143" : 				{
					"parameter_longname" : "X-Axis[10]"
				}
,
				"obj-55.12::obj-15::obj-27" : 				{
					"parameter_longname" : "SpeakerPositions[10]"
				}
,
				"obj-55.12::obj-15::obj-3" : 				{
					"parameter_longname" : "Smooth[10]"
				}
,
				"obj-55.12::obj-15::obj-37" : 				{
					"parameter_longname" : "Focus[10]"
				}
,
				"obj-55.12::obj-15::obj-38" : 				{
					"parameter_longname" : "Y-Axis[10]"
				}
,
				"obj-55.12::obj-15::obj-6" : 				{
					"parameter_longname" : "Center[10]"
				}
,
				"obj-55.13::obj-15::obj-128" : 				{
					"parameter_longname" : "Rotation[11]"
				}
,
				"obj-55.13::obj-15::obj-143" : 				{
					"parameter_longname" : "X-Axis[11]"
				}
,
				"obj-55.13::obj-15::obj-27" : 				{
					"parameter_longname" : "SpeakerPositions[11]"
				}
,
				"obj-55.13::obj-15::obj-3" : 				{
					"parameter_longname" : "Smooth[11]"
				}
,
				"obj-55.13::obj-15::obj-37" : 				{
					"parameter_longname" : "Focus[11]"
				}
,
				"obj-55.13::obj-15::obj-38" : 				{
					"parameter_longname" : "Y-Axis[11]"
				}
,
				"obj-55.13::obj-15::obj-6" : 				{
					"parameter_longname" : "Center[11]"
				}
,
				"obj-55.14::obj-15::obj-128" : 				{
					"parameter_longname" : "Rotation[12]"
				}
,
				"obj-55.14::obj-15::obj-143" : 				{
					"parameter_longname" : "X-Axis[12]"
				}
,
				"obj-55.14::obj-15::obj-27" : 				{
					"parameter_longname" : "SpeakerPositions[12]"
				}
,
				"obj-55.14::obj-15::obj-3" : 				{
					"parameter_longname" : "Smooth[12]"
				}
,
				"obj-55.14::obj-15::obj-37" : 				{
					"parameter_longname" : "Focus[12]"
				}
,
				"obj-55.14::obj-15::obj-38" : 				{
					"parameter_longname" : "Y-Axis[12]"
				}
,
				"obj-55.14::obj-15::obj-6" : 				{
					"parameter_longname" : "Center[12]"
				}
,
				"obj-55.15::obj-15::obj-128" : 				{
					"parameter_longname" : "Rotation[13]"
				}
,
				"obj-55.15::obj-15::obj-143" : 				{
					"parameter_longname" : "X-Axis[13]"
				}
,
				"obj-55.15::obj-15::obj-27" : 				{
					"parameter_longname" : "SpeakerPositions[13]"
				}
,
				"obj-55.15::obj-15::obj-3" : 				{
					"parameter_longname" : "Smooth[13]"
				}
,
				"obj-55.15::obj-15::obj-37" : 				{
					"parameter_longname" : "Focus[13]"
				}
,
				"obj-55.15::obj-15::obj-38" : 				{
					"parameter_longname" : "Y-Axis[13]"
				}
,
				"obj-55.15::obj-15::obj-6" : 				{
					"parameter_longname" : "Center[13]"
				}
,
				"obj-55.16::obj-15::obj-128" : 				{
					"parameter_longname" : "Rotation[14]"
				}
,
				"obj-55.16::obj-15::obj-143" : 				{
					"parameter_longname" : "X-Axis[14]"
				}
,
				"obj-55.16::obj-15::obj-27" : 				{
					"parameter_longname" : "SpeakerPositions[14]"
				}
,
				"obj-55.16::obj-15::obj-3" : 				{
					"parameter_longname" : "Smooth[14]"
				}
,
				"obj-55.16::obj-15::obj-37" : 				{
					"parameter_longname" : "Focus[14]"
				}
,
				"obj-55.16::obj-15::obj-38" : 				{
					"parameter_longname" : "Y-Axis[14]"
				}
,
				"obj-55.16::obj-15::obj-6" : 				{
					"parameter_longname" : "Center[14]"
				}
,
				"obj-55.1::obj-15::obj-128" : 				{
					"parameter_longname" : "Rotation[15]"
				}
,
				"obj-55.1::obj-15::obj-143" : 				{
					"parameter_longname" : "X-Axis[15]"
				}
,
				"obj-55.1::obj-15::obj-27" : 				{
					"parameter_longname" : "SpeakerPositions[15]"
				}
,
				"obj-55.1::obj-15::obj-3" : 				{
					"parameter_longname" : "Smooth[15]"
				}
,
				"obj-55.1::obj-15::obj-37" : 				{
					"parameter_longname" : "Focus[15]"
				}
,
				"obj-55.1::obj-15::obj-38" : 				{
					"parameter_longname" : "Y-Axis[15]"
				}
,
				"obj-55.1::obj-15::obj-6" : 				{
					"parameter_longname" : "Center[15]"
				}
,
				"obj-55.3::obj-15::obj-128" : 				{
					"parameter_longname" : "Rotation[1]"
				}
,
				"obj-55.3::obj-15::obj-143" : 				{
					"parameter_longname" : "X-Axis[1]"
				}
,
				"obj-55.3::obj-15::obj-27" : 				{
					"parameter_longname" : "SpeakerPositions[1]"
				}
,
				"obj-55.3::obj-15::obj-3" : 				{
					"parameter_longname" : "Smooth[1]"
				}
,
				"obj-55.3::obj-15::obj-37" : 				{
					"parameter_longname" : "Focus[1]"
				}
,
				"obj-55.3::obj-15::obj-38" : 				{
					"parameter_longname" : "Y-Axis[1]"
				}
,
				"obj-55.3::obj-15::obj-6" : 				{
					"parameter_longname" : "Center[1]"
				}
,
				"obj-55.4::obj-15::obj-128" : 				{
					"parameter_longname" : "Rotation[2]"
				}
,
				"obj-55.4::obj-15::obj-143" : 				{
					"parameter_longname" : "X-Axis[2]"
				}
,
				"obj-55.4::obj-15::obj-27" : 				{
					"parameter_longname" : "SpeakerPositions[2]"
				}
,
				"obj-55.4::obj-15::obj-3" : 				{
					"parameter_longname" : "Smooth[2]"
				}
,
				"obj-55.4::obj-15::obj-37" : 				{
					"parameter_longname" : "Focus[2]"
				}
,
				"obj-55.4::obj-15::obj-38" : 				{
					"parameter_longname" : "Y-Axis[2]"
				}
,
				"obj-55.4::obj-15::obj-6" : 				{
					"parameter_longname" : "Center[2]"
				}
,
				"obj-55.5::obj-15::obj-128" : 				{
					"parameter_longname" : "Rotation[3]"
				}
,
				"obj-55.5::obj-15::obj-143" : 				{
					"parameter_longname" : "X-Axis[3]"
				}
,
				"obj-55.5::obj-15::obj-27" : 				{
					"parameter_longname" : "SpeakerPositions[3]"
				}
,
				"obj-55.5::obj-15::obj-3" : 				{
					"parameter_longname" : "Smooth[3]"
				}
,
				"obj-55.5::obj-15::obj-37" : 				{
					"parameter_longname" : "Focus[3]"
				}
,
				"obj-55.5::obj-15::obj-38" : 				{
					"parameter_longname" : "Y-Axis[3]"
				}
,
				"obj-55.5::obj-15::obj-6" : 				{
					"parameter_longname" : "Center[3]"
				}
,
				"obj-55.6::obj-15::obj-128" : 				{
					"parameter_longname" : "Rotation[4]"
				}
,
				"obj-55.6::obj-15::obj-143" : 				{
					"parameter_longname" : "X-Axis[4]"
				}
,
				"obj-55.6::obj-15::obj-27" : 				{
					"parameter_longname" : "SpeakerPositions[4]"
				}
,
				"obj-55.6::obj-15::obj-3" : 				{
					"parameter_longname" : "Smooth[4]"
				}
,
				"obj-55.6::obj-15::obj-37" : 				{
					"parameter_longname" : "Focus[4]"
				}
,
				"obj-55.6::obj-15::obj-38" : 				{
					"parameter_longname" : "Y-Axis[4]"
				}
,
				"obj-55.6::obj-15::obj-6" : 				{
					"parameter_longname" : "Center[4]"
				}
,
				"obj-55.7::obj-15::obj-128" : 				{
					"parameter_longname" : "Rotation[5]"
				}
,
				"obj-55.7::obj-15::obj-143" : 				{
					"parameter_longname" : "X-Axis[5]"
				}
,
				"obj-55.7::obj-15::obj-27" : 				{
					"parameter_longname" : "SpeakerPositions[5]"
				}
,
				"obj-55.7::obj-15::obj-3" : 				{
					"parameter_longname" : "Smooth[5]"
				}
,
				"obj-55.7::obj-15::obj-37" : 				{
					"parameter_longname" : "Focus[5]"
				}
,
				"obj-55.7::obj-15::obj-38" : 				{
					"parameter_longname" : "Y-Axis[5]"
				}
,
				"obj-55.7::obj-15::obj-6" : 				{
					"parameter_longname" : "Center[5]"
				}
,
				"obj-55.8::obj-15::obj-128" : 				{
					"parameter_longname" : "Rotation[6]"
				}
,
				"obj-55.8::obj-15::obj-143" : 				{
					"parameter_longname" : "X-Axis[6]"
				}
,
				"obj-55.8::obj-15::obj-27" : 				{
					"parameter_longname" : "SpeakerPositions[6]"
				}
,
				"obj-55.8::obj-15::obj-3" : 				{
					"parameter_longname" : "Smooth[6]"
				}
,
				"obj-55.8::obj-15::obj-37" : 				{
					"parameter_longname" : "Focus[6]"
				}
,
				"obj-55.8::obj-15::obj-38" : 				{
					"parameter_longname" : "Y-Axis[6]"
				}
,
				"obj-55.8::obj-15::obj-6" : 				{
					"parameter_longname" : "Center[6]"
				}
,
				"obj-55.9::obj-15::obj-128" : 				{
					"parameter_longname" : "Rotation[7]"
				}
,
				"obj-55.9::obj-15::obj-143" : 				{
					"parameter_longname" : "X-Axis[7]"
				}
,
				"obj-55.9::obj-15::obj-27" : 				{
					"parameter_longname" : "SpeakerPositions[7]"
				}
,
				"obj-55.9::obj-15::obj-3" : 				{
					"parameter_longname" : "Smooth[7]"
				}
,
				"obj-55.9::obj-15::obj-37" : 				{
					"parameter_longname" : "Focus[7]"
				}
,
				"obj-55.9::obj-15::obj-38" : 				{
					"parameter_longname" : "Y-Axis[7]"
				}
,
				"obj-55.9::obj-15::obj-6" : 				{
					"parameter_longname" : "Center[7]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "SSW1.mp3",
				"bootpath" : "~/Documents/GitHub/SmartSync/public/Samples/work",
				"patcherrelativepath" : "./public/Samples/work",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "SSW2.mp3",
				"bootpath" : "~/Documents/GitHub/SmartSync/public/Samples/work",
				"patcherrelativepath" : "./public/Samples/work",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "SSW3.mp3",
				"bootpath" : "~/Documents/GitHub/SmartSync/public/Samples/work",
				"patcherrelativepath" : "./public/Samples/work",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "SSW4.mp3",
				"bootpath" : "~/Documents/GitHub/SmartSync/public/Samples/work",
				"patcherrelativepath" : "./public/Samples/work",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "SSW5.mp3",
				"bootpath" : "~/Documents/GitHub/SmartSync/public/Samples/work",
				"patcherrelativepath" : "./public/Samples/work",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "SSW6.mp3",
				"bootpath" : "~/Documents/GitHub/SmartSync/public/Samples/work",
				"patcherrelativepath" : "./public/Samples/work",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "SSW7.mp3",
				"bootpath" : "~/Documents/GitHub/SmartSync/public/Samples/work",
				"patcherrelativepath" : "./public/Samples/work",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "SSW8.mp3",
				"bootpath" : "~/Documents/GitHub/SmartSync/public/Samples/work",
				"patcherrelativepath" : "./public/Samples/work",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "SSW9.mp3",
				"bootpath" : "~/Documents/GitHub/SmartSync/public/Samples/work",
				"patcherrelativepath" : "./public/Samples/work",
				"type" : "Mp3",
				"implicit" : 1
			}
, 			{
				"name" : "SS_ForestAtmo.wav",
				"bootpath" : "~/Documents/GitHub/SmartSync/public/Samples",
				"patcherrelativepath" : "./public/Samples",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "fit_jweb_to_bounds.js",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "index.js",
				"bootpath" : "~/Documents/GitHub/SmartSync",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "mo.SurroundPanner.maxpat",
				"bootpath" : "~/Documents/GitHub/SmartSync",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mo.ssPlayer.maxpat",
				"bootpath" : "~/Documents/GitHub/SmartSync",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "speakers.js",
				"bootpath" : "~/Documents/GitHub/SmartSync",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "xypad.js",
				"bootpath" : "~/Documents/GitHub/SmartSync",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
