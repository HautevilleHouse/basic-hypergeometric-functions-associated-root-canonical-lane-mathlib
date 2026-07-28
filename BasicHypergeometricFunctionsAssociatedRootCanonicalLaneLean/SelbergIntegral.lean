import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.BasicHypergeometricPackage

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

structure SelbergIntegralPackage {R : RootSystemPackage} (H : BasicHypergeometricPackage R) where
  integrand : Type u
  domain : Type v
  measure : Type w
  valueFormula : Prop
  proof : valueFormula

structure SelbergIntegralEvidence {R : RootSystemPackage} {H : BasicHypergeometricPackage R} (S : SelbergIntegralPackage H) where
  valueFormulaClosed : S.valueFormula

def SelbergIntegralClosed {R : RootSystemPackage} {H : BasicHypergeometricPackage R} (S : SelbergIntegralPackage H) : Prop :=
  S.valueFormula

theorem selberg_integral_closed_from_evidence {R : RootSystemPackage} {H : BasicHypergeometricPackage R} (S : SelbergIntegralPackage H) (E : SelbergIntegralEvidence S) : SelbergIntegralClosed S :=
  E.valueFormulaClosed

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse
