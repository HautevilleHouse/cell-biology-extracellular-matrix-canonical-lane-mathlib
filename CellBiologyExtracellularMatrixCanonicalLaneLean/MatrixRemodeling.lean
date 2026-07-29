import canonicalLaneMathlib.AdmissibleClass
import CellBiologyExtracellularMatrixCanonicalLaneLean.ExtracellularMatrixComponents

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure MatrixRemodelingPackage {E : ExtracellularMatrixPackage} where
  matrixMetalloproteinases : Prop
  tissueInhibitors : Prop
  degradationSynthesisBalance : Prop
  fibrosis : Prop
  woundHealing : Prop
  matrixMetalloproteinasesTerm : matrixMetalloproteinases
  tissueInhibitorsTerm : tissueInhibitors
  degradationSynthesisBalanceTerm : degradationSynthesisBalance
  fibrosisTerm : fibrosis
  woundHealingTerm : woundHealing

structure MatrixRemodelingEvidence {E : ExtracellularMatrixPackage} (M : MatrixRemodelingPackage E) where
  matrixMetalloproteinasesClosed : M.matrixMetalloproteinases
  tissueInhibitorsClosed : M.tissueInhibitors
  degradationSynthesisBalanceClosed : M.degradationSynthesisBalance
  fibrosisClosed : M.fibrosis
  woundHealingClosed : M.woundHealing

def MatrixRemodelingClosed {E : ExtracellularMatrixPackage} (M : MatrixRemodelingPackage E) : Prop :=
  M.matrixMetalloproteinases ∧ M.tissueInhibitors ∧ M.degradationSynthesisBalance ∧ M.fibrosis ∧ M.woundHealing

theorem matrix_remodeling_closed_from_evidence {E : ExtracellularMatrixPackage} (M : MatrixRemodelingPackage E) (Ev : MatrixRemodelingEvidence M) :
    MatrixRemodelingClosed M := by
  exact And.intro Ev.matrixMetalloproteinasesClosed
    (And.intro Ev.tissueInhibitorsClosed
      (And.intro Ev.degradationSynthesisBalanceClosed
        (And.intro Ev.fibrosisClosed Ev.woundHealingClosed)))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse