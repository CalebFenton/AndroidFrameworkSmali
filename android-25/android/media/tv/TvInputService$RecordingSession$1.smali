.class Landroid/media/tv/TvInputService$RecordingSession$1;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$RecordingSession;->notifyTuned(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$RecordingSession;

.field final synthetic val$channelUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$RecordingSession;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputService$RecordingSession;
    .param p2, "val$channelUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1544
    iput-object p1, p0, Landroid/media/tv/TvInputService$RecordingSession$1;->this$1:Landroid/media/tv/TvInputService$RecordingSession;

    #@2
    iput-object p2, p0, Landroid/media/tv/TvInputService$RecordingSession$1;->val$channelUri:Landroid/net/Uri;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 1550
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession$1;->this$1:Landroid/media/tv/TvInputService$RecordingSession;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputService$RecordingSession;->-get0(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1551
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession$1;->this$1:Landroid/media/tv/TvInputService$RecordingSession;

    #@a
    invoke-static {v1}, Landroid/media/tv/TvInputService$RecordingSession;->-get0(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Landroid/media/tv/TvInputService$RecordingSession$1;->val$channelUri:Landroid/net/Uri;

    #@10
    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputSessionCallback;->onTuned(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1547
    :cond_0
    :goto_0
    return-void

    #@14
    .line 1553
    :catch_0
    move-exception v0

    #@15
    .line 1554
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TvInputService"

    #@18
    const-string/jumbo v2, "error in notifyTuned"

    #@1b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    goto :goto_0
.end method
