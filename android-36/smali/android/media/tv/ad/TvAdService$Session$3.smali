.class Landroid/media/tv/ad/TvAdService$Session$3;
.super Ljava/lang/Object;
.source "TvAdService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdService$Session;->requestCurrentChannelUri()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdService$Session;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdService$Session;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/tv/ad/TvAdService$Session;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 309
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$Session$3;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 317
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session$3;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdService$Session;)Landroid/media/tv/ad/ITvAdSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 318
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session$3;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdService$Session;)Landroid/media/tv/ad/ITvAdSessionCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/tv/ad/ITvAdSessionCallback;->onRequestCurrentChannelUri()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 322
    :cond_11
    goto :goto_1a

    .line 320
    :catch_12
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvAdService"

    const-string v2, "error in requestCurrentChannelUri"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method
