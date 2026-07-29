import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean.ChernWeilTheoryPackage

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean

structure IndexTheoremPackage {H : HolonomyCurvaturePackage}
    {B : BerryConnectionPackage H} (C : ChernWeilTheoryPackage B) where
  diracOperator : Type u
  indexDefinition : Type v
  analyticIndex : Prop
  topologicalIndex : Prop
  indexTheorem : Prop
  analyticIndexClosed : analyticIndex
  topologicalIndexClosed : topologicalIndex
  indexTheoremClosed : indexTheorem

structure IndexTheoremEvidence {H : HolonomyCurvaturePackage}
    {B : BerryConnectionPackage H} {C : ChernWeilTheoryPackage B}
    (I : IndexTheoremPackage C) where
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  indexTheoremClosed : I.indexTheorem

def IndexTheoremClosed {H : HolonomyCurvaturePackage}
    {B : BerryConnectionPackage H} {C : ChernWeilTheoryPackage B}
    (I : IndexTheoremPackage C) : Prop :=
  I.analyticIndex ∧ I.topologicalIndex ∧ I.indexTheorem

theorem index_theorem_closed_from_evidence
    {H : HolonomyCurvaturePackage} {B : BerryConnectionPackage H}
    {C : ChernWeilTheoryPackage B} (I : IndexTheoremPackage C)
    (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.analyticIndexClosed
    (And.intro E.topologicalIndexClosed E.indexTheoremClosed)

end DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean
end HautevilleHouse