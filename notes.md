new entry "MAG_SHA_SeluneBlessing_Spear"
type "Weapon"
using "WPN_Spear_2"
data "RootTemplate" "2eeabe97-8f29-4f4f-827e-6cfcd8fd1779"
data "ValueUUID" "d24c441f-7ebe-4229-8522-cf34c257ff20"
data "Rarity" "Legendary"
data "GameSize" "Large"
data "DefaultBoosts" "WeaponEnchantment(3);WeaponProperty(Magical)"
data "Boosts" "UnlockSpell(Target_SHA_SelunesBlessing_Moonbeam);UnlockSpell(Target_SHA_SeluneBlessing_Moonfire)"
data "BoostsOnEquipMainHand" "UnlockSpell(Rush_SpringAttack);UnlockSpell(Target_CripplingStrike)"
data "PassivesOnEquip" "MAG_SHA_SeluneBlessing_Spear_Passive;Darkvision"


new entry "MAG_SHA_SeluneBlessing_Spear_Passive"
type "PassiveData"
data "DisplayName" "h16865350g2da7g4a16g810cg142d04632000;2"
data "Description" "h013923a9g1ca7g4f0bg8f82gb85dacd7026d;2"
data "DescriptionParams" "1d4"
data "BoostContext" "OnCreate"
data "Boosts" "Advantage(SavingThrow,Wisdom);Advantage(Skill,Perception)"

________


new entry "MAG_Moonlight_Glaive"
type "Weapon"
using "WPN_Glaive_1"
data "RootTemplate" "24f276e7-f08f-44f1-ab97-3df34fd52add"
data "ValueUUID" "9b6a4ab2-323b-4030-89ab-030252bb6214"
data "Rarity" "Rare"
data "DefaultBoosts" "WeaponEnchantment(2);WeaponProperty(Magical);WeaponDamage(1d4, Radiant)"
data "BoostsOnEquipMainHand" "UnlockSpell(Rush_SpringAttack);UnlockSpell(Target_Slash_New);UnlockSpell(Shout_Steady);;UnlockSpell(Target_MAG_WeaponAction_MoonlightButterfly)"
data "PassivesOnEquip" "MAG_Light_MoonlightGlaive_Passive"
data "Unique" "1"

new entry "MAG_Light_MoonlightGlaive_Passive"
type "PassiveData"
using "MAG_Light_FarlinDagger_Passive"
data "DisplayName" "hddc19688gfbffg473cgbdeeg606fc4f261a2;2"
data "ToggleOnFunctors" "IF(HasStatus('MAG_MOONLIGHT_GLAIVE_LIGHT_TECHNICAL', GetItemInEquipmentSlot(EquipmentSlot.MeleeMainHand, context.Source))):ApplyEquipmentStatus(MeleeMainHand, MAG_LIGHT_DIVINE, 100, -1);IF(HasStatus('MAG_MOONLIGHT_GLAIVE_LIGHT_TECHNICAL', GetItemInEquipmentSlot(EquipmentSlot.MeleeOffHand, context.Source))):ApplyEquipmentStatus(MeleeOffHand, MAG_LIGHT_DIVINE, 100, -1)"

data "ToggleOffFunctors" "IF(HasStatus('MAG_LIGHT_DIVINE', GetItemInEquipmentSlot(EquipmentSlot.MeleeMainHand, context.Source)) and HasStatus('MAG_MOONLIGHT_GLAIVE_LIGHT_TECHNICAL', GetItemInEquipmentSlot(EquipmentSlot.MeleeMainHand, context.Source))):ApplyEquipmentStatus(MeleeMainHand, MAG_MAGIC_ITEM_LIGHT_REMOVER, 100, 0);IF(HasStatus('MAG_LIGHT_DIVINE', GetItemInEquipmentSlot(EquipmentSlot.MeleeOffHand, context.Source)) and HasStatus('MAG_MOONLIGHT_GLAIVE_LIGHT_TECHNICAL', GetItemInEquipmentSlot(EquipmentSlot.MeleeOffHand, context.Source))):ApplyEquipmentStatus(MeleeOffHand, MAG_MAGIC_ITEM_LIGHT_REMOVER, 100, 0)"

_____

new entry "MAG_WYRM_Farlin_Dagger"
type "Weapon"
using "WPN_Dagger_2"
data "RootTemplate" "3d449afb-b99a-492c-b636-85ced6b39e69"
data "ValueUUID" "9b6a4ab2-323b-4030-89ab-030252bb6214"
data "PassivesOnEquip" "MAG_Light_FarlinDagger_Passive"
data "PassivesOffHand" "MAG_WYRM_Farlin_Dagger_Passive"
data "Unique" "1"

_______


				<node id="Resource">
					<attribute id="AttachBone" type="FixedString" value="" />
					<attribute id="AttachmentSkeletonResource" type="FixedString" value="" />
					<attribute id="BlueprintInstanceResourceID" type="FixedString" value="" />
					<attribute id="BoundsMax" type="fvec3" value="0.05959772 0.06937659 0.2063772" />
					<attribute id="BoundsMin" type="fvec3" value="-0.0861936 -0.06538512 -0.4474008" />
					<attribute id="ClothColliderResourceID" type="FixedString" value="" />
					<attribute id="HairPresetResourceId" type="FixedString" value="" />
					<attribute id="HairType" type="uint8" value="0" />
					<attribute id="ID" type="FixedString" value="d735ab2f-a175-9033-de0b-a70d8a81c2d5" />
					<attribute id="MaterialType" type="uint8" value="4" />
					<attribute id="Name" type="LSString" value="WPN_HUM_Dagger_A_2_Radiant" />
					<attribute id="NeedsSkeletonRemap" type="bool" value="False" />
					<attribute id="RemapperSlotId" type="FixedString" value="" />
					<attribute id="ScalpMaterialId" type="FixedString" value="" />
					<attribute id="SkeletonResource" type="FixedString" value="" />
					<attribute id="SkeletonSlot" type="FixedString" value="" />
					<attribute id="Slot" type="FixedString" value="Unassigned" />
					<attribute id="SoftbodyResourceID" type="FixedString" value="" />
					<attribute id="SourceFile" type="LSString" value="Generated/Public/Shared/Assets/Weapons/Resources/WPN_HUM_Dagger_A_2.GR2" />
					<attribute id="SupportsVertexColorMask" type="bool" value="False" />
					<attribute id="Template" type="FixedString" value="Generated/Public/Shared/Assets/Weapons/Resources/WPN_HUM_Dagger_A_2.Dummy_WPN_HUM_Dagger_A_2.0" />
					<attribute id="_OriginalFileVersion_" type="int64" value="144255925564211200" />
					<children>
						<node id="AnimationWaterfall">
							<attribute id="Object" type="FixedString" value="" />
						</node>
						<node id="Base" />
						<node id="ClothProxyMapping" />
						<node id="Objects">
							<attribute id="LOD" type="uint8" value="0" />
							<attribute id="MaterialID" type="FixedString" value="363a2916-c466-f3f6-973c-dbf42d79004c" />
							<attribute id="ObjectID" type="FixedString" value="WPN_HUM_Dagger_A_2.WPN_HUM_Dagger_A_2_Mesh.0" />
						</node>
						<node id="Objects">
							<attribute id="LOD" type="uint8" value="1" />
							<attribute id="MaterialID" type="FixedString" value="363a2916-c466-f3f6-973c-dbf42d79004c" />
							<attribute id="ObjectID" type="FixedString" value="WPN_HUM_Dagger_A_2.WPN_HUM_Dagger_A_2_Mesh_LOD1.1" />
						</node>
						<node id="Objects">
							<attribute id="LOD" type="uint8" value="2" />
							<attribute id="MaterialID" type="FixedString" value="363a2916-c466-f3f6-973c-dbf42d79004c" />
							<attribute id="ObjectID" type="FixedString" value="WPN_HUM_Dagger_A_2.WPN_HUM_Dagger_A_2_Mesh_LOD2.2" />
						</node>
					</children>
				</node>
FormatColors:
data "FormatColor" "LightGray"
data "FormatColor" "DarkGray"
data "FormatColor" "Red"
data "FormatColor" "Yellow"
data "FormatColor" "Purple"
data "FormatColor" "Gray"
data "FormatColor" "PoisonGreen"
data "FormatColor" "White"
data "FormatColor" "Orange"
data "FormatColor" "Poison"
data "FormatColor" "Gold"
data "FormatColor" "Black"
data "FormatColor" "Pink"
data "FormatColor" "LightBlue"
data "FormatColor" "Green"
data "FormatColor" "Earth"
data "FormatColor" "Water"
data "FormatColor" "Air"
data "FormatColor" "Fire"
data "FormatColor" "Decay"
data "FormatColor" "Brown"

StatusEffects (and the boosts I found them on):
data "ToggleOnEffect" "VFX_Spells_Cast_Bard_Generic_BodyFX_Passive_BardicInspiration_Ability_01:Dummy_BodyFX:;"

new entry "LIGHT"
type "StatusData"
data "StatusType" "BOOST"
data "DisplayName" "h69e403e3g78bbg434eg8041g7a4fc50a0c00;1"
data "Description" "h50222f13g8023g4d4ega8b5g7d06fd75590c;2"
data "DescriptionParams" "Distance(7.5)"
data "Icon" "Spell_Evocation_Light"
data "StackId" "LIGHT"
data "Boosts" "GameplayLight(7.5,false,0.1)"
data "StatusGroups" "SG_Light;SG_RemoveOnRespec"
data "IsUnique" "1"
data "StatusEffect" "9e863d8f-a1f5-4f68-88ca-ddb56828c8d8" << classic blue/white glow from Light spell

new entry "MAG_LIGHT_DIVINE"
type "StatusData"
data "StatusType" "BOOST"
using "LIGHT"
data "DescriptionParams" "Distance(6)"
data "Boosts" "GameplayLight(6,false,0.1)"
data "StatusPropertyFlags" "IgnoreResting;DisableCombatlog"
data "StatusGroups" "SG_Light"
data "StatusEffect" "7318e3cf-fd8d-4383-bfe4-342078649edb"

new entry "SHA_JUSTICIAR_BECKONINGDARKNESS"
type "StatusData"
data "StatusType" "BOOST"
data "DisplayName" "h43169bafgdeb9g46c7gb6e9g8b543ee7fee7;2"
data "Description" "h35f6f96cg47acg4ca7g8686gfea9ebad4861;5"
data "DescriptionParams" "DealDamage(2d8,Necrotic)"
data "Icon" "GenericIcon_DamageType_Necrotic"
data "FormatColor" "Purple"
data "StackType" "Ignore"
data "TickType" "StartTurn"
data "TooltipDamage" "DealDamage(2d8,Necrotic,,,,ad727a13-c6f0-4b5b-aefd-aac79c6ed46e)"
data "TickFunctors" "IF(not HasObscuredState(ObscuredState.Clear)):DealDamage(2d8,Necrotic,Magical)"
data "ApplyEffect" "4bdc5c31-29da-45b8-b9de-bc800839ce96"
data "StatusEffect" "e69d85dc-f362-4c04-a0ea-42bfe568c24e"
data "StatusEffectOnTurn" "d25d554c-6e3a-4c34-a700-9652b1ee7600"


new entry "SHA_JUSTICIAR_UMBRAL_FORM"
type "StatusData"
data "StatusType" "BOOST"
data "DisplayName" "h1280a2e9g02c3g4e25g9b85g982bf309be0f;3"
data "Description" "h41a536cag5e7fg489dg8a13g7dc69a760a1b;5"
data "DescriptionParams" "DealDamage(1d8,Necrotic);DealDamage(4,Necrotic);"
data "Icon" "GenericIcon_Intent_Buff"
data "FormatColor" "Purple"
data "StackType" "Ignore"
data "Boosts" "BlockSpellCast(); CharacterWeaponDamage(1d8,Necrotic);IF(HasStatus('SHA_JUSTICIAR_CALLOFTHEDARK',context.Target)):CharacterWeaponDamage(4);Resistance(Slashing,ImmuneToNonMagical);Resistance(Piercing,ImmuneToNonMagical);Resistance(Bludgeoning,ImmuneToNonMagical)"
data "Passives" "ExtraAttack"
data "ApplyEffect" "a6ebf76d-ef9d-4473-a601-a978ae3cda6d"
data "StatusEffect" "90d0a624-5278-43cf-9184-7e92880a722e"


new entry "SHA_NIGHTSONG_DARKEMBRACE"
type "StatusData"
data "StatusType" "BOOST"
using "ACTION_SURGE"
data "DisplayName" "h7ea4c3ddg0c22g415agb45eg7bad6f7d94a0;1"
data "Description" "h5f5a66d0ga202g4bccgbae2gca83531927be;1"
data "Icon" "GenericIcon_Intent_Buff"
data "FormatColor" "LightGray"
data "Boosts" "ActionResource(ActionPoint,1,0)"
data "ApplyEffect" "501564fa-da53-4363-ad5a-72d3ff767297"    << purple vortex travelling upwards
data "StatusEffect" "cc4d8bd9-8ddb-47bc-b6e5-1e930667ba44"


new entry "SCL_SHADOW_CURSE_1" (cool af)
type "StatusData"
data "StatusType" "BOOST"
using "SCL_SHADOW_CURSE"
data "SoundStart" "Misc_Status_ShadowCurse1_Start,HEAD"
data "SoundStop" "Misc_Status_ShadowCurse1_End,HEAD"
data "StackPriority" "2"
data "TickFunctors" "ApplyStatus(SCL_SHADOW_CURSE_2,100,1)"
data "OnApplyFunctors" "DealDamage(2d4,Necrotic,Magical)"
data "ApplyEffect" "1a75b65d-bdfd-4531-9b0b-07dbebc9bc58"
data "StatusEffect" "cee5da66-470d-4266-9c2f-33beb6ff3b3f"  << necrotic/ghostly green swirlies


new entry "SCL_SHADOW_CURSE_2"
type "StatusData"
data "StatusType" "BOOST"
using "SCL_SHADOW_CURSE"
data "SoundStart" "Misc_Status_ShadowCurse2_Start,HEAD"
data "SoundStop" "Misc_Status_ShadowCurse2_End,HEAD"
data "StackPriority" "3"
data "TickFunctors" "ApplyStatus(SCL_SHADOW_CURSE_3,100,1)"
data "OnApplyFunctors" "DealDamage(4d4,Necrotic,Magical)"
data "ApplyEffect" "1a75b65d-bdfd-4531-9b0b-07dbebc9bc58"
data "StatusEffect" "d2d7a947-7355-4334-931a-385511425742"  << necrotic/ghostly green swirlies

new entry "SCL_SHADOW_CURSE_3"
type "StatusData"
data "StatusType" "BOOST"
using "SCL_SHADOW_CURSE"
data "SoundStart" "Misc_Status_ShadowCurse3_Start,HEAD"
data "SoundStop" "Misc_Status_ShadowCurse3_End,HEAD"
data "StackPriority" "4"
data "TickFunctors" "ApplyStatus(SCL_SHADOW_CURSE_4,100,-1)"
data "OnApplyFunctors" "DealDamage(8d4,Necrotic,Magical)"
data "ApplyEffect" "1a75b65d-bdfd-4531-9b0b-07dbebc9bc58"
data "StatusEffect" "584e5d0b-cb09-4076-bb97-eef7d1198947"  << necrotic/ghostly green swirlies

new entry "SCL_SHADOW_CURSE_UNDEAD"
type "StatusData"
data "StatusType" "BOOST"
data "DisplayName" "h5bb2c482gac30g42d1ga586ge1ec51ecd63b;5"
data "Description" "h5ea5b875g69e7g4542gad2fg0a672c3dfaf8;12"
data "Icon" "GenericIcon_DamageType_Necrotic"
data "StillAnimationType" "Weakened"
data "StillAnimationPriority" "Weakened"
data "SoundVocalStart" "GASP"
data "StackId" "SCL_SHADOW_CURSE_UNDEAD"
data "StackType" "Ignore"
data "Boosts" "BlockTravel()"
data "RemoveConditions" "not HasStatus('SCL_SHADOW_CURSE_UNDEAD_NEW') and not HasStatus('SCL_SHADOW_CURSE_UNDEAD_NEW_HALSINLAKESIDE')"
data "RemoveEvents" "OnTurn"
data "StatusPropertyFlags" "DisableOverhead;DisableCombatlog;DisablePortraitIndicator;ApplyToDead;LoseControl;IgnoreResting"
data "StatusEffect" "a9cf5cbf-4247-4b9a-b81b-e3af4982ff62"  << necrotic/ghostly green swirlies

new entry "SCL_MOONSHIELD_AURA"
type "StatusData"
data "StatusType" "BOOST"
data "DisplayName" "hd6bd135bg4531g4124g9e22gfb187fe3b715;1"
data "Icon" "statIcons_Moonshield"
data "StackId" "SCL_MOONSHIELD_AURA"
data "AuraRadius" "13"
data "AuraStatuses" "TARGET:IF((Character() or Tagged('SPELLLIGHTOBJECT')) and not Tagged('SHADOW') and (not Tagged('ACT2_SHADOW_CURSE_IMMUNE') or HasStatus('SCL_MOONSHIELD'))):ApplyStatus(SCL_MOONSHIELD,100,-1)"
data "Boosts" "GameplayLight(9,false,0.1)"
data "StatusPropertyFlags" "IgnoreResting"
data "StatusEffect" "fbe9316d-b39f-4a38-8bef-79787ee2602f" << white glow, a little bit snowy?

new entry "SCL_MOONSHIELD"
type "StatusData"
data "StatusType" "BOOST"
data "DisplayName" "h038b8505gf443g4003gb5f7g9ce3f2dbc1cc;2"
data "Description" "h532e2155gd26bg4152g9599gcacb1139e316;2"
data "Icon" "statIcons_Moonshield"
data "StackId" "SCL_SAFE"
data "StackPriority" "10"
data "StackType" "Ignore"
data "Boosts" "Tag(ACT2_SHADOW_CURSE_IMMUNE)"
data "StatusPropertyFlags" "DisableCombatlog;DisableOverhead"
data "StatusEffect" "06b6b0a5-22a1-4c5a-ae8f-2d31595c5fee"  << big flat white patch, looks like it's used on the floor

new entry "ORI_WOUND_FLARE"
type "StatusData"
data "StatusType" "BOOST"
data "DisplayName" "h40466270g9fcdg4c68ga09egb3fb61bc9801;1"
data "Description" "h4189d327g54e6g42d2gb89ag224ed38db13e;1"
data "Icon" "GenericIcon_Intent_Damage"
data "StatusEffect" "c31575d5-a204-4dea-b098-865178a26143"  << cool purple aura

new entry "LOW_STORMSHORETABERNACLE_GODVFX_TECHNICAL"
type "StatusData"
data "StatusType" "BOOST"
data "DisplayName" "h28f658d7g8ae5g4282ga0b4g21f4c8cb998c;2"
data "StackId" "INVISIBILITY"
data "StackPriority" "1"
data "StatusPropertyFlags" "DisableOverhead;DisableCombatlog;DisablePortraitIndicator"
data "StatusEffect" "22bedce8-b762-4e18-8eb5-ab7f4e01ec35"  << Radiant glow, wide positional offset

new entry "END_DRAGONFIRE_WALL"
type "StatusData"
data "StatusType" "BOOST"
using "WALLOFFIRE_6"
data "StackId" "END_DRAGONFIRE_WALL"
data "AuraStatuses" "IF(not Dead()):ApplyStatus(END_DRAGONFIRE_WALL_AURA,100,1)"
data "TooltipDamage" "DealDamage(12d6,Fire)"
data "StatusEffect" "1854472c-6ae6-4194-8d69-c225414560b4"

new entry "TWN_TOLLHOUSE_FLESH_TO_GOLD_1"
type "StatusData"
data "StatusType" "BOOST"
using "FLESH_TO_STONE_1"
data "DisplayName" "hdb42bb2fgfabbg4ddcga54fg0c2e817fdb7c;1"
data "Description" "h73a56e85g3c23g433ag95e8g21d8b6cbd378;1"
data "Icon" "Spell_Transmutation_FleshToGold"
data "SoundVocalStart" "WEAK"
data "SoundStart" ""
data "SoundLoop" "Spell_Status_FleshToGold_MO"
data "SoundStop" ""
data "StackId" "TWN_FLESH_TO_GOLD"
data "OnRemoveFunctors" "IF(RemoveCause(StatusRemoveCause.Condition)):ApplyStatus(TWN_TOLLHOUSE_FLESH_TO_GOLD_2,100,TWN_TOLLHOUSE_FLESH_TO_GOLD_1.Duration+1)"
data "StatusEffect" "7c545925-f9da-4fdb-87eb-eb4711643f74"

new entry "ORI_GALE_STAFFNECROTICAURA_ALLY_BUFF"
type "StatusData"
data "StatusType" "BOOST"
using "MAG_SHA_SELUNE_BLESSING_MOONMOTE_ALLY"
data "DisplayName" "h51cce91cgec72g4391ga1e0gb625f0ef0b28;1"
data "DescriptionParams" "DealDamage(1d4,Necrotic)"
data "Icon" "statIcons_GalesNecroticAura"
data "StackId" "ORI_GALE_STAFFNECROTICAURA_ALLY_BUFF"
data "Boosts" "CharacterWeaponDamage(1d4, Necrotic)"
data "StatusGroups" ""
data "ApplyEffect" "b479d331-a4df-420e-9cbc-115e1cf10b87" << light flash, would be good for lightside force moves
data "StatusEffect" "3ce4d62e-4969-42c2-9fa6-f715a73ae77e" << purple smoke

new entry "MAG_DARK_JUSTICIAR_ARMOR_SHAR_PROTECTION_DAMAGE"
type "StatusData"
data "StatusType" "BOOST"
data "DisplayName" "hc39e090bgeb2eg4898g9f6bg8ba8a37b0c4a;1"
data "StackId" "MAG_DARK_JUSTICIAR_ARMOR_SHAR_PROTECTION_DAMAGE"
data "StatusPropertyFlags" "DisableOverhead;DisableCombatlog;DisablePortraitIndicator"
data "ApplyEffect" "a6ebf76d-ef9d-4473-a601-a978ae3cda6d"  << purple/green smokey explosion
data "StatusEffect" "90d0a624-5278-43cf-9184-7e92880a722e"  << invis/shadow (purple)

new entry "LOW_OSKARSBELOVED_RELOADINGTHUNDERWAVE_TECHNICAL"
type "StatusData"
data "StatusType" "BOOST"
data "DisplayName" "h1a970b1bge197g49c5ga7cfg848bdcf6977c;1"
data "StackId" "LOW_OSKARSBELOVED_RELOADINGTHUNDERWAVE_TECHNICAL"
data "StatusPropertyFlags" "DisableOverhead;DisableCombatlog;DisablePortraitIndicator"
data "StatusEffect" "eee92108-e40d-42f3-9137-826fa73bc75f"

new entry "LOW_OSKARSBELOVED_CURSEDITEM_CURSEDAURA"
type "StatusData"
data "StatusType" "BOOST"
data "DisplayName" "h3aca8d2fgb2d5g42a2g99bfgbe60bdab79f0;2"
data "Description" "h0184e288g6542g43f8gad2egeb32bd60b1db;1"
data "Icon" "GenericIcon_Intent_Control"
data "StackId" "LOW_OSKARSBELOVED_CURSEDITEM_CURSEDAURA"
data "StatusGroups" "SG_Cursed"
data "StatusEffect" "62c440b4-9696-43fe-a64c-ce640b414eae"

new entry "LOW_SORCEROUSSUNDRIES_PROJECTION"
type "StatusData"
data "StatusType" "BOOST"
data "DisplayName" "h450f6c69ge8d2g44c9gbffdg08768deaf955;1"
data "Description" "ha9a78bf0g641bg40a1gb150g817110ea8306;1"
data "Icon" "statIcons_LorroakansProjection"
data "StackId" "LOW_SORCEROUSSUNDRIES_PROJECTION"
data "StatusPropertyFlags" "IsInvulnerableVisible"
data "StatusEffect" "10eb8202-12d2-45de-b322-c959b2c93669"

new entry "MAG_INVISIBLE_WEAPON_BUFF"
type "StatusData"
data "StatusType" "BOOST"
data "DisplayName" "he5744361g0c0eg4db5gb776g9bb440a462b6;1"
data "Description" "h817c42a7g183eg4dfagaa6agabbceb526e04;1"
data "DescriptionParams" "19"
data "Icon" "Status_Invisible"
data "StackId" "MAG_INVISIBLE_WEAPON_BUFF"
data "StatusPropertyFlags" "IgnoreResting"
data "StatusEffect" "d26436d4-d019-4dfc-b2f1-da0ac195575f"


ILLUMINATION:
UnpackedData\Shared\Public\Shared\Content\Assets\Effects\Effects\[PAK]_LightSources\_merged.lsf.lsx
UnpackedData\Shared\Public\Shared\Content\Assets\Loot\[PAK]_Alchemy\_merged.lsf.lsx

Good search param:
<attribute id="EffectName" type="FixedString" value="VFX_LightSources_GEN_Gem_Glowing

Purple: 0f1ea853-23bb-d752-c038-302ddb03b6df


Example:
<?xml version="1.0" encoding="utf-8"?>
<save>
	<version major="4" minor="0" revision="9" build="0" lslib_meta="v1,bswap_guids" />
	<region id="VisualBank">
		<node id="VisualBank">
			<children>
				<node id="Resource">
					<children>
						<node id="Attachments">
							<attribute id="Name" type="FixedString" value="Dummy_FX" />
							<attribute id="UUID" type="FixedString" value="1ed23605-aea2-291c-6d68-2d3ab5075747" />
						</node>
					</children>
				</node>
			</children>
		</node>
	</region>
</save>