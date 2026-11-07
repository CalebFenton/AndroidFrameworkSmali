.class Landroid/media/tv/TvInputService$Session$11;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyAudioPresentationSelected(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic blacklist val$presentationId:I

.field final synthetic blacklist val$programId:I


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputService$Session;II)V
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

    .line 866
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$11;->this$0:Landroid/media/tv/TvInputService$Session;

    iput p2, p0, Landroid/media/tv/TvInputService$Session$11;->val$presentationId:I

    iput p3, p0, Landroid/media/tv/TvInputService$Session$11;->val$programId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 874
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$11;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 875
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$11;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputService$Session$11;->val$presentationId:I

    iget v2, p0, Landroid/media/tv/TvInputService$Session$11;->val$programId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputSessionCallback;->onAudioPresentationSelected(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 879
    :cond_15
    goto :goto_1e

    .line 877
    :catch_16
    move-exception v0

    .line 878
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyAudioPresentationSelected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 880
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method
