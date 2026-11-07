.class public Landroid/media/audiopolicy/IAudioPolicyCallback$Default;
.super Ljava/lang/Object;
.source "IAudioPolicyCallback.java"

# interfaces
.implements Landroid/media/audiopolicy/IAudioPolicyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/IAudioPolicyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    .registers 2
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    .registers 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    .registers 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasNotified"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    .registers 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist notifyMixStateUpdate(Ljava/lang/String;I)V
    .registers 3
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist notifyUnregistration()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist notifyVolumeAdjust(I)V
    .registers 2
    .param p1, "adjustment"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method
