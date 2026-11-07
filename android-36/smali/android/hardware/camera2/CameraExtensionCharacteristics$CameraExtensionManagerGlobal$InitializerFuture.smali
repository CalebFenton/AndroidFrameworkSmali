.class Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;
.super Ljava/lang/Object;
.source "CameraExtensionCharacteristics.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitializerFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mCondVar:Landroid/os/ConditionVariable;

.field private volatile blacklist mStatus:Ljava/lang/Boolean;


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;->mCondVar:Landroid/os/ConditionVariable;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/CameraExtensionCharacteristics-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api cancel(Z)Z
    .registers 3
    .param p1, "mayInterruptIfRunning"    # Z

    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist get()Ljava/lang/Boolean;
    .registers 2

    .line 391
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;->mCondVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 392
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;->mStatus:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Boolean;
    .registers 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 397
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p1, p2, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 398
    .local v0, "timeoutMs":J
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;->mCondVar:Landroid/os/ConditionVariable;

    invoke-virtual {v2, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 403
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;->mStatus:Ljava/lang/Boolean;

    if-eqz v2, :cond_15

    .line 406
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;->mStatus:Ljava/lang/Boolean;

    return-object v2

    .line 404
    :cond_15
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 399
    :cond_1b
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to receive status after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 365
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api isCancelled()Z
    .registers 2

    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isDone()Z
    .registers 2

    .line 386
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;->mStatus:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist setStatus(Z)V
    .registers 3
    .param p1, "status"    # Z

    .line 370
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;->mStatus:Ljava/lang/Boolean;

    .line 371
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;->mCondVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 372
    return-void
.end method
