.class public Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
.super Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream;
.source "CronetBidirectionalStream.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "cronet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$State;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mCallback:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;

.field private final blacklist mDelayRequestHeadersUntilFirstFlush:Z

.field private blacklist mEndOfStreamWritten:Z

.field private blacklist mException:Landroid/net/connectivity/org/chromium/net/CronetException;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mFinalUserCallbackThrew:Z

.field private blacklist mFlushCount:I

.field private blacklist mFlushData:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInflightDoneCallbackCount:Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;

.field private final blacklist mInitialMethod:Ljava/lang/String;

.field private final blacklist mInitialPriority:I

.field private final blacklist mInitialUrl:Ljava/lang/String;

.field private final blacklist mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

.field private blacklist mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

.field private blacklist mNativeStream:J

.field private final blacklist mNativeStreamLock:Ljava/lang/Object;

.field private final blacklist mNetworkHandle:J

.field private blacklist mNonfinalUserCallbackExceptionCount:I

.field private blacklist mOnDestroyedCallbackForTesting:Ljava/lang/Runnable;

.field private blacklist mOnReadCompletedTask:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;

.field private blacklist mPendingData:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mQuicConnectionMigrationAttempted:Z

.field private blacklist mQuicConnectionMigrationSuccessful:Z

.field private blacklist mReadCount:I

.field private blacklist mReadState:I

.field private final blacklist mRequestAnnotations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

.field private final blacklist mRequestHeaders:[Ljava/lang/String;

.field private blacklist mRequestHeadersSent:Z

.field private blacklist mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

.field private final blacklist mTrafficStatsTag:I

.field private final blacklist mTrafficStatsTagSet:Z

.field private final blacklist mTrafficStatsUid:I

.field private final blacklist mTrafficStatsUidSet:Z

.field private blacklist mWriteState:I


# direct methods
.method public static synthetic blacklist $r8$lambda$xL7gSSiW7dkYYNQEY9PCRW1Fe0s(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->onRequestFinished()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mCallback:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInflightDoneCallbackCount(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInflightDoneCallbackCount:Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialMethod(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInitialMethod:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeStreamLock(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStreamLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReadState(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)I
    .registers 1

    iget p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestHeadersSent(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestHeadersSent:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResponseInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWriteState(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)I
    .registers 1

    iget p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReadState(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;I)V
    .registers 2

    iput p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequestHeadersSent(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestHeadersSent:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWriteState(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;I)V
    .registers 2

    iput p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfailWithExceptionOnExecutor(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Landroid/net/connectivity/org/chromium/net/CronetException;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->failWithExceptionOnExecutor(Landroid/net/connectivity/org/chromium/net/CronetException;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misDoneLocked(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)Z
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->isDoneLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeOnSucceededOnExecutor(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->maybeOnSucceededOnExecutor()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monFinalCallbackException(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->onFinalCallbackException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNonfinalCallbackException(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->onNonfinalCallbackException(Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smdoesMethodAllowWriteData(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->doesMethodAllowWriteData(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 63
    return-void
.end method

.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;ILandroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;ZLjava/util/Collection;ZIZIJ)V
    .registers 29
    .param p1, "requestContext"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "callback"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "httpMethod"    # Ljava/lang/String;
    .param p8, "delayRequestHeadersUntilNextFlush"    # Z
    .param p10, "trafficStatsTagSet"    # Z
    .param p11, "trafficStatsTag"    # I
    .param p12, "trafficStatsUidSet"    # Z
    .param p13, "trafficStatsUid"    # I
    .param p14, "networkHandle"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;",
            "Ljava/lang/String;",
            "I",
            "Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;ZIZIJ)V"
        }
    .end annotation

    .line 289
    .local p7, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p9, "requestAnnotations":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream;-><init>()V

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStreamLock:Ljava/lang/Object;

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    .line 187
    iput v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    .line 290
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    .line 291
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInitialUrl:Ljava/lang/String;

    .line 292
    invoke-static/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->convertStreamPriority(I)I

    move-result v1

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInitialPriority:I

    .line 293
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;

    move-object/from16 v2, p4

    invoke-direct {v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;-><init>(Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;)V

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mCallback:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;

    .line 294
    move-object/from16 v1, p5

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mExecutor:Ljava/util/concurrent/Executor;

    .line 295
    move-object/from16 v3, p6

    iput-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInitialMethod:Ljava/lang/String;

    .line 296
    invoke-static/range {p7 .. p7}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->stringsFromHeaderList(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestHeaders:[Ljava/lang/String;

    .line 297
    move/from16 v4, p8

    iput-boolean v4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mDelayRequestHeadersUntilFirstFlush:Z

    .line 298
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mPendingData:Ljava/util/LinkedList;

    .line 299
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mFlushData:Ljava/util/LinkedList;

    .line 300
    move-object/from16 v5, p9

    iput-object v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestAnnotations:Ljava/util/Collection;

    .line 301
    move/from16 v6, p10

    iput-boolean v6, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mTrafficStatsTagSet:Z

    .line 302
    move/from16 v7, p11

    iput v7, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mTrafficStatsTag:I

    .line 303
    move/from16 v8, p12

    iput-boolean v8, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mTrafficStatsUidSet:Z

    .line 304
    move/from16 v9, p13

    iput v9, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mTrafficStatsUid:I

    .line 305
    move-wide/from16 v10, p14

    iput-wide v10, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNetworkHandle:J

    .line 306
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->getCronetLogger()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    move-result-object v12

    iput-object v12, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    .line 307
    return-void
.end method

.method private blacklist buildCronetTrafficInfo(IZZ)Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;
    .registers 42
    .param p1, "finishedReason"    # I
    .param p2, "quicConnectionMigrationAttempted"    # Z
    .param p3, "quicConnectionMigrationSuccessful"    # Z

    .line 891
    move-object/from16 v0, p0

    .line 892
    nop

    .line 900
    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    if-eqz v1, :cond_24

    .line 901
    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->getAllHeaders()Ljava/util/Map;

    move-result-object v1

    .line 902
    .local v1, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v2, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->getNegotiatedProtocol()Ljava/lang/String;

    move-result-object v2

    .line 903
    .local v2, "negotiatedProtocol":Ljava/lang/String;
    iget-object v3, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->getHttpStatusCode()I

    move-result v3

    .line 904
    .local v3, "httpStatusCode":I
    iget-object v4, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {v4}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->wasCached()Z

    move-result v4

    move-object v14, v2

    move v11, v3

    move/from16 v29, v4

    .local v4, "wasCached":Z
    goto :goto_30

    .line 906
    .end local v1    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "negotiatedProtocol":Ljava/lang/String;
    .end local v3    # "httpStatusCode":I
    .end local v4    # "wasCached":Z
    :cond_24
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 907
    .restart local v1    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v2, ""

    .line 908
    .restart local v2    # "negotiatedProtocol":Ljava/lang/String;
    const/4 v3, 0x0

    .line 909
    .restart local v3    # "httpStatusCode":I
    const/4 v4, 0x0

    move-object v14, v2

    move v11, v3

    move/from16 v29, v4

    .line 914
    .end local v2    # "negotiatedProtocol":Ljava/lang/String;
    .end local v3    # "httpStatusCode":I
    .local v11, "httpStatusCode":I
    .local v14, "negotiatedProtocol":Ljava/lang/String;
    .local v29, "wasCached":Z
    :goto_30
    iget-object v2, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getSentByteCount()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .line 919
    .local v30, "requestTotalSizeInBytes":J
    const-wide/16 v2, 0x0

    if-eqz v29, :cond_47

    cmp-long v4, v30, v2

    if-nez v4, :cond_47

    .line 921
    const-wide/16 v4, 0x0

    .line 922
    .local v4, "requestHeaderSizeInBytes":J
    const-wide/16 v6, 0x0

    .local v6, "requestBodySizeInBytes":J
    goto :goto_53

    .line 925
    .end local v4    # "requestHeaderSizeInBytes":J
    .end local v6    # "requestBodySizeInBytes":J
    :cond_47
    iget-object v4, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestHeaders:[Ljava/lang/String;

    .line 926
    invoke-static {v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetRequestCommon;->estimateHeadersSizeInBytes([Ljava/lang/String;)J

    move-result-wide v4

    .line 927
    .restart local v4    # "requestHeaderSizeInBytes":J
    sub-long v6, v30, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 930
    .restart local v6    # "requestBodySizeInBytes":J
    :goto_53
    iget-object v8, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    invoke-virtual {v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getReceivedByteCount()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 935
    .local v32, "responseTotalSizeInBytes":J
    if-eqz v29, :cond_69

    cmp-long v8, v32, v2

    if-nez v8, :cond_69

    .line 937
    const-wide/16 v8, 0x0

    .line 938
    .local v8, "responseBodySizeInBytes":J
    const-wide/16 v12, 0x0

    move-wide v9, v8

    .local v12, "responseHeaderSizeInBytes":J
    goto :goto_75

    .line 941
    .end local v8    # "responseBodySizeInBytes":J
    .end local v12    # "responseHeaderSizeInBytes":J
    :cond_69
    nop

    .line 942
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetRequestCommon;->estimateHeadersSizeInBytes(Ljava/util/Map;)J

    move-result-wide v12

    .line 943
    .restart local v12    # "responseHeaderSizeInBytes":J
    sub-long v8, v32, v12

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v9, v8

    .line 947
    .local v9, "responseBodySizeInBytes":J
    :goto_75
    iget-object v8, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    invoke-virtual {v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getRequestStart()Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_a0

    iget-object v8, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    invoke-virtual {v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getResponseStart()Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_a0

    .line 948
    iget-object v8, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    .line 950
    invoke-virtual {v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getResponseStart()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    iget-object v8, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    .line 951
    invoke-virtual {v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getRequestStart()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    sub-long v15, v15, v17

    .line 949
    invoke-static/range {v15 .. v16}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v8

    .local v8, "headersLatency":Ljava/time/Duration;
    goto :goto_a4

    .line 953
    .end local v8    # "headersLatency":Ljava/time/Duration;
    :cond_a0
    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v8

    .line 957
    .restart local v8    # "headersLatency":Ljava/time/Duration;
    :goto_a4
    iget-object v15, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    invoke-virtual {v15}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getRequestStart()Ljava/util/Date;

    move-result-object v15

    if-eqz v15, :cond_ce

    iget-object v15, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    invoke-virtual {v15}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getRequestEnd()Ljava/util/Date;

    move-result-object v15

    if-eqz v15, :cond_ce

    .line 958
    iget-object v2, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    .line 960
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getRequestEnd()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v15, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    .line 961
    invoke-virtual {v15}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getRequestStart()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    sub-long/2addr v2, v15

    .line 959
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    .local v2, "totalLatency":Ljava/time/Duration;
    goto :goto_d2

    .line 963
    .end local v2    # "totalLatency":Ljava/time/Duration;
    :cond_ce
    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    .line 966
    .restart local v2    # "totalLatency":Ljava/time/Duration;
    :goto_d2
    const/4 v3, 0x0

    .line 967
    .local v3, "networkInternalErrorCode":I
    const/4 v15, 0x0

    .line 968
    .local v15, "quicNetworkErrorCode":I
    const/16 v16, 0x0

    .line 969
    .local v16, "source":I
    sget-object v17, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->UNKNOWN:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    .line 978
    .local v17, "failureReason":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
    move-object/from16 v34, v1

    .end local v1    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local v34, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mException:Landroid/net/connectivity/org/chromium/net/CronetException;

    move-object/from16 v18, v2

    .end local v2    # "totalLatency":Ljava/time/Duration;
    .local v18, "totalLatency":Ljava/time/Duration;
    instance-of v2, v1, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;

    if-eqz v2, :cond_f3

    check-cast v1, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;

    .line 979
    .local v1, "networkException":Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;->getCronetInternalErrorCode()I

    move-result v3

    .line 980
    sget-object v17, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->NETWORK:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    move/from16 v24, v3

    move/from16 v25, v15

    move/from16 v26, v16

    move-object/from16 v27, v17

    goto :goto_129

    .line 981
    .end local v1    # "networkException":Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;
    :cond_f3
    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mException:Landroid/net/connectivity/org/chromium/net/CronetException;

    instance-of v2, v1, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;

    if-eqz v2, :cond_112

    check-cast v1, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;

    .line 982
    .local v1, "quicException":Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->getCronetInternalErrorCode()I

    move-result v3

    .line 983
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->getQuicDetailedErrorCode()I

    move-result v15

    .line 984
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->getConnectionCloseSource()I

    move-result v16

    .line 985
    sget-object v17, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->NETWORK:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    move/from16 v24, v3

    move/from16 v25, v15

    move/from16 v26, v16

    move-object/from16 v27, v17

    goto :goto_129

    .line 986
    .end local v1    # "quicException":Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;
    :cond_112
    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mException:Landroid/net/connectivity/org/chromium/net/CronetException;

    if-eqz v1, :cond_121

    .line 987
    sget-object v17, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->OTHER:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    move/from16 v24, v3

    move/from16 v25, v15

    move/from16 v26, v16

    move-object/from16 v27, v17

    goto :goto_129

    .line 986
    :cond_121
    move/from16 v24, v3

    move/from16 v25, v15

    move/from16 v26, v16

    move-object/from16 v27, v17

    .line 990
    .end local v3    # "networkInternalErrorCode":I
    .end local v15    # "quicNetworkErrorCode":I
    .end local v16    # "source":I
    .end local v17    # "failureReason":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
    .local v24, "networkInternalErrorCode":I
    .local v25, "quicNetworkErrorCode":I
    .local v26, "source":I
    .local v27, "failureReason":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
    :goto_129
    new-instance v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;

    .line 1001
    invoke-static/range {p1 .. p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetRequestCommon;->finishedReasonToCronetTrafficInfoRequestTerminalState(I)Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    move-result-object v17

    iget v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNonfinalUserCallbackExceptionCount:I

    iget v3, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadCount:I

    iget v15, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mFlushCount:I

    move/from16 v16, v1

    iget-boolean v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mFinalUserCallbackThrew:Z

    .line 1008
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v23

    move/from16 v22, v1

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    .line 1013
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getSocketReused()Z

    move-result v28

    const/16 v21, 0x1

    move/from16 v19, v3

    move-wide v3, v4

    move-wide v5, v6

    move/from16 v20, v15

    move/from16 v15, p2

    move/from16 v35, v16

    move/from16 v16, p3

    move-wide/from16 v36, v12

    move-object v12, v8

    move-wide/from16 v7, v36

    move-object/from16 v13, v18

    move/from16 v18, v35

    .end local v4    # "requestHeaderSizeInBytes":J
    .end local v6    # "requestBodySizeInBytes":J
    .end local v8    # "headersLatency":Ljava/time/Duration;
    .end local v18    # "totalLatency":Ljava/time/Duration;
    .local v3, "requestHeaderSizeInBytes":J
    .local v5, "requestBodySizeInBytes":J
    .local v7, "responseHeaderSizeInBytes":J
    .local v12, "headersLatency":Ljava/time/Duration;
    .local v13, "totalLatency":Ljava/time/Duration;
    invoke-direct/range {v2 .. v28}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;-><init>(JJJJILjava/time/Duration;Ljava/time/Duration;Ljava/lang/String;ZZLandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;IIIZZIIIILandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;Z)V

    .line 990
    return-object v2
.end method

.method private static blacklist convertStreamPriority(I)I
    .registers 3
    .param p0, "priority"    # I

    .line 1043
    packed-switch p0, :pswitch_data_16

    .line 1055
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stream priority."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1053
    :pswitch_b
    const/4 v0, 0x5

    return v0

    .line 1051
    :pswitch_d
    const/4 v0, 0x4

    return v0

    .line 1049
    :pswitch_f
    const/4 v0, 0x3

    return v0

    .line 1047
    :pswitch_11
    const/4 v0, 0x2

    return v0

    .line 1045
    :pswitch_13
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method private blacklist destroyNativeStreamLocked(Z)V
    .registers 9
    .param p1, "sendOnCanceled"    # Z

    .line 1113
    nop

    .line 1114
    const-string v0, "CronetBidirectionalStream#destroyNativeStreamLocked"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 1115
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyNativeStreamLocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStream:J
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_62

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_31

    .line 1131
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 1117
    :cond_30
    return-void

    .line 1119
    :cond_31
    :try_start_31
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStreamJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;

    move-result-object v1

    iget-wide v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStream:J

    .line 1120
    invoke-interface {v1, v5, v6, p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;->destroy(JLandroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Z)V

    .line 1121
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_42

    move v1, v2

    goto :goto_43

    :cond_42
    move v1, v5

    .line 1122
    .local v1, "readStarted":Z
    :goto_43
    iget v6, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    if-eqz v6, :cond_48

    goto :goto_49

    :cond_48
    move v2, v5

    .line 1123
    .local v2, "writeStarted":Z
    :goto_49
    nop

    .line 1124
    if-eqz v1, :cond_51

    .line 1125
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v5}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->onRequestDestroyed()V

    .line 1127
    :cond_51
    iput-wide v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStream:J

    .line 1128
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mOnDestroyedCallbackForTesting:Ljava/lang/Runnable;

    if-eqz v3, :cond_5c

    .line 1129
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mOnDestroyedCallbackForTesting:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_5c
    .catchall {:try_start_31 .. :try_end_5c} :catchall_62

    .line 1131
    .end local v1    # "readStarted":Z
    .end local v2    # "writeStarted":Z
    :cond_5c
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 1132
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_61
    return-void

    .line 1113
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_62
    move-exception v1

    if-eqz v0, :cond_6d

    :try_start_65
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6d
    :goto_6d
    throw v1
.end method

.method private static blacklist doesMethodAllowWriteData(Ljava/lang/String;)Z
    .registers 2
    .param p0, "methodName"    # Ljava/lang/String;

    .line 1021
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private blacklist failWithException(Landroid/net/connectivity/org/chromium/net/CronetException;)V
    .registers 4
    .param p1, "exception"    # Landroid/net/connectivity/org/chromium/net/CronetException;

    .line 1167
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$5;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$5;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Landroid/net/connectivity/org/chromium/net/CronetException;)V

    const-string v1, "failWithException"

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1175
    return-void
.end method

.method private blacklist failWithExceptionOnExecutor(Landroid/net/connectivity/org/chromium/net/CronetException;)V
    .registers 4
    .param p1, "e"    # Landroid/net/connectivity/org/chromium/net/CronetException;

    .line 1136
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mException:Landroid/net/connectivity/org/chromium/net/CronetException;

    .line 1138
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1139
    :try_start_5
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->isDoneLocked()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1140
    monitor-exit v0

    return-void

    .line 1142
    :cond_d
    const/4 v1, 0x6

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    .line 1143
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->destroyNativeStreamLocked(Z)V

    .line 1144
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_2b

    .line 1146
    :try_start_17
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mCallback:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {v0, p0, v1, p1}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->onFailed(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/CronetException;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f

    .line 1149
    goto :goto_25

    .line 1147
    :catch_1f
    move-exception v0

    .line 1148
    .local v0, "failException":Ljava/lang/Exception;
    const-string v1, "onFailed"

    invoke-direct {p0, v1, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->onFinalCallbackException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1150
    .end local v0    # "failException":Ljava/lang/Exception;
    :goto_25
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInflightDoneCallbackCount:Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->decrement()V

    .line 1151
    return-void

    .line 1144
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private blacklist getFinishedReason()I
    .registers 4

    .line 847
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    iget v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    const-string v2, "Cronet bidirectional stream read state is "

    if-ne v0, v1, :cond_32

    .line 855
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    packed-switch v0, :pswitch_data_5e

    .line 863
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which is not a valid finished state!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :pswitch_2c
    const/4 v0, 0x0

    return v0

    .line 861
    :pswitch_2e
    const/4 v0, 0x1

    return v0

    .line 859
    :pswitch_30
    const/4 v0, 0x2

    return v0

    .line 848
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which is different from write state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_5e
    .packed-switch 0x5
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
    .end packed-switch
.end method

.method private static blacklist headersListFromStrings([Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .param p0, "headers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1025
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1026
    .local v0, "headersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    .line 1027
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    aget-object v3, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    .line 1029
    .end local v1    # "i":I
    :cond_1d
    return-object v0
.end method

.method private blacklist isDoneLocked()Z
    .registers 5

    .line 540
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    if-eqz v0, :cond_e

    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStream:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic blacklist lambda$postTaskToExecutor$0(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CronetBidirectionalStream#postTaskToExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " running callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1071
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 1075
    .local v0, "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_1d
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_26

    .line 1076
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 1077
    .end local v0    # "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_25
    return-void

    .line 1070
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

.method private blacklist maybeOnSucceededOnExecutor()V
    .registers 5

    .line 547
    const-string v0, "CronetBidirectionalStream#maybeOnSucceededOnExecutor"

    .line 548
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 550
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStreamLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_4f

    .line 551
    :try_start_9
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->isDoneLocked()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 552
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_4c

    .line 568
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 552
    :cond_15
    return-void

    .line 554
    :cond_16
    :try_start_16
    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_45

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_22

    goto :goto_45

    .line 557
    :cond_22
    const/4 v2, 0x7

    iput v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    iput v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    .line 560
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->destroyNativeStreamLocked(Z)V

    .line 561
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_4c

    .line 563
    :try_start_2c
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mCallback:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {v1, p0, v2}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->onSucceeded(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_34
    .catchall {:try_start_2c .. :try_end_33} :catchall_4f

    .line 566
    goto :goto_3a

    .line 564
    :catch_34
    move-exception v1

    .line 565
    .local v1, "e":Ljava/lang/Exception;
    :try_start_35
    const-string v2, "onSucceeded"

    invoke-direct {p0, v2, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->onFinalCallbackException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 567
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3a
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInflightDoneCallbackCount:Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->decrement()V
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_4f

    .line 568
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 569
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_44
    return-void

    .line 555
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_45
    :goto_45
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_4c

    .line 568
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 555
    :cond_4b
    return-void

    .line 561
    :catchall_4c
    move-exception v2

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    :try_start_4e
    throw v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    .line 547
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    :catchall_4f
    move-exception v1

    if-eqz v0, :cond_5a

    :try_start_52
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5a
    :goto_5a
    throw v1
.end method

.method private blacklist onCanceled()V
    .registers 3

    .line 761
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$4;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$4;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)V

    const-string v1, "onCanceled"

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method private blacklist onError(IIIILjava/lang/String;J)V
    .registers 16
    .param p1, "errorCode"    # I
    .param p2, "nativeError"    # I
    .param p3, "nativeQuicError"    # I
    .param p4, "source"    # I
    .param p5, "errorString"    # Ljava/lang/String;
    .param p6, "receivedByteCount"    # J

    .line 737
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    if-eqz v0, :cond_9

    .line 738
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {v0, p6, p7}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->setReceivedByteCount(J)V

    .line 740
    :cond_9
    const/16 v0, 0xa

    const-string v1, "Exception in BidirectionalStream: "

    if-eq p1, v0, :cond_30

    if-eqz p3, :cond_12

    goto :goto_30

    .line 749
    :cond_12
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamNetworkException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamNetworkException;-><init>(Ljava/lang/String;II)V

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->failWithException(Landroid/net/connectivity/org/chromium/net/CronetException;)V

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    goto :goto_4d

    .line 741
    :cond_30
    :goto_30
    new-instance v2, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p1    # "errorCode":I
    .end local p2    # "nativeError":I
    .end local p3    # "nativeQuicError":I
    .end local p4    # "source":I
    .local v4, "errorCode":I
    .local v5, "nativeError":I
    .local v6, "nativeQuicError":I
    .local v7, "source":I
    invoke-direct/range {v2 .. v7}, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;-><init>(Ljava/lang/String;IIII)V

    invoke-direct {p0, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->failWithException(Landroid/net/connectivity/org/chromium/net/CronetException;)V

    .line 755
    :goto_4d
    return-void
.end method

.method private blacklist onFinalCallbackException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1178
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mFinalUserCallbackThrew:Z

    .line 1179
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1180
    return-void
.end method

.method private blacklist onMetricsCollected(JJJJJJJJJJJJJZJJZZ)V
    .registers 68
    .param p1, "requestStartMs"    # J
    .param p3, "dnsStartMs"    # J
    .param p5, "dnsEndMs"    # J
    .param p7, "connectStartMs"    # J
    .param p9, "connectEndMs"    # J
    .param p11, "sslStartMs"    # J
    .param p13, "sslEndMs"    # J
    .param p15, "sendingStartMs"    # J
    .param p17, "sendingEndMs"    # J
    .param p19, "pushStartMs"    # J
    .param p21, "pushEndMs"    # J
    .param p23, "responseStartMs"    # J
    .param p25, "requestEndMs"    # J
    .param p27, "socketReused"    # Z
    .param p28, "sentByteCount"    # J
    .param p30, "receivedByteCount"    # J
    .param p32, "quicConnectionMigrationAttempted"    # Z
    .param p33, "quicConnectionMigrationSuccessful"    # Z

    .line 802
    move-object/from16 v1, p0

    :try_start_2
    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    if-nez v0, :cond_59

    .line 805
    new-instance v2, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    move-wide/from16 v19, p17

    move-wide/from16 v21, p19

    move-wide/from16 v23, p21

    move-wide/from16 v25, p23

    move-wide/from16 v27, p25

    move/from16 v29, p27

    move-wide/from16 v30, p28

    move-wide/from16 v32, p30

    invoke-direct/range {v2 .. v33}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;-><init>(JJJJJJJJJJJJJZJJ)V

    iput-object v2, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_67

    .line 823
    move/from16 v2, p32

    :try_start_2f
    iput-boolean v2, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mQuicConnectionMigrationAttempted:Z
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_57

    .line 824
    move/from16 v3, p33

    :try_start_33
    iput-boolean v3, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mQuicConnectionMigrationSuccessful:Z

    .line 825
    new-instance v4, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;

    iget-object v5, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInitialUrl:Ljava/lang/String;

    iget-object v6, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestAnnotations:Ljava/util/Collection;

    iget-object v7, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    .line 830
    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->getFinishedReason()I

    move-result v8

    iget-object v9, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    iget-object v10, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mException:Landroid/net/connectivity/org/chromium/net/CronetException;

    invoke-direct/range {v4 .. v10}, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;-><init>(Ljava/lang/String;Ljava/util/Collection;Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Metrics;ILandroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/CronetException;)V

    .line 833
    .local v4, "requestFinishedInfo":Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;
    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    iget-object v5, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInflightDoneCallbackCount:Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->reportRequestFinished(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;)V
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_65

    .line 836
    .end local v4    # "requestFinishedInfo":Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;
    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInflightDoneCallbackCount:Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->decrement()V

    .line 837
    nop

    .line 838
    return-void

    .line 836
    :catchall_57
    move-exception v0

    goto :goto_6a

    .line 803
    :cond_59
    move/from16 v2, p32

    move/from16 v3, p33

    :try_start_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Metrics collection should only happen once."

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .end local p1    # "requestStartMs":J
    .end local p3    # "dnsStartMs":J
    .end local p5    # "dnsEndMs":J
    .end local p7    # "connectStartMs":J
    .end local p9    # "connectEndMs":J
    .end local p11    # "sslStartMs":J
    .end local p13    # "sslEndMs":J
    .end local p15    # "sendingStartMs":J
    .end local p17    # "sendingEndMs":J
    .end local p19    # "pushStartMs":J
    .end local p21    # "pushEndMs":J
    .end local p23    # "responseStartMs":J
    .end local p25    # "requestEndMs":J
    .end local p27    # "socketReused":Z
    .end local p28    # "sentByteCount":J
    .end local p30    # "receivedByteCount":J
    .end local p32    # "quicConnectionMigrationAttempted":Z
    .end local p33    # "quicConnectionMigrationSuccessful":Z
    throw v0
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_65

    .line 836
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .restart local p1    # "requestStartMs":J
    .restart local p3    # "dnsStartMs":J
    .restart local p5    # "dnsEndMs":J
    .restart local p7    # "connectStartMs":J
    .restart local p9    # "connectEndMs":J
    .restart local p11    # "sslStartMs":J
    .restart local p13    # "sslEndMs":J
    .restart local p15    # "sendingStartMs":J
    .restart local p17    # "sendingEndMs":J
    .restart local p19    # "pushStartMs":J
    .restart local p21    # "pushEndMs":J
    .restart local p23    # "responseStartMs":J
    .restart local p25    # "requestEndMs":J
    .restart local p27    # "socketReused":Z
    .restart local p28    # "sentByteCount":J
    .restart local p30    # "receivedByteCount":J
    .restart local p32    # "quicConnectionMigrationAttempted":Z
    .restart local p33    # "quicConnectionMigrationSuccessful":Z
    :catchall_65
    move-exception v0

    goto :goto_6c

    :catchall_67
    move-exception v0

    move/from16 v2, p32

    :goto_6a
    move/from16 v3, p33

    :goto_6c
    iget-object v4, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInflightDoneCallbackCount:Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;

    invoke-virtual {v4}, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->decrement()V

    .line 837
    throw v0
.end method

.method private blacklist onNonfinalCallbackException(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1158
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNonfinalUserCallbackExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNonfinalUserCallbackExceptionCount:I

    .line 1159
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CallbackExceptionImpl;

    const-string v1, "CalledByNative method has thrown an exception"

    invoke-direct {v0, v1, p1}, Landroid/net/connectivity/org/chromium/net/impl/CallbackExceptionImpl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1161
    .local v0, "streamError":Landroid/net/connectivity/org/chromium/net/CallbackException;
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Exception in CalledByNative method"

    invoke-static {v1, v2, p1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1162
    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->failWithExceptionOnExecutor(Landroid/net/connectivity/org/chromium/net/CronetException;)V

    .line 1163
    return-void
.end method

.method private blacklist onReadCompleted(Ljava/nio/ByteBuffer;IIIJ)V
    .registers 10
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bytesRead"    # I
    .param p3, "initialPosition"    # I
    .param p4, "initialLimit"    # I
    .param p5, "receivedByteCount"    # J

    .line 650
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {v0, p5, p6}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->setReceivedByteCount(J)V

    .line 651
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p3, :cond_40

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-eq v0, p4, :cond_13

    goto :goto_40

    .line 656
    :cond_13
    if-ltz p2, :cond_35

    add-int v0, p3, p2

    if-le v0, p4, :cond_1a

    goto :goto_35

    .line 660
    :cond_1a
    add-int v0, p3, p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 661
    nop

    .line 662
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mOnReadCompletedTask:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;

    iput-object p1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 663
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mOnReadCompletedTask:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;

    if-nez p2, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    iput-boolean v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;->mEndOfStream:Z

    .line 664
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mOnReadCompletedTask:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;

    const-string v1, "onReadCompleted"

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 665
    return-void

    .line 657
    :cond_35
    :goto_35
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetExceptionImpl;

    const-string v2, "Invalid number of bytes read"

    invoke-direct {v0, v2, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetExceptionImpl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->failWithException(Landroid/net/connectivity/org/chromium/net/CronetException;)V

    .line 658
    return-void

    .line 652
    :cond_40
    :goto_40
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetExceptionImpl;

    const-string v2, "ByteBuffer modified externally during read"

    invoke-direct {v0, v2, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetExceptionImpl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->failWithException(Landroid/net/connectivity/org/chromium/net/CronetException;)V

    .line 654
    return-void
.end method

.method private blacklist onRequestFinished()V
    .registers 7

    .line 876
    nop

    .line 877
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    .line 878
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->getLogId()J

    move-result-wide v1

    .line 880
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->getFinishedReason()I

    move-result v3

    iget-boolean v4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mQuicConnectionMigrationAttempted:Z

    iget-boolean v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mQuicConnectionMigrationSuccessful:Z

    .line 879
    invoke-direct {p0, v3, v4, v5}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->buildCronetTrafficInfo(IZZ)Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;

    move-result-object v3

    .line 877
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;->logCronetTrafficInfo(JLandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;)V

    .line 884
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->onRequestFinished()V

    .line 885
    return-void
.end method

.method private blacklist onResponseHeadersReceived(ILjava/lang/String;[Ljava/lang/String;J)V
    .registers 11
    .param p1, "httpStatusCode"    # I
    .param p2, "negotiatedProtocol"    # Ljava/lang/String;
    .param p3, "headers"    # [Ljava/lang/String;
    .param p4, "receivedByteCount"    # J

    .line 613
    nop

    .line 614
    :try_start_1
    invoke-direct/range {p0 .. p5}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->prepareResponseInfoOnNetworkThread(ILjava/lang/String;[Ljava/lang/String;J)Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_1b

    move-wide v1, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "httpStatusCode":I
    .local v1, "receivedByteCount":J
    .local p2, "httpStatusCode":I
    .local p3, "negotiatedProtocol":Ljava/lang/String;
    .local p4, "headers":[Ljava/lang/String;
    :try_start_a
    iput-object v0, p1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_c} :catch_18

    .line 619
    nop

    .line 620
    new-instance p5, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$2;

    invoke-direct {p5, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$2;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)V

    const-string v0, "onResponseHeadersReceived"

    invoke-direct {p0, p5, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 640
    return-void

    .line 616
    :catch_18
    move-exception v0

    move-object p5, v0

    goto :goto_22

    .end local v1    # "receivedByteCount":J
    .restart local p1    # "httpStatusCode":I
    .local p2, "negotiatedProtocol":Ljava/lang/String;
    .local p3, "headers":[Ljava/lang/String;
    .local p4, "receivedByteCount":J
    :catch_1b
    move-exception v0

    move-wide v1, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    move-object p5, v0

    .line 617
    .end local p1    # "httpStatusCode":I
    .restart local v1    # "receivedByteCount":J
    .local p2, "httpStatusCode":I
    .local p3, "negotiatedProtocol":Ljava/lang/String;
    .local p4, "headers":[Ljava/lang/String;
    .local p5, "e":Ljava/lang/Exception;
    :goto_22
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetExceptionImpl;

    const-string v3, "Cannot prepare ResponseInfo"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetExceptionImpl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->failWithException(Landroid/net/connectivity/org/chromium/net/CronetException;)V

    .line 618
    return-void
.end method

.method private blacklist onResponseTrailersReceived([Ljava/lang/String;)V
    .registers 5
    .param p1, "trailers"    # [Ljava/lang/String;

    .line 706
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl$HeaderBlockImpl;

    .line 707
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->headersListFromStrings([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl$HeaderBlockImpl;-><init>(Ljava/util/List;)V

    .line 708
    .local v0, "trailersBlock":Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$3;

    invoke-direct {v1, p0, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$3;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;)V

    const-string v2, "onResponseTrailersReceived"

    invoke-direct {p0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method private blacklist onStreamReady(Z)V
    .registers 4
    .param p1, "requestHeadersSent"    # Z

    .line 574
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$1;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Z)V

    const-string v1, "onStreamReady"

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method private blacklist onWritevCompleted([Ljava/nio/ByteBuffer;[I[IZ)V
    .registers 10
    .param p1, "byteBuffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "initialPositions"    # [I
    .param p3, "initialLimits"    # [I
    .param p4, "endOfStream"    # Z

    .line 674
    nop

    .line 675
    nop

    .line 676
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_5
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->isDoneLocked()Z

    move-result v1

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    .line 678
    :cond_d
    const/16 v1, 0x8

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    .line 680
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mFlushData:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 681
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->sendFlushDataLocked()V

    .line 683
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_5e

    .line 684
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    array-length v1, p1

    if-ge v0, v1, :cond_5d

    .line 685
    aget-object v1, p1, v0

    .line 686
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    aget v3, p2, v0

    if-ne v2, v3, :cond_51

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    aget v3, p3, v0

    if-eq v2, v3, :cond_34

    goto :goto_51

    .line 693
    :cond_34
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 694
    new-instance v2, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;

    if-eqz p4, :cond_45

    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v0, v3, :cond_45

    goto :goto_46

    :cond_45
    const/4 v4, 0x0

    :goto_46
    invoke-direct {v2, p0, v1, v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Ljava/nio/ByteBuffer;Z)V

    const-string v3, "onWritevCompleted"

    invoke-direct {p0, v2, v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 684
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 687
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_51
    :goto_51
    new-instance v2, Landroid/net/connectivity/org/chromium/net/impl/CronetExceptionImpl;

    const-string v3, "ByteBuffer modified externally during write"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetExceptionImpl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->failWithException(Landroid/net/connectivity/org/chromium/net/CronetException;)V

    .line 690
    return-void

    .line 701
    .end local v0    # "i":I
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_5d
    return-void

    .line 683
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1
.end method

.method private blacklist postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 7
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CronetBidirectionalStream#postTaskToExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1065
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 1068
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_17
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_21
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_17 .. :try_end_21} :catch_24
    .catchall {:try_start_17 .. :try_end_21} :catchall_22

    .line 1089
    goto :goto_39

    .line 1064
    :catchall_22
    move-exception v1

    goto :goto_42

    .line 1078
    :catch_24
    move-exception v1

    .line 1079
    .local v1, "failException":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_25
    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Exception posting task to executor"

    invoke-static {v2, v3, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1085
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStreamLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_22

    .line 1086
    const/4 v3, 0x6

    :try_start_30
    iput v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    iput v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    .line 1087
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->destroyNativeStreamLocked(Z)V

    .line 1088
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_3f

    .line 1090
    .end local v1    # "failException":Ljava/util/concurrent/RejectedExecutionException;
    :goto_39
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 1091
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_3e
    return-void

    .line 1088
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v1    # "failException":Ljava/util/concurrent/RejectedExecutionException;
    :catchall_3f
    move-exception v3

    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .end local p1    # "task":Ljava/lang/Runnable;
    .end local p2    # "name":Ljava/lang/String;
    :try_start_41
    throw v3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_22

    .line 1064
    .end local v1    # "failException":Ljava/util/concurrent/RejectedExecutionException;
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .restart local p1    # "task":Ljava/lang/Runnable;
    .restart local p2    # "name":Ljava/lang/String;
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

.method private blacklist prepareResponseInfoOnNetworkThread(ILjava/lang/String;[Ljava/lang/String;J)Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;
    .registers 16
    .param p1, "httpStatusCode"    # I
    .param p2, "negotiatedProtocol"    # Ljava/lang/String;
    .param p3, "headers"    # [Ljava/lang/String;
    .param p4, "receivedByteCount"    # J

    .line 1098
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInitialUrl:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1100
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1103
    invoke-static {p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->headersListFromStrings([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v3, ""

    move v2, p1

    move-object v6, p2

    move-wide v8, p4

    .end local p1    # "httpStatusCode":I
    .end local p2    # "negotiatedProtocol":Ljava/lang/String;
    .end local p4    # "receivedByteCount":J
    .local v2, "httpStatusCode":I
    .local v6, "negotiatedProtocol":Ljava/lang/String;
    .local v8, "receivedByteCount":J
    invoke-direct/range {v0 .. v9}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1108
    .local v0, "responseInfo":Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;
    return-object v0
.end method

.method private blacklist sendFlushDataLocked()V
    .registers 10

    .line 466
    nop

    .line 467
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mFlushData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 468
    .local v0, "size":I
    new-array v5, v0, [Ljava/nio/ByteBuffer;

    .line 469
    .local v5, "buffers":[Ljava/nio/ByteBuffer;
    new-array v6, v0, [I

    .line 470
    .local v6, "positions":[I
    new-array v7, v0, [I

    .line 471
    .local v7, "limits":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_29

    .line 472
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mFlushData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 473
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    aput-object v2, v5, v1

    .line 474
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    aput v3, v6, v1

    .line 475
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    aput v3, v7, v1

    .line 471
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 477
    .end local v1    # "i":I
    :cond_29
    nop

    .line 478
    nop

    .line 479
    const/16 v1, 0x9

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    .line 480
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestHeadersSent:Z

    .line 481
    move v2, v1

    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStreamJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;

    move-result-object v1

    move v4, v2

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStream:J

    iget-boolean v8, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mEndOfStreamWritten:Z

    if-eqz v8, :cond_47

    iget-object v8, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mPendingData:Ljava/util/LinkedList;

    .line 488
    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_47

    goto :goto_48

    :cond_47
    const/4 v4, 0x0

    :goto_48
    move v8, v4

    .line 482
    move-object v4, p0

    invoke-interface/range {v1 .. v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;->writevData(JLandroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;[Ljava/nio/ByteBuffer;[I[IZ)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 494
    return-void

    .line 491
    :cond_51
    const/16 v1, 0x8

    iput v1, v4, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    .line 492
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to call native writev."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist stringsFromHeaderList(Ljava/util/List;)[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1033
    .local p0, "headersList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1034
    .local v0, "headersArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1035
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1036
    .local v3, "requestHeader":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v1

    .line 1037
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "i":I
    .restart local v1    # "i":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v4

    .line 1038
    .end local v3    # "requestHeader":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_d

    .line 1039
    :cond_2e
    return-object v0
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 4

    .line 520
    const-string v0, "CronetBidirectionalStream#cancel"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 521
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStreamLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_2e

    .line 522
    :try_start_9
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->isDoneLocked()Z

    move-result v2

    if-nez v2, :cond_24

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    if-nez v2, :cond_14

    goto :goto_24

    .line 525
    :cond_14
    const/4 v2, 0x5

    iput v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    iput v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    .line 526
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->destroyNativeStreamLocked(Z)V

    .line 527
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_2b

    .line 528
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 529
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_23
    return-void

    .line 523
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_24
    :goto_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_2b

    .line 528
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 523
    :cond_2a
    return-void

    .line 527
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    :try_start_2d
    throw v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 520
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
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

.method public blacklist flush()V
    .registers 7

    .line 421
    const-string v0, "CronetBidirectionalStream#flush"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 422
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStreamLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_88

    .line 423
    :try_start_9
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->isDoneLocked()Z

    move-result v2

    if-nez v2, :cond_7e

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    const/16 v3, 0x8

    const/16 v4, 0x9

    if-eq v2, v3, :cond_1c

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    if-eq v2, v4, :cond_1c

    goto :goto_7e

    .line 428
    :cond_1c
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mPendingData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4f

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mFlushData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 431
    iget-boolean v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestHeadersSent:Z

    if-nez v2, :cond_48

    .line 432
    iput-boolean v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestHeadersSent:Z

    .line 433
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStreamJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStream:J

    .line 434
    invoke-interface {v2, v3, v4, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;->sendRequestHeaders(JLandroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)V

    .line 435
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInitialMethod:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->doesMethodAllowWriteData(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 436
    const/16 v2, 0xa

    iput v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    .line 439
    :cond_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_9 .. :try_end_49} :catchall_85

    .line 458
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 439
    :cond_4e
    return-void

    .line 442
    :cond_4f
    nop

    .line 445
    :try_start_50
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mPendingData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_64

    .line 446
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mFlushData:Ljava/util/LinkedList;

    iget-object v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mPendingData:Ljava/util/LinkedList;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 447
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mPendingData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 450
    :cond_64
    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    if-ne v2, v4, :cond_6f

    .line 453
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_50 .. :try_end_69} :catchall_85

    .line 458
    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 453
    :cond_6e
    return-void

    .line 455
    :cond_6f
    :try_start_6f
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->sendFlushDataLocked()V

    .line 456
    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mFlushCount:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mFlushCount:I

    .line 457
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_85

    .line 458
    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 459
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_7d
    return-void

    .line 426
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_7e
    :goto_7e
    :try_start_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_85

    .line 458
    if-eqz v0, :cond_84

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 426
    :cond_84
    return-void

    .line 457
    :catchall_85
    move-exception v2

    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    :try_start_87
    throw v2
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_88

    .line 421
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    :catchall_88
    move-exception v1

    if-eqz v0, :cond_93

    :try_start_8b
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8f

    goto :goto_93

    :catchall_8f
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_93
    :goto_93
    throw v1
.end method

.method public blacklist getFlushDataForTesting()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 510
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 511
    .local v1, "flushData":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mFlushData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 512
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    nop

    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_e

    .line 514
    :cond_23
    monitor-exit v0

    return-object v1

    .line 515
    .end local v1    # "flushData":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public blacklist getPendingDataForTesting()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 500
    .local v1, "pendingData":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mPendingData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 501
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    nop

    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_e

    .line 503
    :cond_23
    monitor-exit v0

    return-object v1

    .line 504
    .end local v1    # "pendingData":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public blacklist isDone()Z
    .registers 3

    .line 533
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_3
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->isDoneLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 535
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public blacklist read(Ljava/nio/ByteBuffer;)V
    .registers 13
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 366
    const-string v0, "CronetBidirectionalStream#read"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v1

    .line 367
    .local v1, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStreamLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_75

    .line 368
    :try_start_9
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/impl/Preconditions;->checkHasRemaining(Ljava/nio/ByteBuffer;)V

    .line 369
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/impl/Preconditions;->checkDirect(Ljava/nio/ByteBuffer;)V

    .line 370
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_61

    .line 373
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->isDoneLocked()Z

    move-result v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_6b

    if-eqz v0, :cond_25

    .line 374
    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_21

    .line 394
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 374
    :cond_20
    return-void

    .line 393
    :catchall_21
    move-exception v0

    move-object v7, p0

    move-object v8, p1

    goto :goto_6e

    .line 376
    :cond_25
    :try_start_25
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mOnReadCompletedTask:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_6b

    if-nez v0, :cond_31

    .line 377
    :try_start_29
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream-IA;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mOnReadCompletedTask:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$OnReadCompletedRunnable;
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_21

    .line 379
    :cond_31
    const/4 v0, 0x3

    :try_start_32
    iput v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    .line 380
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStreamJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;

    move-result-object v4

    iget-wide v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStream:J

    .line 385
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 386
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_6b

    .line 381
    move-object v7, p0

    move-object v8, p1

    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    :try_start_44
    invoke-interface/range {v4 .. v10}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;->readData(JLandroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Ljava/nio/ByteBuffer;II)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 392
    iget p1, v7, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v7, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadCount:I

    .line 393
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_73

    .line 394
    if-eqz v1, :cond_56

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 395
    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_56
    return-void

    .line 389
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_57
    :try_start_57
    iput v3, v7, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I

    .line 390
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to call native read"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    throw p1

    .line 371
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .restart local p1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_61
    move-object v7, p0

    move-object v8, p1

    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected read attempt."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    throw p1

    .line 393
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .restart local p1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_6b
    move-exception v0

    move-object v7, p0

    move-object v8, p1

    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    :goto_6e
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_57 .. :try_end_6f} :catchall_73

    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    :try_start_6f
    throw v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    .line 366
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    :catchall_70
    move-exception v0

    move-object p1, v0

    goto :goto_79

    .line 393
    :catchall_73
    move-exception v0

    goto :goto_6e

    .line 366
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_75
    move-exception v0

    move-object v7, p0

    move-object v8, p1

    move-object p1, v0

    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    :goto_79
    if-eqz v1, :cond_83

    :try_start_7b
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    goto :goto_83

    :catchall_7f
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_83
    :goto_83
    throw p1
.end method

.method public blacklist setOnDestroyedCallbackForTesting(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "onDestroyedCallbackForTesting"    # Ljava/lang/Runnable;

    .line 1017
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mOnDestroyedCallbackForTesting:Ljava/lang/Runnable;

    .line 1018
    return-void
.end method

.method public blacklist start()V
    .registers 18

    .line 311
    move-object/from16 v1, p0

    const-string v0, "CronetBidirectionalStream#start"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v11

    .line 312
    .local v11, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_8
    iget-object v12, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStreamLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_cc

    .line 313
    :try_start_b
    iget v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_c9

    if-nez v0, :cond_c1

    .line 317
    nop

    .line 318
    const/4 v13, 0x0

    :try_start_11
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStreamJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;

    move-result-object v0

    iget-object v2, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    .line 321
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->getUrlRequestContextAdapter()J

    move-result-wide v2

    iget-boolean v4, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mDelayRequestHeadersUntilFirstFlush:Z

    const/4 v14, 0x1

    if-nez v4, :cond_22

    move v4, v14

    goto :goto_23

    :cond_22
    move v4, v13

    :goto_23
    iget-boolean v5, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mTrafficStatsTagSet:Z

    iget v6, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mTrafficStatsTag:I

    iget-boolean v7, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mTrafficStatsUidSet:Z

    iget v8, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mTrafficStatsUid:I

    iget-wide v9, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNetworkHandle:J

    .line 319
    invoke-interface/range {v0 .. v10}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;->createBidirectionalStream(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;JZZIZIJ)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStream:J

    .line 330
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStreamJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;

    move-result-object v0

    iget-wide v2, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStream:J

    iget-object v4, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInitialUrl:Ljava/lang/String;

    iget v5, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInitialPriority:I

    iget-object v6, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInitialMethod:Ljava/lang/String;

    iget-object v7, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestHeaders:[Ljava/lang/String;

    iget-object v8, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInitialMethod:Ljava/lang/String;

    .line 338
    invoke-static {v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->doesMethodAllowWriteData(Ljava/lang/String;)Z

    move-result v8
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_47} :catch_bb
    .catchall {:try_start_11 .. :try_end_47} :catchall_c9

    if-nez v8, :cond_4b

    move v8, v14

    goto :goto_4c

    :cond_4b
    move v8, v13

    .line 331
    :goto_4c
    move-wide v15, v2

    move-object v3, v1

    move-wide v1, v15

    :try_start_4f
    invoke-interface/range {v0 .. v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;->start(JLandroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Z)I

    move-result v0
    :try_end_53
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_53} :catch_b8
    .catchall {:try_start_4f .. :try_end_53} :catchall_b5

    move-object v1, v3

    .line 339
    .local v0, "startResult":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9a

    .line 342
    if-gtz v0, :cond_7b

    .line 348
    :try_start_59
    iget-object v2, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->onRequestStarted()V

    .line 349
    new-instance v2, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;

    new-instance v3, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)V

    invoke-direct {v2, v3}, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInflightDoneCallbackCount:Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;

    .line 352
    iget-object v2, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInflightDoneCallbackCount:Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->increment()V

    .line 353
    iput v14, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mWriteState:I

    iput v14, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mReadState:I
    :try_end_73
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_73} :catch_bb
    .catchall {:try_start_59 .. :try_end_73} :catchall_c9

    .line 359
    .end local v0    # "startResult":I
    nop

    .line 360
    :try_start_74
    monitor-exit v12
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_c9

    .line 361
    if-eqz v11, :cond_7a

    invoke-virtual {v11}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 362
    .end local v11    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_7a
    return-void

    .line 343
    .restart local v0    # "startResult":I
    .restart local v11    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_7b
    add-int/lit8 v2, v0, -0x1

    .line 344
    .local v2, "headerPos":I
    :try_start_7d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid header with headername: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mRequestHeaders:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v11    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    throw v3

    .line 340
    .end local v2    # "headerPos":I
    .restart local v11    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    :cond_9a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid http method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mInitialMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v11    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    throw v2
    :try_end_b5
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_b5} :catch_bb
    .catchall {:try_start_7d .. :try_end_b5} :catchall_c9

    .line 360
    .end local v0    # "startResult":I
    .restart local v11    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    :catchall_b5
    move-exception v0

    move-object v1, v3

    goto :goto_ca

    .line 354
    :catch_b8
    move-exception v0

    move-object v1, v3

    goto :goto_bc

    :catch_bb
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_bc
    :try_start_bc
    invoke-direct {v1, v13}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->destroyNativeStreamLocked(Z)V

    .line 358
    nop

    .end local v11    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    throw v0

    .line 314
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v11    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    :cond_c1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Stream is already started."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v11    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    throw v0

    .line 360
    .restart local v11    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    :catchall_c9
    move-exception v0

    :goto_ca
    monitor-exit v12
    :try_end_cb
    .catchall {:try_start_bc .. :try_end_cb} :catchall_c9

    .end local v11    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    :try_start_cb
    throw v0
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_cc

    .line 311
    .restart local v11    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    :catchall_cc
    move-exception v0

    move-object v2, v0

    if-eqz v11, :cond_d8

    :try_start_d0
    invoke-virtual {v11}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_d4

    goto :goto_d8

    :catchall_d4
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d8
    :goto_d8
    throw v2
.end method

.method public blacklist write(Ljava/nio/ByteBuffer;Z)V
    .registers 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "endOfStream"    # Z

    .line 399
    const-string v0, "CronetBidirectionalStream#write"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 400
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mNativeStreamLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_4a

    .line 401
    :try_start_9
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/impl/Preconditions;->checkDirect(Ljava/nio/ByteBuffer;)V

    .line 402
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1d

    if-eqz p2, :cond_15

    goto :goto_1d

    .line 403
    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Empty buffer before end of stream."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .end local p2    # "endOfStream":Z
    throw v2

    .line 405
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .restart local p1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p2    # "endOfStream":Z
    :cond_1d
    :goto_1d
    iget-boolean v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mEndOfStreamWritten:Z

    if-nez v2, :cond_3f

    .line 408
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->isDoneLocked()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 409
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_47

    .line 416
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 409
    :cond_2d
    return-void

    .line 411
    :cond_2e
    :try_start_2e
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mPendingData:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 412
    if-eqz p2, :cond_38

    .line 413
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->mEndOfStreamWritten:Z

    .line 415
    :cond_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_47

    .line 416
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 417
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_3e
    return-void

    .line 406
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_3f
    :try_start_3f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Write after writing end of stream."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .end local p2    # "endOfStream":Z
    throw v2

    .line 415
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .restart local p1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p2    # "endOfStream":Z
    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_47

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .end local p2    # "endOfStream":Z
    :try_start_49
    throw v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    .line 399
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .restart local p1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p2    # "endOfStream":Z
    :catchall_4a
    move-exception v1

    if-eqz v0, :cond_55

    :try_start_4d
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_55
    :goto_55
    throw v1
.end method
