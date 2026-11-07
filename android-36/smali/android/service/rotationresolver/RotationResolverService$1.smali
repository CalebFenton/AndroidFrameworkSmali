.class Landroid/service/rotationresolver/RotationResolverService$1;
.super Landroid/service/rotationresolver/IRotationResolverService$Stub;
.source "RotationResolverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/rotationresolver/RotationResolverService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/rotationresolver/RotationResolverService;


# direct methods
.method public static synthetic blacklist $r8$lambda$_sYkl0Zwu5OueDc7egj29Ihhz3Y(Landroid/service/rotationresolver/RotationResolverService;Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/ICancellationSignal;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/service/rotationresolver/RotationResolverService;->-$$Nest$mresolveRotation(Landroid/service/rotationresolver/RotationResolverService;Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/ICancellationSignal;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/rotationresolver/RotationResolverService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/rotationresolver/RotationResolverService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 119
    iput-object p1, p0, Landroid/service/rotationresolver/RotationResolverService$1;->this$0:Landroid/service/rotationresolver/RotationResolverService;

    invoke-direct {p0}, Landroid/service/rotationresolver/IRotationResolverService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist resolveRotation(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolutionRequest;)V
    .registers 7
    .param p1, "callback"    # Landroid/service/rotationresolver/IRotationResolverCallback;
    .param p2, "request"    # Landroid/service/rotationresolver/RotationResolutionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 127
    .local v0, "transport":Landroid/os/ICancellationSignal;
    invoke-interface {p1, v0}, Landroid/service/rotationresolver/IRotationResolverCallback;->onCancellable(Landroid/os/ICancellationSignal;)V

    .line 128
    iget-object v1, p0, Landroid/service/rotationresolver/RotationResolverService$1;->this$0:Landroid/service/rotationresolver/RotationResolverService;

    invoke-static {v1}, Landroid/service/rotationresolver/RotationResolverService;->-$$Nest$fgetmMainThreadHandler(Landroid/service/rotationresolver/RotationResolverService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/rotationresolver/RotationResolverService$1$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/service/rotationresolver/RotationResolverService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v3, p0, Landroid/service/rotationresolver/RotationResolverService$1;->this$0:Landroid/service/rotationresolver/RotationResolverService;

    .line 129
    invoke-static {v2, v3, p1, p2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    return-void
.end method
