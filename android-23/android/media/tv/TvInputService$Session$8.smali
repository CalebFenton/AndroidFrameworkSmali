.class Landroid/media/tv/TvInputService$Session$8;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyContentAllowed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$Session;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputService$Session;

    #@0
    .prologue
    .line 521
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$8;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 526
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$8;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 527
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$8;->this$1:Landroid/media/tv/TvInputService$Session;

    #@a
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v1}, Landroid/media/tv/ITvInputSessionCallback;->onContentAllowed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 523
    :cond_0
    :goto_0
    return-void

    #@12
    .line 529
    :catch_0
    move-exception v0

    #@13
    .line 530
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TvInputService"

    #@16
    const-string/jumbo v2, "error in notifyContentAllowed"

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_0
.end method
