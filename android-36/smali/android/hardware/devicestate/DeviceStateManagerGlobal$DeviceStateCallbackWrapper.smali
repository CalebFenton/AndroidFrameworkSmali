.class final Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;
.super Ljava/lang/Object;
.source "DeviceStateManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceStateCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$5NqmG1NNK3cu5TNbjnHZzluTfQ8(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->lambda$notifySupportedDeviceStatesChanged$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lkP9XsfDo1r80vGuiV1BUMRMAH8(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;Landroid/hardware/devicestate/DeviceState;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->lambda$notifyDeviceStateChanged$1(Landroid/hardware/devicestate/DeviceState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rNeGZVrXgPifV17TWzWudk3z49U(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->lambda$execute$2(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;)Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 401
    iput-object p2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 402
    return-void
.end method

.method private blacklist execute(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "traceName"    # Ljava/lang/String;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 416
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 429
    return-void
.end method

.method private synthetic blacklist lambda$execute$2(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "traceName"    # Ljava/lang/String;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 417
    invoke-static {}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 419
    invoke-interface {v1}, Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 422
    :cond_2a
    :try_start_2a
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_37

    .line 424
    invoke-static {}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 425
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 428
    :cond_36
    return-void

    .line 424
    :catchall_37
    move-exception v0

    invoke-static {}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 425
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 427
    :cond_41
    throw v0
.end method

.method private synthetic blacklist lambda$notifyDeviceStateChanged$1(Landroid/hardware/devicestate/DeviceState;)V
    .registers 3
    .param p1, "newDeviceState"    # Landroid/hardware/devicestate/DeviceState;

    .line 412
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-interface {v0, p1}, Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;->onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V

    return-void
.end method

.method private synthetic blacklist lambda$notifySupportedDeviceStatesChanged$0(Ljava/util/List;)V
    .registers 3
    .param p1, "newSupportedDeviceStates"    # Ljava/util/List;

    .line 407
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-interface {v0, p1}, Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;->onSupportedStatesChanged(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method blacklist notifyDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .registers 4
    .param p1, "newDeviceState"    # Landroid/hardware/devicestate/DeviceState;

    .line 411
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;Landroid/hardware/devicestate/DeviceState;)V

    const-string v1, "notifyDeviceStateChanged"

    invoke-direct {p0, v1, v0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->execute(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 413
    return-void
.end method

.method blacklist notifySupportedDeviceStatesChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;)V"
        }
    .end annotation

    .line 406
    .local p1, "newSupportedDeviceStates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/devicestate/DeviceState;>;"
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 408
    return-void
.end method
