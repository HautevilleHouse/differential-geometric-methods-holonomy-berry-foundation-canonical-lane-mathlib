import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean.IndexTheoremPackage

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean

structure BerryPhaseGeometricPhasePackage {H : HolonomyCurvaturePackage}
    {B : BerryConnectionPackage H} {C : ChernWeilTheoryPackage B}
    (I : IndexTheoremPackage C) where
  berryPhase : Type u
  geometricPhase : Type v
  holonomyInterpretation : Prop
  phaseInTopologicalBand : Prop
  quantizedTransport : Prop
  holonomyInterpretationClosed : holonomyInterpretation
  phaseInTopologicalBandClosed : phaseInTopologicalBand
  quantizedTransportClosed : quantizedTransport

structure BerryPhaseGeometricPhaseEvidence {H : HolonomyCurvaturePackage}
    {B : BerryConnectionPackage H} {C : ChernWeilTheoryPackage B}
    {I : IndexTheoremPackage C} (P : BerryPhaseGeometricPhasePackage I) where
  holonomyInterpretationClosed : P.holonomyInterpretation
  phaseInTopologicalBandClosed : P.phaseInTopologicalBand
  quantizedTransportClosed : P.quantizedTransport

def BerryPhaseGeometricPhaseClosed {H : HolonomyCurvaturePackage}
    {B : BerryConnectionPackage H} {C : ChernWeilTheoryPackage B}
    {I : IndexTheoremPackage C} (P : BerryPhaseGeometricPhasePackage I) : Prop :=
  P.holonomyInterpretation ∧ P.phaseInTopologicalBand ∧ P.quantizedTransport

theorem berry_phase_geometric_phase_closed_from_evidence
    {H : HolonomyCurvaturePackage} {B : BerryConnectionPackage H}
    {C : ChernWeilTheoryPackage B} {I : IndexTheoremPackage C}
    (P : BerryPhaseGeometricPhasePackage I)
    (E : BerryPhaseGeometricPhaseEvidence P) :
    BerryPhaseGeometricPhaseClosed P := by
  exact And.intro E.holonomyInterpretationClosed
    (And.intro E.phaseInTopologicalBandClosed E.quantizedTransportClosed)

end DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean
end HautevilleHouse