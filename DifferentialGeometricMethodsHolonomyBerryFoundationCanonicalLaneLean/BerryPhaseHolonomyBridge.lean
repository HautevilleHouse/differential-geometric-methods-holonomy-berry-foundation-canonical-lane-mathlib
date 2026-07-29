import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean.BerryConnection
import HautevilleHouse.DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean.HolonomyBundle

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let M : Type := A.object.carrier
  have h : HolonomyBundleClosed M A.object := sorry
  h

theorem bridgeFromAdmissibleClass (A : AdmissibleClass) : bridgeClosed A :=
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gateFromAdmissibleClass (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean
end HautevilleHouse
