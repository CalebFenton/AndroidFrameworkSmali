.class Landroid/media/tv/ad/TvAdService$Session$6;
.super Ljava/lang/Object;
.source "TvAdService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdService$Session;->requestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdService$Session;

.field final synthetic blacklist val$algorithm:Ljava/lang/String;

.field final synthetic blacklist val$alias:Ljava/lang/String;

.field final synthetic blacklist val$data:[B

.field final synthetic blacklist val$signingId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdService$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 6
    .param p1, "this$0"    # Landroid/media/tv/ad/TvAdService$Session;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 396
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$Session$6;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    iput-object p2, p0, Landroid/media/tv/ad/TvAdService$Session$6;->val$signingId:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/ad/TvAdService$Session$6;->val$algorithm:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/tv/ad/TvAdService$Session$6;->val$alias:Ljava/lang/String;

    iput-object p5, p0, Landroid/media/tv/ad/TvAdService$Session$6;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 404
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session$6;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdService$Session;)Landroid/media/tv/ad/ITvAdSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 405
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session$6;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdService$Session;)Landroid/media/tv/ad/ITvAdSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session$6;->val$signingId:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$Session$6;->val$algorithm:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/tv/ad/TvAdService$Session$6;->val$alias:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/tv/ad/TvAdService$Session$6;->val$data:[B

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/media/tv/ad/ITvAdSessionCallback;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 409
    :cond_19
    goto :goto_22

    .line 407
    :catch_1a
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvAdService"

    const-string v2, "error in requestSigning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_22
    return-void
.end method
