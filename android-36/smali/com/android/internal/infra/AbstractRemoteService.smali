.class public abstract Lcom/android/internal/infra/AbstractRemoteService;
.super Ljava/lang/Object;
.source "AbstractRemoteService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;,
        Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;,
        Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;,
        Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;,
        Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;,
        Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/internal/infra/AbstractRemoteService<",
        "TS;TI;>;I::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final blacklist LAST_PRIVATE_MSG:I = 0x2

.field private static final blacklist MSG_BIND:I = 0x1

.field private static final blacklist MSG_UNBIND:I = 0x2

.field public static final blacklist PERMANENT_BOUND_TIMEOUT_MS:J = 0x0L

.field private static final blacklist SERVICE_NOT_EXIST:I = -0x1


# instance fields
.field private final blacklist mBindingFlags:I

.field private blacklist mBound:Z

.field private blacklist mCompleted:Z

.field protected final blacklist mComponentName:Landroid/content/ComponentName;

.field private blacklist mConnecting:Z

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDestroyed:Z

.field protected final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mIntent:Landroid/content/Intent;

.field private blacklist mNextUnbind:J

.field protected blacklist mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private final blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mServiceDied:Z

.field private blacklist mServiceExitReason:I

.field private blacklist mServiceExitSubReason:I

.field protected final blacklist mTag:Ljava/lang/String;

.field protected final blacklist mUnfinishedRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mUserId:I

.field public final blacklist mVerbose:Z

.field private final blacklist mVultureCallback:Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$3UrSm20TOaURtb6HUKKluGlF4uo(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleUnbind()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$412ApOMGqykBGncTNhVyKtorm44(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleDestroy()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$A5Vzy8VSbWa-ycyIpVbrIV89J0U(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleEnsureBound()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mfCKWm2e9IywFiouI7dZPaFZwf8(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->handleFinishRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vvZVpn_5WoMADq9dzie8Ivl7fXA(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleBinderDied()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnecting(Lcom/android/internal/infra/AbstractRemoteService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDestroyed(Lcom/android/internal/infra/AbstractRemoteService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnecting(Lcom/android/internal/infra/AbstractRemoteService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceDied(Lcom/android/internal/infra/AbstractRemoteService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceDied:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceExitReason(Lcom/android/internal/infra/AbstractRemoteService;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitReason:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceExitSubReason(Lcom/android/internal/infra/AbstractRemoteService;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitSubReason:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBinderDied(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleBinderDied()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnConnectedStateChangedInternal(Lcom/android/internal/infra/AbstractRemoteService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->handleOnConnectedStateChangedInternal(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleUnbind(Lcom/android/internal/infra/AbstractRemoteService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->scheduleUnbind(Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceInterface"    # Ljava/lang/String;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "bindingFlags"    # I
    .param p8, "verbose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "I",
            "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<",
            "TS;>;",
            "Landroid/os/Handler;",
            "IZ)V"
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    .local p5, "callback":Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;, "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    .line 93
    new-instance v0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;-><init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService-IA;)V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    .line 130
    iput-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mContext:Landroid/content/Context;

    .line 131
    iput-object p5, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVultureCallback:Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;

    .line 132
    iput-boolean p8, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    .line 133
    iput-object p3, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mIntent:Landroid/content/Intent;

    .line 135
    iput p4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUserId:I

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    .line 137
    iput p7, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBindingFlags:I

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitReason:I

    .line 139
    iput v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitSubReason:I

    .line 140
    return-void
.end method

.method private blacklist cancelScheduledUnbind()V
    .registers 3

    .line 396
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    return-void
.end method

.method private blacklist checkIfDestroyed()Z
    .registers 4

    .line 574
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    if-eqz v0, :cond_28

    .line 575
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_28

    .line 576
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not handling operation as service for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_28
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    return v0
.end method

.method private blacklist handleBinderDied()V
    .registers 3

    .line 239
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 240
    :cond_7
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_15

    .line 241
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 243
    :cond_15
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUserId:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/infra/AbstractRemoteService;->updateServicelicationExitInfo(Landroid/content/ComponentName;I)V

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    .line 245
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    .line 246
    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceDied:Z

    .line 247
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->cancelScheduledUnbind()V

    .line 249
    move-object v0, p0

    .line 250
    .local v0, "castService":Lcom/android/internal/infra/AbstractRemoteService;, "TS;"
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVultureCallback:Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;->onServiceDied(Ljava/lang/Object;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleBindFailure()V

    .line 252
    return-void
.end method

.method private blacklist handleDestroy()V
    .registers 2

    .line 220
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 221
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleOnDestroy()V

    .line 222
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleEnsureUnbound()V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    .line 224
    return-void
.end method

.method private blacklist handleEnsureBound()V
    .registers 10

    .line 495
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v0

    if-nez v0, :cond_66

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    if-eqz v0, :cond_b

    goto :goto_66

    .line 497
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string v1, "ensureBound()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    .line 500
    const v1, 0x4001001

    iget v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBindingFlags:I

    or-int v6, v2, v1

    .line 503
    .local v6, "flags":I
    iget-object v3, p0, Lcom/android/internal/infra/AbstractRemoteService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v7, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v8, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUserId:I

    invoke-direct {v8, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v1

    .line 505
    .local v1, "willBind":Z
    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBound:Z

    .line 507
    if-nez v1, :cond_65

    .line 508
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not bind to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/infra/AbstractRemoteService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using flags "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    .line 511
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceDied:Z

    if-nez v0, :cond_65

    .line 512
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleBinderDied()V

    .line 515
    :cond_65
    return-void

    .line 495
    .end local v1    # "willBind":Z
    .end local v6    # "flags":I
    :cond_66
    :goto_66
    return-void
.end method

.method private blacklist handleEnsureUnbound()V
    .registers 4

    .line 518
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    if-nez v0, :cond_b

    return-void

    .line 520
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string v1, "ensureUnbound()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    .line 522
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 523
    invoke-direct {p0, v0}, Lcom/android/internal/infra/AbstractRemoteService;->handleOnConnectedStateChangedInternal(Z)V

    .line 524
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_32

    .line 525
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 526
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    .line 529
    :cond_32
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mNextUnbind:J

    .line 530
    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBound:Z

    if-eqz v1, :cond_43

    .line 531
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 532
    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBound:Z

    .line 534
    :cond_43
    return-void
.end method

.method private blacklist handleFinishRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    .line 359
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    .local p1, "finishedRequest":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 360
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 361
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    .line 362
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->scheduleUnbind()V

    .line 365
    :cond_14
    return-void

    .line 361
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private blacklist handleIsBound()Z
    .registers 2

    .line 491
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist handleOnConnectedStateChangedInternal(Z)V
    .registers 2
    .param p1, "connected"    # Z

    .line 165
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->handleOnConnectedStateChanged(Z)V

    .line 166
    if-eqz p1, :cond_8

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handlePendingRequests()V

    .line 169
    :cond_8
    return-void
.end method

.method private blacklist handleUnbind()V
    .registers 2

    .line 445
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 447
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleEnsureUnbound()V

    .line 448
    return-void
.end method

.method private blacklist scheduleUnbind(Z)V
    .registers 8
    .param p1, "delay"    # Z

    .line 423
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->getTimeoutIdleBindMillis()J

    move-result-wide v0

    .line 425
    .local v0, "unbindDelay":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_27

    .line 426
    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not scheduling unbind when value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_26
    return-void

    .line 430
    :cond_27
    if-nez p1, :cond_2b

    .line 431
    const-wide/16 v0, 0x0

    .line 434
    :cond_2b
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->cancelScheduledUnbind()V

    .line 438
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mNextUnbind:J

    .line 439
    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbinding in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mNextUnbind:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_5e
    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 441
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v3

    .line 440
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 442
    return-void
.end method

.method private blacklist updateServicelicationExitInfo(Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 255
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 256
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 259
    .local v2, "plistSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationExitInfo;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_b
    invoke-interface {v0, v1, v4, v3, p2}, Landroid/app/IActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;III)Landroid/content/pm/ParceledListSlice;

    move-result-object v3
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_11

    move-object v2, v3

    .line 262
    goto :goto_12

    .line 260
    :catch_11
    move-exception v3

    .line 263
    :goto_12
    if-nez v2, :cond_15

    .line 264
    return-void

    .line 266
    :cond_15
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 267
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ApplicationExitInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 268
    return-void

    .line 270
    :cond_20
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationExitInfo;

    .line 271
    .local v4, "info":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v4}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v5

    iput v5, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitReason:I

    .line 272
    invoke-virtual {v4}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    move-result v5

    iput v5, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitSubReason:I

    .line 273
    iget-boolean v5, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v5, :cond_65

    .line 274
    iget-object v5, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateServicelicationExitInfo: exitReason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitReason:I

    .line 275
    invoke-static {v7}, Landroid/app/ApplicationExitInfo;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exitSubReason= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitSubReason:I

    .line 276
    invoke-static {v7}, Landroid/app/ApplicationExitInfo;->subreasonToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 274
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_65
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 235
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    return-void
.end method

.method public final blacklist destroy()V
    .registers 3

    .line 146
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    return-void
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 13
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 288
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    const-string v0, "  "

    .line 289
    .local v0, "tab":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "service:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 290
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "userId="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUserId:I

    .line 291
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 292
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "componentName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    .line 293
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 294
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "destroyed="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    .line 295
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 296
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "numUnfinishedRequests="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    .line 297
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 298
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "bound="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBound:Z

    .line 299
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 300
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v1

    .line 301
    .local v1, "bound":Z
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "connected="

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    .line 302
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->getTimeoutIdleBindMillis()J

    move-result-wide v2

    .line 304
    .local v2, "idleTimeout":J
    if-eqz v1, :cond_d7

    .line 305
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_d2

    .line 306
    const-string v4, " (unbind in : "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 307
    iget-wide v4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mNextUnbind:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 308
    const-string v4, ")"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_d7

    .line 310
    :cond_d2
    const-string v4, " (permanently bound)"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 313
    :cond_d7
    :goto_d7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 314
    iget v4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitReason:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_fa

    .line 315
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string/jumbo v6, "serviceExistReason="

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    iget v6, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitReason:I

    .line 316
    invoke-static {v6}, Landroid/app/ApplicationExitInfo;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 317
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 319
    :cond_fa
    iget v4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitSubReason:I

    if-eq v4, v5, :cond_119

    .line 320
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string/jumbo v5, "serviceExistSubReason="

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitSubReason:I

    .line 321
    invoke-static {v5}, Landroid/app/ApplicationExitInfo;->subreasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 322
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 324
    :cond_119
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "mBindingFlags="

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBindingFlags:I

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 325
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "idleTimeout="

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v7, v2, v5

    .line 326
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string/jumbo v7, "s\n"

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 327
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string/jumbo v8, "requestTimeout="

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 329
    :try_start_14e
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->getRemoteRequestMillis()J

    move-result-wide v8

    div-long/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_15e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_14e .. :try_end_15e} :catch_15f

    .line 332
    goto :goto_165

    .line 330
    :catch_15f
    move-exception v4

    .line 331
    .local v4, "e":Ljava/lang/UnsupportedOperationException;
    const-string v5, "not supported\n"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 333
    .end local v4    # "e":Ljava/lang/UnsupportedOperationException;
    :goto_165
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 334
    return-void
.end method

.method protected blacklist executeAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "TI;>;)V"
        }
    .end annotation

    .line 391
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    .local p1, "request":Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;, "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<TI;>;"
    new-instance v0, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 392
    .local v0, "asyncRequest":Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest<TS;TI;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractRemoteService;->handlePendingRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    .line 393
    return-void
.end method

.method blacklist finishRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    .line 354
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    .local p1, "finshedRequest":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda0;-><init>()V

    .line 355
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 354
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    return-void
.end method

.method public final blacklist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 161
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected blacklist getRemoteRequestMillis()J
    .registers 4

    .line 207
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implemented by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist getServiceInterface()Landroid/os/IInterface;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    return-object v0
.end method

.method protected abstract blacklist getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TI;"
        }
    .end annotation
.end method

.method protected abstract blacklist getTimeoutIdleBindMillis()J
.end method

.method abstract blacklist handleBindFailure()V
.end method

.method protected blacklist handleOnConnectedStateChanged(Z)V
    .registers 2
    .param p1, "state"    # Z

    .line 183
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    return-void
.end method

.method protected abstract blacklist handleOnDestroy()V
.end method

.method protected final blacklist handlePendingRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    .line 455
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    .local p1, "pendingRequest":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->checkIfDestroyed()Z

    move-result v0

    if-nez v0, :cond_6c

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mCompleted:Z

    if-eqz v0, :cond_b

    goto :goto_6c

    .line 457
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v0

    if-nez v0, :cond_34

    .line 458
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePendingRequest(): queuing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->handlePendingRequestWhileUnBound(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    .line 460
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleEnsureBound()V

    goto :goto_68

    .line 462
    :cond_34
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePendingRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_50
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 465
    :try_start_53
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_69

    .line 467
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->cancelScheduledUnbind()V

    .line 469
    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->run()V

    .line 470
    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mCompleted:Z

    .line 474
    :cond_68
    :goto_68
    return-void

    .line 466
    :catchall_69
    move-exception v1

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v1

    .line 455
    :cond_6c
    :goto_6c
    return-void
.end method

.method abstract blacklist handlePendingRequestWhileUnBound(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation
.end method

.method abstract blacklist handlePendingRequests()V
.end method

.method public final blacklist isDestroyed()Z
    .registers 2

    .line 153
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    return v0
.end method

.method protected blacklist scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "TI;>;)V"
        }
    .end annotation

    .line 376
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    .local p1, "request":Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;, "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<TI;>;"
    new-instance v0, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 377
    .local v0, "asyncRequest":Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest<TS;TI;>;"
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda4;-><init>()V

    .line 378
    invoke-static {v2, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 377
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 379
    return-void
.end method

.method protected blacklist scheduleBind()V
    .registers 4

    .line 406
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 407
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "scheduleBind(): already scheduled"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_15
    return-void

    .line 410
    :cond_16
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 411
    invoke-virtual {v2, v1}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v1

    .line 410
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 412
    return-void
.end method

.method protected blacklist scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    .line 344
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    .local p1, "pendingRequest":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 346
    return-void
.end method

.method protected blacklist scheduleUnbind()V
    .registers 2

    .line 419
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/infra/AbstractRemoteService;->scheduleUnbind(Z)V

    .line 420
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 585
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 586
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 587
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_32

    const-string v1, " (bound)"

    goto :goto_34

    :cond_32
    const-string v1, " (unbound)"

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 588
    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    if-eqz v1, :cond_3f

    const-string v1, " (destroyed)"

    goto :goto_41

    :cond_3f
    const-string v1, ""

    :goto_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    return-object v0
.end method
