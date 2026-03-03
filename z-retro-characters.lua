if not retroCharAPI then return end

SMB_PINK = retroCharAPI.SMB_PINK
SMB_RED = retroCharAPI.SMB_RED
SMB_WHITE = retroCharAPI.SMB_WHITE
SMB_OFFWHITE = retroCharAPI.SMB_OFFWHITE

function setup_retro_sprites()
    retroCharAPI.add_cs_character_sprites(CT_TOADETTE, get_texture_info("toadette_0"), get_texture_info("toadette_1"))
    retroCharAPI.add_cs_character_sprites(CT_PEACH, get_texture_info("peach_0"), get_texture_info("peach_1"))
    retroCharAPI.add_cs_character_sprites(CT_DAISY, get_texture_info("daisy_0"), get_texture_info("daisy_1"))
    retroCharAPI.add_cs_character_sprites(CT_YOSHI, get_texture_info("yoshi_0"), get_texture_info("yoshi_1"))
    retroCharAPI.add_cs_character_sprites(CT_BIRDO, get_texture_info("birdo_0"), get_texture_info("birdo_1"))
    retroCharAPI.add_cs_character_sprites(CT_SPIKE, get_texture_info("spike_0"), get_texture_info("spike_1"))
    retroCharAPI.add_cs_character_sprites(CT_ROSALINA, get_texture_info("rosalina_0"), get_texture_info("rosalina_1"))
    retroCharAPI.add_cs_character_sprites(CT_PAULINE, get_texture_info("pauline_0"), get_texture_info("pauline_1"))
    retroCharAPI.add_cs_character_sprites(CT_WAPEACH, get_texture_info("wapeach_0"), get_texture_info("wapeach_1"))
    retroCharAPI.add_cs_character_sprites(CT_DONKEY_KONG, get_texture_info("dk_0"), get_texture_info("dk_1"), 32, 16, 5, 32, 32, 3)
    retroCharAPI.add_cs_character_sprites(CT_SONIC, get_texture_info("sonic_0"), get_texture_info("sonic_1"))
    retroCharAPI.add_cs_character_palette(CT_PEACH, {SKIN, HAIR, SHIRT}, {SKIN, HAIR, SMB_PINK}, 1, 2)
    retroCharAPI.add_cs_character_palette(CT_DAISY, {SKIN, HAIR, SHIRT}, {SKIN, HAIR, SMB_RED}, 1, 2)
    retroCharAPI.add_cs_character_palette(CT_YOSHI, {GLOVES, HAIR, CAP}, {GLOVES, SMB_OFFWHITE, HAIR}, 1, 2)
    retroCharAPI.add_cs_character_palette(CT_BIRDO, {GLOVES, HAIR, CAP}, {GLOVES, CAP, SMB_RED}, 1, 2)
    retroCharAPI.add_cs_character_palette(CT_SPIKE, {SKIN, PANTS, HAIR}, {SKIN, HAIR, SMB_RED}, 1, 2)
    retroCharAPI.add_cs_character_palette(CT_ROSALINA, {SKIN, SHIRT, HAIR}, {SKIN, SMB_WHITE, SHIRT}, 1, 3)
    retroCharAPI.add_cs_character_palette(CT_PAULINE, {SKIN, CAP, HAIR}, {SKIN, SMB_RED, CAP}, 1, 3)
    retroCharAPI.add_cs_character_palette(CT_WAPEACH, {SKIN, SHIRT, HAIR}, {SKIN, SMB_RED, HAIR}, 1, 3)
    retroCharAPI.add_cs_character_palette(CT_DONKEY_KONG, {SKIN, PANTS, CAP}, {SKIN, PANTS, SMB_PINK}, 1, 3)
    retroCharAPI.add_cs_character_palette(CT_SONIC, {SKIN, CAP, GLOVES}, {SKIN, SMB_RED, GLOVES}, 2, 3)
end

hook_event(HOOK_ON_MODS_LOADED, setup_retro_sprites)