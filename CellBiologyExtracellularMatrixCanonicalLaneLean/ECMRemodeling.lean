import canonicalLaneMathlib.AdmissibleClass
import CellBiologyExtracellularMatrixCanonicalLaneLean.ExtracellularMatrixStructure

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure ECMRemodelingPackage (E : ECMStructure) where
  matrixMetalloproteinases : Prop
  tissueInhibitorsOfMetalloproteinases : Prop
  collagenCrosslinking : Prop
  proteoglycanTurnover : Prop

structure ECMRemodelingEvidence {E : ECMStructure} (R : ECMRemodelingPackage E) where
  matrixMetalloproteinasesClosed : R.matrixMetalloproteinases
  tissueInhibitorsOfMetalloproteinasesClosed : R.tissueInhibitorsOfMetalloproteinases
  collagenCrosslinkingClosed : R.collagenCrosslinking
  proteoglycanTurnoverClosed : R.proteoglycanTurnover

def ECMRemodelingClosed {E : ECMStructure} (R : ECMRemodelingPackage E) : Prop :=
  R.matrixMetalloproteinases ∧ R.tissueInhibitorsOfMetalloproteinases ∧
  R.collagenCrosslinking ∧ R.proteoglycanTurnover

theorem ecm_remodeling_closed_from_evidence {E : ECMStructure}
    (R : ECMRemodelingPackage E) (Ev : ECMRemodelingEvidence R) :
    ECMRemodelingClosed R := by
  exact And.intro Ev.matrixMetalloproteinasesClosed
    (And.intro Ev.tissueInhibitorsOfMetalloproteinasesClosed
      (And.intro Ev.collagenCrosslinkingClosed Ev.proteoglycanTurnoverClosed))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse