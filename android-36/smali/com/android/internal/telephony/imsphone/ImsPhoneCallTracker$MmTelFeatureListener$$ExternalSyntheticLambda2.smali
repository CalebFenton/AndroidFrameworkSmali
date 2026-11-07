.class public final synthetic Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/MediaQualityStatus;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;Landroid/telephony/ims/MediaQualityStatus;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/MediaQualityStatus;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/MediaQualityStatus;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->$r8$lambda$RJhMFVT9Jtj8asQomh-RoFDXWl0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;Landroid/telephony/ims/MediaQualityStatus;)V

    return-void
.end method
