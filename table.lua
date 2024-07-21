--[[

        Hi, this is Kai I was the only one who worked on the script due to Finobe being busy working on some other projects so if you see any flaws in the script open a ticket and ping me ( Please don't open a ticket and tell me it doesn't tap ).

        Serenity offers automatic checks, an Anti Aim Viewer, and a Lag-free experience; we support every executor.

        We also don't print a single thing so the script is streamable ( unless you're using ESP of course ).

        Furthermore, the script also supports various playstyles, for example, Kodas and hvh.

        .gg/serenitycc

--]]

--[[
       Update Log 01 | 21/07/2024

       [+] Improved Triggerbot
       [+] Added Closest Point
       [+] Added Closest Point Divide Factor
       [+] Added Raycast Visible Checks
       [+] Added Predicted dot
       [+] Changed table structure
       [+] Fixed No Ground Shots?
       [+] Fixed Esp 
       [+] Added FoV Threading
       [+] Added Silent Aim Support for trigger bot
       [+] Made it so Line and Box only works when the circle mode is on ( this is for when the box for type gets released )
--]]

getgenv().Serenity = {
    ['Start Up'] = {
        ['Key System'] = ("ur key here"),
        ['Watermark'] = false,
        ['Unlock Fps'] = true,
        ['Wait Till Loaded'] = true,
        ['General Threading'] = ("RenderStepped"), -- Stepped, RenderStepped, Heartbeat
        ['Notifications'] = { ['Enabled'] = false, ['Accent'] = Color3.new(1, 1, 1) },
    },
    --
    ['Camlock'] = {
        ['Enabled'] = true,
        ['Threading'] = ("RenderStepped"), -- Stepped, RenderStepped, Heartbeat
        ['Mode'] = ("Lerp"), -- Lerp or Bezier ( only Lerp got smoothness as of now )
        ['Stutter'] = { ['Enabled'] = false, ['Value'] = 0.0001, },
        ['Toggle Key'] = "C",
        ['Smoothness'] = 0.033,
        ['Sensitivity'] = 1.2,
        ['Advanced Properties'] = {
            ['Hit Part'] = {
                ['Part'] = ("HumanoidRootPart"),
                ['Mode'] = ("ClosestPoint"), -- Hvh or ClosestPart Or ClosestPoint Or None
                ['Closest Point'] = {
                    ['Divided Factor'] = 2,
                }
            },
        },
        ['FoV'] = {
            ['Config'] = {
                ['FoV Enabled'] = true, -- true/false
                ['FoV Type'] = ("Circle"), 
                ['Circle Size Factor'] = 1,
            },
            ['FoV Circle'] = {
                ['Show'] = false,
                ['Fill'] = true,
                ['Size'] = 90,
                ['Color'] = Color3.new(0.545098, 0.909803, 1),
                ['Transparency'] = 0.5,
            },
        }
    },
    --
    ['Silent Aim'] = {
        ['Enabled'] = true,
        ['Toggle Key'] = ("L"),
        ['Sticky Aim'] = false,
        ['Sync Camlock'] = false, -- Must have Sticky Aim enabled and Camlock enabled
        ['No Ground Shots'] = true,
        ['Box'] = { ['Enabled'] = false, ['Accent'] = Color3.new(1, 1, 1), ['Size'] = 3500 }, -- Must have FOV Main Enabled
        ['Line'] = { ['Enabled'] = false, ['Accent'] = Color3.new(0.898039, 1, 0) }, -- Must have FOV Main Enabled
        ['Prediction'] = { 
            ['Static Value'] = 0.182, 
            ['Auto Prediction'] = true, 
        },	
        ['Advanced Properties'] = {
            ['Raycast Visible Check'] = true,
            ['Hit Part'] = {
                ['Part'] = ("HumanoidRootPart"),
                ['Mode'] = ("ClosestPoint"), -- Hvh or ClosestPart Or ClosestPoint Or None
                ['Closest Point'] = {
                    ['Divided Factor'] = 2,
                }
            },
        },
        ['FoV'] = {
            ['Config'] = {
                ['FoV Enabled'] = true, -- true/false
                ['FoV Type'] = ("Circle"), -- [ BOX COMING SOON ]
                ['Circle Size Factor'] = 1,
            },
            ['FoV Circle'] = {
                ['Show'] = false,
                ['Fill'] = true,
                ['Size'] = 90,
                ['Color'] = Color3.new(0.545098, 0.909803, 1),
                ['Transparency'] = 0.5,
            },
            ['FoV Box'] = {
                ['Show'] = false,
                ['Fill'] = true,
                ['Size'] = 1500,
                ['Color'] = Color3.new(0.545098, 0.909803, 1),
                ['Transparency'] = 0.5,
            }
        }
    },
    --
    ['Triggerbot'] = {
        ['Enabled'] = false,
        ['Threading'] = ("RenderStepped"), -- Stepped, RenderStepped, Heartbeat
        ['Mode'] = ("Solara"), -- Solara or Wave ( MUST SPELL IT CORRECTLY OR IT'LL THROW AN ERROR )
        ['Type'] = ("Silent Aim"), -- Silent Aim (Meaning whenever the player is in your Silent Fov it'll start clicking) or Single 
        ['Toggle Key'] = "C", -- Ensure this is a string representation of the key
        ['Prediction'] = { ['Static Value'] = 0.122, ['Auto Prediction'] = true },
        ['Delay'] = 0.01,
    },
    --
    ['Desync Aim'] = {
        ['Enabled'] = true,
        ['Threading'] = ("RenderStepped"), -- Stepped, RenderStepped, Heartbeat
        ['Mode'] = ("Freeze Pos"), -- Sky, Underground, CFrame, Freeze Pos
        ['Toggle Key'] = ("N"),
        ['Predicted Dot'] = {
            ['Enabled'] = true,
            ['Prediction'] = 0.13,
            ['Accent'] = Color3.new(0.898039, 1, 0),
            ['Radius'] = 10,
        },
    },
    --
    ['Color'] = { -- Colors don't work in all games for some reason ( particularly Literal Baseplate )
        ['Enabled'] = true,
        ['Brightness'] = 0.12,
        ['Contrast'] = 0.06,
        ['Saturation'] = 0.9,
    },
    --
    ['ESP'] = {
        ['Enabled'] = false,
        ['MaxDistance'] = 200,
        ['FontSize'] = 11,
        ['FadeOut'] = {
            ['OnDistance'] = false,
            ['OnDeath'] = false,
            ['OnLeave'] = false,
        },
        ['Options'] = {
            ['Teamcheck'] = false, TeamcheckRGB = Color3.fromRGB(0, 255, 0),
            ['Friendcheck'] = false, FriendcheckRGB = Color3.fromRGB(0, 255, 0),
            ['Highlight'] = false, HighlightRGB = Color3.fromRGB(255, 0, 0),
        },
        ['Drawing'] = {
            ['Chams'] = {
                ['Enabled']  = false,
                ['Thermal'] = false,
                ['FillRGB'] = Color3.fromRGB(119, 120, 255),
                ['Fill_Transparency'] = 100,
                ['OutlineRGB'] = Color3.fromRGB(119, 120, 255),
                ['Outline_Transparency'] = 100,
                ['VisibleCheck'] = true,
            },
            ['Names'] = {
                ['Enabled'] = false,
                ['RGB'] = Color3.fromRGB(255, 255, 255),
            },
            ['Flags'] = {
                ['Enabled'] = true,
            },
            ['Distances'] = {
                ['Enabled'] = false,
                ['Position'] = ("Text"),
                ['RGB'] = Color3.fromRGB(255, 255, 255),
            },
            ['Weapons'] = {
                ['Enabled'] = false, WeaponTextRGB = Color3.fromRGB(119, 120, 255),
                ['Outlined'] = false,
                ['Gradient'] = false,
                ['GradientRGB1'] = Color3.fromRGB(255, 255, 255), GradientRGB2 = Color3.fromRGB(119, 120, 255),
            },
            ['Healthbar'] = {
                ['Enabled'] = true,
                ['HealthText'] = false, Lerp = false, HealthTextRGB = Color3.fromRGB(119, 120, 255),
                ['Width'] = 2.5,
                ['Gradient'] = false, GradientRGB1 = Color3.fromRGB(200, 0, 0), GradientRGB2 = Color3.fromRGB(60, 60, 125), GradientRGB3 = Color3.fromRGB(119, 120, 255),
            },
            ['Boxes'] = {
                ['Animate'] = false,
                ['RotationSpeed'] = 300,
                ['Gradient'] = false, GradientRGB1 =Color3.new(0.898039, 1, 0), GradientRGB2 = Color3.fromRGB(0, 0, 0),
                ['GradientFill'] = false, GradientFillRGB1 = Color3.new(0.898039, 1, 0), GradientFillRGB2 = Color3.fromRGB(0, 0, 0),
                ['Filled'] = {
                    ['Enabled'] = false,
                    ['Transparency'] = 0.75,
                    ['RGB'] = Color3.fromRGB(0, 0, 0),
                },
                ['Full'] = {
                    ['Enabled'] = false,
                    ['RGB'] = Color3.fromRGB(255, 255, 255),
                },
                ['Corner'] = {
                    ['Enabled'] = false,
                    ['RGB'] = Color3.fromRGB(255, 255, 255),
                },
            },
        },
        ['Connections'] = {
            ['RunService'] = game:GetService("RunService")
        },
        ['Fonts'] = {},
    }
}

-- // Table Checker // --
local Table = getgenv().Serenity
if not Table then
    error("Serenity:configuration is missing.")
end

if not Table['Start Up'] then
    error("'Start Up' configuration is missing in Serenity:")
end

if not Table['Camlock'] then
    error("'Camlock' configuration is missing in Serenity:")
end

if not Table['Silent Aim'] then
    error("'Silent Aim' configuration is missing in Serenity:")
end

if not Table['ESP'] then
    error("'ESP' configuration is missing in Serenity:")
end
