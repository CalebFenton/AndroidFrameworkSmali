.class Landroid/media/tv/TvInputService$Session$4;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyTracksChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$tracksCopy:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputService$Session;

    #@0
    .prologue
    .line 390
    .local p2, "val$tracksCopy":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$4;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    iput-object p2, p0, Landroid/media/tv/TvInputService$Session$4;->val$tracksCopy:Ljava/util/List;

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
    .line 395
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$4;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 396
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$4;->this$1:Landroid/media/tv/TvInputService$Session;

    #@a
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$4;->val$tracksCopy:Ljava/util/List;

    #@10
    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputSessionCallback;->onTracksChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 392
    :cond_0
    :goto_0
    return-void

    #@14
    .line 398
    :catch_0
    move-exception v0

    #@15
    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TvInputService"

    #@18
    const-string/jumbo v2, "error in notifyTracksChanged"

    #@1b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    goto :goto_0
.end method
