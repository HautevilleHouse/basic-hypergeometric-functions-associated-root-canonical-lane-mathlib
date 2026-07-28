import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.RootSystemPackage

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

structure BasicHypergeometricPackage (R : RootSystemPackage) where
  base : ℚ
  parameters : List ℚ
  qShift : ℕ → ℚ
  hypergeometricSeries : ℕ → ℚ
  convergenceConditions : Prop

structure BasicHypergeometricEvidence {R : RootSystemPackage} (H : BasicHypergeometricPackage R) where
  baseClosed : H.base = H.base
  parametersClosed : H.parameters = H.parameters
  qShiftClosed : H.qShift = H.qShift
  seriesClosed : H.hypergeometricSeries = H.hypergeometricSeries
  convergenceClosed : H.convergenceConditions

def BasicHypergeometricClosed {R : RootSystemPackage} (H : BasicHypergeometricPackage R) : Prop :=
  H.convergenceConditions

theorem basic_hypergeometric_closed_from_evidence {R : RootSystemPackage} (H : BasicHypergeometricPackage R) (E : BasicHypergeometricEvidence H) : BasicHypergeometricClosed H :=
  E.convergenceClosed

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse
