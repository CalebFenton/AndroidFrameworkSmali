.class public final synthetic Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

.field public final synthetic blacklist f$1:Lcom/android/ims/internal/IImsCallSession;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda1;->f$1:Lcom/android/ims/internal/IImsCallSession;

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda1;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda1;->f$1:Lcom/android/ims/internal/IImsCallSession;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda1;->f$3:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->$r8$lambda$lhbDAWLQHF0_9YbAFzbvEfnpuNo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p0

    return-object p0
.end method
