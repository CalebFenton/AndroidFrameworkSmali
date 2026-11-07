.class Landroid/media/tv/TvInputService$Session$18;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyTvMessage(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic blacklist val$data:Landroid/os/Bundle;

.field final synthetic blacklist val$type:I


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputService$Session;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$Session;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1108
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$18;->this$0:Landroid/media/tv/TvInputService$Session;

    iput p2, p0, Landroid/media/tv/TvInputService$Session$18;->val$type:I

    iput-object p3, p0, Landroid/media/tv/TvInputService$Session$18;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1114
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$18;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1115
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$18;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputService$Session$18;->val$type:I

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$18;->val$data:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputSessionCallback;->onTvMessage(ILandroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 1119
    :cond_15
    goto :goto_1e

    .line 1117
    :catch_16
    move-exception v0

    .line 1118
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyTvMessage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1120
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method
