.class final Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WatcherStopCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

.field private mInfo:Landroid/media/projection/MediaProjectionInfo;


# direct methods
.method public constructor <init>(Landroid/media/projection/MediaProjectionInfo;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 0
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;
    .param p2, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    #@0
    .prologue
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 588
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;->mInfo:Landroid/media/projection/MediaProjectionInfo;

    #@5
    .line 589
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    #@7
    .line 587
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    #@2
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;->mInfo:Landroid/media/projection/MediaProjectionInfo;

    #@4
    invoke-interface {v1, v2}, Landroid/media/projection/IMediaProjectionWatcherCallback;->onStop(Landroid/media/projection/MediaProjectionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 593
    :goto_0
    return-void

    #@8
    .line 596
    :catch_0
    move-exception v0

    #@9
    .line 597
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaProjectionManagerService"

    #@c
    const-string/jumbo v2, "Failed to notify media projection has stopped"

    #@f
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    goto :goto_0
.end method
