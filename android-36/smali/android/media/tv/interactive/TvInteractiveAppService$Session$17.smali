.class Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;
.super Ljava/lang/Object;
.source "TvInteractiveAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppService$Session;->requestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

.field final synthetic blacklist val$algorithm:Ljava/lang/String;

.field final synthetic blacklist val$data:[B

.field final synthetic blacklist val$host:Ljava/lang/String;

.field final synthetic blacklist val$port:I

.field final synthetic blacklist val$signingId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 7
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppService$Session;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
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
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1683
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;->val$signingId:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;->val$algorithm:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;->val$host:Ljava/lang/String;

    iput p5, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;->val$port:I

    iput-object p6, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 1691
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1692
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;->val$signingId:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;->val$algorithm:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;->val$host:Ljava/lang/String;

    iget v5, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;->val$port:I

    iget-object v6, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;->val$data:[B

    invoke-interface/range {v1 .. v6}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestSigning2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 1697
    :cond_1b
    goto :goto_24

    .line 1695
    :catch_1c
    move-exception v0

    .line 1696
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestSigning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1698
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method
