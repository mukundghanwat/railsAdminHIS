class ApplicationController < ActionController::Base

    def main_admin
        @Patientpolicydetail = Patientpolicydetail.all
        @patientclaimservice = Patientclaimservice.all
        @Requestconfigparam = Requestconfigparam.all
        @Patientclaimdetail = Patientclaimdetail.all
        @Diagnosismastermapping = Diagnosismastermapping.all
        @Servicesmastermapping = Servicesmastermapping.all
        @ClaimResponse = ClaimResponse.all
        @CoverageeligibilityResponse = CoverageeligibilityResponse.all
        @Policyeligibilitycheckresponse = Policyeligibilitycheckresponse.all
        @ProviderclaimsubmitResponse = ProviderclaimsubmitResponse.all
      end
end
