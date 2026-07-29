import canonicalLaneMathlib.AdmissibleClass
import CellBiologyExtracellularMatrixCanonicalLaneLean.ExtracellularMatrixStructure

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure MMPackage (M : ExtracellularMatrix) where
  mmpMembers : List String
  collagenCleavage : Prop
  elastinDegradation : Prop
  pericellularProteolysis : Prop
  tissueRemodeling : Prop

structure MMPEvidence {M : ExtracellularMatrix} (MMP : MMPackage M) where
  collagenCleavageClosed : MMP.collagenCleavage
  elastinDegradationClosed : MMP.elastinDegradation
  pericellularProteolysisClosed : MMP.pericellularProteolysis
  tissueRemodelingClosed : MMP.tissueRemodeling

def MMPClosed {M : ExtracellularMatrix} (MMP : MMPackage M) : Prop :=
  MMP.collagenCleavage ∧ MMP.elastinDegradation ∧ MMP.pericellularProteolysis ∧ MMP.tissueRemodeling

theorem mmp_closed_from_evidence
    {M : ExtracellularMatrix} (MMP : MMPackage M)
    (E : MMPEvidence MMP) : MMPClosed MMP := by
  exact And.intro E.collagenCleavageClosed
    (And.intro E.elastinDegradationClosed
      (And.intro E.pericellularProteolysisClosed E.tissueRemodelingClosed))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse
