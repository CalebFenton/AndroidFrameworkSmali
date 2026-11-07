.class public final synthetic Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/ImsReasonInfo;

.field public final synthetic blacklist f$2:Landroid/telephony/ims/SipDetails;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda5;->f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    iput-object p2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda5;->f$1:Landroid/telephony/ims/ImsReasonInfo;

    iput-object p3, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda5;->f$2:Landroid/telephony/ims/SipDetails;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda5;->f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    iget-object v1, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda5;->f$1:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda5;->f$2:Landroid/telephony/ims/SipDetails;

    invoke-static {v0, v1, v2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->$r8$lambda$PvGwKCcXCZLTR6_jD3KjSrZ1qFM(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V

    return-void
.end method
