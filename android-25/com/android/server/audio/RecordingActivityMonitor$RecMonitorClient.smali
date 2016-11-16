.class final Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RecordingActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecMonitorClient"
.end annotation


# static fields
.field static sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;


# instance fields
.field final mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;


# direct methods
.method constructor <init>(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 0
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    #@0
    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 194
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    #@5
    .line 193
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 198
    const-string/jumbo v0, "AudioService.RecordingActivityMonitor"

    #@3
    const-string/jumbo v1, "client died"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 199
    sget-object v0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    #@b
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    #@10
    .line 197
    return-void
.end method

.method init()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    #@3
    invoke-interface {v1}, Landroid/media/IRecordingConfigDispatcher;->asBinder()Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 205
    const/4 v1, 0x1

    #@c
    return v1

    #@d
    .line 206
    :catch_0
    move-exception v0

    #@e
    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AudioService.RecordingActivityMonitor"

    #@11
    const-string/jumbo v2, "Could not link to client death"

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 208
    return v3
.end method

.method release()V
    .locals 2

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    #@2
    invoke-interface {v0}, Landroid/media/IRecordingConfigDispatcher;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@a
    .line 212
    return-void
.end method
