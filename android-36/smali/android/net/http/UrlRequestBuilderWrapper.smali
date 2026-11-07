.class public Landroid/net/http/UrlRequestBuilderWrapper;
.super Landroid/net/http/UrlRequest$Builder;
.source "UrlRequestBuilderWrapper.java"


# instance fields
.field private blacklist mBackend:Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

.field private blacklist mBuilderMutator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCacheDisabled:Z

.field private final blacklist mCallback:Landroid/net/http/UrlRequest$Callback;

.field private blacklist mCallbackWrapper:Landroid/net/http/UrlRequestCallbackWrapper;

.field private final blacklist mCronetEngine:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

.field private blacklist mDirectExecutorAllowed:Z

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mHeaders:Ljava/util/List;
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

.field private blacklist mHttpMethodSet:Z

.field private final blacklist mUrl:Ljava/lang/String;

.field private blacklist mWrapperMutator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/net/http/UrlRequestWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/http/UrlRequest$Callback;)V
    .registers 9
    .param p1, "cronetEngine"    # Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/net/http/UrlRequest$Callback;

    .line 49
    invoke-direct {p0}, Landroid/net/http/UrlRequest$Builder;-><init>()V

    .line 33
    new-instance v0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda9;-><init>()V

    iput-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mBuilderMutator:Ljava/util/function/Consumer;

    .line 35
    new-instance v0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda10;-><init>()V

    iput-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mWrapperMutator:Ljava/util/function/Consumer;

    .line 50
    iput-object p1, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    .line 51
    iput-object p2, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mUrl:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 53
    iput-object p4, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mCallback:Landroid/net/http/UrlRequest$Callback;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mHeaders:Ljava/util/List;

    .line 55
    new-instance v0, Landroid/net/http/UrlRequestCallbackWrapper;

    iget-object v1, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mCallback:Landroid/net/http/UrlRequest$Callback;

    invoke-direct {v0, v1}, Landroid/net/http/UrlRequestCallbackWrapper;-><init>(Landroid/net/http/UrlRequest$Callback;)V

    iput-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mCallbackWrapper:Landroid/net/http/UrlRequestCallbackWrapper;

    .line 56
    iget-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    iget-object v1, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mCallbackWrapper:Landroid/net/http/UrlRequestCallbackWrapper;

    iget-object v3, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mBackend:Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 57
    return-void
.end method

.method static synthetic blacklist lambda$addHeader$4(Ljava/lang/String;Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;)V
    .registers 3
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "builder"    # Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 89
    invoke-virtual {p2, p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    return-void
.end method

.method static synthetic blacklist lambda$addHeader$5(Ljava/lang/String;Ljava/lang/String;Landroid/net/http/UrlRequestWrapper;)V
    .registers 3
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "wrapper"    # Landroid/net/http/UrlRequestWrapper;

    .line 90
    invoke-virtual {p2, p0, p1}, Landroid/net/http/UrlRequestWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$bindToNetwork$9(Landroid/net/Network;Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;)V
    .registers 4
    .param p0, "network"    # Landroid/net/Network;
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 134
    nop

    .line 135
    if-eqz p0, :cond_8

    .line 136
    invoke-virtual {p0}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v0

    goto :goto_a

    .line 138
    :cond_8
    const-wide/16 v0, -0x1

    .line 134
    :goto_a
    invoke-virtual {p1, v0, v1}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->bindToNetwork(J)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;)V
    .registers 1
    .param p0, "builder"    # Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 34
    return-void
.end method

.method static synthetic blacklist lambda$new$1(Landroid/net/http/UrlRequestWrapper;)V
    .registers 1
    .param p0, "wrapper"    # Landroid/net/http/UrlRequestWrapper;

    .line 35
    return-void
.end method

.method static synthetic blacklist lambda$setHttpMethod$2(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;)V
    .registers 2
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 81
    invoke-virtual {p1, p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    return-void
.end method

.method static synthetic blacklist lambda$setHttpMethod$3(Ljava/lang/String;Landroid/net/http/UrlRequestWrapper;)V
    .registers 2
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "wrapper"    # Landroid/net/http/UrlRequestWrapper;

    .line 81
    invoke-virtual {p1, p0}, Landroid/net/http/UrlRequestWrapper;->setHttpMethod(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$setPriority$6(ILandroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;)V
    .registers 2
    .param p0, "priority"    # I
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 102
    invoke-virtual {p1, p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->setPriority(I)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    return-void
.end method

.method static synthetic blacklist lambda$setPriority$7(ILandroid/net/http/UrlRequestWrapper;)V
    .registers 2
    .param p0, "priority"    # I
    .param p1, "wrapper"    # Landroid/net/http/UrlRequestWrapper;

    .line 102
    invoke-virtual {p1, p0}, Landroid/net/http/UrlRequestWrapper;->setPriority(I)V

    return-void
.end method

.method static synthetic blacklist lambda$setTrafficStatsTag$12(ILandroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;)V
    .registers 2
    .param p0, "tag"    # I
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 156
    invoke-virtual {p1, p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    return-void
.end method

.method static synthetic blacklist lambda$setTrafficStatsTag$13(ILandroid/net/http/UrlRequestWrapper;)V
    .registers 2
    .param p0, "tag"    # I
    .param p1, "wrapper"    # Landroid/net/http/UrlRequestWrapper;

    .line 157
    invoke-virtual {p1, p0}, Landroid/net/http/UrlRequestWrapper;->setTrafficStatsTag(I)V

    return-void
.end method

.method static synthetic blacklist lambda$setTrafficStatsUid$10(ILandroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;)V
    .registers 2
    .param p0, "uid"    # I
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 147
    invoke-virtual {p1, p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    return-void
.end method

.method static synthetic blacklist lambda$setTrafficStatsUid$11(ILandroid/net/http/UrlRequestWrapper;)V
    .registers 2
    .param p0, "uid"    # I
    .param p1, "wrapper"    # Landroid/net/http/UrlRequestWrapper;

    .line 148
    invoke-virtual {p1, p0}, Landroid/net/http/UrlRequestWrapper;->setTrafficStatsUid(I)V

    return-void
.end method

.method static synthetic blacklist lambda$setUploadDataProvider$8(Landroid/net/http/UploadDataProvider;Ljava/util/concurrent/Executor;Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;)V
    .registers 4
    .param p0, "provider"    # Landroid/net/http/UploadDataProvider;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "builder"    # Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 112
    new-instance v0, Landroid/net/http/UploadDataProviderWrapper;

    invoke-direct {v0, p0}, Landroid/net/http/UploadDataProviderWrapper;-><init>(Landroid/net/http/UploadDataProvider;)V

    invoke-virtual {p2, v0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->setUploadDataProvider(Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    return-void
.end method

.method private blacklist maybeCreateBackendAndApplyMutator()V
    .registers 5

    .line 60
    iget-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mBackend:Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    if-eqz v0, :cond_5

    .line 61
    return-void

    .line 63
    :cond_5
    new-instance v0, Landroid/net/http/UrlRequestCallbackWrapper;

    iget-object v1, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mCallback:Landroid/net/http/UrlRequest$Callback;

    invoke-direct {v0, v1}, Landroid/net/http/UrlRequestCallbackWrapper;-><init>(Landroid/net/http/UrlRequest$Callback;)V

    iput-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mCallbackWrapper:Landroid/net/http/UrlRequestCallbackWrapper;

    .line 64
    iget-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    iget-object v1, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mCallbackWrapper:Landroid/net/http/UrlRequestCallbackWrapper;

    iget-object v3, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mBackend:Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 65
    iget-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mBuilderMutator:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mBackend:Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method private blacklist mutate(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/http/UrlRequestWrapper;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "builderMutator":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;>;"
    .local p2, "wrapperMutator":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/http/UrlRequestWrapper;>;"
    invoke-direct {p0}, Landroid/net/http/UrlRequestBuilderWrapper;->maybeCreateBackendAndApplyMutator()V

    .line 72
    iget-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mBuilderMutator:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mBuilderMutator:Ljava/util/function/Consumer;

    .line 73
    iget-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mBackend:Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 74
    if-eqz p2, :cond_1a

    .line 75
    iget-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mWrapperMutator:Ljava/util/function/Consumer;

    invoke-interface {v0, p2}, Ljava/util/function/Consumer;->andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mWrapperMutator:Ljava/util/function/Consumer;

    .line 77
    :cond_1a
    return-void
.end method


# virtual methods
.method public whitelist addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/UrlRequest$Builder;
    .registers 5
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 88
    new-instance v0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Landroid/net/http/UrlRequestBuilderWrapper;->mutate(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 91
    return-object p0
.end method

.method public whitelist bindToNetwork(Landroid/net/Network;)Landroid/net/http/UrlRequest$Builder;
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 132
    new-instance v0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda6;-><init>(Landroid/net/Network;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/http/UrlRequestBuilderWrapper;->mutate(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 140
    return-object p0
.end method

.method public whitelist build()Landroid/net/http/UrlRequest;
    .registers 5

    .line 170
    invoke-direct {p0}, Landroid/net/http/UrlRequestBuilderWrapper;->maybeCreateBackendAndApplyMutator()V

    .line 171
    iget-boolean v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mCacheDisabled:Z

    if-eqz v0, :cond_c

    .line 172
    iget-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mBackend:Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->disableCache()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 174
    :cond_c
    iget-boolean v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mDirectExecutorAllowed:Z

    if-eqz v0, :cond_15

    .line 175
    iget-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mBackend:Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->allowDirectExecutor()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 177
    :cond_15
    iget-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mBuilderMutator:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mBackend:Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 178
    new-instance v0, Landroid/net/http/UrlRequestWrapper;

    iget-object v1, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mBackend:Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 179
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->build()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mCacheDisabled:Z

    iget-boolean v3, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mDirectExecutorAllowed:Z

    invoke-direct {v0, v1, v2, v3}, Landroid/net/http/UrlRequestWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlRequest;ZZ)V

    .line 180
    .local v0, "requestWrapper":Landroid/net/http/UrlRequestWrapper;
    iget-object v1, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mWrapperMutator:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 181
    iget-object v1, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mCallbackWrapper:Landroid/net/http/UrlRequestCallbackWrapper;

    invoke-virtual {v1, v0}, Landroid/net/http/UrlRequestCallbackWrapper;->setOriginalRequestWrapper(Landroid/net/http/UrlRequestWrapper;)V

    .line 182
    return-object v0
.end method

.method public whitelist setCacheDisabled(Z)Landroid/net/http/UrlRequest$Builder;
    .registers 2
    .param p1, "disableCache"    # Z

    .line 96
    iput-boolean p1, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mCacheDisabled:Z

    .line 97
    return-object p0
.end method

.method public whitelist setDirectExecutorAllowed(Z)Landroid/net/http/UrlRequest$Builder;
    .registers 2
    .param p1, "allowDirectExecutor"    # Z

    .line 125
    iput-boolean p1, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mDirectExecutorAllowed:Z

    .line 126
    return-object p0
.end method

.method public whitelist setHttpMethod(Ljava/lang/String;)Landroid/net/http/UrlRequest$Builder;
    .registers 4
    .param p1, "method"    # Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Landroid/net/http/UrlRequestBuilderWrapper;->mutate(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mHttpMethodSet:Z

    .line 83
    return-object p0
.end method

.method public whitelist setPriority(I)Landroid/net/http/UrlRequest$Builder;
    .registers 4
    .param p1, "priority"    # I

    .line 102
    new-instance v0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda7;-><init>(I)V

    new-instance v1, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-direct {p0, v0, v1}, Landroid/net/http/UrlRequestBuilderWrapper;->mutate(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 103
    return-object p0
.end method

.method public whitelist setTrafficStatsTag(I)Landroid/net/http/UrlRequest$Builder;
    .registers 4
    .param p1, "tag"    # I

    .line 155
    new-instance v0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda4;-><init>(I)V

    new-instance v1, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-direct {p0, v0, v1}, Landroid/net/http/UrlRequestBuilderWrapper;->mutate(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 158
    return-object p0
.end method

.method public whitelist setTrafficStatsUid(I)Landroid/net/http/UrlRequest$Builder;
    .registers 4
    .param p1, "uid"    # I

    .line 146
    new-instance v0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v0, v1}, Landroid/net/http/UrlRequestBuilderWrapper;->mutate(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 149
    return-object p0
.end method

.method public whitelist setUploadDataProvider(Landroid/net/http/UploadDataProvider;Ljava/util/concurrent/Executor;)Landroid/net/http/UrlRequest$Builder;
    .registers 5
    .param p1, "provider"    # Landroid/net/http/UploadDataProvider;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 110
    new-instance v0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2}, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda11;-><init>(Landroid/net/http/UploadDataProvider;Ljava/util/concurrent/Executor;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/http/UrlRequestBuilderWrapper;->mutate(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 115
    iget-boolean v0, p0, Landroid/net/http/UrlRequestBuilderWrapper;->mHttpMethodSet:Z

    if-nez v0, :cond_12

    .line 116
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Landroid/net/http/UrlRequestBuilderWrapper;->setHttpMethod(Ljava/lang/String;)Landroid/net/http/UrlRequest$Builder;

    .line 118
    :cond_12
    return-object p0
.end method
