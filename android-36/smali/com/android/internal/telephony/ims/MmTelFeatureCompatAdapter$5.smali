.class Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$5;
.super Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;
.source "MmTelFeatureCompatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$c:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

.field final synthetic blacklist val$cap:Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;IILjava/util/concurrent/CountDownLatch;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 364
    iput-object p5, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$5;->val$c:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    iput-object p6, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$5;->val$cap:Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;-><init>(IILjava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public blacklist setFeatureValueReceived(I)V
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$5;->val$c:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    if-nez v0, :cond_8

    return-void

    .line 371
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$5;->val$cap:Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$5;->val$cap:Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 372
    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result p0

    const/4 v2, -0x1

    .line 371
    invoke-virtual {v0, v1, p0, v2}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->onChangeCapabilityConfigurationError(III)V

    .line 374
    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeEnabledCapabilities - setFeatureValueReceived with value "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MmTelFeatureCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
