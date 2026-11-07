.class public final synthetic Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;IILcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->$r8$lambda$-qFdO-Jht9upb3ttpYjCri3dlYM(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;IILcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;)V

    return-void
.end method
