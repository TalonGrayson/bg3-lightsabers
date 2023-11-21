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