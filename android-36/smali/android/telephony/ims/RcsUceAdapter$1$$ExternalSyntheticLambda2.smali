.class public final synthetic Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/SipDetails;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Landroid/telephony/ims/SipDetails;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    iput-object p2, p0, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/SipDetails;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    iget-object v1, p0, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/SipDetails;

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$1;->lambda$onComplete$1(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Landroid/telephony/ims/SipDetails;)V

    return-void
.end method
