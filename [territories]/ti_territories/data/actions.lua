local Actions = {
    money = {      
        produce = { 
            label    = "Produire de l'argent sale",
            position = vector4(1117.84,-3199.14,-40.385,190.0),
            offset   = vector3(4.7,1.0,0),
            time     = 45000,

            requiredItems = {
                {
                    name = "dirty_money_sheets",
                    count = 5,
                    remove = 5,
                    chance = 100
                }
            },

            rewardItems = {   
                {
                    name = "dirty_money_sheets",
                    count = 5,
                    chance = 100
                }       
            },

            ad   = "anim@amb@business@cfm@cfm_cut_sheets@",
            anim = "extended_load_tune_cut_billcutter",

            props = {   
                {
                    model = `bkr_prop_fakeid_papercutter`,
                    anim = "extended_load_tune_cut_papercutter",
                }, 
                {
                    model = `bkr_prop_cutter_moneypage`,
                    anim = "extended_load_tune_cut_singlemoneypage",
                }, 
                {
                    model = `bkr_prop_cutter_moneypage`,
                    anim = "extended_load_tune_cut_singlemoneypage^1",
                }, 
                {
                    model = `bkr_prop_cutter_moneypage`,
                    anim = "extended_load_tune_cut_singlemoneypage^2",
                }, 
                {
                    model = `bkr_prop_fakeid_table`,
                    anim = "extended_load_tune_cut_table",
                }, 
                {
                    model = `bkr_prop_cutter_moneystack_01a`,
                    anim = "extended_load_tune_cut_moneystack",
                }, 
                {
                    model = `bkr_prop_cutter_moneystrip`,
                    anim = "extended_load_tune_cut_singlemoneystrip",
                }, 
                {
                    model = `bkr_prop_cutter_moneystrip`,
                    anim = "extended_load_tune_cut_singlemoneystrip^1",
                }, 
                {
                    model = `bkr_prop_cutter_moneystrip`,
                    anim = "extended_load_tune_cut_singlemoneystrip^2",
                },
                {
                    model = `bkr_prop_cutter_moneystrip`,
                    anim = "extended_load_tune_cut_singlemoneystrip^3",
                }, 
                {
                    model = `bkr_prop_cutter_moneystrip`,
                    anim = "extended_load_tune_cut_singlemoneystrip^4",
                }, 
                {
                    model = `bkr_prop_cutter_singlestack_01a`,
                    anim = "extended_load_tune_cut_singlestack",
                },
            },
        },

        package = { 
            label    = "Emballer l'argent sale",
            position = vector4(1116.0,-3196.0,-40.40,91.75),
            time     = 22000,

            requiredItems = {    
                {
                    name = "dirty_money_sheets",
                    count = 1,
                    remove = 1,
                    chance = 100
                }      
            },

            rewardAccounts = {        
                {
                    name = "black_money",
                    count = 100,
                    chance = 100,
                }
            },

            ad   = "anim@amb@business@cfm@cfm_counting_notes@",
            anim = "note_counting_v2_counter",

            props = {   
                {
                    model = `bkr_prop_coke_tin_01`,
                    anim = "note_counting_v2_binmoney",
                }, 
                {
                    model = `bkr_prop_tin_cash_01a`,
                    anim = "note_counting_v2_moneybin",
                }, 
                {
                    model = `bkr_prop_money_unsorted_01`,
                    anim = "note_counting_v2_moneyunsorted",
                }, 
                {
                    model = `bkr_prop_money_unsorted_01`,
                    anim = "note_counting_v2_moneyunsorted^1",
                }, 
                {
                    model = `bkr_prop_money_wrapped_01`,
                    anim = "note_counting_v2_moneywrap",
                }, 
                {
                    model = `bkr_prop_money_wrapped_01`,
                    anim = "note_counting_v2_moneywrap^1",
                },
            },
        }, 

        clean = {
            label    = "Blanchir l'argent sale",
            position = vector4(1122.40,-3194.63,-40.39,65.0),
            time     = 11000,

            requiredAccounts = {
                {
                    name = "black_money",
                    count = 100,
                    remove = 100,
                    chance = 100,
                }
            },

            rewardAccounts = {                
                {
                    name = "cash",
                    count = 75,
                    chance = 100,
                }
            },

            ad   = "anim@amb@business@cfm@cfm_drying_notes@",
            anim = "loading_v1_worker",

            props = {   
                {
                    model = `bkr_prop_money_pokerbucket`,
                    anim = "loading_v1_bucket",
                }, 
                {
                    model = `bkr_prop_money_unsorted_01`,
                    anim = "loading_v1_money01",
                }, 
                {
                    model = `bkr_prop_money_unsorted_01`,
                    anim = "loading_v1_money01^1",
                },
            },
        }
    },

    weed = {
        gather = {
            label    = "Récolter la weed pure",
            position = vector4(1057.77,-3196.76,-39.13,0.0),
            time     = 14000,

            rewardItems = {        
                {
                    name = "untrimmed_weed",
                    count = 5,
                    chance = 50,
                }
            },

            ad   = "anim@amb@business@weed@weed_inspecting_lo_med_hi@",
            anim = "weed_spraybottle_crouch_spraying_02_inspector",

            props = {
                {
                    model = `bkr_prop_weed_spray_01a`,
                    anim = "weed_spraybottle_crouch_spraying_02_spraybottle",
                    ignoreLocal = true,
                }
            },
        },

        trim = {
            label    = "Couper la weed pure", 
            position = vector4(1038.4,-3206.6,-38.16,90.0),
            time     = 30000,

            requiredItems = {       
                {
                    name = "untrimmed_weed",
                    count = 5,
                    remove = 5,
                    chance = 100,
                } 
            },

            rewardItems = {        
                {
                    name = "weed_packaged", 
                    count = 5,
                    chance = 100,
                }
            },

            ad   = "anim@amb@business@weed@weed_sorting_seated@",
            anim = "sorter_right_sort_v3_sorter02",

            props = {   
                {
                    model = `bkr_prop_weed_dry_01a`,
                    anim = "sorter_right_sort_v3_weeddry01a",
                }, 
                {
                    model = `bkr_prop_weed_dry_01a`,
                    anim = "sorter_right_sort_v3_weeddry01a^1",
                }, 
                {
                    model = `bkr_prop_weed_leaf_01a`,
                    anim = "sorter_right_sort_v3_weedleaf01a",
                }, 
                {
                    model = `bkr_prop_weed_leaf_01a`,
                    anim = "sorter_right_sort_v3_weedleaf01a^1",
                }, 
                {
                    model = `bkr_prop_weed_bag_01a`,
                    anim = "sorter_right_sort_v3_weedbag01a",
                }, 
                {
                    model = `bkr_prop_weed_bud_02b`,
                    anim = "sorter_right_sort_v3_weedbud02b",
                },
                {
                    model = `bkr_prop_weed_bud_02b`,
                    anim = "sorter_right_sort_v3_weedbud02b^1",
                },
                {
                    model = `bkr_prop_weed_bud_02b`,
                    anim = "sorter_right_sort_v3_weedbud02b^2",
                },
                {
                    model = `bkr_prop_weed_bud_02b`,
                    anim = "sorter_right_sort_v3_weedbud02b^3",
                },
                {
                    model = `bkr_prop_weed_bud_02b`,
                    anim = "sorter_right_sort_v3_weedbud02b^4",
                },
                {
                    model = `bkr_prop_weed_bud_02b`,
                    anim = "sorter_right_sort_v3_weedbud02b^5",
                }, 
                {
                    model = `bkr_prop_weed_bud_02a`,
                    anim = "sorter_right_sort_v3_weedbud02a",
                },
                {
                    model = `bkr_prop_weed_bud_02a`,
                    anim = "sorter_right_sort_v3_weedbud02a^1",
                },
                {
                    model = `bkr_prop_weed_bud_02a`,
                    anim = "sorter_right_sort_v3_weedbud02a^2",
                },
                {
                    model = `bkr_prop_weed_bag_pile_01a`,
                    anim = "sorter_right_sort_v3_weedbagpile01a",
                },
                {
                    model = `bkr_prop_weed_bucket_open_01a`,
                    anim = "sorter_right_sort_v3_bucket01a",
                },
                {
                    model = `bkr_prop_weed_bucket_open_01a`,
                    anim = "sorter_right_sort_v3_bucket01a^1",
                },
            },
        }
    },

    meth = {
        cook = { 
            label    = "Cuisiner la meth pure",
            position = vector4(1005.80,-3200.5,-38.52,181.61),
            time     = 73000,

            requiredItems = {
            },

            rewardItems = {
                {
                    name = "raw_meth",
                    count = 5,
                    chance = 50,
                }
            },

            ad   = "anim@amb@business@meth@meth_monitoring_cooking@cooking@",
            anim = "chemical_pour_short_cooker",

            props = {
                {
                    model = `bkr_prop_meth_ammonia`,
                    anim = "chemical_pour_short_ammonia",
                },
                {
                    model = `bkr_prop_fakeid_clipboard_01a`,
                    anim = "chemical_pour_short_clipboard",
                },
                {
                    model = `bkr_prop_fakeid_penclipboard`,
                    anim = "chemical_pour_short_pencil",
                },
                {
                    model = `bkr_prop_meth_sacid`,
                    anim = "chemical_pour_short_sacid",
                }
            },
        }, 

        process = {
            label    = "Traitement de la meth pure",
            position = vector4(1011.80,-3194.90,-38.99,0.0),
            time     = 51000,

            requiredItems = {
                {
                    name = "raw_meth",
                    count = 5,
                    remove = 5,
                    chance = 100,
                }
            },

            rewardItems = {
                {
                    name = "processed_meth",
                    count = 5,
                    chance = 100,
                }
            },

            ad   = "anim@amb@business@meth@meth_smash_weight_check@",
            anim = "break_weigh_v3_char01",

            props = {
                {
                    model = `bkr_prop_meth_bigbag_04a`,
                    anim = "break_weigh_v3_box01",
                },
                {
                    model = `bkr_prop_meth_bigbag_03a`,
                    anim = "break_weigh_v3_box01^1",
                },
                {
                    model = `bkr_prop_fakeid_clipboard_01a`,
                    anim = "break_weigh_v3_clipboard",
                },
                {
                    model = `bkr_prop_meth_openbag_02`,
                    anim = "break_weigh_v3_methbag01",
                },
                {
                    model = `bkr_prop_meth_openbag_02`,
                    anim = "break_weigh_v3_methbag01^1",
                },
                {
                    model = `bkr_prop_meth_openbag_02`,
                    anim = "break_weigh_v3_methbag01^2",
                },
                {
                    model = `bkr_prop_meth_openbag_02`,
                    anim = "break_weigh_v3_methbag01^3",
                },
                {
                    model = `bkr_prop_meth_openbag_02`,
                    anim = "break_weigh_v3_methbag01^4",
                },
                {
                    model = `bkr_prop_meth_openbag_02`,
                    anim = "break_weigh_v3_methbag01^5",
                },
                {
                    model = `bkr_prop_meth_openbag_02`,
                    anim = "break_weigh_v3_methbag01^6",
                },
                {
                    model = `bkr_prop_fakeid_penclipboard`,
                    anim = "break_weigh_v3_pen",
                },
                {
                    model = `bkr_prop_coke_scale_01`,
                    anim = "break_weigh_v3_scale",
                },
                {
                    model = `bkr_prop_meth_scoop_01a`,
                    anim = "break_weigh_v3_scoop",
                    ignoreLocal = true,
                }
            }
        },
    },

    cocaine = {
        gather = { 
            label    = "Récolter la cocaïne pure",
            position = vector4(1093.25,-3194.75,-38.99,184.47),
            time     = 25000,

            rewardItems = {
                {
                    name = "raw_cocaine",
                    count = 5,
                    chance = 50,
                }
            },

            ad   = "anim@amb@business@coc@coc_unpack_cut_left@",
            anim = "coke_cut_v5_coccutter",

            props = {
                {
                    model = `bkr_prop_coke_bakingsoda_o`,
                    anim = 'coke_cut_v5_bakingsoda',
                },
                {
                    model = `prop_cs_credit_card`,
                    anim = 'coke_cut_v5_creditcard',
                    ignoreLocal = true,
                },
                {
                    model = `prop_cs_credit_card`,
                    anim = 'coke_cut_v5_creditcard^1',
                    ignoreLocal = true,
                }
            },
        }, 

        package = {
            label    = "Emballer la cocaïne pure",
            position = vector4(1101.245,-3198.74,-38.99,181.82),
            time     = 59000,

            requiredItems = {
                {
                    name = "raw_cocaine",
                    count = 5,
                    remove = 5,
                    chance = 100,
                }
            },

            rewardItems = {
                {
                    name = "packaged_cocaine",
                    count = 5,
                    chance = 100,
                }
            },

            ad   = "anim@amb@business@coc@coc_packing_hi@",
            anim = "full_cycle_v3_pressoperator",

            props = {
                {
                    model = `bkr_prop_coke_fullscoop_01a`,
                    anim = 'full_cycle_v3_scoop',
                },
                {
                    model = `bkr_prop_coke_dollboxfolded`,
                    anim = 'full_cycle_v3_FoldedBox',
                },
                {
                    model = `bkr_prop_coke_dollmould`,
                    anim = 'full_cycle_v3_dollmould',
                },
                {
                    model = `bkr_prop_coke_dollCast`,
                    anim = 'full_cycle_v3_dollcast',
                },
                {
                    model = `bkr_prop_coke_dollCast`,
                    anim = 'full_cycle_v3_dollCast^1',
                },
                {
                    model = `bkr_prop_coke_dollCast`,
                    anim = 'full_cycle_v3_dollCast^2',
                },
                {
                    model = `bkr_prop_coke_dollCast`,
                    anim = 'full_cycle_v3_dollCast^3',
                },
                {
                    model = `bkr_prop_coke_press_01b`,
                    anim = 'full_cycle_v3_cokePress',
                },
                {
                    model = `bkr_prop_coke_doll`,
                    anim = 'full_cycle_v3_cocdoll',
                },
                {
                    model = `bkr_prop_coke_fullmetalbowl_02`,
                    anim = 'full_cycle_v3_cocbowl',
                },
                {
                    model = `bkr_prop_coke_boxedDoll`,
                    anim = 'full_cycle_v3_boxedDoll',
                }
            },
        }
    },
}

_ENV.Actions = Actions