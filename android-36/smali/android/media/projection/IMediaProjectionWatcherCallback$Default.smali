.class public Landroid/media/projection/IMediaProjectionWatcherCallback$Default;
.super Ljava/lang/Object;
.source "IMediaProjectionWatcherCallback.java"

# interfaces
.implements Landroid/media/projection/IMediaProjectionWatcherCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/IMediaProjectionWatcherCallback;
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

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onMediaProjectionEvent(Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .registers 4
    .param p1, "event"    # Landroid/media/projection/MediaProjectionEvent;
    .param p2, "info"    # Landroid/media/projection/MediaProjectionInfo;
    .param p3, "session"    # Landroid/view/ContentRecordingSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist onRecordingSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .registers 3
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;
    .param p2, "session"    # Landroid/view/ContentRecordingSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
