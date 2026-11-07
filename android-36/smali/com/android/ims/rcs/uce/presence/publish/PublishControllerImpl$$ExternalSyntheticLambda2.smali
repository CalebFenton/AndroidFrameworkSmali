.class public final synthetic Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/SipDetails;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/telephony/ims/SipDetails;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    iput-object p2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/SipDetails;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/SipDetails;

    check-cast p1, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    invoke-static {v0, v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->$r8$lambda$GD9kM2MOV36qBUPtPkNuxXGqiso(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/telephony/ims/SipDetails;Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V

    return-void
.end method
