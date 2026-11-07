.class abstract Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;
.super Lcom/android/internal/net/ipsec/ike/utils/StateMachine;
.source "AbstractSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;
    }
.end annotation


# static fields
.field protected static final blacklist CMD_CATEGORY_SIZE:I = 0x64

.field protected static final blacklist CMD_CHILD_LOCAL_REQUEST_BASE:I = 0x0

.field static final blacklist CMD_FORCE_TRANSITION:I = 0xc9

.field protected static final blacklist CMD_GENERIC_BASE:I = 0xc8

.field static final blacklist CMD_KILL_SESSION:I = 0xca

.field static final blacklist CMD_LOCAL_REQUEST_CREATE_CHILD:I = 0x1

.field static final blacklist CMD_LOCAL_REQUEST_DELETE_CHILD:I = 0x2

.field static final blacklist CMD_LOCAL_REQUEST_MAX:I = 0x5

.field static final blacklist CMD_LOCAL_REQUEST_MIGRATE_CHILD:I = 0x5

.field static final blacklist CMD_LOCAL_REQUEST_MIN:I = 0x1

.field static final blacklist CMD_LOCAL_REQUEST_REKEY_CHILD:I = 0x3

.field static final blacklist CMD_LOCAL_REQUEST_REKEY_CHILD_MOBIKE:I = 0x4

.field protected static final blacklist CMD_PRIVATE_BASE:I = 0x12c

.field private static final blacklist CMD_SHARED_BASE:I = 0x0

.field protected static final blacklist CMD_TIMEOUT_BASE:I = 0x64

.field static final blacklist REKEY_DELETE_TIMEOUT_MS:J

.field static final blacklist RETRY_INTERVAL_MS:J

.field protected static final blacklist SHARED_CMD_TO_STR:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist TIMEOUT_REKEY_REMOTE_DELETE:I = 0x65


# instance fields
.field final blacklist mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

.field protected volatile blacklist mIsClosing:Z

.field private final blacklist mLogTag:Ljava/lang/String;

.field protected final blacklist mUserCbExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->SHARED_CMD_TO_STR:Landroid/util/SparseArray;

    .line 86
    sget-object v0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->SHARED_CMD_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "Create Child"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->SHARED_CMD_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "Delete Child"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->SHARED_CMD_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "Rekey Child"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->SHARED_CMD_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "Migrate Child SA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->SHARED_CMD_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "Rekey Child (MOBIKE)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->SHARED_CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0xca

    const-string v2, "Kill session"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->SHARED_CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string v2, "Timout rekey remote delete"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->SHARED_CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0xc9

    const-string v2, "Force transition"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->REKEY_DELETE_TIMEOUT_MS:J

    .line 100
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->RETRY_INTERVAL_MS:J

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/net/ipsec/ike/IkeContext;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ikeContext"    # Lcom/android/internal/net/ipsec/ike/IkeContext;
    .param p3, "userCbExecutor"    # Ljava/util/concurrent/Executor;

    .line 111
    invoke-virtual {p2}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/utils/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mIsClosing:Z

    .line 113
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 114
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mLogTag:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mUserCbExecutor:Ljava/util/concurrent/Executor;

    .line 116
    return-void
.end method

.method private blacklist getMetricsIkeStateCode()I
    .registers 3

    .line 239
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->getCurrentState()Lcom/android/internal/net/ipsec/ike/utils/IState;

    move-result-object v0

    .line 240
    .local v0, "currentState":Lcom/android/internal/net/ipsec/ike/utils/IState;
    instance-of v1, v0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;

    if-eqz v1, :cond_10

    .line 241
    move-object v1, v0

    check-cast v1, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine$ExceptionHandlerBase;->getMetricsStateCode()I

    move-result v1

    goto :goto_11

    .line 242
    :cond_10
    const/4 v1, 0x0

    .line 240
    :goto_11
    return v1
.end method


# virtual methods
.method protected blacklist executeUserCallback(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mUserCbExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 203
    goto :goto_c

    .line 201
    :catch_6
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Callback execution failed"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method protected blacklist getCurrentStateName()Ljava/lang/String;
    .registers 3

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->getCurrentState()Lcom/android/internal/net/ipsec/ike/utils/IState;

    move-result-object v0

    .line 231
    .local v0, "state":Lcom/android/internal/net/ipsec/ike/utils/IState;
    if-eqz v0, :cond_b

    .line 232
    invoke-interface {v0}, Lcom/android/internal/net/ipsec/ike/utils/IState;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 235
    :cond_b
    const-string v1, "Null State"

    return-object v1
.end method

.method protected abstract blacklist getMetricsSessionType()I
.end method

.method public blacklist killSession()V
    .registers 2

    .line 208
    const-string v0, "killSession"

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->log(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mIsClosing:Z

    .line 211
    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->sendMessage(I)V

    .line 212
    return-void
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 298
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method protected blacklist logWtf(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 340
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method protected blacklist logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 344
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    return-void
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 303
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method protected blacklist logd(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 307
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 331
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 336
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    return-void
.end method

.method protected blacklist logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 317
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method protected blacklist logi(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 321
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    return-void
.end method

.method protected blacklist logv(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 312
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method protected blacklist logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 326
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method protected blacklist quitSessionNow()V
    .registers 2

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mIsClosing:Z

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->quitNow()V

    .line 227
    return-void
.end method

.method protected blacklist recordMetricsEvent_LivenssCheckCompletion(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;IIZ)V
    .registers 12
    .param p1, "connectionController"    # Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;
    .param p2, "elapsedTimeInMillis"    # I
    .param p3, "numberOfOnGoing"    # I
    .param p4, "resultSuccess"    # Z

    .line 262
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeMetrics()Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 264
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getIkeCaller()I

    move-result v1

    .line 265
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->getMetricsIkeStateCode()I

    move-result v2

    .line 266
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getMetricsNetworkType()I

    move-result v3

    .line 263
    move v4, p2

    move v5, p3

    move v6, p4

    .end local p2    # "elapsedTimeInMillis":I
    .end local p3    # "numberOfOnGoing":I
    .end local p4    # "resultSuccess":Z
    .local v4, "elapsedTimeInMillis":I
    .local v5, "numberOfOnGoing":I
    .local v6, "resultSuccess":Z
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics;->logLivenessCheckCompleted(IIIIIZ)V

    .line 270
    return-void
.end method

.method protected blacklist recordMetricsEvent_SaNegotiation(IIIIILandroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 18
    .param p1, "dhGroup"    # I
    .param p2, "encryptionAlgorithm"    # I
    .param p3, "keyLength"    # I
    .param p4, "integrityAlgorithm"    # I
    .param p5, "prfAlgorithm"    # I
    .param p6, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 280
    if-nez p6, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual/range {p6 .. p6}, Landroid/net/ipsec/ike/exceptions/IkeException;->getMetricsErrorCode()I

    move-result v0

    :goto_8
    move v10, v0

    .line 281
    .local v10, "exceptionCode":I
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeMetrics()Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 283
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getIkeCaller()I

    move-result v2

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->getMetricsSessionType()I

    move-result v3

    .line 285
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->getMetricsIkeStateCode()I

    move-result v4

    .line 282
    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics;->logSaNegotiation(IIIIIIIII)V

    .line 292
    return-void
.end method

.method protected blacklist recordMetricsEvent_sessionTerminated(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 7
    .param p1, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 247
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Landroid/net/ipsec/ike/exceptions/IkeException;->getMetricsErrorCode()I

    move-result v0

    .line 249
    .local v0, "exceptionCode":I
    :goto_8
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeMetrics()Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 251
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getIkeCaller()I

    move-result v2

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->getMetricsSessionType()I

    move-result v3

    .line 253
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->getMetricsIkeStateCode()I

    move-result v4

    .line 250
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics;->logSessionTerminated(IIII)V

    .line 255
    return-void
.end method
