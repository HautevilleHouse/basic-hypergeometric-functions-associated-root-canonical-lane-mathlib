import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BasicHypergeometricEndgameState where
  object : AdmittedObject

def basicHypergeometricProjection : Projection BasicHypergeometricEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem basicHypergeometricProjection_idempotent (x : BasicHypergeometricEndgameState) :
    basicHypergeometricProjection.toFun (basicHypergeometricProjection.toFun x) = basicHypergeometricProjection.toFun x := by
  exact basicHypergeometricProjection.idempotent x

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse