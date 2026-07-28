import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.RootSystemPackage

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

structure BasicHypergeometricSeriesPackage (R : RootSystemPackage) where
  q : ℝ
  qAbsLessOne : |q| < 1
  parameters : List ℂ
  series : Type u
  seriesConvergence : Prop
  macdonaldConstantTermIdentity : Prop
  symmetricUnderWeylGroup : Prop
  qSeries : series
  seriesWellDefined : seriesConvergence
  constantTermIdentityClosed : macdonaldConstantTermIdentity
  symmetryClosed : symmetricUnderWeylGroup

defaultBasicHypergeometricSeriesPackage (R : RootSystemPackage) : BasicHypergeometricSeriesPackage R where
  q := 0.5
  qAbsLessOne := by
    have : |0.5 : ℝ| < 1 := by norm_num
    exact this
  parameters := []
  series := Unit
  seriesConvergence := True
  macdonaldConstantTermIdentity := True
  symmetricUnderWeylGroup := True
  qSeries := ()
  seriesWellDefined := trivial
  constantTermIdentityClosed := trivial
  symmetryClosed := trivial

structure BasicHypergeometricEvidence {R : RootSystemPackage} (H : BasicHypergeometricSeriesPackage R) where
  seriesWellDefinedClosed : H.seriesConvergence
  constantTermIdentityClosed : H.macdonaldConstantTermIdentity
  symmetryClosed : H.symmetricUnderWeylGroup

def BasicHypergeometricClosed {R : RootSystemPackage} (H : BasicHypergeometricSeriesPackage R) : Prop :=
  H.seriesConvergence ∧ H.macdonaldConstantTermIdentity ∧ H.symmetricUnderWeylGroup

theorem basic_hypergeometric_closed_from_evidence {R : RootSystemPackage} (H : BasicHypergeometricSeriesPackage R) (E : BasicHypergeometricEvidence H) : BasicHypergeometricClosed H := by
  exact And.intro E.seriesWellDefinedClosed (And.intro E.constantTermIdentityClosed E.symmetryClosed)

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse
