.class Landroid/media/tv/TvInputService$Session$12;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyTimeShiftCurrentPositionChanged(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$timeMs:J


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;J)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputService$Session;
    .param p2, "val$timeMs"    # J

    #@0
    .prologue
    .line 638
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$12;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    iput-wide p2, p0, Landroid/media/tv/TvInputService$Session$12;->val$timeMs:J

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 643
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$12;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 644
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$12;->this$1:Landroid/media/tv/TvInputService$Session;

    #@a
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    #@d
    move-result-object v1

    #@e
    iget-wide v2, p0, Landroid/media/tv/TvInputService$Session$12;->val$timeMs:J

    #@10
    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputSessionCallback;->onTimeShiftCurrentPositionChanged(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 640
    :cond_0
    :goto_0
    return-void

    #@14
    .line 646
    :catch_0
    move-exception v0

    #@15
    .line 647
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TvInputService"

    #@18
    const-string/jumbo v2, "error in notifyTimeShiftCurrentPositionChanged"

    #@1b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    goto :goto_0
.end method
