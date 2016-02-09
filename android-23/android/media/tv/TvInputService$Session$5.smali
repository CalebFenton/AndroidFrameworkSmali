.class Landroid/media/tv/TvInputService$Session$5;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyTrackSelected(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$trackId:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputService$Session;
    .param p2, "val$type"    # I
    .param p3, "val$trackId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 420
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$5;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    iput p2, p0, Landroid/media/tv/TvInputService$Session$5;->val$type:I

    #@4
    iput-object p3, p0, Landroid/media/tv/TvInputService$Session$5;->val$trackId:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 425
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$5;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 426
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$5;->this$1:Landroid/media/tv/TvInputService$Session;

    #@a
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    #@d
    move-result-object v1

    #@e
    iget v2, p0, Landroid/media/tv/TvInputService$Session$5;->val$type:I

    #@10
    iget-object v3, p0, Landroid/media/tv/TvInputService$Session$5;->val$trackId:Ljava/lang/String;

    #@12
    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputSessionCallback;->onTrackSelected(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 422
    :cond_0
    :goto_0
    return-void

    #@16
    .line 428
    :catch_0
    move-exception v0

    #@17
    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TvInputService"

    #@1a
    const-string/jumbo v2, "error in notifyTrackSelected"

    #@1d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    goto :goto_0
.end method
