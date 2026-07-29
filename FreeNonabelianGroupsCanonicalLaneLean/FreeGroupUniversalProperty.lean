import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure FreeGroupObject (α : Type u) where
  carrier : Type v
  groupStructure : Group carrier
  inclusion : α → carrier
  universalProperty : Prop

structure UniversalPropertyEvidence (α : Type u) (G : FreeGroupObject α) where
  universalPropertyClosed : G.universalProperty

def FreeGroupUniversalPropertyClosed (α : Type u) (G : FreeGroupObject α) : Prop :=
  G.universalProperty

theorem free_group_universal_property_closed_from_evidence (α : Type u)
    (G : FreeGroupObject α) (E : UniversalPropertyEvidence α G) :
    FreeGroupUniversalPropertyClosed α G :=
  E.universalPropertyClosed

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse