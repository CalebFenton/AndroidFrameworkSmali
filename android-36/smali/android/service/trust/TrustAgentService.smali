.class public Landroid/service/trust/TrustAgentService;
.super Landroid/app/Service;
.source "TrustAgentService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;,
        Landroid/service/trust/TrustAgentService$ConfigurationData;,
        Landroid/service/trust/TrustAgentService$TokenState;,
        Landroid/service/trust/TrustAgentService$GrantTrustFlags;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final greylist-max-o EXTRA_TOKEN_HANDLE:Ljava/lang/String; = "token_handle"

.field private static final greylist-max-o EXTRA_TOKEN_REMOVED_RESULT:Ljava/lang/String; = "token_removed_result"

.field private static final greylist-max-o EXTRA_TOKEN_STATE:Ljava/lang/String; = "token_state"

.field private static final greylist-max-o EXTRA_USER_HANDLE:Ljava/lang/String; = "user_handle"

.field public static final whitelist FLAG_GRANT_TRUST_DISMISS_KEYGUARD:I = 0x2

.field public static final whitelist FLAG_GRANT_TRUST_DISPLAY_MESSAGE:I = 0x8

.field public static final whitelist FLAG_GRANT_TRUST_INITIATED_BY_USER:I = 0x1

.field public static final whitelist FLAG_GRANT_TRUST_TEMPORARY_AND_RENEWABLE:I = 0x4

.field private static final greylist-max-o MSG_CONFIGURE:I = 0x2

.field private static final greylist-max-o MSG_DEVICE_LOCKED:I = 0x4

.field private static final greylist-max-o MSG_DEVICE_UNLOCKED:I = 0x5

.field private static final greylist-max-o MSG_ESCROW_TOKEN_ADDED:I = 0x7

.field private static final greylist-max-o MSG_ESCROW_TOKEN_REMOVED:I = 0x9

.field private static final greylist-max-o MSG_ESCROW_TOKEN_STATE_RECEIVED:I = 0x8

.field private static final greylist-max-o MSG_TRUST_TIMEOUT:I = 0x3

.field private static final greylist-max-o MSG_UNLOCK_ATTEMPT:I = 0x1

.field private static final greylist-max-o MSG_UNLOCK_LOCKOUT:I = 0x6

.field private static final blacklist MSG_USER_MAY_REQUEST_UNLOCK:I = 0xb

.field private static final blacklist MSG_USER_REQUESTED_UNLOCK:I = 0xa

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.trust.TrustAgentService"

.field public static final whitelist TOKEN_STATE_ACTIVE:I = 0x1

.field public static final whitelist TOKEN_STATE_INACTIVE:I = 0x0

.field public static final whitelist TRUST_AGENT_META_DATA:Ljava/lang/String; = "android.service.trust.trustagent"


# instance fields
.field private final greylist-max-o TAG:Ljava/lang/String;

.field private greylist-max-o mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mManagingTrust:Z

.field private greylist-max-o mPendingGrantTrustTask:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$uD3DsiDrofELvUQyVd18HwpW1H4(Landroid/service/trust/TrustAgentService;Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/trust/TrustAgentService;->lambda$grantTrust$1(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;
    .registers 1

    iget-object p0, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmManagingTrust(Landroid/service/trust/TrustAgentService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingGrantTrustTask(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/service/trust/TrustAgentService;Landroid/service/trust/ITrustAgentServiceCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingGrantTrustTask(Landroid/service/trust/TrustAgentService;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monError(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 84
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/trust/TrustAgentService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    .line 220
    new-instance v0, Landroid/service/trust/TrustAgentService$1;

    invoke-direct {v0, p0}, Landroid/service/trust/TrustAgentService$1;-><init>(Landroid/service/trust/TrustAgentService;)V

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic blacklist lambda$grantTrust$0(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V
    .registers 2
    .param p0, "resultCallback"    # Ljava/util/function/Consumer;
    .param p1, "result"    # Landroid/service/trust/GrantTrustResult;

    .line 489
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$grantTrust$1(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V
    .registers 5
    .param p1, "resultCallback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/service/trust/GrantTrustResult;

    .line 486
    if-eqz p1, :cond_c

    .line 489
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 491
    :cond_c
    return-void
.end method

.method private greylist-max-o onError(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 415
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method


# virtual methods
.method public final whitelist addEscrowToken([BLandroid/os/UserHandle;)V
    .registers 6
    .param p1, "token"    # [B
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 566
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_3
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_28

    if-eqz v1, :cond_19

    .line 572
    :try_start_7
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/service/trust/ITrustAgentServiceCallback;->addEscrowToken([BI)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_28

    .line 575
    goto :goto_17

    .line 573
    :catch_11
    move-exception v1

    .line 574
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_12
    const-string v2, "calling addEscrowToken"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 576
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_17
    monitor-exit v0

    .line 577
    return-void

    .line 568
    :cond_19
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trust agent is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/trust/TrustAgentService;
    .end local p1    # "token":[B
    .end local p2    # "user":Landroid/os/UserHandle;
    throw v1

    .line 576
    .restart local p0    # "this":Landroid/service/trust/TrustAgentService;
    .restart local p1    # "token":[B
    .restart local p2    # "user":Landroid/os/UserHandle;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public final whitelist grantTrust(Ljava/lang/CharSequence;JI)V
    .registers 11
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "durationMs"    # J
    .param p4, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 451
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .end local p1    # "message":Ljava/lang/CharSequence;
    .end local p2    # "durationMs":J
    .end local p4    # "flags":I
    .local v1, "message":Ljava/lang/CharSequence;
    .local v2, "durationMs":J
    .local v4, "flags":I
    invoke-virtual/range {v0 .. v5}, Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JILjava/util/function/Consumer;)V

    .line 452
    return-void
.end method

.method public final whitelist grantTrust(Ljava/lang/CharSequence;JILjava/util/function/Consumer;)V
    .registers 20
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "durationMs"    # J
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "JI",
            "Ljava/util/function/Consumer<",
            "Landroid/service/trust/GrantTrustResult;",
            ">;)V"
        }
    .end annotation

    .line 477
    .local p5, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/trust/GrantTrustResult;>;"
    iget-object v7, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 478
    :try_start_3
    iget-boolean v0, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    if-eqz v0, :cond_3f

    .line 484
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    move-object v13, v0

    .line 485
    .local v13, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/trust/GrantTrustResult;>;"
    new-instance v0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;

    move-object/from16 v6, p5

    invoke-direct {v0, p0, v6}, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;-><init>(Landroid/service/trust/TrustAgentService;Ljava/util/function/Consumer;)V

    invoke-virtual {v13, v0}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 493
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_47

    if-eqz v0, :cond_30

    .line 495
    :try_start_1b
    iget-object v8, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v10, p2

    move/from16 v12, p4

    invoke-interface/range {v8 .. v13}, Landroid/service/trust/ITrustAgentServiceCallback;->grantTrust(Ljava/lang/CharSequence;JILcom/android/internal/infra/AndroidFuture;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_28} :catch_29
    .catchall {:try_start_1b .. :try_end_28} :catchall_47

    .line 498
    :goto_28
    goto :goto_3d

    .line 496
    :catch_29
    move-exception v0

    .line 497
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2a
    const-string v2, "calling enableTrust()"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_28

    .line 502
    :cond_30
    new-instance v0, Landroid/service/trust/TrustAgentService$2;

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/service/trust/TrustAgentService$2;-><init>(Landroid/service/trust/TrustAgentService;Ljava/lang/CharSequence;JILjava/util/function/Consumer;)V

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    .line 509
    .end local v13    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/trust/GrantTrustResult;>;"
    :goto_3d
    monitor-exit v7

    .line 510
    return-void

    .line 479
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot grant trust if agent is not managing trust. Call setManagingTrust(true) first."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/trust/TrustAgentService;
    .end local p1    # "message":Ljava/lang/CharSequence;
    .end local p2    # "durationMs":J
    .end local p4    # "flags":I
    .end local p5    # "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/trust/GrantTrustResult;>;"
    throw v0

    .line 509
    .restart local p0    # "this":Landroid/service/trust/TrustAgentService;
    .restart local p1    # "message":Ljava/lang/CharSequence;
    .restart local p2    # "durationMs":J
    .restart local p4    # "flags":I
    .restart local p5    # "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/trust/GrantTrustResult;>;"
    :catchall_47
    move-exception v0

    monitor-exit v7
    :try_end_49
    .catchall {:try_start_2a .. :try_end_49} :catchall_47

    throw v0
.end method

.method public final whitelist grantTrust(Ljava/lang/CharSequence;JZ)V
    .registers 5
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "durationMs"    # J
    .param p4, "initiatedByUser"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JI)V

    .line 442
    return-void
.end method

.method public final whitelist isEscrowTokenActive(JLandroid/os/UserHandle;)V
    .registers 7
    .param p1, "handle"    # J
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 589
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_3
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_28

    if-eqz v1, :cond_19

    .line 595
    :try_start_7
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/service/trust/ITrustAgentServiceCallback;->isEscrowTokenActive(JI)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_28

    .line 598
    goto :goto_17

    .line 596
    :catch_11
    move-exception v1

    .line 597
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_12
    const-string v2, "calling isEscrowTokenActive"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 599
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_17
    monitor-exit v0

    .line 600
    return-void

    .line 591
    :cond_19
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trust agent is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/trust/TrustAgentService;
    .end local p1    # "handle":J
    .end local p3    # "user":Landroid/os/UserHandle;
    throw v1

    .line 599
    .restart local p0    # "this":Landroid/service/trust/TrustAgentService;
    .restart local p1    # "handle":J
    .restart local p3    # "user":Landroid/os/UserHandle;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public final whitelist lockUser()V
    .registers 3

    .line 664
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    if-eqz v0, :cond_10

    .line 666
    :try_start_4
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentServiceCallback;->lockUser()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 669
    goto :goto_10

    .line 667
    :catch_a
    move-exception v0

    .line 668
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "calling lockUser"

    invoke-direct {p0, v1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 671
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 701
    new-instance v0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;-><init>(Landroid/service/trust/TrustAgentService;Landroid/service/trust/TrustAgentService-IA;)V

    return-object v0
.end method

.method public whitelist onConfigure(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;)Z"
        }
    .end annotation

    .line 429
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreate()V
    .registers 7

    .line 286
    const-string v0, "android.permission.BIND_TRUST_AGENT"

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 287
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .local v1, "component":Landroid/content/ComponentName;
    :try_start_e
    invoke-virtual {p0}, Landroid/service/trust/TrustAgentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 290
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 297
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    goto :goto_64

    .line 291
    .restart local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_20
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not declared with the permission \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "component":Landroid/content/ComponentName;
    .end local p0    # "this":Landroid/service/trust/TrustAgentService;
    throw v3
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_47} :catch_47

    .line 295
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "component":Landroid/content/ComponentName;
    .restart local p0    # "this":Landroid/service/trust/TrustAgentService;
    :catch_47
    move-exception v0

    .line 296
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get ServiceInfo for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_64
    return-void
.end method

.method public whitelist onDeviceLocked()V
    .registers 1

    .line 358
    return-void
.end method

.method public whitelist onDeviceUnlockLockout(J)V
    .registers 3
    .param p1, "timeoutMs"    # J

    .line 380
    return-void
.end method

.method public whitelist onDeviceUnlocked()V
    .registers 1

    .line 365
    return-void
.end method

.method public whitelist onEscrowTokenAdded([BJLandroid/os/UserHandle;)V
    .registers 5
    .param p1, "token"    # [B
    .param p2, "handle"    # J
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 392
    return-void
.end method

.method public whitelist onEscrowTokenRemoved(JZ)V
    .registers 4
    .param p1, "handle"    # J
    .param p3, "successful"    # Z

    .line 412
    return-void
.end method

.method public whitelist onEscrowTokenStateReceived(JI)V
    .registers 4
    .param p1, "handle"    # J
    .param p3, "tokenState"    # I

    .line 402
    return-void
.end method

.method public whitelist onTrustTimeout()V
    .registers 1

    .line 351
    return-void
.end method

.method public whitelist onUnlockAttempt(Z)V
    .registers 2
    .param p1, "successful"    # Z

    .line 307
    return-void
.end method

.method public whitelist onUserMayRequestUnlock()V
    .registers 1

    .line 320
    return-void
.end method

.method public whitelist onUserRequestedUnlock(Z)V
    .registers 2
    .param p1, "dismissKeyguard"    # Z

    .line 341
    return-void
.end method

.method public final whitelist removeEscrowToken(JLandroid/os/UserHandle;)V
    .registers 7
    .param p1, "handle"    # J
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 612
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    :try_start_3
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_28

    if-eqz v1, :cond_19

    .line 618
    :try_start_7
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/service/trust/ITrustAgentServiceCallback;->removeEscrowToken(JI)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_28

    .line 621
    goto :goto_17

    .line 619
    :catch_11
    move-exception v1

    .line 620
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_12
    const-string v2, "callling removeEscrowToken"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 622
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_17
    monitor-exit v0

    .line 623
    return-void

    .line 614
    :cond_19
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trust agent is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/trust/TrustAgentService;
    .end local p1    # "handle":J
    .end local p3    # "user":Landroid/os/UserHandle;
    throw v1

    .line 622
    .restart local p0    # "this":Landroid/service/trust/TrustAgentService;
    .restart local p1    # "handle":J
    .restart local p3    # "user":Landroid/os/UserHandle;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public final whitelist revokeTrust()V
    .registers 4

    .line 516
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_3
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_a

    .line 518
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    .line 520
    :cond_a
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1c

    if-eqz v1, :cond_1a

    .line 522
    :try_start_e
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v1}, Landroid/service/trust/ITrustAgentServiceCallback;->revokeTrust()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14
    .catchall {:try_start_e .. :try_end_13} :catchall_1c

    .line 525
    goto :goto_1a

    .line 523
    :catch_14
    move-exception v1

    .line 524
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "calling revokeTrust()"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 527
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    monitor-exit v0

    .line 528
    return-void

    .line 527
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public final whitelist setManagingTrust(Z)V
    .registers 5
    .param p1, "managingTrust"    # Z

    .line 539
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_3
    iget-boolean v1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    if-eq v1, p1, :cond_19

    .line 541
    iput-boolean p1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    .line 542
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    if-eqz v1, :cond_19

    .line 544
    :try_start_d
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentServiceCallback;->setManagingTrust(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    .line 547
    goto :goto_19

    .line 545
    :catch_13
    move-exception v1

    .line 546
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_14
    const-string v2, "calling setManagingTrust()"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 550
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    monitor-exit v0

    .line 551
    return-void

    .line 550
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public final whitelist showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 682
    if-eqz p1, :cond_29

    .line 685
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    :try_start_5
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_26

    if-eqz v1, :cond_17

    .line 691
    :try_start_9
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentServiceCallback;->showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_26

    .line 694
    goto :goto_15

    .line 692
    :catch_f
    move-exception v1

    .line 693
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_10
    const-string v2, "calling showKeyguardErrorMessage"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 695
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_15
    monitor-exit v0

    .line 696
    return-void

    .line 687
    :cond_17
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot show message because service is not connected to framework."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trust agent is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/trust/TrustAgentService;
    .end local p1    # "message":Ljava/lang/CharSequence;
    throw v1

    .line 695
    .restart local p0    # "this":Landroid/service/trust/TrustAgentService;
    .restart local p1    # "message":Ljava/lang/CharSequence;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_26

    throw v1

    .line 683
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "message cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist unlockUserWithToken(J[BLandroid/os/UserHandle;)V
    .registers 9
    .param p1, "handle"    # J
    .param p3, "token"    # [B
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 634
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/service/trust/TrustAgentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 635
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0, p4}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 636
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "User already unlocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void

    .line 640
    :cond_17
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 641
    :try_start_1a
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_3f

    if-eqz v2, :cond_30

    .line 646
    :try_start_1e
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, p1, p2, p3, v3}, Landroid/service/trust/ITrustAgentServiceCallback;->unlockUserWithToken(J[BI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_28
    .catchall {:try_start_1e .. :try_end_27} :catchall_3f

    .line 649
    goto :goto_2e

    .line 647
    :catch_28
    move-exception v2

    .line 648
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v3, "calling unlockUserWithToken"

    invoke-direct {p0, v3}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 650
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2e
    monitor-exit v1

    .line 651
    return-void

    .line 642
    :cond_30
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v3, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Trust agent is not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "um":Landroid/os/UserManager;
    .end local p0    # "this":Landroid/service/trust/TrustAgentService;
    .end local p1    # "handle":J
    .end local p3    # "token":[B
    .end local p4    # "user":Landroid/os/UserHandle;
    throw v2

    .line 650
    .restart local v0    # "um":Landroid/os/UserManager;
    .restart local p0    # "this":Landroid/service/trust/TrustAgentService;
    .restart local p1    # "handle":J
    .restart local p3    # "token":[B
    .restart local p4    # "user":Landroid/os/UserHandle;
    :catchall_3f
    move-exception v2

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_3f

    throw v2
.end method
