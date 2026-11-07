.class public final Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
.super Landroid/net/connectivity/org/chromium/net/UploadDataSink;
.source "CronetUploadDataStream.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "cronet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$UserCallback;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mByteBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mByteBufferLimit:J

.field private final blacklist mDataProvider:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

.field private blacklist mDestroyAdapterPostponed:Z

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mInWhichUserCallback:I

.field private blacklist mLength:J

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mOnDestroyedCallbackForTesting:Ljava/lang/Runnable;

.field private final blacklist mReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mReadTask:Ljava/lang/Runnable;

.field private blacklist mRemainingLength:J

.field private final blacklist mRequest:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

.field private blacklist mUploadDataStreamAdapter:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmByteBuffer(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)Ljava/nio/ByteBuffer;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataProvider(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mDataProvider:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReadCount(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUploadDataStreamAdapter(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mUploadDataStreamAdapter:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInWhichUserCallback(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;I)V
    .registers 2

    iput p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mInWhichUserCallback:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckCallingThread(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->checkCallingThread()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckState(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->checkState(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monError(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const-class v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V
    .registers 5
    .param p1, "dataProvider"    # Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "request"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    .line 128
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mReadTask:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLock:Ljava/lang/Object;

    .line 113
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mInWhichUserCallback:I

    .line 129
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mExecutor:Ljava/util/concurrent/Executor;

    .line 130
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    invoke-direct {v0, p1}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UploadDataProvider;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mDataProvider:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    .line 131
    iput-object p3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mRequest:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    .line 132
    return-void
.end method

.method private blacklist checkCallingThread()V
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mRequest:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->checkCallingThread()V

    .line 174
    return-void
.end method

.method private blacklist checkState(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 178
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mInWhichUserCallback:I

    if-ne v0, p1, :cond_5

    .line 182
    return-void

    .line 179
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mInWhichUserCallback:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist destroyAdapter()V
    .registers 8

    .line 362
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_3
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mInWhichUserCallback:I

    if-nez v1, :cond_c

    .line 365
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mDestroyAdapterPostponed:Z

    .line 366
    monitor-exit v0

    return-void

    .line 368
    :cond_c
    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mUploadDataStreamAdapter:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_16

    .line 369
    monitor-exit v0

    return-void

    .line 371
    :cond_16
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStreamJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;

    move-result-object v1

    iget-wide v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mUploadDataStreamAdapter:J

    invoke-interface {v1, v5, v6}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;->destroy(J)V

    .line 372
    iput-wide v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mUploadDataStreamAdapter:J

    .line 373
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mOnDestroyedCallbackForTesting:Ljava/lang/Runnable;

    if-eqz v1, :cond_2a

    .line 374
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mOnDestroyedCallbackForTesting:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 376
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_36

    .line 377
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$3;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$3;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)V

    const-string v1, "destroyAdapter"

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 390
    return-void

    .line 376
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private blacklist destroyAdapterIfPostponed()V
    .registers 4

    .line 397
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_3
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mInWhichUserCallback:I

    if-eqz v1, :cond_10

    .line 402
    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mDestroyAdapterPostponed:Z

    if-eqz v1, :cond_e

    .line 403
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->destroyAdapter()V

    .line 405
    :cond_e
    monitor-exit v0

    .line 406
    return-void

    .line 399
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Method should not be called when read has not completed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    throw v1

    .line 405
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method static synthetic blacklist lambda$postTaskToExecutor$0(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CronetUploadDataStream#postTaskToExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " running callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 345
    .local v0, "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_1d
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_26

    .line 346
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 347
    .end local v0    # "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_25
    return-void

    .line 340
    .restart local v0    # "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_26
    move-exception v1

    if-eqz v0, :cond_31

    :try_start_29
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    throw v1
.end method

.method private blacklist onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 201
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_3
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mInWhichUserCallback:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2f

    .line 206
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mInWhichUserCallback:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 207
    .local v1, "sendClose":Z
    :goto_10
    iput v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mInWhichUserCallback:I

    .line 208
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 209
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->destroyAdapterIfPostponed()V

    .line 210
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_37

    .line 214
    if-eqz v1, :cond_29

    .line 216
    :try_start_1b
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mDataProvider:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_21

    .line 219
    goto :goto_29

    .line 217
    :catch_21
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->TAG:Ljava/lang/String;

    const-string v3, "Failure closing data provider"

    invoke-static {v2, v3, v0}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_29
    :goto_29
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mRequest:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->onUploadException(Ljava/lang/Throwable;)V

    .line 227
    return-void

    .line 203
    .end local v1    # "sendClose":Z
    :cond_2f
    :try_start_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "There is no read or rewind or length check in progress."

    invoke-direct {v1, v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .end local p1    # "exception":Ljava/lang/Throwable;
    throw v1

    .line 210
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .restart local p1    # "exception":Ljava/lang/Throwable;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_37

    throw v1
.end method


# virtual methods
.method blacklist attachNativeAdapterToRequest(J)V
    .registers 12
    .param p1, "requestAdapter"    # J

    .line 438
    const-string v0, "CronetUploadDataStream#attachNativeAdapterToRequest"

    .line 439
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v1

    .line 440
    .local v1, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_2b

    .line 441
    nop

    .line 442
    :try_start_a
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStreamJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;

    move-result-object v3

    iget-wide v7, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLength:J
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1f

    .line 443
    move-object v4, p0

    move-wide v5, p1

    .end local p1    # "requestAdapter":J
    .local v5, "requestAdapter":J
    :try_start_12
    invoke-interface/range {v3 .. v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;->attachUploadDataToRequest(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;JJ)J

    move-result-wide p1

    iput-wide p1, v4, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mUploadDataStreamAdapter:J

    .line 445
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_28

    .line 446
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 447
    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_1e
    return-void

    .line 445
    .end local v5    # "requestAdapter":J
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p1    # "requestAdapter":J
    :catchall_1f
    move-exception v0

    move-object v4, p0

    move-wide v5, p1

    move-object p1, v0

    .end local p1    # "requestAdapter":J
    .restart local v5    # "requestAdapter":J
    :goto_23
    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_28

    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local v5    # "requestAdapter":J
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    :try_start_24
    throw p1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 438
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v5    # "requestAdapter":J
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    :catchall_25
    move-exception v0

    move-object p1, v0

    goto :goto_2f

    .line 445
    :catchall_28
    move-exception v0

    move-object p1, v0

    goto :goto_23

    .line 438
    .end local v5    # "requestAdapter":J
    .restart local p1    # "requestAdapter":J
    :catchall_2b
    move-exception v0

    move-object v4, p0

    move-wide v5, p1

    move-object p1, v0

    .end local p1    # "requestAdapter":J
    .restart local v5    # "requestAdapter":J
    :goto_2f
    if-eqz v1, :cond_3a

    :try_start_31
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_3a

    :catchall_35
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    throw p1
.end method

.method public blacklist createUploadDataStreamForTesting()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    nop

    .line 457
    :try_start_4
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStreamJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;

    move-result-object v0

    .line 458
    invoke-interface {v0, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;->createAdapterForTesting(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mUploadDataStreamAdapter:J

    .line 459
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mDataProvider:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->getLength()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLength:J

    .line 460
    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLength:J

    iput-wide v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mRemainingLength:J

    .line 461
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStreamJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;

    move-result-object v4

    iget-wide v6, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLength:J

    iget-wide v8, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mUploadDataStreamAdapter:J

    .line 462
    move-object v5, p0

    invoke-interface/range {v4 .. v9}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;->createUploadDataStreamForTesting(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;JJ)J

    move-result-wide v2

    monitor-exit v1

    .line 461
    return-wide v2

    .line 464
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method blacklist getReadCount()I
    .registers 2

    .line 472
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method blacklist initializeWithRequest()V
    .registers 4

    .line 415
    const-string v0, "CronetUploadDataStream#initializeWithRequest"

    .line 416
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 417
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_36

    .line 418
    const/4 v2, 0x2

    :try_start_a
    iput v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mInWhichUserCallback:I

    .line 419
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_33

    .line 421
    :try_start_d
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mRequest:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->checkCallingThread()V

    .line 422
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mDataProvider:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->getLength()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLength:J

    .line 423
    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLength:J

    iput-wide v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mRemainingLength:J
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1f

    .line 426
    goto :goto_23

    .line 424
    :catchall_1f
    move-exception v1

    .line 425
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_20
    invoke-direct {p0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->onError(Ljava/lang/Throwable;)V

    .line 427
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_23
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_36

    .line 428
    const/4 v2, 0x3

    :try_start_27
    iput v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mInWhichUserCallback:I

    .line 429
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_30

    .line 430
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 431
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_2f
    return-void

    .line 429
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    :try_start_32
    throw v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_36

    .line 419
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    :try_start_35
    throw v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 415
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    :catchall_36
    move-exception v1

    if-eqz v0, :cond_41

    :try_start_39
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_41
    :goto_41
    throw v1
.end method

.method public blacklist onReadError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 297
    const-string v0, "CronetUploadDataStream#onReadError"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 298
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1a

    .line 299
    const/4 v2, 0x0

    :try_start_a
    invoke-direct {p0, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->checkState(I)V

    .line 300
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->onError(Ljava/lang/Throwable;)V

    .line 301
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_17

    .line 302
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 303
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_16
    return-void

    .line 301
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_17
    move-exception v2

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .end local p1    # "exception":Ljava/lang/Exception;
    :try_start_19
    throw v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    .line 297
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .restart local p1    # "exception":Ljava/lang/Exception;
    :catchall_1a
    move-exception v1

    if-eqz v0, :cond_25

    :try_start_1d
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_25
    :goto_25
    throw v1
.end method

.method public blacklist onReadSucceeded(Z)V
    .registers 14
    .param p1, "lastChunk"    # Z

    .line 232
    const-string v0, "CronetUploadDataStream#onReadSucceeded"

    .line 233
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v1

    .line 234
    .local v1, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_be

    .line 235
    const/4 v0, 0x0

    :try_start_a
    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->checkState(I)V

    .line 236
    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mByteBufferLimit:J

    iget-object v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_b5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_ac

    .line 239
    const-wide/16 v3, 0x0

    if-eqz p1, :cond_31

    :try_start_1e
    iget-wide v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLength:J

    cmp-long v5, v5, v3

    if-gez v5, :cond_25

    goto :goto_31

    .line 240
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Non-chunked upload can\'t have last chunk"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .end local p1    # "lastChunk":Z
    throw v0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2d

    .line 291
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .restart local p1    # "lastChunk":Z
    :catchall_2d
    move-exception v0

    move v11, p1

    goto/16 :goto_b7

    .line 242
    :cond_31
    :goto_31
    :try_start_31
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_b5

    move v10, v5

    .line 243
    .local v10, "bytesRead":I
    if-nez v10, :cond_4d

    if-nez p1, :cond_4d

    .line 264
    :try_start_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Bytes read can\'t be zero except for last chunk!"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->onError(Ljava/lang/Throwable;)V

    .line 267
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_2d

    .line 292
    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 267
    :cond_4c
    return-void

    .line 269
    :cond_4d
    :try_start_4d
    iget-wide v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mRemainingLength:J

    int-to-long v7, v10

    sub-long/2addr v5, v7

    iput-wide v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mRemainingLength:J

    .line 270
    iget-wide v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mRemainingLength:J
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_b5

    cmp-long v5, v5, v3

    if-gez v5, :cond_7f

    :try_start_59
    iget-wide v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLength:J

    cmp-long v5, v5, v3

    if-gez v5, :cond_60

    goto :goto_7f

    .line 271
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Read upload data length %d exceeds expected length %d"

    iget-wide v4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLength:J

    iget-wide v6, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mRemainingLength:J

    sub-long/2addr v4, v6

    .line 274
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLength:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 272
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .end local p1    # "lastChunk":Z
    throw v0
    :try_end_7f
    .catchall {:try_start_59 .. :try_end_7f} :catchall_2d

    .line 276
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .restart local p1    # "lastChunk":Z
    :cond_7f
    :goto_7f
    :try_start_7f
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 278
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mInWhichUserCallback:I

    .line 280
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->destroyAdapterIfPostponed()V

    .line 282
    iget-wide v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mUploadDataStreamAdapter:J
    :try_end_8f
    .catchall {:try_start_7f .. :try_end_8f} :catchall_b5

    cmp-long v0, v5, v3

    if-nez v0, :cond_9a

    .line 283
    :try_start_93
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_2d

    .line 292
    if-eqz v1, :cond_99

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 283
    :cond_99
    return-void

    .line 285
    :cond_9a
    :try_start_9a
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStreamJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;

    move-result-object v6

    iget-wide v7, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mUploadDataStreamAdapter:J
    :try_end_a0
    .catchall {:try_start_9a .. :try_end_a0} :catchall_b5

    .line 286
    move-object v9, p0

    move v11, p1

    .end local p1    # "lastChunk":Z
    .local v11, "lastChunk":Z
    :try_start_a2
    invoke-interface/range {v6 .. v11}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;->onReadSucceeded(JLandroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;IZ)V

    .line 291
    .end local v10    # "bytesRead":I
    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_bc

    .line 292
    if-eqz v1, :cond_ab

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 293
    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_ab
    return-void

    .line 237
    .end local v11    # "lastChunk":Z
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p1    # "lastChunk":Z
    :cond_ac
    move v11, p1

    .end local p1    # "lastChunk":Z
    .restart local v11    # "lastChunk":Z
    :try_start_ad
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ByteBuffer limit changed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local v11    # "lastChunk":Z
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    throw p1

    .line 291
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .restart local p1    # "lastChunk":Z
    :catchall_b5
    move-exception v0

    move v11, p1

    .end local p1    # "lastChunk":Z
    .restart local v11    # "lastChunk":Z
    :goto_b7
    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_ad .. :try_end_b8} :catchall_bc

    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local v11    # "lastChunk":Z
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    :try_start_b8
    throw v0
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b9

    .line 232
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v11    # "lastChunk":Z
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    :catchall_b9
    move-exception v0

    move-object p1, v0

    goto :goto_c1

    .line 291
    :catchall_bc
    move-exception v0

    goto :goto_b7

    .line 232
    .end local v11    # "lastChunk":Z
    .restart local p1    # "lastChunk":Z
    :catchall_be
    move-exception v0

    move v11, p1

    move-object p1, v0

    .end local p1    # "lastChunk":Z
    .restart local v11    # "lastChunk":Z
    :goto_c1
    if-eqz v1, :cond_cb

    :try_start_c3
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_c7

    goto :goto_cb

    :catchall_c7
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_cb
    :goto_cb
    throw p1
.end method

.method public blacklist onRewindError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 325
    const-string v0, "CronetUploadDataStream#onRewindError"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 326
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1a

    .line 327
    const/4 v2, 0x1

    :try_start_a
    invoke-direct {p0, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->checkState(I)V

    .line 328
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->onError(Ljava/lang/Throwable;)V

    .line 329
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_17

    .line 330
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 331
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_16
    return-void

    .line 329
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_17
    move-exception v2

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .end local p1    # "exception":Ljava/lang/Exception;
    :try_start_19
    throw v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    .line 325
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .restart local p1    # "exception":Ljava/lang/Exception;
    :catchall_1a
    move-exception v1

    if-eqz v0, :cond_25

    :try_start_1d
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_25
    :goto_25
    throw v1
.end method

.method public blacklist onRewindSucceeded()V
    .registers 7

    .line 307
    const-string v0, "CronetUploadDataStream#onRewindSucceeded"

    .line 308
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 309
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_36

    .line 310
    const/4 v2, 0x1

    :try_start_a
    invoke-direct {p0, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->checkState(I)V

    .line 311
    const/4 v2, 0x3

    iput v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mInWhichUserCallback:I

    .line 312
    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mLength:J

    iput-wide v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mRemainingLength:J

    .line 314
    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mUploadDataStreamAdapter:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    .line 315
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_33

    .line 320
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 315
    :cond_22
    return-void

    .line 317
    :cond_23
    :try_start_23
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStreamJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mUploadDataStreamAdapter:J

    .line 318
    invoke-interface {v2, v3, v4, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;->onRewindSucceeded(JLandroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)V

    .line 319
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_33

    .line 320
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 321
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_32
    return-void

    .line 319
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    :try_start_35
    throw v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 307
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    :catchall_36
    move-exception v1

    if-eqz v0, :cond_41

    :try_start_39
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_41
    :goto_41
    throw v1
.end method

.method blacklist onUploadDataStreamDestroyed()V
    .registers 1

    .line 192
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->destroyAdapter()V

    .line 193
    return-void
.end method

.method blacklist postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CronetUploadDataStream#postTaskToExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 338
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_17
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_22

    .line 352
    goto :goto_28

    .line 348
    :catchall_22
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_23
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mRequest:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v2, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->onUploadException(Ljava/lang/Throwable;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2e

    .line 353
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_28
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 354
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_2d
    return-void

    .line 335
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_2e
    move-exception v1

    if-eqz v0, :cond_39

    :try_start_31
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_39
    :goto_39
    throw v1
.end method

.method blacklist readData(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 138
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mByteBufferLimit:J

    .line 140
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mReadTask:Ljava/lang/Runnable;

    const-string v1, "readData"

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method blacklist rewind()V
    .registers 3

    .line 150
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$2;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$2;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)V

    .line 169
    .local v0, "task":Ljava/lang/Runnable;
    const-string v1, "rewind"

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method blacklist setOnDestroyedCallbackForTesting(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "onDestroyedCallbackForTesting"    # Ljava/lang/Runnable;

    .line 468
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->mOnDestroyedCallbackForTesting:Ljava/lang/Runnable;

    .line 469
    return-void
.end method
