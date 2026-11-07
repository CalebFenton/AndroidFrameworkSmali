.class public Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;
.super Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
.source "UrlRequestBuilderImpl.java"


# static fields
.field private static final blacklist ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAllowDirectExecutor:Z

.field private final blacklist mCallback:Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;

.field private final blacklist mCronetEngine:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;

.field private blacklist mDictionary:Ljava/nio/ByteBuffer;

.field private blacklist mDictionaryId:Ljava/lang/String;

.field private blacklist mDictionarySha256Hash:[B

.field private blacklist mDisableCache:Z

.field private blacklist mDisableConnectionMigration:Z

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mIdempotency:I

.field private blacklist mMethod:Ljava/lang/String;

.field private blacklist mNetworkHandle:J

.field private blacklist mPriority:I

.field private blacklist mRequestAnnotations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRequestFinishedListener:Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;

.field private final blacklist mRequestHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mTrafficStatsTag:I

.field private blacklist mTrafficStatsTagSet:Z

.field private blacklist mTrafficStatsUid:I

.field private blacklist mTrafficStatsUidSet:Z

.field private blacklist mUploadDataProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

.field private blacklist mUploadDataProviderExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mUrl:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    const-class v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "cronetEngine"    # Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;

    .line 88
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mRequestHeaders:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mPriority:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mDictionaryId:Ljava/lang/String;

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mNetworkHandle:J

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mIdempotency:I

    .line 89
    const-string v0, "URL is required."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mUrl:Ljava/lang/String;

    .line 90
    const-string v0, "Callback is required."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mCallback:Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;

    .line 91
    const-string v0, "Executor is required."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 92
    const-string v0, "CronetEngine is required."

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;

    .line 93
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;
    .registers 6
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 103
    const-string v0, "Invalid header name."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    const-string v0, "Invalid header value."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    const-string v0, "Accept-Encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 106
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 107
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "It\'s not necessary to set Accept-Encoding on requests - cronet will do this automatically for you, and setting it yourself has no effect. See https://crbug.com/581399 for details."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :cond_27
    return-object p0

    .line 116
    :cond_28
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mRequestHeaders:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    return-object p0
.end method

.method public bridge synthetic blacklist addRequestAnnotation(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->addRequestAnnotation(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addRequestAnnotation(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->addRequestAnnotation(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addRequestAnnotation(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;
    .registers 3
    .param p1, "annotation"    # Ljava/lang/Object;

    .line 165
    const-string v0, "Invalid metrics annotation."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mRequestAnnotations:Ljava/util/Collection;

    if-nez v0, :cond_10

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mRequestAnnotations:Ljava/util/Collection;

    .line 169
    :cond_10
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mRequestAnnotations:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 170
    return-object p0
.end method

.method public bridge synthetic blacklist allowDirectExecutor()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 2

    .line 26
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->allowDirectExecutor()Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist allowDirectExecutor()Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2

    .line 26
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->allowDirectExecutor()Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist allowDirectExecutor()Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;
    .registers 2

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mAllowDirectExecutor:Z

    .line 160
    return-object p0
.end method

.method public bridge synthetic blacklist bindToNetwork(J)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->bindToNetwork(J)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist bindToNetwork(J)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;
    .registers 3
    .param p1, "networkHandle"    # J

    .line 214
    iput-wide p1, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mNetworkHandle:J

    .line 215
    return-object p0
.end method

.method public blacklist build()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest;
    .registers 29

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;

    iget-object v2, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mUrl:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mCallback:Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;

    iget-object v4, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mExecutor:Ljava/util/concurrent/Executor;

    iget v5, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mPriority:I

    iget-object v6, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mRequestAnnotations:Ljava/util/Collection;

    iget-boolean v7, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mDisableCache:Z

    iget-boolean v8, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mDisableConnectionMigration:Z

    iget-boolean v9, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mAllowDirectExecutor:Z

    iget-boolean v10, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mTrafficStatsTagSet:Z

    iget v11, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mTrafficStatsTag:I

    iget-boolean v12, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mTrafficStatsUidSet:Z

    iget v13, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mTrafficStatsUid:I

    iget-object v14, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mRequestFinishedListener:Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;

    iget v15, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mIdempotency:I

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mNetworkHandle:J

    .line 238
    move-wide/from16 v18, v1

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mMethod:Ljava/lang/String;

    if-nez v1, :cond_2f

    const-string v1, "GET"

    goto :goto_31

    :cond_2f
    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mMethod:Ljava/lang/String;

    :goto_31
    iget-object v2, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mRequestHeaders:Ljava/util/ArrayList;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mUploadDataProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mUploadDataProviderExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v22, v1

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mDictionarySha256Hash:[B

    move-object/from16 v23, v1

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mDictionary:Ljava/nio/ByteBuffer;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mDictionaryId:Ljava/lang/String;

    .line 222
    move-object/from16 v25, v24

    move-object/from16 v24, v1

    move-object/from16 v1, v16

    move-wide/from16 v26, v18

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    move-wide/from16 v16, v26

    move-object/from16 v18, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    invoke-virtual/range {v1 .. v24}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;->createRequest(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;ILjava/util/Collection;ZZZZIZILandroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;IJLjava/lang/String;Ljava/util/ArrayList;Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;[BLjava/nio/ByteBuffer;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic blacklist build()Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .registers 2

    .line 26
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->build()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist disableCache()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 2

    .line 26
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->disableCache()Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist disableCache()Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2

    .line 26
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->disableCache()Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist disableCache()Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;
    .registers 2

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mDisableCache:Z

    .line 123
    return-object p0
.end method

.method public bridge synthetic blacklist disableConnectionMigration()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 2

    .line 26
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->disableConnectionMigration()Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist disableConnectionMigration()Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;
    .registers 2

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mDisableConnectionMigration:Z

    .line 129
    return-object p0
.end method

.method public blacklist setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 3
    .param p1, "method"    # Ljava/lang/String;

    .line 97
    const-string v0, "Method is required."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mMethod:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public bridge synthetic blacklist setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setIdempotency(I)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->setIdempotency(I)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setIdempotency(I)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;
    .registers 2
    .param p1, "idempotency"    # I

    .line 140
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mIdempotency:I

    .line 141
    return-object p0
.end method

.method public bridge synthetic blacklist setPriority(I)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->setPriority(I)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setPriority(I)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->setPriority(I)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPriority(I)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;
    .registers 2
    .param p1, "priority"    # I

    .line 134
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mPriority:I

    .line 135
    return-object p0
.end method

.method public bridge synthetic blacklist setRawCompressionDictionary([BLjava/nio/ByteBuffer;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
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

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->setRawCompressionDictionary([BLjava/nio/ByteBuffer;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRawCompressionDictionary([BLjava/nio/ByteBuffer;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;
    .registers 6
    .param p1, "dictionarySha256Hash"    # [B
    .param p2, "dictionary"    # Ljava/nio/ByteBuffer;
    .param p3, "dictionaryId"    # Ljava/lang/String;

    .line 199
    const-string v0, "Hash is required"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mDictionarySha256Hash:[B

    .line 200
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_28

    .line 203
    const-string v0, "Dictionary is required"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mDictionary:Ljava/nio/ByteBuffer;

    .line 204
    invoke-static {p2}, Landroid/net/connectivity/org/chromium/net/impl/Preconditions;->checkDirect(Ljava/nio/ByteBuffer;)V

    .line 205
    nop

    .line 206
    const-string v0, "Dictionary ID cannot be null. If missing, pass an empty string"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mDictionaryId:Ljava/lang/String;

    .line 209
    return-object p0

    .line 201
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHA-256 hashes are supposed to be 32 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist setRequestFinishedListener(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->setRequestFinishedListener(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setRequestFinishedListener(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->setRequestFinishedListener(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequestFinishedListener(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;
    .registers 2
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;

    .line 189
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mRequestFinishedListener:Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;

    .line 190
    return-object p0
.end method

.method public bridge synthetic blacklist setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;
    .registers 3
    .param p1, "tag"    # I

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mTrafficStatsTagSet:Z

    .line 176
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mTrafficStatsTag:I

    .line 177
    return-object p0
.end method

.method public bridge synthetic blacklist setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;
    .registers 3
    .param p1, "uid"    # I

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mTrafficStatsUidSet:Z

    .line 183
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mTrafficStatsUid:I

    .line 184
    return-object p0
.end method

.method public bridge synthetic blacklist setUploadDataProvider(Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->setUploadDataProvider(Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUploadDataProvider(Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->setUploadDataProvider(Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUploadDataProvider(Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;
    .registers 4
    .param p1, "uploadDataProvider"    # Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 147
    nop

    .line 148
    const-string v0, "Invalid UploadDataProvider."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mUploadDataProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    .line 149
    nop

    .line 150
    const-string v0, "Invalid UploadDataProvider Executor."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mUploadDataProviderExecutor:Ljava/util/concurrent/Executor;

    .line 151
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mMethod:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 152
    const-string v0, "POST"

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;->mMethod:Ljava/lang/String;

    .line 154
    :cond_1e
    return-object p0
.end method
