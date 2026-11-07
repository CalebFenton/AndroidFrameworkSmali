.class public Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
.super Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;
.source "CronetUrlRequestContext.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "cronet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;
    }
.end annotation


# static fields
.field static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final blacklist OVERRIDE_NETWORK_THREAD_PRIORITY_FLAG_NAME:Ljava/lang/String; = "Cronet_override_network_thread_priority"

.field private static final blacklist sInUseStoragePaths:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActiveRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mDownstreamThroughputKbps:I

.field private blacklist mEffectiveConnectionType:I

.field private final blacklist mFinishedListenerLock:Ljava/lang/Object;

.field private final blacklist mFinishedListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;",
            "Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHttpRttMs:I

.field private final blacklist mInUseStoragePath:Ljava/lang/String;

.field private final blacklist mInitCompleted:Landroid/os/ConditionVariable;

.field private blacklist mIsLogging:Z

.field private blacklist mIsStoppingNetLog:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mLogId:J

.field private final blacklist mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

.field private blacklist mNetworkHandle:J

.field private final blacklist mNetworkQualityEstimatorEnabled:Z

.field private final blacklist mNetworkQualityLock:Ljava/lang/Object;

.field private blacklist mNetworkThread:Ljava/lang/Thread;

.field private final blacklist mRttListenerList:Landroid/net/connectivity/org/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/ObserverList<",
            "Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRunningRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mStopNetLogCompleted:Landroid/os/ConditionVariable;

.field private final blacklist mThroughputListenerList:Landroid/net/connectivity/org/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/ObserverList<",
            "Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTransportRttMs:I

.field private blacklist mUrlRequestContextAdapter:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUrlRequestContextAdapter(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mUrlRequestContextAdapter:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    const-class v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->LOG_TAG:Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->sInUseStoragePaths:Ljava/util/HashSet;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;J)V
    .registers 21
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .param p2, "startUptimeMillis"    # J

    .line 251
    move-object/from16 v1, p0

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mInitCompleted:Landroid/os/ConditionVariable;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mRunningRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mActiveRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mFinishedListenerLock:Ljava/lang/Object;

    .line 116
    iput v2, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mEffectiveConnectionType:I

    .line 123
    const/4 v0, -0x1

    iput v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mHttpRttMs:I

    .line 130
    iput v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mTransportRttMs:I

    .line 137
    iput v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mDownstreamThroughputKbps:I

    .line 140
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;-><init>()V

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mRttListenerList:Landroid/net/connectivity/org/chromium/base/ObserverList;

    .line 145
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;-><init>()V

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mThroughputListenerList:Landroid/net/connectivity/org/chromium/base/ObserverList;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mFinishedListenerMap:Ljava/util/Map;

    .line 159
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mStopNetLogCompleted:Landroid/os/ConditionVariable;

    .line 177
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkHandle:J

    .line 252
    const-string v0, "CronetUrlRequestContext#CronetUrlRequestContext"

    .line 253
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v2

    .line 254
    .local v2, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_5f
    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mRttListenerList:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->disableThreadAsserts()V

    .line 255
    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mThroughputListenerList:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->disableThreadAsserts()V

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->networkQualityEstimatorEnabled()Z

    move-result v0

    iput-boolean v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityEstimatorEnabled:Z

    .line 257
    nop

    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->getContext()Landroid/content/Context;

    move-result-object v0
    :try_end_74
    .catchall {:try_start_5f .. :try_end_74} :catchall_142

    move-object/from16 v3, p1

    :try_start_76
    invoke-static {v0, v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->ensureInitialized(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;)Z

    move-result v0

    move v4, v0

    .line 259
    .local v4, "triggeredInitialization":Z
    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->httpCacheMode()I

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v5, :cond_a3

    .line 260
    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->storagePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mInUseStoragePath:Ljava/lang/String;

    .line 261
    sget-object v5, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->sInUseStoragePaths:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_8c
    .catchall {:try_start_76 .. :try_end_8c} :catchall_140

    .line 262
    :try_start_8c
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->sInUseStoragePaths:Ljava/util/HashSet;

    iget-object v7, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mInUseStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 265
    monitor-exit v5

    goto :goto_a5

    .line 263
    :cond_98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "Disk cache storage path already in use"

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local v4    # "triggeredInitialization":Z
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .end local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .end local p2    # "startUptimeMillis":J
    throw v0

    .line 265
    .restart local v2    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v4    # "triggeredInitialization":Z
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .restart local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .restart local p2    # "startUptimeMillis":J
    :catchall_a0
    move-exception v0

    monitor-exit v5
    :try_end_a2
    .catchall {:try_start_8c .. :try_end_a2} :catchall_a0

    .end local v2    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .end local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .end local p2    # "startUptimeMillis":J
    :try_start_a2
    throw v0

    .line 267
    .restart local v2    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .restart local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .restart local p2    # "startUptimeMillis":J
    :cond_a3
    iput-object v6, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mInUseStoragePath:Ljava/lang/String;

    .line 269
    :goto_a5
    iget-object v5, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_a8
    .catchall {:try_start_a2 .. :try_end_a8} :catchall_140

    .line 270
    :try_start_a8
    const-string v0, "CronetUrlRequestContext#CronetUrlRequestContext creating adapter"

    .line 271
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0
    :try_end_ae
    .catchall {:try_start_a8 .. :try_end_ae} :catchall_13d

    move-object v7, v0

    .line 274
    .local v7, "adapterTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    nop

    .line 275
    :try_start_b0
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v0

    .line 277
    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->createNativeUrlRequestContextConfig(Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;)J

    move-result-wide v8

    .line 276
    invoke-interface {v0, v8, v9}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;->createRequestContextAdapter(J)J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mUrlRequestContextAdapter:J
    :try_end_be
    .catchall {:try_start_b0 .. :try_end_be} :catchall_130

    .line 278
    if-eqz v7, :cond_c3

    :try_start_c0
    invoke-virtual {v7}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 279
    .end local v7    # "adapterTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_c3
    iget-wide v7, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mUrlRequestContextAdapter:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_128

    .line 282
    monitor-exit v5
    :try_end_cc
    .catchall {:try_start_c0 .. :try_end_cc} :catchall_13d

    .line 283
    nop

    .line 285
    :try_start_cd
    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->getCronetSource()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    move-result-object v5

    .line 284
    invoke-static {v0, v5}, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;->createLogger(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    move-result-object v0

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    .line 286
    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;->generateId()J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLogId:J

    .line 287
    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->toLoggerInfo()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;

    move-result-object v0
    :try_end_e7
    .catchall {:try_start_cd .. :try_end_e7} :catchall_140

    move-object v10, v0

    .line 289
    .local v10, "builderLoggerInfo":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;
    :try_start_e8
    iget-object v7, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    .line 290
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->getLogId()J

    move-result-wide v8

    .line 292
    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->buildCronetVersion()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    move-result-object v11

    .line 293
    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->getCronetSource()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    move-result-object v12

    .line 289
    invoke-virtual/range {v7 .. v12}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;->logCronetEngineCreation(JLandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)V
    :try_end_f9
    .catch Ljava/lang/RuntimeException; {:try_start_e8 .. :try_end_f9} :catch_fa
    .catchall {:try_start_e8 .. :try_end_f9} :catchall_140

    .line 297
    goto :goto_102

    .line 294
    :catch_fa
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_fb
    sget-object v5, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Error while trying to log CronetEngine creation: "

    invoke-static {v5, v7, v0}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_102
    if-eqz v4, :cond_113

    .line 301
    new-instance v11, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;

    iget-object v12, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    .line 303
    invoke-virtual {v10}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->getCronetInitializationRef()J

    move-result-wide v13

    move-wide/from16 v15, p2

    invoke-direct/range {v11 .. v16}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;JJ)V

    move-object v6, v11

    goto :goto_114

    .line 305
    :cond_113
    nop

    :goto_114
    nop

    .line 308
    .local v6, "cronetInitializedInfoLogger":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$1;

    invoke-direct {v0, v1, v6}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$1;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;)V

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->postToInitThread(Ljava/lang/Runnable;)V

    .line 356
    if-eqz v6, :cond_122

    .line 357
    invoke-virtual {v6}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->onUserThreadDone()V
    :try_end_122
    .catchall {:try_start_fb .. :try_end_122} :catchall_140

    .line 359
    .end local v4    # "triggeredInitialization":Z
    .end local v6    # "cronetInitializedInfoLogger":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;
    .end local v10    # "builderLoggerInfo":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;
    :cond_122
    if-eqz v2, :cond_127

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 360
    .end local v2    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_127
    return-void

    .line 280
    .restart local v2    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v4    # "triggeredInitialization":Z
    :cond_128
    :try_start_128
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v6, "Context Adapter creation failed."

    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v2    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local v4    # "triggeredInitialization":Z
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .end local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .end local p2    # "startUptimeMillis":J
    throw v0
    :try_end_130
    .catchall {:try_start_128 .. :try_end_130} :catchall_13d

    .line 270
    .restart local v2    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v4    # "triggeredInitialization":Z
    .restart local v7    # "adapterTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .restart local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .restart local p2    # "startUptimeMillis":J
    :catchall_130
    move-exception v0

    move-object v6, v0

    if-eqz v7, :cond_13c

    :try_start_134
    invoke-virtual {v7}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_137
    .catchall {:try_start_134 .. :try_end_137} :catchall_138

    goto :goto_13c

    :catchall_138
    move-exception v0

    :try_start_139
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local v4    # "triggeredInitialization":Z
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .end local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .end local p2    # "startUptimeMillis":J
    :cond_13c
    :goto_13c
    throw v6

    .line 282
    .end local v7    # "adapterTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v2    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v4    # "triggeredInitialization":Z
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .restart local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .restart local p2    # "startUptimeMillis":J
    :catchall_13d
    move-exception v0

    monitor-exit v5
    :try_end_13f
    .catchall {:try_start_139 .. :try_end_13f} :catchall_13d

    .end local v2    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .end local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .end local p2    # "startUptimeMillis":J
    :try_start_13f
    throw v0
    :try_end_140
    .catchall {:try_start_13f .. :try_end_140} :catchall_140

    .line 252
    .end local v4    # "triggeredInitialization":Z
    .restart local v2    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .restart local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .restart local p2    # "startUptimeMillis":J
    :catchall_140
    move-exception v0

    goto :goto_145

    :catchall_142
    move-exception v0

    move-object/from16 v3, p1

    :goto_145
    move-object v4, v0

    if-eqz v2, :cond_150

    :try_start_148
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_14b
    .catchall {:try_start_148 .. :try_end_14b} :catchall_14c

    goto :goto_150

    :catchall_14c
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_150
    :goto_150
    throw v4
.end method

.method private blacklist buildCronetVersion()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;
    .registers 3

    .line 551
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    invoke-static {}, Landroid/net/connectivity/org/chromium/net/ApiVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist checkHaveAdapter()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 895
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->haveRequestContextAdapter()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 898
    return-void

    .line 896
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Engine is shut down."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist convertConnectionTypeToApiValue(I)I
    .registers 4
    .param p0, "type"    # I

    .line 906
    packed-switch p0, :pswitch_data_28

    .line 920
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal Error: Illegal EffectiveConnectionType value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :pswitch_1c
    const/4 v0, 0x5

    return v0

    .line 914
    :pswitch_1e
    const/4 v0, 0x4

    return v0

    .line 912
    :pswitch_20
    const/4 v0, 0x3

    return v0

    .line 910
    :pswitch_22
    const/4 v0, 0x2

    return v0

    .line 908
    :pswitch_24
    const/4 v0, 0x1

    return v0

    .line 918
    :pswitch_26
    const/4 v0, 0x0

    return v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_26
        :pswitch_24
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist createNativeUrlRequestContextConfig(Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;)J
    .registers 11
    .param p0, "builder"    # Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    .line 365
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v0

    .line 367
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->createRequestContextConfigOptions(Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->toByteArray()[B

    move-result-object v1

    .line 366
    invoke-interface {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;->createRequestContextConfig([B)J

    move-result-wide v3

    .line 368
    .local v3, "urlRequestContextConfig":J
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-eqz v0, :cond_61

    .line 371
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->quicHints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;

    .line 372
    .local v1, "quicHint":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v2

    iget-object v5, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;->mHost:Ljava/lang/String;

    iget v6, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;->mPort:I

    iget v7, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;->mAlternatePort:I

    .line 373
    invoke-interface/range {v2 .. v7}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;->addQuicHint(JLjava/lang/String;II)V

    .line 378
    .end local v1    # "quicHint":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;
    goto :goto_1e

    .line 379
    :cond_38
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->publicKeyPins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;

    .line 380
    .local v1, "pkp":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v2

    iget-object v5, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;->mHost:Ljava/lang/String;

    iget-object v6, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;->mHashes:[[B

    iget-boolean v7, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;->mIncludeSubdomains:Z

    iget-object v8, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;->mExpirationDate:Ljava/util/Date;

    .line 386
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 381
    invoke-interface/range {v2 .. v9}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;->addPkp(JLjava/lang/String;[[BZJ)V

    .line 387
    .end local v1    # "pkp":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;
    goto :goto_40

    .line 388
    :cond_60
    return-wide v3

    .line 369
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Experimental options parsing failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist createRequestContextConfigOptions(Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    .registers 5
    .param p0, "engineBuilder"    # Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    .line 398
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->getHttpFlags()Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;->flags()Ljava/util/Map;

    move-result-object v0

    .line 400
    const-string v1, "Cronet_override_network_thread_priority"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;

    .line 402
    .local v0, "networkThreadPriorityFlagValue":Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->newBuilder()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    move-result-object v1

    .line 403
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->quicEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->setQuicEnabled(Z)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    move-result-object v1

    .line 404
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->http2Enabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->setHttp2Enabled(Z)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    move-result-object v1

    .line 405
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->brotliEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->setBrotliEnabled(Z)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    move-result-object v1

    .line 406
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->cacheDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->setDisableCache(Z)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    move-result-object v1

    .line 407
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->httpCacheMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->setHttpCacheMode(I)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    move-result-object v1

    .line 408
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->httpCacheMaxSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->setHttpCacheMaxSize(J)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    move-result-object v1

    .line 409
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mockCertVerifier()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->setMockCertVerifier(J)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    move-result-object v1

    .line 411
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->networkQualityEstimatorEnabled()Z

    move-result v2

    .line 410
    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->setEnableNetworkQualityEstimator(Z)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    move-result-object v1

    .line 413
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->publicKeyPinningBypassForLocalTrustAnchorsEnabled()Z

    move-result v2

    .line 412
    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->setBypassPublicKeyPinningForLocalTrustAnchors(Z)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    move-result-object v1

    .line 415
    if-eqz v0, :cond_64

    .line 416
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getIntValue()J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_6a

    .line 417
    :cond_64
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->threadPriority(I)I

    move-result v2

    .line 414
    :goto_6a
    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->setNetworkThreadPriority(I)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    move-result-object v1

    .line 420
    .local v1, "resultBuilder":Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 421
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->setUserAgent(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    .line 424
    :cond_7b
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->storagePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_88

    .line 425
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->storagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->setStoragePath(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    .line 428
    :cond_88
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->getDefaultQuicUserAgentId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_95

    .line 429
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->getDefaultQuicUserAgentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->setQuicDefaultUserAgentId(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    .line 432
    :cond_95
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->experimentalOptions()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a2

    .line 433
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->experimentalOptions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->setExperimentalOptions(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    .line 436
    :cond_a2
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->build()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    return-object v2
.end method

.method private blacklist haveRequestContextAdapter()Z
    .registers 5

    .line 902
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mUrlRequestContextAdapter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist initNetworkThread()V
    .registers 3

    .line 928
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkThread:Ljava/lang/Thread;

    .line 929
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mInitCompleted:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 930
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "ChromiumNet"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 931
    return-void
.end method

.method static synthetic blacklist lambda$postObservationTaskToExecutor$0(Ljava/lang/String;Ljava/lang/Runnable;Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;)V
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "inflightCallbackCount"    # Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CronetUrlRequestContext#postObservationTaskToExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " running callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1027
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 1032
    .local v0, "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_1d
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_2a
    .catchall {:try_start_1d .. :try_end_20} :catchall_28

    .line 1036
    if-eqz p2, :cond_35

    .line 1037
    :goto_22
    :try_start_22
    invoke-virtual {p2}, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->decrement()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_35

    .line 1026
    :catchall_26
    move-exception v1

    goto :goto_42

    .line 1036
    :catchall_28
    move-exception v1

    goto :goto_3b

    .line 1033
    :catch_2a
    move-exception v1

    .line 1034
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Exception thrown from observation task"

    invoke-static {v2, v3, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_28

    .line 1036
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz p2, :cond_35

    .line 1037
    goto :goto_22

    .line 1039
    :cond_35
    :goto_35
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 1040
    .end local v0    # "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_3a
    return-void

    .line 1036
    .restart local v0    # "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :goto_3b
    if-eqz p2, :cond_40

    .line 1037
    :try_start_3d
    invoke-virtual {p2}, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->decrement()V

    .line 1038
    :cond_40
    nop

    .end local v0    # "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "task":Ljava/lang/Runnable;
    .end local p2    # "inflightCallbackCount":Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;
    throw v1
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_26

    .line 1026
    .restart local v0    # "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "task":Ljava/lang/Runnable;
    .restart local p2    # "inflightCallbackCount":Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;
    :goto_42
    if-eqz v0, :cond_4c

    :try_start_44
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4c
    :goto_4c
    throw v1
.end method

.method private blacklist onEffectiveConnectionTypeChanged(I)V
    .registers 4
    .param p1, "effectiveConnectionType"    # I

    .line 936
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 939
    :try_start_3
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mEffectiveConnectionType:I

    .line 940
    monitor-exit v0

    .line 941
    return-void

    .line 940
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private blacklist onRTTOrThroughputEstimatesComputed(III)V
    .registers 6
    .param p1, "httpRttMs"    # I
    .param p2, "transportRttMs"    # I
    .param p3, "downstreamThroughputKbps"    # I

    .line 947
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_3
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mHttpRttMs:I

    .line 949
    iput p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mTransportRttMs:I

    .line 950
    iput p3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mDownstreamThroughputKbps:I

    .line 951
    monitor-exit v0

    .line 952
    return-void

    .line 951
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private blacklist onRttObservation(IJI)V
    .registers 15
    .param p1, "rttMs"    # I
    .param p2, "whenMs"    # J
    .param p4, "source"    # I

    .line 957
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 959
    :try_start_3
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mRttListenerList:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;

    move-object v5, v2

    .line 960
    .local v5, "listener":Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;
    new-instance v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$2;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_31

    move-object v4, p0

    move v6, p1

    move-wide v7, p2

    move v9, p4

    .end local p1    # "rttMs":I
    .end local p2    # "whenMs":J
    .end local p4    # "source":I
    .local v6, "rttMs":I
    .local v7, "whenMs":J
    .local v9, "source":I
    :try_start_1c
    invoke-direct/range {v3 .. v9}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$2;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;IJI)V

    .line 967
    .local v3, "task":Ljava/lang/Runnable;
    invoke-virtual {v5}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    const-string p2, "onRttObservation"

    invoke-static {p1, v3, p2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->postObservationTaskToExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 968
    .end local v3    # "task":Ljava/lang/Runnable;
    .end local v5    # "listener":Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;
    move p1, v6

    move-wide p2, v7

    move p4, v9

    goto :goto_9

    .line 969
    .end local v6    # "rttMs":I
    .end local v7    # "whenMs":J
    .end local v9    # "source":I
    .restart local p1    # "rttMs":I
    .restart local p2    # "whenMs":J
    .restart local p4    # "source":I
    :cond_2c
    move v6, p1

    move-wide v7, p2

    move v9, p4

    .end local p1    # "rttMs":I
    .end local p2    # "whenMs":J
    .end local p4    # "source":I
    .restart local v6    # "rttMs":I
    .restart local v7    # "whenMs":J
    .restart local v9    # "source":I
    monitor-exit v1

    .line 970
    return-void

    .line 969
    .end local v6    # "rttMs":I
    .end local v7    # "whenMs":J
    .end local v9    # "source":I
    .restart local p1    # "rttMs":I
    .restart local p2    # "whenMs":J
    .restart local p4    # "source":I
    :catchall_31
    move-exception v0

    move v6, p1

    move-wide v7, p2

    move v9, p4

    move-object p1, v0

    .end local p1    # "rttMs":I
    .end local p2    # "whenMs":J
    .end local p4    # "source":I
    .restart local v6    # "rttMs":I
    .restart local v7    # "whenMs":J
    .restart local v9    # "source":I
    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_38

    throw p1

    :catchall_38
    move-exception v0

    move-object p1, v0

    goto :goto_36
.end method

.method private blacklist onThroughputObservation(IJI)V
    .registers 15
    .param p1, "throughputKbps"    # I
    .param p2, "whenMs"    # J
    .param p4, "source"    # I

    .line 976
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 978
    :try_start_3
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mThroughputListenerList:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;

    move-object v5, v2

    .line 979
    .local v5, "listener":Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;
    new-instance v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$3;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_32

    move-object v4, p0

    move v6, p1

    move-wide v7, p2

    move v9, p4

    .end local p1    # "throughputKbps":I
    .end local p2    # "whenMs":J
    .end local p4    # "source":I
    .local v6, "throughputKbps":I
    .local v7, "whenMs":J
    .local v9, "source":I
    :try_start_1c
    invoke-direct/range {v3 .. v9}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$3;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;IJI)V

    .line 986
    .local v3, "task":Ljava/lang/Runnable;
    nop

    .line 987
    invoke-virtual {v5}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    const-string p2, "onThroughputObservation"

    .line 986
    invoke-static {p1, v3, p2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->postObservationTaskToExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 988
    .end local v3    # "task":Ljava/lang/Runnable;
    .end local v5    # "listener":Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;
    move p1, v6

    move-wide p2, v7

    move p4, v9

    goto :goto_9

    .line 989
    .end local v6    # "throughputKbps":I
    .end local v7    # "whenMs":J
    .end local v9    # "source":I
    .restart local p1    # "throughputKbps":I
    .restart local p2    # "whenMs":J
    .restart local p4    # "source":I
    :cond_2d
    move v6, p1

    move-wide v7, p2

    move v9, p4

    .end local p1    # "throughputKbps":I
    .end local p2    # "whenMs":J
    .end local p4    # "source":I
    .restart local v6    # "throughputKbps":I
    .restart local v7    # "whenMs":J
    .restart local v9    # "source":I
    monitor-exit v1

    .line 990
    return-void

    .line 989
    .end local v6    # "throughputKbps":I
    .end local v7    # "whenMs":J
    .end local v9    # "source":I
    .restart local p1    # "throughputKbps":I
    .restart local p2    # "whenMs":J
    .restart local p4    # "source":I
    :catchall_32
    move-exception v0

    move v6, p1

    move-wide v7, p2

    move v9, p4

    move-object p1, v0

    .end local p1    # "throughputKbps":I
    .end local p2    # "whenMs":J
    .end local p4    # "source":I
    .restart local v6    # "throughputKbps":I
    .restart local v7    # "whenMs":J
    .restart local v9    # "source":I
    :goto_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_1c .. :try_end_38} :catchall_39

    throw p1

    :catchall_39
    move-exception v0

    move-object p1, v0

    goto :goto_37
.end method

.method private static blacklist postObservationTaskToExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;Ljava/lang/String;)V
    .registers 8
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "inflightCallbackCount"    # Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;
    .param p3, "name"    # Ljava/lang/String;

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CronetUrlRequestContext#postObservationTaskToExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1020
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 1022
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    if-eqz p2, :cond_1c

    :try_start_19
    invoke-virtual {p2}, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->increment()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_25

    .line 1024
    :cond_1c
    :try_start_1c
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3, p1, p2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1c .. :try_end_24} :catch_27
    .catchall {:try_start_1c .. :try_end_24} :catchall_25

    .line 1047
    goto :goto_34

    .line 1019
    :catchall_25
    move-exception v1

    goto :goto_3a

    .line 1041
    :catch_27
    move-exception v1

    .line 1042
    .local v1, "failException":Ljava/util/concurrent/RejectedExecutionException;
    if-eqz p2, :cond_2d

    :try_start_2a
    invoke-virtual {p2}, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->decrement()V

    .line 1043
    :cond_2d
    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Exception posting task to executor"

    invoke-static {v2, v3, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_25

    .line 1048
    .end local v1    # "failException":Ljava/util/concurrent/RejectedExecutionException;
    :goto_34
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 1049
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_39
    return-void

    .line 1019
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :goto_3a
    if-eqz v0, :cond_44

    :try_start_3c
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    throw v1
.end method

.method private static blacklist postObservationTaskToExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;

    .line 1053
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->postObservationTaskToExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;Ljava/lang/String;)V

    .line 1054
    return-void
.end method


# virtual methods
.method public blacklist addRequestFinishedListener(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;)V
    .registers 5
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;

    .line 824
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mFinishedListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 825
    :try_start_3
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mFinishedListenerMap:Ljava/util/Map;

    new-instance v2, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    invoke-direct {v2, p1}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;-><init>(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    monitor-exit v0

    .line 828
    return-void

    .line 827
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public blacklist addRttListener(Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;

    .line 742
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityEstimatorEnabled:Z

    if-eqz v0, :cond_33

    .line 745
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mRttListenerList:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 747
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_30

    .line 748
    :try_start_12
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->checkHaveAdapter()V

    .line 749
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mUrlRequestContextAdapter:J

    .line 750
    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, p0, v5}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;->provideRTTObservations(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Z)V

    .line 752
    monitor-exit v1

    goto :goto_24

    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_21

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .end local p1    # "listener":Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;
    :try_start_23
    throw v2

    .line 754
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .restart local p1    # "listener":Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;
    :cond_24
    :goto_24
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mRttListenerList:Landroid/net/connectivity/org/chromium/base/ObserverList;

    new-instance v2, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;

    invoke-direct {v2, p1}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;)V

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 756
    monitor-exit v0

    .line 757
    return-void

    .line 756
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_30

    throw v1

    .line 743
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network quality estimator must be enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addThroughputListener(Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;

    .line 783
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityEstimatorEnabled:Z

    if-eqz v0, :cond_33

    .line 786
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 787
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mThroughputListenerList:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 788
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_30

    .line 789
    :try_start_12
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->checkHaveAdapter()V

    .line 790
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mUrlRequestContextAdapter:J

    .line 791
    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, p0, v5}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;->provideThroughputObservations(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Z)V

    .line 793
    monitor-exit v1

    goto :goto_24

    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_21

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .end local p1    # "listener":Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;
    :try_start_23
    throw v2

    .line 795
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .restart local p1    # "listener":Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;
    :cond_24
    :goto_24
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mThroughputListenerList:Landroid/net/connectivity/org/chromium/base/ObserverList;

    new-instance v2, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;

    invoke-direct {v2, p1}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;)V

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 797
    monitor-exit v0

    .line 798
    return-void

    .line 797
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_30

    throw v1

    .line 784
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network quality estimator must be enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist bindToNetwork(J)V
    .registers 3
    .param p1, "networkHandle"    # J

    .line 716
    iput-wide p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkHandle:J

    .line 717
    return-void
.end method

.method public blacklist configureNetworkQualityEstimatorForTesting(ZZZ)V
    .registers 13
    .param p1, "useLocalHostRequests"    # Z
    .param p2, "useSmallerResponses"    # Z
    .param p3, "disableOfflineCheck"    # Z

    .line 725
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityEstimatorEnabled:Z

    if-eqz v0, :cond_23

    .line 728
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 729
    :try_start_7
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->checkHaveAdapter()V

    .line 730
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mUrlRequestContextAdapter:J
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_19

    .line 731
    move-object v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    .end local p1    # "useLocalHostRequests":Z
    .end local p2    # "useSmallerResponses":Z
    .end local p3    # "disableOfflineCheck":Z
    .local v6, "useLocalHostRequests":Z
    .local v7, "useSmallerResponses":Z
    .local v8, "disableOfflineCheck":Z
    :try_start_14
    invoke-interface/range {v2 .. v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;->configureNetworkQualityEstimatorForTesting(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;ZZZ)V

    .line 737
    monitor-exit v1

    .line 738
    return-void

    .line 737
    .end local v6    # "useLocalHostRequests":Z
    .end local v7    # "useSmallerResponses":Z
    .end local v8    # "disableOfflineCheck":Z
    .restart local p1    # "useLocalHostRequests":Z
    .restart local p2    # "useSmallerResponses":Z
    .restart local p3    # "disableOfflineCheck":Z
    :catchall_19
    move-exception v0

    move v6, p1

    move v7, p2

    move v8, p3

    move-object p1, v0

    .end local p1    # "useLocalHostRequests":Z
    .end local p2    # "useSmallerResponses":Z
    .end local p3    # "disableOfflineCheck":Z
    .restart local v6    # "useLocalHostRequests":Z
    .restart local v7    # "useSmallerResponses":Z
    .restart local v8    # "disableOfflineCheck":Z
    :goto_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_20

    throw p1

    :catchall_20
    move-exception v0

    move-object p1, v0

    goto :goto_1e

    .line 726
    .end local v6    # "useLocalHostRequests":Z
    .end local v7    # "useSmallerResponses":Z
    .end local v8    # "disableOfflineCheck":Z
    .restart local p1    # "useLocalHostRequests":Z
    .restart local p2    # "useSmallerResponses":Z
    .restart local p3    # "disableOfflineCheck":Z
    :cond_23
    move v6, p1

    move v7, p2

    .end local p1    # "useLocalHostRequests":Z
    .end local p2    # "useSmallerResponses":Z
    .restart local v6    # "useLocalHostRequests":Z
    .restart local v7    # "useSmallerResponses":Z
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Network quality estimator must be enabled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected blacklist createBidirectionalStream(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;IZLjava/util/Collection;ZIZIJ)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream;
    .registers 32
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "httpMethod"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .param p7, "delayRequestHeadersUntilFirstFlush"    # Z
    .param p9, "trafficStatsTagSet"    # Z
    .param p10, "trafficStatsTag"    # I
    .param p11, "trafficStatsUidSet"    # Z
    .param p12, "trafficStatsUid"    # I
    .param p13, "networkHandle"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;IZ",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;ZIZIJ)",
            "Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream;"
        }
    .end annotation

    .line 517
    .local p5, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p8, "requestAnnotations":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    const-wide/16 v2, -0x1

    cmp-long v0, p13, v2

    if-nez v0, :cond_c

    .line 518
    iget-wide v2, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkHandle:J

    move-wide v14, v2

    .end local p13    # "networkHandle":J
    .local v2, "networkHandle":J
    goto :goto_e

    .line 517
    .end local v2    # "networkHandle":J
    .restart local p13    # "networkHandle":J
    :cond_c
    move-wide/from16 v14, p13

    .line 520
    .end local p13    # "networkHandle":J
    .local v14, "networkHandle":J
    :goto_e
    iget-object v2, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 521
    :try_start_11
    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->checkHaveAdapter()V

    .line 522
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_35

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v3, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v16, v2

    move-object/from16 v2, p1

    :try_start_30
    invoke-direct/range {v0 .. v15}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;ILandroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;ZLjava/util/Collection;ZIZIJ)V

    monitor-exit v16

    return-object v0

    .line 537
    :catchall_35
    move-exception v0

    move-object/from16 v16, v2

    :goto_38
    monitor-exit v16
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_3a

    throw v0

    :catchall_3a
    move-exception v0

    goto :goto_38
.end method

.method public blacklist createRequest(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;ILjava/util/Collection;ZZZZIZILandroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;IJLjava/lang/String;Ljava/util/ArrayList;Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;[BLjava/nio/ByteBuffer;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest;
    .registers 50
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "priority"    # I
    .param p6, "disableCache"    # Z
    .param p7, "disableConnectionMigration"    # Z
    .param p8, "allowDirectExecutor"    # Z
    .param p9, "trafficStatsTagSet"    # Z
    .param p10, "trafficStatsTag"    # I
    .param p11, "trafficStatsUidSet"    # Z
    .param p12, "trafficStatsUid"    # I
    .param p13, "requestFinishedListener"    # Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;
    .param p14, "idempotency"    # I
    .param p15, "networkHandle"    # J
    .param p17, "method"    # Ljava/lang/String;
    .param p19, "uploadDataProvider"    # Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .param p20, "uploadDataProviderExecutor"    # Ljava/util/concurrent/Executor;
    .param p21, "sharedDictionaryHash"    # [B
    .param p22, "sharedDictionary"    # Ljava/nio/ByteBuffer;
    .param p23, "sharedDictionaryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;ZZZZIZI",
            "Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/net/connectivity/org/chromium/net/UploadDataProvider;",
            "Ljava/util/concurrent/Executor;",
            "[B",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest;"
        }
    .end annotation

    .line 470
    .local p5, "requestAnnotations":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .local p18, "requestHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v1, p0

    const-wide/16 v2, -0x1

    cmp-long v0, p15, v2

    if-nez v0, :cond_d

    .line 471
    iget-wide v2, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkHandle:J

    move-wide/from16 v16, v2

    .end local p15    # "networkHandle":J
    .local v2, "networkHandle":J
    goto :goto_f

    .line 470
    .end local v2    # "networkHandle":J
    .restart local p15    # "networkHandle":J
    :cond_d
    move-wide/from16 v16, p15

    .line 473
    .end local p15    # "networkHandle":J
    .local v16, "networkHandle":J
    :goto_f
    iget-object v2, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 474
    :try_start_12
    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->checkHaveAdapter()V

    .line 475
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_48

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v3, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, v2

    move-object/from16 v2, p1

    :try_start_43
    invoke-direct/range {v0 .. v24}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;ILandroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;Ljava/util/Collection;ZZZZIZILandroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;IJLjava/lang/String;Ljava/util/ArrayList;Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;[BLjava/nio/ByteBuffer;Ljava/lang/String;)V

    monitor-exit v25

    return-object v0

    .line 499
    :catchall_48
    move-exception v0

    move-object/from16 v25, v2

    :goto_4b
    monitor-exit v25
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4d

    throw v0

    :catchall_4d
    move-exception v0

    goto :goto_4b
.end method

.method public blacklist createURLStreamHandlerFactory()Ljava/net/URLStreamHandlerFactory;
    .registers 2

    .line 856
    new-instance v0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetURLStreamHandlerFactory;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetURLStreamHandlerFactory;-><init>(Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;)V

    return-object v0
.end method

.method public blacklist flushWritePropertiesForTesting()V
    .registers 5

    .line 649
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 650
    :try_start_3
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mUrlRequestContextAdapter:J

    .line 651
    invoke-interface {v1, v2, v3, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;->flushWritePropertiesForTesting(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;)V

    .line 653
    monitor-exit v0

    .line 654
    return-void

    .line 653
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist getActiveRequestCount()I
    .registers 2

    .line 547
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mActiveRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method blacklist getCronetLogger()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    return-object v0
.end method

.method public blacklist getDownstreamThroughputKbps()I
    .registers 4

    .line 704
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityEstimatorEnabled:Z

    if-eqz v0, :cond_15

    .line 707
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_7
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mDownstreamThroughputKbps:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    .line 709
    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mDownstreamThroughputKbps:I

    goto :goto_10

    .line 710
    :cond_f
    nop

    :goto_10
    monitor-exit v0

    .line 708
    return v2

    .line 711
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 705
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network quality estimator must be enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getEffectiveConnectionType()I
    .registers 3

    .line 670
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityEstimatorEnabled:Z

    if-eqz v0, :cond_12

    .line 673
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_7
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mEffectiveConnectionType:I

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->convertConnectionTypeToApiValue(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 675
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1

    .line 671
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network quality estimator must be enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getGlobalMetricsDeltas()[B
    .registers 2

    .line 665
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;->getHistogramDeltas()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHttpRttMs()I
    .registers 4

    .line 680
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityEstimatorEnabled:Z

    if-eqz v0, :cond_15

    .line 683
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_7
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mHttpRttMs:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    .line 685
    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mHttpRttMs:I

    goto :goto_10

    .line 686
    :cond_f
    nop

    :goto_10
    monitor-exit v0

    .line 684
    return v2

    .line 687
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 681
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network quality estimator must be enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getLogId()J
    .registers 3

    .line 186
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLogId:J

    return-wide v0
.end method

.method public blacklist getTransportRttMs()I
    .registers 4

    .line 692
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityEstimatorEnabled:Z

    if-eqz v0, :cond_15

    .line 695
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    :try_start_7
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mTransportRttMs:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    .line 697
    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mTransportRttMs:I

    goto :goto_10

    .line 698
    :cond_f
    nop

    :goto_10
    monitor-exit v0

    .line 696
    return v2

    .line 699
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 693
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network quality estimator must be enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUrlRequestContextAdapter()J
    .registers 4

    .line 887
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 888
    :try_start_3
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->checkHaveAdapter()V

    .line 889
    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mUrlRequestContextAdapter:J

    monitor-exit v0

    return-wide v1

    .line 890
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist getVersionString()Ljava/lang/String;
    .registers 3

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cronet/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/ImplVersion;->getCronetVersionWithLastChange()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isNetworkThread(Ljava/lang/Thread;)Z
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 1057
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkThread:Ljava/lang/Thread;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic blacklist newBidirectionalStreamBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->newBidirectionalStreamBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newBidirectionalStreamBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 442
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;

    invoke-direct {v0, p1, p2, p3, p0}, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;-><init>(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;)V

    return-object v0
.end method

.method blacklist onRequestDestroyed()V
    .registers 2

    .line 874
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mRunningRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 875
    return-void
.end method

.method blacklist onRequestFinished()V
    .registers 2

    .line 882
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mActiveRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 883
    return-void
.end method

.method blacklist onRequestStarted()V
    .registers 2

    .line 864
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mActiveRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 865
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mRunningRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 866
    return-void
.end method

.method public blacklist openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;

    .line 839
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .line 844
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_3c

    .line 847
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, "protocol":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_36

    .line 851
    :cond_1d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected protocol:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 849
    :cond_36
    :goto_36
    new-instance v1, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-direct {v1, p1, p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;-><init>(Ljava/net/URL;Landroid/net/connectivity/org/chromium/net/CronetEngine;)V

    return-object v1

    .line 845
    .end local v0    # "protocol":Ljava/lang/String;
    :cond_3c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist removeRequestFinishedListener(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;

    .line 832
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mFinishedListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 833
    :try_start_3
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mFinishedListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    monitor-exit v0

    .line 835
    return-void

    .line 834
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist removeRttListener(Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;

    .line 761
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityEstimatorEnabled:Z

    if-eqz v0, :cond_36

    .line 764
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 765
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mRttListenerList:Landroid/net/connectivity/org/chromium/base/ObserverList;

    new-instance v2, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;

    invoke-direct {v2, p1}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;)V

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 767
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mRttListenerList:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 768
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_33

    .line 769
    :try_start_1f
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->checkHaveAdapter()V

    .line 770
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mUrlRequestContextAdapter:J

    .line 771
    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, p0, v5}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;->provideRTTObservations(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Z)V

    .line 775
    monitor-exit v1

    goto :goto_31

    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_2e

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .end local p1    # "listener":Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;
    :try_start_30
    throw v2

    .line 778
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .restart local p1    # "listener":Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;
    :cond_31
    :goto_31
    monitor-exit v0

    .line 779
    return-void

    .line 778
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_33

    throw v1

    .line 762
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network quality estimator must be enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeThroughputListener(Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;

    .line 802
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityEstimatorEnabled:Z

    if-eqz v0, :cond_36

    .line 805
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkQualityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 806
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mThroughputListenerList:Landroid/net/connectivity/org/chromium/base/ObserverList;

    new-instance v2, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;

    invoke-direct {v2, p1}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;)V

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 808
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mThroughputListenerList:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 809
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_33

    .line 810
    :try_start_1f
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->checkHaveAdapter()V

    .line 811
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mUrlRequestContextAdapter:J

    .line 812
    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, p0, v5}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;->provideThroughputObservations(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Z)V

    .line 816
    monitor-exit v1

    goto :goto_31

    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_2e

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .end local p1    # "listener":Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;
    :try_start_30
    throw v2

    .line 819
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .restart local p1    # "listener":Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;
    :cond_31
    :goto_31
    monitor-exit v0

    .line 820
    return-void

    .line 819
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_33

    throw v1

    .line 803
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network quality estimator must be enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist reportRequestFinished(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;)V
    .registers 10
    .param p1, "requestInfo"    # Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;
    .param p2, "inflightCallbackCount"    # Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;
    .param p3, "extraRequestFinishedInfoListener"    # Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    .line 996
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 997
    .local v0, "currentListeners":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;>;"
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mFinishedListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 998
    :try_start_8
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mFinishedListenerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 999
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_38

    .line 1000
    if-eqz p3, :cond_17

    .line 1001
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    .line 1005
    .local v2, "listener":Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;
    new-instance v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$4;

    invoke-direct {v3, p0, v2, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$4;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;)V

    .line 1012
    .local v3, "task":Ljava/lang/Runnable;
    nop

    .line 1013
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    const-string v5, "reportRequestFinished"

    .line 1012
    invoke-static {v4, v3, p2, v5}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->postObservationTaskToExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;Ljava/lang/String;)V

    .line 1014
    .end local v2    # "listener":Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;
    .end local v3    # "task":Ljava/lang/Runnable;
    goto :goto_1b

    .line 1015
    :cond_37
    return-void

    .line 999
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2
.end method

.method public blacklist shutdown()V
    .registers 6

    .line 556
    const-string v0, "CronetUrlRequestContext#shutdown"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 557
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mInUseStoragePath:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 558
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->sInUseStoragePaths:Ljava/util/HashSet;

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_72

    .line 559
    :try_start_d
    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->sInUseStoragePaths:Ljava/util/HashSet;

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mInUseStoragePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 560
    monitor-exit v1

    goto :goto_19

    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    :try_start_18
    throw v2

    .line 562
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    :cond_19
    :goto_19
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_72

    .line 563
    :try_start_1c
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->checkHaveAdapter()V

    .line 564
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mRunningRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_67

    .line 569
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mNetworkThread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_5f

    .line 572
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_6f

    .line 575
    :try_start_30
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mInitCompleted:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 578
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->stopNetLog()V

    .line 580
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_72

    .line 582
    :try_start_3b
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->haveRequestContextAdapter()Z

    move-result v2

    if-nez v2, :cond_48

    .line 583
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_5c

    .line 589
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 583
    :cond_47
    return-void

    .line 585
    :cond_48
    :try_start_48
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mUrlRequestContextAdapter:J

    .line 586
    invoke-interface {v2, v3, v4, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;->destroy(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;)V

    .line 587
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mUrlRequestContextAdapter:J

    .line 588
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_48 .. :try_end_56} :catchall_5c

    .line 589
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 590
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_5b
    return-void

    .line 588
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_5c
    move-exception v2

    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    :try_start_5e
    throw v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_72

    .line 570
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    :cond_5f
    :try_start_5f
    new-instance v2, Ljava/lang/IllegalThreadStateException;

    const-string v3, "Cannot shutdown from network thread."

    invoke-direct {v2, v3}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    throw v2

    .line 565
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    :cond_67
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot shutdown with running requests."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    throw v2

    .line 572
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    :catchall_6f
    move-exception v2

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_5f .. :try_end_71} :catchall_6f

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    :try_start_71
    throw v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_72

    .line 556
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    :catchall_72
    move-exception v1

    if-eqz v0, :cond_7d

    :try_start_75
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_7d

    :catchall_79
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7d
    :goto_7d
    throw v1
.end method

.method public blacklist startNetLogToDisk(Ljava/lang/String;ZI)V
    .registers 13
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "logAll"    # Z
    .param p3, "maxSize"    # I

    .line 613
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 614
    :try_start_3
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->checkHaveAdapter()V

    .line 615
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mIsLogging:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_24

    if-eqz v0, :cond_12

    .line 616
    :try_start_a
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_c

    return-void

    .line 626
    :catchall_c
    move-exception v0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    goto :goto_29

    .line 618
    :cond_12
    :try_start_12
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mUrlRequestContextAdapter:J
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_24

    .line 619
    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    .end local p1    # "dirPath":Ljava/lang/String;
    .end local p2    # "logAll":Z
    .end local p3    # "maxSize":I
    .local v6, "dirPath":Ljava/lang/String;
    .local v7, "logAll":Z
    .local v8, "maxSize":I
    :try_start_1c
    invoke-interface/range {v2 .. v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;->startNetLogToDisk(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;ZI)V

    .line 625
    const/4 p1, 0x1

    iput-boolean p1, v5, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mIsLogging:Z

    .line 626
    monitor-exit v1

    .line 627
    return-void

    .line 626
    .end local v6    # "dirPath":Ljava/lang/String;
    .end local v7    # "logAll":Z
    .end local v8    # "maxSize":I
    .restart local p1    # "dirPath":Ljava/lang/String;
    .restart local p2    # "logAll":Z
    .restart local p3    # "maxSize":I
    :catchall_24
    move-exception v0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    .end local p1    # "dirPath":Ljava/lang/String;
    .end local p2    # "logAll":Z
    .end local p3    # "maxSize":I
    .restart local v6    # "dirPath":Ljava/lang/String;
    .restart local v7    # "logAll":Z
    .restart local v8    # "maxSize":I
    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_2b

    throw v0

    :catchall_2b
    move-exception v0

    goto :goto_29
.end method

.method public blacklist startNetLogToFile(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "logAll"    # Z

    .line 594
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 595
    :try_start_3
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->checkHaveAdapter()V

    .line 596
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mIsLogging:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2d

    if-eqz v0, :cond_11

    .line 597
    :try_start_a
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_c

    return-void

    .line 608
    :catchall_c
    move-exception v0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    goto :goto_31

    .line 599
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mUrlRequestContextAdapter:J
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_2d

    .line 600
    move-object v5, p0

    move-object v6, p1

    move v7, p2

    .end local p1    # "fileName":Ljava/lang/String;
    .end local p2    # "logAll":Z
    .local v6, "fileName":Ljava/lang/String;
    .local v7, "logAll":Z
    :try_start_1a
    invoke-interface/range {v2 .. v7}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;->startNetLogToFile(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 607
    const/4 p1, 0x1

    iput-boolean p1, v5, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mIsLogging:Z

    .line 608
    monitor-exit v1

    .line 609
    return-void

    .line 605
    :cond_25
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to start NetLog"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "logAll":Z
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    throw p1

    .line 608
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .restart local p1    # "fileName":Ljava/lang/String;
    .restart local p2    # "logAll":Z
    :catchall_2d
    move-exception v0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    .end local p1    # "fileName":Ljava/lang/String;
    .end local p2    # "logAll":Z
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v7    # "logAll":Z
    :goto_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_33

    throw v0

    :catchall_33
    move-exception v0

    goto :goto_31
.end method

.method public blacklist stopNetLog()V
    .registers 5

    .line 631
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    :try_start_3
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->checkHaveAdapter()V

    .line 633
    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mIsLogging:Z

    if-eqz v1, :cond_33

    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mIsStoppingNetLog:Z

    if-eqz v1, :cond_f

    goto :goto_33

    .line 636
    :cond_f
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mUrlRequestContextAdapter:J

    .line 637
    invoke-interface {v1, v2, v3, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;->stopNetLog(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;)V

    .line 638
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mIsStoppingNetLog:Z

    .line 639
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_35

    .line 640
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mStopNetLogCompleted:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 641
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mStopNetLogCompleted:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 642
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    const/4 v0, 0x0

    :try_start_2a
    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mIsStoppingNetLog:Z

    .line 644
    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mIsLogging:Z

    .line 645
    monitor-exit v1

    .line 646
    return-void

    .line 645
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_30

    throw v0

    .line 634
    :cond_33
    :goto_33
    :try_start_33
    monitor-exit v0

    return-void

    .line 639
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public blacklist stopNetLogCompleted()V
    .registers 2

    .line 658
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->mStopNetLogCompleted:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 659
    return-void
.end method
