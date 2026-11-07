.class public abstract Landroid/service/rotationresolver/RotationResolverService;
.super Landroid/app/Service;
.source "RotationResolverService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;,
        Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallback;,
        Landroid/service/rotationresolver/RotationResolverService$FailureCodes;
    }
.end annotation


# static fields
.field public static final whitelist ROTATION_RESULT_FAILURE_CANCELLED:I = 0x0

.field public static final whitelist ROTATION_RESULT_FAILURE_NOT_SUPPORTED:I = 0x4

.field public static final whitelist ROTATION_RESULT_FAILURE_PREEMPTED:I = 0x2

.field public static final whitelist ROTATION_RESULT_FAILURE_TIMED_OUT:I = 0x1

.field public static final whitelist ROTATION_RESULT_FAILURE_UNKNOWN:I = 0x3

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.rotationresolver.RotationResolverService"


# instance fields
.field private blacklist mCancellationSignal:Landroid/os/CancellationSignal;

.field private final blacklist mMainThreadHandler:Landroid/os/Handler;

.field private blacklist mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMainThreadHandler(Landroid/service/rotationresolver/RotationResolverService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/rotationresolver/RotationResolverService;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresolveRotation(Landroid/service/rotationresolver/RotationResolverService;Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/ICancellationSignal;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/rotationresolver/RotationResolverService;->resolveRotation(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/ICancellationSignal;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendFailureResult(Landroid/service/rotationresolver/RotationResolverService;Landroid/service/rotationresolver/IRotationResolverCallback;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/rotationresolver/RotationResolverService;->sendFailureResult(Landroid/service/rotationresolver/IRotationResolverCallback;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendRotationResult(Landroid/service/rotationresolver/RotationResolverService;Landroid/service/rotationresolver/IRotationResolverCallback;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/rotationresolver/RotationResolverService;->sendRotationResult(Landroid/service/rotationresolver/IRotationResolverCallback;I)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 70
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mMainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist reportFailures(Landroid/service/rotationresolver/IRotationResolverCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/service/rotationresolver/IRotationResolverCallback;
    .param p2, "error"    # I

    .line 178
    :try_start_0
    invoke-interface {p1, p2}, Landroid/service/rotationresolver/IRotationResolverCallback;->onFailure(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 181
    goto :goto_8

    .line 179
    :catch_4
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 182
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_8
    return-void
.end method

.method private blacklist resolveRotation(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/ICancellationSignal;)V
    .registers 11
    .param p1, "callback"    # Landroid/service/rotationresolver/IRotationResolverCallback;
    .param p2, "request"    # Landroid/service/rotationresolver/RotationResolutionRequest;
    .param p3, "transport"    # Landroid/os/ICancellationSignal;

    .line 142
    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 143
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_23

    .line 144
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    invoke-static {v2}, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->-$$Nest$fgetmExpirationTime(Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_23

    .line 145
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/service/rotationresolver/RotationResolverService;->reportFailures(Landroid/service/rotationresolver/IRotationResolverCallback;I)V

    .line 146
    return-void

    .line 148
    :cond_23
    new-instance v1, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/service/rotationresolver/RotationResolutionRequest;->getTimeoutMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    const/4 v6, 0x0

    move-object v3, p0

    move-object v2, p1

    .end local p1    # "callback":Landroid/service/rotationresolver/IRotationResolverCallback;
    .local v2, "callback":Landroid/service/rotationresolver/IRotationResolverCallback;
    invoke-direct/range {v1 .. v6}, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;-><init>(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolverService;JLandroid/service/rotationresolver/RotationResolverService-IA;)V

    iput-object v1, v3, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    .line 150
    invoke-static {p3}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object p1

    iput-object p1, v3, Landroid/service/rotationresolver/RotationResolverService;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 152
    iget-object p1, v3, Landroid/service/rotationresolver/RotationResolverService;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v0, v3, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    invoke-virtual {p0, p2, p1, v0}, Landroid/service/rotationresolver/RotationResolverService;->onResolveRotation(Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallback;)V

    .line 153
    return-void
.end method

.method private blacklist sendFailureResult(Landroid/service/rotationresolver/IRotationResolverCallback;I)V
    .registers 4
    .param p1, "internalCallback"    # Landroid/service/rotationresolver/IRotationResolverCallback;
    .param p2, "error"    # I

    .line 169
    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    invoke-static {v0}, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->-$$Nest$fgetmCallback(Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;)Landroid/service/rotationresolver/IRotationResolverCallback;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/service/rotationresolver/RotationResolverService;->reportFailures(Landroid/service/rotationresolver/IRotationResolverCallback;I)V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    .line 173
    :cond_12
    return-void
.end method

.method private blacklist sendRotationResult(Landroid/service/rotationresolver/IRotationResolverCallback;I)V
    .registers 4
    .param p1, "internalCallback"    # Landroid/service/rotationresolver/IRotationResolverCallback;
    .param p2, "result"    # I

    .line 157
    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    invoke-static {v0}, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->-$$Nest$fgetmCallback(Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;)Landroid/service/rotationresolver/IRotationResolverCallback;

    move-result-object v0

    if-ne v0, p1, :cond_17

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    .line 160
    :try_start_f
    invoke-interface {p1, p2}, Landroid/service/rotationresolver/IRotationResolverCallback;->onSuccess(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 163
    goto :goto_17

    .line 161
    :catch_13
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 165
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 118
    const-string v0, "android.service.rotationresolver.RotationResolverService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 119
    new-instance v0, Landroid/service/rotationresolver/RotationResolverService$1;

    invoke-direct {v0, p0}, Landroid/service/rotationresolver/RotationResolverService$1;-><init>(Landroid/service/rotationresolver/RotationResolverService;)V

    return-object v0

    .line 134
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onResolveRotation(Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallback;)V
.end method
