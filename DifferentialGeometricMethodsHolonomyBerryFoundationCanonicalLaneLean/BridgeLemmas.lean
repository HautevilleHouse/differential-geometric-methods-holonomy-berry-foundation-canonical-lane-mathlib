import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HolonomyBerryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean
end HautevilleHouse