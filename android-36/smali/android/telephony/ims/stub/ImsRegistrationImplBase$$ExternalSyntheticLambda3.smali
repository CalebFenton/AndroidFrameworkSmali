.class public final synthetic Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/ImsReasonInfo;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/telephony/ims/SipDetails;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/ImsReasonInfo;

    iput p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;->f$3:Landroid/telephony/ims/SipDetails;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/ImsReasonInfo;

    iget v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;->f$1:I

    iget v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;->f$2:I

    iget-object v3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;->f$3:Landroid/telephony/ims/SipDetails;

    check-cast p1, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    invoke-static {v0, v1, v2, v3, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->lambda$onDeregistered$3(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method
