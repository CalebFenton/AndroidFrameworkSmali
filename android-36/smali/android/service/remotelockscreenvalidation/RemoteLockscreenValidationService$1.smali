.class Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1;
.super Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService$Stub;
.source "RemoteLockscreenValidationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;


# direct methods
.method constructor blacklist <init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1;->this$0:Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;

    invoke-direct {p0}, Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist validateLockscreenGuess([BLandroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V
    .registers 7
    .param p1, "guess"    # [B
    .param p2, "callback"    # Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;

    .line 59
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1;->this$0:Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;

    invoke-static {v0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;->-$$Nest$fgetmHandler(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1;->this$0:Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;

    new-instance v3, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$1;

    invoke-direct {v3, p0, p2}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$1;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1;Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V

    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    return-void
.end method
