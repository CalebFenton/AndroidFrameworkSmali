.class public Landroid/media/tv/extension/signal/IAudioSignalInfo$Default;
.super Ljava/lang/Object;
.source "IAudioSignalInfo.java"

# interfaces
.implements Landroid/media/tv/extension/signal/IAudioSignalInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/signal/IAudioSignalInfo;
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
.method public blacklist addAudioSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/signal/IAudioSignalInfoListener;)V
    .registers 3
    .param p1, "clientToken"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/media/tv/extension/signal/IAudioSignalInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAudioSignalInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMtsSelectedTrackId()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist notifyMtsSelectTrackFlag(Z)V
    .registers 2
    .param p1, "mtsFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist removeAudioSignalInfoListener(Landroid/media/tv/extension/signal/IAudioSignalInfoListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/tv/extension/signal/IAudioSignalInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method
