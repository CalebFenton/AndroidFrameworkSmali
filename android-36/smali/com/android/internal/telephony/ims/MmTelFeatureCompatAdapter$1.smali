.class Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;
.super Lcom/android/ims/internal/IImsRegistrationListener$Stub;
.source "MmTelFeatureCompatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist registrationAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist registrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist registrationConnected()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist registrationConnectedWithRadioTech(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    const-string p1, "MmTelFeatureCompat"

    const-string v0, "registrationDisconnected: resetting MMTEL capabilities."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    new-instance p1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    return-void
.end method

.method public blacklist registrationFeatureCapabilityChanged(I[I[I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->-$$Nest$mconvertCapabilities(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;[I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    return-void
.end method

.method public blacklist registrationProgressing()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist registrationProgressingWithRadioTech(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist registrationResumed()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist registrationServiceCapabilityChanged(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist registrationSuspended()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist voiceMessageCountUpdate(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->notifyVoiceMessageCountUpdate(I)V

    return-void
.end method
