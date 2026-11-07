.class Landroid/media/tv/ad/TvAdService$Session$5;
.super Ljava/lang/Object;
.source "TvAdService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdService$Session;->requestCurrentTvInputId()V
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

    .line 357
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$Session$5;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 365
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session$5;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdService$Session;)Landroid/media/tv/ad/ITvAdSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 366
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session$5;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdService$Session;)Landroid/media/tv/ad/ITvAdSessionCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/tv/ad/ITvAdSessionCallback;->onRequestCurrentTvInputId()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 370
    :cond_11
    goto :goto_1a

    .line 368
    :catch_12
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvAdService"

    const-string v2, "error in requestCurrentTvInputId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method
