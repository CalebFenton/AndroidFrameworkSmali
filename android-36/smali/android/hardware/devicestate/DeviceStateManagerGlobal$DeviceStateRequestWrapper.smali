.class final Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
.super Ljava/lang/Object;
.source "DeviceStateManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceStateRequestWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mRequest:Landroid/hardware/devicestate/DeviceStateRequest;


# direct methods
.method public static synthetic blacklist $r8$lambda$AvuoSy4ZoxMw0x2eoajUl9CARE0(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->lambda$notifyRequestCanceled$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$U72DUahuGtn2AaWKs-CAIdEF3uI(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->lambda$notifyRequestActive$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequest(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)Landroid/hardware/devicestate/DeviceStateRequest;
    .registers 1

    iget-object p0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/hardware/devicestate/DeviceStateRequest;Landroid/hardware/devicestate/DeviceStateRequest$Callback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "request"    # Landroid/hardware/devicestate/DeviceStateRequest;
    .param p2, "callback"    # Landroid/hardware/devicestate/DeviceStateRequest$Callback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    invoke-direct {p0, p2, p3}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->validateRequestWrapperParameters(Landroid/hardware/devicestate/DeviceStateRequest$Callback;Ljava/util/concurrent/Executor;)V

    .line 444
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    .line 445
    iput-object p2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    .line 446
    iput-object p3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 447
    return-void
.end method

.method private synthetic blacklist lambda$notifyRequestActive$0()V
    .registers 3

    .line 454
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    invoke-interface {v0, v1}, Landroid/hardware/devicestate/DeviceStateRequest$Callback;->onRequestActivated(Landroid/hardware/devicestate/DeviceStateRequest;)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyRequestCanceled$1()V
    .registers 3

    .line 462
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    invoke-interface {v0, v1}, Landroid/hardware/devicestate/DeviceStateRequest$Callback;->onRequestCanceled(Landroid/hardware/devicestate/DeviceStateRequest;)V

    return-void
.end method

.method private blacklist validateRequestWrapperParameters(Landroid/hardware/devicestate/DeviceStateRequest$Callback;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/devicestate/DeviceStateRequest$Callback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 467
    if-nez p1, :cond_d

    if-nez p2, :cond_5

    goto :goto_d

    .line 468
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback must be supplied with executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_d
    :goto_d
    if-nez p2, :cond_1a

    if-nez p1, :cond_12

    goto :goto_1a

    .line 470
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor must be supplied with callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method blacklist notifyRequestActive()V
    .registers 3

    .line 450
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    if-nez v0, :cond_5

    .line 451
    return-void

    .line 454
    :cond_5
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 455
    return-void
.end method

.method blacklist notifyRequestCanceled()V
    .registers 3

    .line 458
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    if-nez v0, :cond_5

    .line 459
    return-void

    .line 462
    :cond_5
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 463
    return-void
.end method
