.class Landroid/media/tv/TvInputService$Session$2;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifySessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$eventArgs:Landroid/os/Bundle;

.field final synthetic val$eventType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputService$Session;
    .param p2, "val$eventType"    # Ljava/lang/String;
    .param p3, "val$eventArgs"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 325
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$2;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    iput-object p2, p0, Landroid/media/tv/TvInputService$Session$2;->val$eventType:Ljava/lang/String;

    #@4
    iput-object p3, p0, Landroid/media/tv/TvInputService$Session$2;->val$eventArgs:Landroid/os/Bundle;

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
    .line 330
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$2;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 331
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$2;->this$1:Landroid/media/tv/TvInputService$Session;

    #@a
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$2;->val$eventType:Ljava/lang/String;

    #@10
    iget-object v3, p0, Landroid/media/tv/TvInputService$Session$2;->val$eventArgs:Landroid/os/Bundle;

    #@12
    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputSessionCallback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 327
    :cond_0
    :goto_0
    return-void

    #@16
    .line 333
    :catch_0
    move-exception v0

    #@17
    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TvInputService"

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "error in sending event (event="

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    iget-object v3, p0, Landroid/media/tv/TvInputService$Session$2;->val$eventType:Ljava/lang/String;

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v3, ")"

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_0
.end method
