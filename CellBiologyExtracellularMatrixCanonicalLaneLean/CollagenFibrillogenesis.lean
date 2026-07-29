import canonicalLaneMathlib.AdmissibleClass
import CellBiologyExtracellularMatrixCanonicalLaneLean.ExtracellularMatrixStructure

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure CollagenFibrillogenesisPackage (M : ExtracellularMatrix) where
  collagenTypes : List String
  procollagenProcessing : Prop
  fibrilAssembly : Prop
  crosslinking : Prop
  fiberOrientation : Prop

structure CollagenFibrillogenesisEvidence {M : ExtracellularMatrix}
    (C : CollagenFibrillogenesisPackage M) where
  procollagenProcessingClosed : C.procollagenProcessing
  fibrilAssemblyClosed : C.fibrilAssembly
  crosslinkingClosed : C.crosslinking
  fiberOrientationClosed : C.fiberOrientation

def CollagenFibrillogenesisClosed {M : ExtracellularMatrix}
    (C : CollagenFibrillogenesisPackage M) : Prop :=
  C.procollagenProcessing ∧ C.fibrilAssembly ∧ C.crosslinking ∧ C.fiberOrientation

theorem collagen_fibrillogenesis_closed_from_evidence
    {M : ExtracellularMatrix} (C : CollagenFibrillogenesisPackage M)
    (E : CollagenFibrillogenesisEvidence C) : CollagenFibrillogenesisClosed C := by
  exact And.intro E.procollagenProcessingClosed
    (And.intro E.fibrilAssemblyClosed
      (And.intro E.crosslinkingClosed E.fiberOrientationClosed))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse
