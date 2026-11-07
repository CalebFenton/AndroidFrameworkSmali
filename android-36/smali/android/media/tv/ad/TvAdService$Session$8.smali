.class Landroid/media/tv/ad/TvAdService$Session$8;
.super Ljava/lang/Object;
.source "TvAdService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdService$Session;->sendTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdService$Session;

.field final synthetic blacklist val$data:Landroid/os/Bundle;

.field final synthetic blacklist val$type:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdService$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/tv/ad/TvAdService$Session;
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

    .line 645
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$Session$8;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    iput-object p2, p0, Landroid/media/tv/ad/TvAdService$Session$8;->val$type:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/ad/TvAdService$Session$8;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 651
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session$8;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdService$Session;)Landroid/media/tv/ad/ITvAdSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 652
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session$8;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdService$Session;)Landroid/media/tv/ad/ITvAdSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session$8;->val$type:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$Session$8;->val$data:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ad/ITvAdSessionCallback;->onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 656
    :cond_15
    goto :goto_1e

    .line 654
    :catch_16
    move-exception v0

    .line 655
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvAdService"

    const-string v2, "error in sendTvAdSessionData"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method
