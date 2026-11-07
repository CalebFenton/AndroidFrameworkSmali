.class public Landroid/media/tv/extension/event/IEventMonitor$Default;
.super Ljava/lang/Object;
.source "IEventMonitor.java"

# interfaces
.implements Landroid/media/tv/extension/event/IEventMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/event/IEventMonitor;
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
.method public blacklist addFollowingEventInfoListener(Landroid/media/tv/extension/event/IEventMonitorListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/tv/extension/event/IEventMonitorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist addPresentEventInfoListener(Landroid/media/tv/extension/event/IEventMonitorListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/tv/extension/event/IEventMonitorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFollowingEventInfo(J)Landroid/os/Bundle;
    .registers 4
    .param p1, "channelDbId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPresentEventInfo(J)Landroid/os/Bundle;
    .registers 4
    .param p1, "channelDbId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSdtGuidanceInfo(J)Landroid/os/Bundle;
    .registers 4
    .param p1, "channelDbId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeFollowingEventInfoListener(Landroid/media/tv/extension/event/IEventMonitorListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/tv/extension/event/IEventMonitorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist removePresentEventInfoListener(Landroid/media/tv/extension/event/IEventMonitorListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/tv/extension/event/IEventMonitorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist setBgmTuneChannelInfo([Landroid/net/Uri;)V
    .registers 2
    .param p1, "tuneChannelInfos"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method
