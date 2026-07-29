import canonicalLaneMathlib.Projection

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse
