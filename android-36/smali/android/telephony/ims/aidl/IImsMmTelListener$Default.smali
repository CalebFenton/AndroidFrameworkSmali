.class public Landroid/telephony/ims/aidl/IImsMmTelListener$Default;
.super Ljava/lang/Object;
.source "IImsMmTelListener.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsMmTelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsMmTelListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAudioModeIsVoipChanged(I)V
    .registers 2
    .param p1, "imsAudioHandler"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .registers 5
    .param p1, "c"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    .registers 2
    .param p1, "status"    # Landroid/telephony/ims/MediaQualityStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist onModifyImsTrafficSession(II)V
    .registers 3
    .param p1, "token"    # I
    .param p2, "accessNetworkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist onRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "reason"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onStartImsTrafficSession(IIIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "trafficType"    # I
    .param p3, "accessNetworkType"    # I
    .param p4, "trafficDirection"    # I
    .param p5, "callback"    # Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist onStopImsTrafficSession(I)V
    .registers 2
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist onTriggerEpsFallback(I)V
    .registers 2
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist onVoiceMessageCountUpdate(I)V
    .registers 2
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
