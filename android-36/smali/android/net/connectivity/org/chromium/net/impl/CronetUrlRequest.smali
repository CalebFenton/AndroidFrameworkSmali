.class public final Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
.super Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest;
.source "CronetUrlRequest.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "cronet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mAllowDirectExecutor:Z

.field private final blacklist mCallback:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

.field private blacklist mDictionary:Ljava/nio/ByteBuffer;

.field private final blacklist mDictionaryId:Ljava/lang/String;

.field private blacklist mDictionarySha256Hash:[B

.field private final blacklist mDisableCache:Z

.field private final blacklist mDisableConnectionMigration:Z

.field private blacklist mException:Landroid/net/connectivity/org/chromium/net/CronetException;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mFinalUserCallbackThrew:Z

.field private blacklist mFinishedReason:I

.field private final blacklist mIdempotency:I

.field private final blacklist mInitialMethod:Ljava/lang/String;

.field private final blacklist mInitialUrl:Ljava/lang/String;

.field private final blacklist mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

.field private blacklist mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

.field private final blacklist mNetworkHandle:J

.field private blacklist mNonfinalUserCallbackExceptionCount:I

.field private blacklist mOnDestroyedCallbackForTesting:Ljava/lang/Runnable;

.field private blacklist mOnReadCompletedTask:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;

.field private final blacklist mPriority:I

.field private blacklist mQuicConnectionMigrationAttempted:Z

.field private blacklist mQuicConnectionMigrationSuccessful:Z

.field private blacklist mReadCount:I

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

.field private final blacklist mRequestFinishedListener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

.field private final blacklist mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

.field private blacklist mStarted:Z

.field private final blacklist mTrafficStatsTag:I

.field private final blacklist mTrafficStatsTagSet:Z

.field private final blacklist mTrafficStatsUid:I

.field private final blacklist mTrafficStatsUidSet:Z

.field private final blacklist mUploadDataStream:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

.field private final blacklist mUrlChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUrlRequestAdapter:J

.field private final blacklist mUrlRequestAdapterLock:Ljava/lang/Object;

.field private blacklist mWaitingOnRead:Z

.field private blacklist mWaitingOnRedirect:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$aQcIr_N7AdsdBz_zxv17MiZxVg4(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->lambda$maybeReportMetrics$1()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mCallback:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmException(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Landroid/net/connectivity/org/chromium/net/CronetException;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mException:Landroid/net/connectivity/org/chromium/net/CronetException;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResponseInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUploadDataStream(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUploadDataStream:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUrlRequestAdapter(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapter:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUrlRequestAdapterLock(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapterLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWaitingOnRead(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mWaitingOnRead:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWaitingOnRedirect(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mWaitingOnRedirect:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdestroyRequestAdapterLocked(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->destroyRequestAdapterLocked(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misDoneLocked(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)Z
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->isDoneLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeReportMetrics(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->maybeReportMetrics()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monFinalCallbackException(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->onFinalCallbackException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNonfinalCallbackException(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->onNonfinalCallbackException(Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartInternalLocked(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->startInternalLocked()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 58
    return-void
.end method

.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;ILandroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;Ljava/util/Collection;ZZZZIZILandroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;IJLjava/lang/String;Ljava/util/ArrayList;Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;[BLjava/nio/ByteBuffer;Ljava/lang/String;)V
    .registers 42
    .param p1, "requestContext"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "callback"    # Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p7, "disableCache"    # Z
    .param p8, "disableConnectionMigration"    # Z
    .param p9, "allowDirectExecutor"    # Z
    .param p10, "trafficStatsTagSet"    # Z
    .param p11, "trafficStatsTag"    # I
    .param p12, "trafficStatsUidSet"    # Z
    .param p13, "trafficStatsUid"    # I
    .param p14, "requestFinishedListener"    # Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;
    .param p15, "idempotency"    # I
    .param p16, "networkHandle"    # J
    .param p18, "method"    # Ljava/lang/String;
    .param p20, "uploadDataProvider"    # Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .param p21, "uploadDataProviderExecutor"    # Ljava/util/concurrent/Executor;
    .param p22, "dictionarySha256Hash"    # [B
    .param p23, "dictionary"    # Ljava/nio/ByteBuffer;
    .param p24, "dictionaryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;",
            "Ljava/lang/String;",
            "I",
            "Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;",
            "Ljava/util/concurrent/Executor;",
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
            ")V"
        }
    .end annotation

    .line 184
    .local p6, "requestAnnotations":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .local p19, "requestHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p14

    move-object/from16 v5, p20

    move-object/from16 v6, p24

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest;-><init>()V

    .line 80
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapterLock:Ljava/lang/Object;

    .line 89
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlChain:Ljava/util/List;

    .line 185
    const-string v7, "URL is required"

    invoke-static {v1, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    const-string v7, "Listener is required"

    invoke-static {v2, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    const-string v7, "Executor is required"

    invoke-static {v3, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    const-string v7, "Dictionary ID is expect to be an empty string if not specified"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    move/from16 v7, p9

    iput-boolean v7, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mAllowDirectExecutor:Z

    .line 192
    move-object/from16 v8, p1

    iput-object v8, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    .line 193
    invoke-virtual {v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->getCronetLogger()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    move-result-object v9

    iput-object v9, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    .line 194
    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mInitialUrl:Ljava/lang/String;

    .line 195
    iget-object v9, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlChain:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-static/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->convertRequestPriority(I)I

    move-result v9

    iput v9, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mPriority:I

    .line 197
    new-instance v9, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    invoke-direct {v9, v2}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;-><init>(Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;)V

    iput-object v9, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mCallback:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    .line 198
    iput-object v3, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 199
    move-object/from16 v9, p6

    iput-object v9, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mRequestAnnotations:Ljava/util/Collection;

    .line 200
    move/from16 v10, p7

    iput-boolean v10, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mDisableCache:Z

    .line 201
    move/from16 v11, p8

    iput-boolean v11, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mDisableConnectionMigration:Z

    .line 202
    move/from16 v12, p10

    iput-boolean v12, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mTrafficStatsTagSet:Z

    .line 203
    move/from16 v13, p11

    iput v13, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mTrafficStatsTag:I

    .line 204
    move/from16 v14, p12

    iput-boolean v14, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mTrafficStatsUidSet:Z

    .line 205
    move/from16 v15, p13

    iput v15, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mTrafficStatsUid:I

    .line 206
    nop

    .line 207
    const/16 v16, 0x0

    if-eqz v4, :cond_7e

    .line 208
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    invoke-direct {v1, v4}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;-><init>(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;)V

    goto :goto_80

    .line 210
    :cond_7e
    move-object/from16 v1, v16

    :goto_80
    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mRequestFinishedListener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    .line 211
    move-object/from16 v1, p22

    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mDictionarySha256Hash:[B

    .line 212
    move-object/from16 v1, p23

    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mDictionary:Ljava/nio/ByteBuffer;

    .line 213
    iput-object v6, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mDictionaryId:Ljava/lang/String;

    .line 214
    invoke-static/range {p15 .. p15}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->convertIdempotency(I)I

    move-result v1

    iput v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mIdempotency:I

    .line 215
    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mNetworkHandle:J

    .line 216
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mInitialMethod:Ljava/lang/String;

    .line 217
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v1, p19

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mRequestHeaders:Ljava/util/List;

    .line 218
    nop

    .line 219
    if-nez v5, :cond_af

    .line 220
    move-object/from16 v1, p21

    move-object/from16 v2, v16

    goto :goto_b6

    .line 221
    :cond_af
    new-instance v2, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    move-object/from16 v1, p21

    invoke-direct {v2, v5, v1, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;-><init>(Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V

    :goto_b6
    iput-object v2, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUploadDataStream:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    .line 223
    return-void
.end method

.method private blacklist buildCronetTrafficInfo()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;
    .registers 39

    .line 991
    move-object/from16 v0, p0

    .line 992
    nop

    .line 1000
    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    if-eqz v1, :cond_24

    .line 1001
    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->getAllHeaders()Ljava/util/Map;

    move-result-object v1

    .line 1002
    .local v1, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v2, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->getNegotiatedProtocol()Ljava/lang/String;

    move-result-object v2

    .line 1003
    .local v2, "negotiatedProtocol":Ljava/lang/String;
    iget-object v3, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->getHttpStatusCode()I

    move-result v3

    .line 1004
    .local v3, "httpStatusCode":I
    iget-object v4, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {v4}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->wasCached()Z

    move-result v4

    move-object v14, v2

    move v11, v3

    move/from16 v29, v4

    .local v4, "wasCached":Z
    goto :goto_30

    .line 1006
    .end local v1    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "negotiatedProtocol":Ljava/lang/String;
    .end local v3    # "httpStatusCode":I
    .end local v4    # "wasCached":Z
    :cond_24
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 1007
    .restart local v1    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v2, ""

    .line 1008
    .restart local v2    # "negotiatedProtocol":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1009
    .restart local v3    # "httpStatusCode":I
    const/4 v4, 0x0

    move-object v14, v2

    move v11, v3

    move/from16 v29, v4

    .line 1014
    .end local v2    # "negotiatedProtocol":Ljava/lang/String;
    .end local v3    # "httpStatusCode":I
    .local v11, "httpStatusCode":I
    .local v14, "negotiatedProtocol":Ljava/lang/String;
    .local v29, "wasCached":Z
    :goto_30
    iget-object v2, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getSentByteCount()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .line 1019
    .local v30, "requestTotalSizeInBytes":J
    const-wide/16 v2, 0x0

    if-eqz v29, :cond_47

    cmp-long v4, v30, v2

    if-nez v4, :cond_47

    .line 1021
    const-wide/16 v4, 0x0

    .line 1022
    .local v4, "requestHeaderSizeInBytes":J
    const-wide/16 v6, 0x0

    .local v6, "requestBodySizeInBytes":J
    goto :goto_53

    .line 1025
    .end local v4    # "requestHeaderSizeInBytes":J
    .end local v6    # "requestBodySizeInBytes":J
    :cond_47
    iget-object v4, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mRequestHeaders:Ljava/util/List;

    .line 1026
    invoke-static {v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetRequestCommon;->estimateHeadersSizeInBytes(Ljava/util/Collection;)J

    move-result-wide v4

    .line 1027
    .restart local v4    # "requestHeaderSizeInBytes":J
    sub-long v6, v30, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1030
    .restart local v6    # "requestBodySizeInBytes":J
    :goto_53
    iget-object v8, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    invoke-virtual {v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getReceivedByteCount()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 1035
    .local v32, "responseTotalSizeInBytes":J
    if-eqz v29, :cond_69

    cmp-long v8, v32, v2

    if-nez v8, :cond_69

    .line 1037
    const-wide/16 v8, 0x0

    .line 1038
    .local v8, "responseBodySizeInBytes":J
    const-wide/16 v12, 0x0

    move-wide v9, v8

    .local v12, "responseHeaderSizeInBytes":J
    goto :goto_75

    .line 1041
    .end local v8    # "responseBodySizeInBytes":J
    .end local v12    # "responseHeaderSizeInBytes":J
    :cond_69
    nop

    .line 1042
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetRequestCommon;->estimateHeadersSizeInBytes(Ljava/util/Map;)J

    move-result-wide v12

    .line 1043
    .restart local v12    # "responseHeaderSizeInBytes":J
    sub-long v8, v32, v12

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v9, v8

    .line 1047
    .local v9, "responseBodySizeInBytes":J
    :goto_75
    iget-object v8, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    invoke-virtual {v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getRequestStart()Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_a0

    iget-object v8, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    invoke-virtual {v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getResponseStart()Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_a0

    .line 1048
    iget-object v8, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    .line 1050
    invoke-virtual {v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getResponseStart()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    iget-object v8, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    .line 1051
    invoke-virtual {v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getRequestStart()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    sub-long v15, v15, v17

    .line 1049
    invoke-static/range {v15 .. v16}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v8

    .local v8, "headersLatency":Ljava/time/Duration;
    goto :goto_a4

    .line 1053
    .end local v8    # "headersLatency":Ljava/time/Duration;
    :cond_a0
    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v8

    .line 1057
    .restart local v8    # "headersLatency":Ljava/time/Duration;
    :goto_a4
    iget-object v15, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    invoke-virtual {v15}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getRequestStart()Ljava/util/Date;

    move-result-object v15

    if-eqz v15, :cond_ce

    iget-object v15, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    invoke-virtual {v15}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getRequestEnd()Ljava/util/Date;

    move-result-object v15

    if-eqz v15, :cond_ce

    .line 1058
    iget-object v2, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    .line 1060
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getRequestEnd()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v15, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    .line 1061
    invoke-virtual {v15}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getRequestStart()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    sub-long/2addr v2, v15

    .line 1059
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    .local v2, "totalLatency":Ljava/time/Duration;
    goto :goto_d2

    .line 1063
    .end local v2    # "totalLatency":Ljava/time/Duration;
    :cond_ce
    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    .line 1066
    .restart local v2    # "totalLatency":Ljava/time/Duration;
    :goto_d2
    const/4 v3, 0x0

    .line 1067
    .local v3, "networkInternalErrorCode":I
    const/4 v15, 0x0

    .line 1068
    .local v15, "quicNetworkErrorCode":I
    const/16 v16, 0x0

    .line 1069
    .local v16, "source":I
    sget-object v17, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->UNKNOWN:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    .line 1078
    .local v17, "failureReason":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
    move-object/from16 v34, v1

    .end local v1    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local v34, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mException:Landroid/net/connectivity/org/chromium/net/CronetException;

    move-object/from16 v18, v2

    .end local v2    # "totalLatency":Ljava/time/Duration;
    .local v18, "totalLatency":Ljava/time/Duration;
    instance-of v2, v1, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;

    if-eqz v2, :cond_f3

    check-cast v1, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;

    .line 1079
    .local v1, "networkException":Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;->getCronetInternalErrorCode()I

    move-result v3

    .line 1080
    sget-object v17, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->NETWORK:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    move/from16 v24, v3

    move/from16 v25, v15

    move/from16 v26, v16

    move-object/from16 v27, v17

    goto :goto_129

    .line 1081
    .end local v1    # "networkException":Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;
    :cond_f3
    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mException:Landroid/net/connectivity/org/chromium/net/CronetException;

    instance-of v2, v1, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;

    if-eqz v2, :cond_112

    check-cast v1, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;

    .line 1082
    .local v1, "quicException":Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->getCronetInternalErrorCode()I

    move-result v3

    .line 1083
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->getQuicDetailedErrorCode()I

    move-result v15

    .line 1084
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->getConnectionCloseSource()I

    move-result v16

    .line 1085
    sget-object v17, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->NETWORK:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    move/from16 v24, v3

    move/from16 v25, v15

    move/from16 v26, v16

    move-object/from16 v27, v17

    goto :goto_129

    .line 1086
    .end local v1    # "quicException":Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;
    :cond_112
    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mException:Landroid/net/connectivity/org/chromium/net/CronetException;

    if-eqz v1, :cond_121

    .line 1087
    sget-object v17, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->OTHER:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    move/from16 v24, v3

    move/from16 v25, v15

    move/from16 v26, v16

    move-object/from16 v27, v17

    goto :goto_129

    .line 1086
    :cond_121
    move/from16 v24, v3

    move/from16 v25, v15

    move/from16 v26, v16

    move-object/from16 v27, v17

    .line 1090
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

    iget-boolean v15, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mQuicConnectionMigrationAttempted:Z

    iget-boolean v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mQuicConnectionMigrationSuccessful:Z

    iget v3, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mFinishedReason:I

    .line 1094
    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetRequestCommon;->finishedReasonToCronetTrafficInfoRequestTerminalState(I)Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    move-result-object v17

    iget v3, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mNonfinalUserCallbackExceptionCount:I

    move/from16 v16, v1

    iget v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mReadCount:I

    .line 1097
    move/from16 v19, v1

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUploadDataStream:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    if-nez v1, :cond_143

    const/4 v1, 0x0

    goto :goto_149

    :cond_143
    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUploadDataStream:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->getReadCount()I

    move-result v1

    :goto_149
    move/from16 v20, v1

    iget-boolean v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mFinalUserCallbackThrew:Z

    .line 1098
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v23

    move/from16 v22, v1

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    .line 1100
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->getSocketReused()Z

    move-result v28

    const/16 v21, 0x0

    move-object/from16 v35, v18

    move/from16 v18, v3

    move-wide v3, v4

    move-wide v5, v6

    move-wide/from16 v36, v12

    move-object v12, v8

    move-wide/from16 v7, v36

    move-object/from16 v13, v35

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

    .line 1090
    move-object/from16 v18, v13

    .end local v13    # "totalLatency":Ljava/time/Duration;
    .restart local v18    # "totalLatency":Ljava/time/Duration;
    return-object v2
.end method

.method private blacklist checkNotStarted()V
    .registers 4

    .line 529
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    :try_start_3
    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mStarted:Z

    if-nez v1, :cond_f

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->isDoneLocked()Z

    move-result v1

    if-nez v1, :cond_f

    .line 533
    monitor-exit v0

    .line 534
    return-void

    .line 531
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Request is already started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    throw v1

    .line 533
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private static blacklist convertIdempotency(I)I
    .registers 2
    .param p0, "idempotency"    # I

    .line 493
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_a

    .line 501
    return v0

    .line 499
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 497
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 495
    :pswitch_9
    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist convertRequestPriority(I)I
    .registers 2
    .param p0, "priority"    # I

    .line 476
    const/4 v0, 0x4

    packed-switch p0, :pswitch_data_e

    .line 488
    return v0

    .line 486
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 484
    :pswitch_7
    return v0

    .line 482
    :pswitch_8
    const/4 v0, 0x3

    return v0

    .line 480
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 478
    :pswitch_c
    const/4 v0, 0x1

    return v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist destroyRequestAdapterLocked(I)V
    .registers 8
    .param p1, "finishedReason"    # I

    .line 543
    nop

    .line 544
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mFinishedReason:I

    .line 545
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 546
    return-void

    .line 548
    :cond_c
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->onRequestDestroyed()V

    .line 550
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;

    move-result-object v0

    iget-wide v4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapter:J

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 551
    :goto_1d
    invoke-interface {v0, v4, v5, p0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;->destroy(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Z)V

    .line 555
    iput-wide v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapter:J

    .line 556
    return-void
.end method

.method private blacklist failWithException(Landroid/net/connectivity/org/chromium/net/CronetException;)V
    .registers 4
    .param p1, "exception"    # Landroid/net/connectivity/org/chromium/net/CronetException;

    .line 585
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_3
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->isDoneLocked()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 587
    monitor-exit v0

    return-void

    .line 589
    :cond_b
    nop

    .line 590
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mException:Landroid/net/connectivity/org/chromium/net/CronetException;

    .line 591
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->destroyRequestAdapterLocked(I)V

    .line 592
    monitor-exit v0

    .line 594
    return-void

    .line 592
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private blacklist isDoneLocked()Z
    .registers 5

    .line 393
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mStarted:Z

    if-eqz v0, :cond_e

    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapter:J

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

.method private synthetic blacklist lambda$maybeReportMetrics$1()V
    .registers 2

    .line 1107
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->onRequestFinished()V

    return-void
.end method

.method static synthetic blacklist lambda$postTaskToExecutor$0(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CronetUrlRequest#postTaskToExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " running callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 453
    .local v0, "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_1d
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_26

    .line 454
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 455
    .end local v0    # "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_25
    return-void

    .line 448
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

.method private blacklist mapUrlRequestErrorToApiErrorCode(I)I
    .registers 5
    .param p1, "errorCode"    # I

    .line 953
    packed-switch p1, :pswitch_data_36

    .line 977
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    return p1

    .line 975
    :pswitch_1c
    const/16 v0, 0xb

    return v0

    .line 973
    :pswitch_1f
    const/16 v0, 0xa

    return v0

    .line 971
    :pswitch_22
    const/16 v0, 0x9

    return v0

    .line 969
    :pswitch_25
    const/16 v0, 0x8

    return v0

    .line 967
    :pswitch_28
    const/4 v0, 0x7

    return v0

    .line 965
    :pswitch_2a
    const/4 v0, 0x6

    return v0

    .line 963
    :pswitch_2c
    const/4 v0, 0x5

    return v0

    .line 961
    :pswitch_2e
    const/4 v0, 0x4

    return v0

    .line 959
    :pswitch_30
    const/4 v0, 0x3

    return v0

    .line 957
    :pswitch_32
    const/4 v0, 0x2

    return v0

    .line 955
    :pswitch_34
    const/4 v0, 0x1

    return v0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_34
        :pswitch_32
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
        :pswitch_2a
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist maybeReportMetrics()V
    .registers 12

    .line 1106
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;

    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    move-object v1, v0

    .line 1114
    .local v1, "inflightCallbackCount":Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;
    :try_start_b
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_49

    if-nez v0, :cond_13

    .line 1141
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->decrement()V

    .line 1114
    return-void

    .line 1116
    :cond_13
    nop

    .line 1118
    :try_start_14
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    .line 1119
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->getLogId()J

    move-result-wide v2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->buildCronetTrafficInfo()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;

    move-result-object v4

    .line 1118
    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;->logCronetTrafficInfo(JLandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_23} :catch_24
    .catchall {:try_start_14 .. :try_end_23} :catchall_49

    .line 1127
    goto :goto_2c

    .line 1120
    :catch_24
    move-exception v0

    .line 1123
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_25
    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while trying to log CronetTrafficInfo: "

    invoke-static {v2, v3, v0}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1130
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2c
    new-instance v4, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;

    iget-object v5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mInitialUrl:Ljava/lang/String;

    iget-object v6, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mRequestAnnotations:Ljava/util/Collection;

    iget-object v7, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    iget v8, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mFinishedReason:I

    iget-object v9, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    iget-object v10, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mException:Landroid/net/connectivity/org/chromium/net/CronetException;

    invoke-direct/range {v4 .. v10}, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;-><init>(Ljava/lang/String;Ljava/util/Collection;Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Metrics;ILandroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/CronetException;)V

    .line 1138
    .local v4, "requestInfo":Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mRequestFinishedListener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    invoke-virtual {v0, v4, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->reportRequestFinished(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;)V
    :try_end_44
    .catchall {:try_start_25 .. :try_end_44} :catchall_49

    .line 1141
    .end local v4    # "requestInfo":Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->decrement()V

    .line 1142
    nop

    .line 1143
    return-void

    .line 1141
    :catchall_49
    move-exception v0

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;->decrement()V

    .line 1142
    throw v0
.end method

.method private blacklist onCanceled()V
    .registers 3

    .line 817
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$6;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$6;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V

    .line 829
    .local v0, "task":Ljava/lang/Runnable;
    const-string v1, "onCanceled"

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method private blacklist onError(IIIILjava/lang/String;J)V
    .registers 19
    .param p1, "errorCode"    # I
    .param p2, "nativeError"    # I
    .param p3, "nativeQuicError"    # I
    .param p4, "source"    # I
    .param p5, "errorString"    # Ljava/lang/String;
    .param p6, "receivedByteCount"    # J

    .line 792
    move-object/from16 v0, p5

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    if-eqz v1, :cond_e

    .line 793
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    move-wide/from16 v2, p6

    invoke-virtual {v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->setReceivedByteCount(J)V

    goto :goto_10

    .line 792
    :cond_e
    move-wide/from16 v2, p6

    .line 795
    :goto_10
    const/16 v1, 0xa

    const-string v4, "Exception in CronetUrlRequest: "

    if-eq p1, v1, :cond_37

    if-eqz p3, :cond_19

    goto :goto_37

    .line 804
    :cond_19
    invoke-direct/range {p0 .. p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mapUrlRequestErrorToApiErrorCode(I)I

    move-result v1

    .line 805
    .local v1, "javaError":I
    new-instance v5, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v1, p2}, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;-><init>(Ljava/lang/String;II)V

    invoke-direct {p0, v5}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->failWithException(Landroid/net/connectivity/org/chromium/net/CronetException;)V

    goto :goto_54

    .line 796
    .end local v1    # "javaError":I
    :cond_37
    :goto_37
    new-instance v5, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v7, p1

    move v8, p2

    move v9, p3

    move v10, p4

    invoke-direct/range {v5 .. v10}, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;-><init>(Ljava/lang/String;IIII)V

    invoke-direct {p0, v5}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->failWithException(Landroid/net/connectivity/org/chromium/net/CronetException;)V

    .line 811
    :goto_54
    return-void
.end method

.method private blacklist onFinalCallbackException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mFinalUserCallbackThrew:Z

    .line 572
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

    .line 573
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

    .line 872
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    if-nez v1, :cond_36

    .line 875
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

    iput-object v2, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mMetrics:Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;

    .line 893
    move/from16 v1, p32

    iput-boolean v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mQuicConnectionMigrationAttempted:Z

    .line 894
    move/from16 v2, p33

    iput-boolean v2, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mQuicConnectionMigrationSuccessful:Z

    .line 897
    return-void

    .line 873
    :cond_36
    move/from16 v1, p32

    move/from16 v2, p33

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Metrics collection should only happen once."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private blacklist onNativeAdapterDestroyed()V
    .registers 7

    .line 903
    const-string v0, "CronetUrlRequest#onNativeAdapterDestroyed"

    .line 904
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 905
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapterLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_52

    .line 906
    :try_start_9
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mOnDestroyedCallbackForTesting:Ljava/lang/Runnable;

    if-eqz v2, :cond_12

    .line 907
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mOnDestroyedCallbackForTesting:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 911
    :cond_12
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mException:Landroid/net/connectivity/org/chromium/net/CronetException;

    if-nez v2, :cond_1d

    .line 912
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_4f

    .line 942
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 912
    :cond_1c
    return-void

    .line 914
    :cond_1d
    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_4f

    .line 915
    :try_start_1e
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$8;

    invoke-direct {v1, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$8;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V

    .line 933
    .local v1, "task":Ljava/lang/Runnable;
    const-string v2, "CronetUrlRequest#onNativeAdapterDestroyed scheduling callback"

    .line 934
    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v2
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_52

    .line 937
    .local v2, "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_29
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_29 .. :try_end_2e} :catch_31
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2f

    .line 940
    goto :goto_39

    .line 933
    :catchall_2f
    move-exception v3

    goto :goto_44

    .line 938
    :catch_31
    move-exception v3

    .line 939
    .local v3, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_32
    sget-object v4, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Exception posting task to executor"

    invoke-static {v4, v5, v3}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_2f

    .line 941
    .end local v3    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_39
    if-eqz v2, :cond_3e

    :try_start_3b
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_52

    .line 942
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v2    # "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_3e
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 943
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_43
    return-void

    .line 933
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v1    # "task":Ljava/lang/Runnable;
    .restart local v2    # "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :goto_44
    if-eqz v2, :cond_4e

    :try_start_46
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception v4

    :try_start_4b
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :cond_4e
    :goto_4e
    throw v3
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_52

    .line 914
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v2    # "callbackTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :try_start_51
    throw v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    .line 903
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :catchall_52
    move-exception v1

    if-eqz v0, :cond_5d

    :try_start_55
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5d

    :catchall_59
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5d
    :goto_5d
    throw v1
.end method

.method private blacklist onNonfinalCallbackException(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .line 563
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mNonfinalUserCallbackExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mNonfinalUserCallbackExceptionCount:I

    .line 564
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CallbackExceptionImpl;

    const-string v1, "Exception received from UrlRequest.Callback"

    invoke-direct {v0, v1, p1}, Landroid/net/connectivity/org/chromium/net/impl/CallbackExceptionImpl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 566
    .local v0, "requestError":Landroid/net/connectivity/org/chromium/net/CallbackException;
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Exception in CalledByNative method"

    invoke-static {v1, v2, p1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 567
    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->failWithException(Landroid/net/connectivity/org/chromium/net/CronetException;)V

    .line 568
    return-void
.end method

.method private blacklist onReadCompleted(Ljava/nio/ByteBuffer;IIIJ)V
    .registers 10
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bytesRead"    # I
    .param p3, "initialPosition"    # I
    .param p4, "initialLimit"    # I
    .param p5, "receivedByteCount"    # J

    .line 727
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {v0, p5, p6}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->setReceivedByteCount(J)V

    .line 728
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p3, :cond_2f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-eq v0, p4, :cond_13

    goto :goto_2f

    .line 733
    :cond_13
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mOnReadCompletedTask:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;

    if-nez v0, :cond_1e

    .line 734
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest-IA;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mOnReadCompletedTask:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;

    .line 736
    :cond_1e
    add-int v0, p3, p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 737
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mOnReadCompletedTask:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;

    iput-object p1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 738
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mOnReadCompletedTask:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;

    const-string v1, "onReadCompleted"

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 739
    return-void

    .line 729
    :cond_2f
    :goto_2f
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetExceptionImpl;

    const-string v2, "ByteBuffer modified externally during read"

    invoke-direct {v0, v2, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetExceptionImpl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->failWithException(Landroid/net/connectivity/org/chromium/net/CronetException;)V

    .line 731
    return-void
.end method

.method private blacklist onRedirectReceived(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    .registers 20
    .param p1, "newLocation"    # Ljava/lang/String;
    .param p2, "httpStatusCode"    # I
    .param p3, "httpStatusText"    # Ljava/lang/String;
    .param p4, "headers"    # [Ljava/lang/String;
    .param p5, "wasCached"    # Z
    .param p6, "negotiatedProtocol"    # Ljava/lang/String;
    .param p7, "proxyServer"    # Ljava/lang/String;
    .param p8, "receivedByteCount"    # J

    .line 623
    nop

    .line 624
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->prepareResponseInfoOnNetworkThread(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v9

    .line 634
    .local v9, "responseInfo":Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlChain:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$3;

    invoke-direct {v1, p0, v9, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$3;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;Ljava/lang/String;)V

    .line 656
    .local v1, "task":Ljava/lang/Runnable;
    const-string v2, "onRedirectReceived"

    invoke-direct {p0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method private blacklist onResponseStarted(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    .registers 12
    .param p1, "httpStatusCode"    # I
    .param p2, "httpStatusText"    # Ljava/lang/String;
    .param p3, "headers"    # [Ljava/lang/String;
    .param p4, "wasCached"    # Z
    .param p5, "negotiatedProtocol"    # Ljava/lang/String;
    .param p6, "proxyServer"    # Ljava/lang/String;
    .param p7, "receivedByteCount"    # J

    .line 673
    nop

    .line 674
    invoke-direct/range {p0 .. p8}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->prepareResponseInfoOnNetworkThread(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v0

    move-wide v1, p7

    move-object p7, p6

    move-object p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "httpStatusCode":I
    .local v1, "receivedByteCount":J
    .local p2, "httpStatusCode":I
    .local p3, "httpStatusText":Ljava/lang/String;
    .local p4, "headers":[Ljava/lang/String;
    .local p5, "wasCached":Z
    .local p6, "negotiatedProtocol":Ljava/lang/String;
    .local p7, "proxyServer":Ljava/lang/String;
    iput-object v0, p1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    .line 682
    new-instance p8, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$4;

    invoke-direct {p8, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$4;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V

    .line 701
    .local p8, "task":Ljava/lang/Runnable;
    const-string v0, "onResponseStarted"

    invoke-direct {p0, p8, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method private blacklist onStatus(Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V
    .registers 5
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;
    .param p2, "loadState"    # I

    .line 837
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$7;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$7;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V

    .line 844
    .local v0, "task":Ljava/lang/Runnable;
    const-string v1, "onStatus"

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method private blacklist onSucceeded(J)V
    .registers 5
    .param p1, "receivedByteCount"    # J

    .line 749
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    invoke-virtual {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->setReceivedByteCount(J)V

    .line 750
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$5;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$5;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V

    .line 770
    .local v0, "task":Ljava/lang/Runnable;
    const-string v1, "onSucceeded"

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method private blacklist postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 7
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;

    .line 443
    const-string v0, "Exception posting task to executor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CronetUrlRequest#postTaskToExecutor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v1

    .line 446
    .local v1, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_19
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_23
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_19 .. :try_end_23} :catch_26
    .catchall {:try_start_19 .. :try_end_23} :catchall_24

    .line 471
    goto :goto_34

    .line 443
    :catchall_24
    move-exception v0

    goto :goto_3a

    .line 456
    :catch_26
    move-exception v2

    .line 457
    .local v2, "failException":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_27
    sget-object v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 468
    new-instance v3, Landroid/net/connectivity/org/chromium/net/impl/CronetExceptionImpl;

    invoke-direct {v3, v0, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetExceptionImpl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->failWithException(Landroid/net/connectivity/org/chromium/net/CronetException;)V
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_24

    .line 472
    .end local v2    # "failException":Ljava/util/concurrent/RejectedExecutionException;
    :goto_34
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 473
    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_39
    return-void

    .line 443
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :goto_3a
    if-eqz v1, :cond_44

    :try_start_3c
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    throw v0
.end method

.method private blacklist prepareResponseInfoOnNetworkThread(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;
    .registers 20
    .param p1, "httpStatusCode"    # I
    .param p2, "httpStatusText"    # Ljava/lang/String;
    .param p3, "headers"    # [Ljava/lang/String;
    .param p4, "wasCached"    # Z
    .param p5, "negotiatedProtocol"    # Ljava/lang/String;
    .param p6, "proxyServer"    # Ljava/lang/String;
    .param p7, "receivedByteCount"    # J

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 514
    .local v5, "headersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v1, p3

    if-ge v0, v1, :cond_1b

    .line 515
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    aget-object v2, p3, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p3, v3

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    add-int/lit8 v0, v0, 0x2

    goto :goto_7

    .line 517
    .end local v0    # "i":I
    :cond_1b
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlChain:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v3, p1

    move-object v4, p2

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    return-object v1
.end method

.method private blacklist startInternalLocked()V
    .registers 4

    .line 318
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapter:J

    invoke-interface {v0, v1, v2, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;->start(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V

    .line 319
    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 4

    .line 374
    const-string v0, "CronetUrlRequest#cancel"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 375
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapterLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_29

    .line 376
    :try_start_9
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->isDoneLocked()Z

    move-result v2

    if-nez v2, :cond_1f

    iget-boolean v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mStarted:Z

    if-nez v2, :cond_14

    goto :goto_1f

    .line 379
    :cond_14
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->destroyRequestAdapterLocked(I)V

    .line 380
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_26

    .line 381
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 382
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_1e
    return-void

    .line 377
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_1f
    :goto_1f
    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_26

    .line 381
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 377
    :cond_25
    return-void

    .line 380
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :try_start_28
    throw v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    .line 374
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :catchall_29
    move-exception v1

    if-eqz v0, :cond_34

    :try_start_2c
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_34
    :goto_34
    throw v1
.end method

.method blacklist checkCallingThread()V
    .registers 3

    .line 947
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mAllowDirectExecutor:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->isNetworkThread(Ljava/lang/Thread;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_17

    .line 948
    :cond_11
    new-instance v0, Landroid/net/connectivity/org/chromium/net/InlineExecutionProhibitedException;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/InlineExecutionProhibitedException;-><init>()V

    throw v0

    .line 950
    :cond_17
    :goto_17
    return-void
.end method

.method public blacklist followRedirect()V
    .registers 6

    .line 323
    const-string v0, "CronetUrlRequest#followRedirect"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 324
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapterLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_38

    .line 325
    :try_start_9
    iget-boolean v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mWaitingOnRedirect:Z

    if-eqz v2, :cond_2d

    .line 328
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mWaitingOnRedirect:Z

    .line 330
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->isDoneLocked()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 331
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_35

    .line 337
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 331
    :cond_1c
    return-void

    .line 334
    :cond_1d
    :try_start_1d
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapter:J

    .line 335
    invoke-interface {v2, v3, v4, p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;->followDeferredRedirect(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V

    .line 336
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_35

    .line 337
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 338
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_2c
    return-void

    .line 326
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_2d
    :try_start_2d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No redirect to follow."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    throw v2

    .line 336
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :try_start_37
    throw v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 323
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :catchall_38
    move-exception v1

    if-eqz v0, :cond_43

    :try_start_3b
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    throw v1
.end method

.method public blacklist getStatus(Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;)V
    .registers 8
    .param p1, "unsafeListener"    # Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;

    .line 398
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

    invoke-direct {v0, p1}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;-><init>(Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;)V

    .line 400
    .local v0, "listener":Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_8
    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapter:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    .line 402
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapter:J

    .line 403
    invoke-interface {v2, v3, v4, p0, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;->getStatus(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;)V

    .line 404
    monitor-exit v1

    return-void

    .line 406
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_27

    .line 407
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$2;

    invoke-direct {v1, p0, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$2;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;)V

    .line 418
    .local v1, "task":Ljava/lang/Runnable;
    const-string v2, "getStatus"

    invoke-direct {p0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 419
    return-void

    .line 406
    .end local v1    # "task":Ljava/lang/Runnable;
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public blacklist getUrlRequestAdapterForTesting()J
    .registers 4

    .line 433
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_3
    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapter:J

    monitor-exit v0

    return-wide v1

    .line 435
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isDone()Z
    .registers 3

    .line 386
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_3
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->isDoneLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 388
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method blacklist onUploadException(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 577
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CallbackExceptionImpl;

    const-string v1, "Exception received from UploadDataProvider"

    invoke-direct {v0, v1, p1}, Landroid/net/connectivity/org/chromium/net/impl/CallbackExceptionImpl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 579
    .local v0, "uploadError":Landroid/net/connectivity/org/chromium/net/CallbackException;
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Exception in upload method"

    invoke-static {v1, v2, p1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 580
    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->failWithException(Landroid/net/connectivity/org/chromium/net/CronetException;)V

    .line 581
    return-void
.end method

.method public blacklist read(Ljava/nio/ByteBuffer;)V
    .registers 12
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 342
    const-string v0, "CronetUrlRequest#read"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v1

    .line 343
    .local v1, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/impl/Preconditions;->checkHasRemaining(Ljava/nio/ByteBuffer;)V

    .line 344
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/impl/Preconditions;->checkDirect(Ljava/nio/ByteBuffer;)V

    .line 345
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapterLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_68

    .line 346
    :try_start_f
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mWaitingOnRead:Z

    if-eqz v0, :cond_54

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mWaitingOnRead:Z

    .line 351
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->isDoneLocked()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_5e

    if-eqz v0, :cond_27

    .line 352
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_23

    .line 369
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 352
    :cond_22
    return-void

    .line 368
    :catchall_23
    move-exception v0

    move-object v6, p0

    move-object v7, p1

    goto :goto_61

    .line 355
    :cond_27
    :try_start_27
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;

    move-result-object v3

    iget-wide v4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapter:J

    .line 360
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 361
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_5e

    .line 356
    move-object v6, p0

    move-object v7, p1

    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    :try_start_37
    invoke-interface/range {v3 .. v9}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;->readData(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Ljava/nio/ByteBuffer;II)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4a

    .line 367
    iget p1, v6, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mReadCount:I

    add-int/2addr p1, v0

    iput p1, v6, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mReadCount:I

    .line 368
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_66

    .line 369
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 370
    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_49
    return-void

    .line 364
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_4a
    :try_start_4a
    iput-boolean v0, v6, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mWaitingOnRead:Z

    .line 365
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to call native read"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    throw p1

    .line 347
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    .restart local p1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_54
    move-object v6, p0

    move-object v7, p1

    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "buffer":Ljava/nio/ByteBuffer;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected read attempt."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    throw p1

    .line 368
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    .restart local p1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_5e
    move-exception v0

    move-object v6, p0

    move-object v7, p1

    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "buffer":Ljava/nio/ByteBuffer;
    :goto_61
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_4a .. :try_end_62} :catchall_66

    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :try_start_62
    throw v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    .line 342
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v7    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :catchall_63
    move-exception v0

    move-object p1, v0

    goto :goto_6c

    .line 368
    :catchall_66
    move-exception v0

    goto :goto_61

    .line 342
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_68
    move-exception v0

    move-object v6, p0

    move-object v7, p1

    move-object p1, v0

    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "buffer":Ljava/nio/ByteBuffer;
    :goto_6c
    if-eqz v1, :cond_76

    :try_start_6e
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_76
    :goto_76
    throw p1
.end method

.method public blacklist setOnDestroyedCallbackForTesting(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "onDestroyedCallbackForTesting"    # Ljava/lang/Runnable;

    .line 422
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_3
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mOnDestroyedCallbackForTesting:Ljava/lang/Runnable;

    .line 424
    monitor-exit v0

    .line 425
    return-void

    .line 424
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist setOnDestroyedUploadCallbackForTesting(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "onDestroyedUploadCallbackForTesting"    # Ljava/lang/Runnable;

    .line 429
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUploadDataStream:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->setOnDestroyedCallbackForTesting(Ljava/lang/Runnable;)V

    .line 430
    return-void
.end method

.method public blacklist start()V
    .registers 26

    .line 227
    move-object/from16 v3, p0

    const-string v0, "CronetUrlRequest#start"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v23

    .line 228
    .local v23, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_8
    iget-object v1, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapterLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_153

    .line 229
    :try_start_b
    invoke-direct {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->checkNotStarted()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_14c

    .line 232
    nop

    .line 233
    :try_start_f
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;

    move-result-object v0

    iget-object v4, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    .line 236
    invoke-virtual {v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->getUrlRequestContextAdapter()J

    move-result-wide v5

    iget-object v7, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mInitialUrl:Ljava/lang/String;

    iget v8, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mPriority:I

    iget-boolean v9, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mDisableCache:Z

    iget-boolean v10, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mDisableConnectionMigration:Z

    iget-boolean v11, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mTrafficStatsTagSet:Z

    iget v12, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mTrafficStatsTag:I

    iget-boolean v13, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mTrafficStatsUidSet:Z

    iget v14, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mTrafficStatsUid:I

    iget v15, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mIdempotency:I

    iget-object v4, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mDictionarySha256Hash:[B

    iget-object v2, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mDictionary:Ljava/nio/ByteBuffer;

    .line 248
    move-object/from16 v16, v0

    iget-object v0, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mDictionary:Ljava/nio/ByteBuffer;

    const/16 v17, 0x0

    if-eqz v0, :cond_40

    iget-object v0, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mDictionary:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    move/from16 v18, v0

    goto :goto_42

    :cond_40
    move/from16 v18, v17

    .line 249
    :goto_42
    iget-object v0, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mDictionary:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4c

    iget-object v0, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mDictionary:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v17

    :cond_4c
    move/from16 v19, v17

    iget-object v0, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mDictionaryId:Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_50} :catch_13e
    .catchall {:try_start_f .. :try_end_50} :catchall_14c

    move-object/from16 v20, v0

    move-object/from16 v24, v1

    :try_start_54
    iget-wide v0, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mNetworkHandle:J
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_56} :catch_13c
    .catchall {:try_start_54 .. :try_end_56} :catchall_151

    .line 234
    move-object/from16 v17, v4

    move-object v4, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v17

    move-wide/from16 v21, v0

    move-object/from16 v17, v2

    :try_start_61
    invoke-interface/range {v3 .. v22}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;->createRequestAdapter(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;JLjava/lang/String;IZZZIZII[BLjava/nio/ByteBuffer;IILjava/lang/String;J)J

    move-result-wide v0
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_65} :catch_139
    .catchall {:try_start_61 .. :try_end_65} :catchall_136

    move-object v3, v4

    :try_start_66
    iput-wide v0, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapter:J

    .line 252
    iget-object v0, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->onRequestStarted()V

    .line 253
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;

    move-result-object v0

    iget-wide v1, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapter:J

    iget-object v4, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mInitialMethod:Ljava/lang/String;

    .line 254
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;->setHttpMethod(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "hasContentType":Z
    iget-object v1, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_82
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v7, v1

    .line 261
    .local v7, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 262
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ac

    .line 263
    const/4 v0, 0x1

    move v8, v0

    goto :goto_ad

    .line 265
    :cond_ac
    move v8, v0

    .end local v0    # "hasContentType":Z
    .local v8, "hasContentType":Z
    :goto_ad
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;

    move-result-object v0

    iget-wide v1, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapter:J

    .line 269
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 270
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_bf
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_bf} :catch_13c
    .catchall {:try_start_66 .. :try_end_bf} :catchall_151

    .line 266
    const/4 v9, 0x1

    :try_start_c0
    invoke-interface/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;->addRequestHeader(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 274
    .end local v7    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move v0, v8

    goto :goto_82

    .line 271
    .restart local v7    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header with headername: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v23    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    throw v0

    .line 275
    .end local v7    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "hasContentType":Z
    .restart local v0    # "hasContentType":Z
    .restart local v23    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :cond_e7
    const/4 v9, 0x1

    iget-object v1, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUploadDataStream:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    if-eqz v1, :cond_10b

    .line 276
    if-eqz v0, :cond_103

    .line 280
    iput-boolean v9, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mStarted:Z

    .line 281
    iget-object v1, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mUploadDataStream:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    new-instance v2, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$1;

    invoke-direct {v2, v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$1;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V

    const-string v4, "CronetUrlRequest#start"

    invoke-virtual {v1, v2, v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->postTaskToExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_fc
    .catch Ljava/lang/RuntimeException; {:try_start_c0 .. :try_end_fc} :catch_134
    .catchall {:try_start_c0 .. :try_end_fc} :catchall_151

    .line 297
    :try_start_fc
    monitor-exit v24
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_151

    .line 309
    if-eqz v23, :cond_102

    invoke-virtual/range {v23 .. v23}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 297
    :cond_102
    return-void

    .line 277
    :cond_103
    :try_start_103
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Requests with upload data must have a Content-Type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v23    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    throw v1
    :try_end_10b
    .catch Ljava/lang/RuntimeException; {:try_start_103 .. :try_end_10b} :catch_134
    .catchall {:try_start_103 .. :try_end_10b} :catchall_151

    .line 305
    .end local v0    # "hasContentType":Z
    .restart local v23    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :cond_10b
    nop

    .line 306
    :try_start_10c
    iput-boolean v9, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mStarted:Z

    .line 307
    invoke-direct {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->startInternalLocked()V

    .line 308
    monitor-exit v24
    :try_end_112
    .catchall {:try_start_10c .. :try_end_112} :catchall_151

    .line 309
    if-eqz v23, :cond_117

    invoke-virtual/range {v23 .. v23}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 310
    .end local v23    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_117
    return-void

    .line 256
    .restart local v23    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_118
    const/4 v9, 0x1

    :try_start_119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid http method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mInitialMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v23    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    throw v0
    :try_end_134
    .catch Ljava/lang/RuntimeException; {:try_start_119 .. :try_end_134} :catch_134
    .catchall {:try_start_119 .. :try_end_134} :catchall_151

    .line 299
    .restart local v23    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :catch_134
    move-exception v0

    goto :goto_142

    .line 308
    :catchall_136
    move-exception v0

    move-object v3, v4

    goto :goto_14f

    .line 299
    :catch_139
    move-exception v0

    move-object v3, v4

    goto :goto_141

    :catch_13c
    move-exception v0

    goto :goto_141

    :catch_13e
    move-exception v0

    move-object/from16 v24, v1

    :goto_141
    const/4 v9, 0x1

    .line 302
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_142
    :try_start_142
    invoke-direct {v3, v9}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->destroyRequestAdapterLocked(I)V

    .line 303
    iget-object v1, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->mRequestContext:Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->onRequestFinished()V

    .line 304
    nop

    .end local v23    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    throw v0

    .line 308
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v23    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :catchall_14c
    move-exception v0

    move-object/from16 v24, v1

    :goto_14f
    monitor-exit v24
    :try_end_150
    .catchall {:try_start_142 .. :try_end_150} :catchall_151

    .end local v23    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :try_start_150
    throw v0
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_153

    .restart local v23    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    :catchall_151
    move-exception v0

    goto :goto_14f

    .line 227
    :catchall_153
    move-exception v0

    move-object v1, v0

    if-eqz v23, :cond_15f

    :try_start_157
    invoke-virtual/range {v23 .. v23}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_15a
    .catchall {:try_start_157 .. :try_end_15a} :catchall_15b

    goto :goto_15f

    :catchall_15b
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15f
    :goto_15f
    throw v1
.end method
