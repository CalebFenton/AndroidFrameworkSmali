.class public Landroid/media/metrics/IMediaMetricsManager$Default;
.super Ljava/lang/Object;
.source "IMediaMetricsManager.java"

# interfaces
.implements Landroid/media/metrics/IMediaMetricsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/IMediaMetricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBundleSessionId(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEditingSessionId(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPlaybackSessionId(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRecordingSessionId(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTranscodingSessionId(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist releaseSessionId(Ljava/lang/String;I)V
    .registers 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist reportBundleMetrics(Ljava/lang/String;Landroid/os/PersistableBundle;I)V
    .registers 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "metrics"    # Landroid/os/PersistableBundle;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist reportEditingEndedEvent(Ljava/lang/String;Landroid/media/metrics/EditingEndedEvent;I)V
    .registers 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/media/metrics/EditingEndedEvent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;I)V
    .registers 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/media/metrics/NetworkEvent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;I)V
    .registers 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/media/metrics/PlaybackErrorEvent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;I)V
    .registers 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "metrics"    # Landroid/media/metrics/PlaybackMetrics;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;I)V
    .registers 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/media/metrics/PlaybackStateEvent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;I)V
    .registers 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/media/metrics/TrackChangeEvent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method
