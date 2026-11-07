.class public Landroid/net/http/BidirectionalStreamBuilderWrapper;
.super Landroid/net/http/BidirectionalStream$Builder;
.source "BidirectionalStreamBuilderWrapper.java"


# instance fields
.field private blacklist mBackend:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

.field private blacklist mBuilderMutator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallback:Landroid/net/http/BidirectionalStream$Callback;

.field private blacklist mCallbackWrapper:Landroid/net/http/BidirectionalStreamCallbackWrapper;

.field private final blacklist mCronetEngine:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mUrl:Ljava/lang/String;

.field private blacklist mWrapperMutator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/net/http/BidirectionalStreamWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/http/BidirectionalStream$Callback;)V
    .registers 9
    .param p1, "cronetEngine"    # Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/net/http/BidirectionalStream$Callback;

    .line 42
    invoke-direct {p0}, Landroid/net/http/BidirectionalStream$Builder;-><init>()V

    .line 29
    new-instance v0, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda6;-><init>()V

    iput-object v0, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mBuilderMutator:Ljava/util/function/Consumer;

    .line 30
    new-instance v0, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda7;-><init>()V

    iput-object v0, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mWrapperMutator:Ljava/util/function/Consumer;

    .line 43
    iput-object p1, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    .line 44
    iput-object p2, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mUrl:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 46
    iput-object p4, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mCallback:Landroid/net/http/BidirectionalStream$Callback;

    .line 47
    new-instance v0, Landroid/net/http/BidirectionalStreamCallbackWrapper;

    iget-object v1, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mCallback:Landroid/net/http/BidirectionalStream$Callback;

    invoke-direct {v0, v1}, Landroid/net/http/BidirectionalStreamCallbackWrapper;-><init>(Landroid/net/http/BidirectionalStream$Callback;)V

    iput-object v0, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mCallbackWrapper:Landroid/net/http/BidirectionalStreamCallbackWrapper;

    .line 48
    iget-object v0, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    iget-object v1, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mCallbackWrapper:Landroid/net/http/BidirectionalStreamCallbackWrapper;

    iget-object v3, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 49
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;->newBidirectionalStreamBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mBackend:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    .line 50
    return-void
.end method

.method static synthetic blacklist lambda$addHeader$4(Ljava/lang/String;Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;)V
    .registers 3
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "builder"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    .line 70
    invoke-virtual {p2, p0, p1}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    return-void
.end method

.method static synthetic blacklist lambda$addHeader$5(Ljava/lang/String;Ljava/lang/String;Landroid/net/http/BidirectionalStreamWrapper;)V
    .registers 3
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "wrapper"    # Landroid/net/http/BidirectionalStreamWrapper;

    .line 71
    invoke-virtual {p2, p0, p1}, Landroid/net/http/BidirectionalStreamWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;)V
    .registers 1
    .param p0, "builder"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    .line 29
    return-void
.end method

.method static synthetic blacklist lambda$new$1(Landroid/net/http/BidirectionalStreamWrapper;)V
    .registers 1
    .param p0, "wrapper"    # Landroid/net/http/BidirectionalStreamWrapper;

    .line 30
    return-void
.end method

.method static synthetic blacklist lambda$setDelayRequestHeadersUntilFirstFlushEnabled$8(ZLandroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;)V
    .registers 2
    .param p0, "delayRequestHeadersUntilFirstFlush"    # Z
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    .line 87
    invoke-virtual {p1, p0}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;->delayRequestHeadersUntilFirstFlush(Z)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    return-void
.end method

.method static synthetic blacklist lambda$setDelayRequestHeadersUntilFirstFlushEnabled$9(ZLandroid/net/http/BidirectionalStreamWrapper;)V
    .registers 2
    .param p0, "delayRequestHeadersUntilFirstFlush"    # Z
    .param p1, "wrapper"    # Landroid/net/http/BidirectionalStreamWrapper;

    .line 90
    invoke-virtual {p1, p0}, Landroid/net/http/BidirectionalStreamWrapper;->setDelayRequestHeadersUntilFirstFlushEnabled(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$setHttpMethod$2(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;)V
    .registers 2
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    .line 63
    invoke-virtual {p1, p0}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;->setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    return-void
.end method

.method static synthetic blacklist lambda$setHttpMethod$3(Ljava/lang/String;Landroid/net/http/BidirectionalStreamWrapper;)V
    .registers 2
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "wrapper"    # Landroid/net/http/BidirectionalStreamWrapper;

    .line 63
    invoke-virtual {p1, p0}, Landroid/net/http/BidirectionalStreamWrapper;->setHttpMethod(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$setPriority$6(ILandroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;)V
    .registers 2
    .param p0, "priority"    # I
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    .line 77
    invoke-virtual {p1, p0}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;->setPriority(I)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    return-void
.end method

.method static synthetic blacklist lambda$setPriority$7(ILandroid/net/http/BidirectionalStreamWrapper;)V
    .registers 2
    .param p0, "priority"    # I
    .param p1, "wrapper"    # Landroid/net/http/BidirectionalStreamWrapper;

    .line 77
    invoke-virtual {p1, p0}, Landroid/net/http/BidirectionalStreamWrapper;->setPriority(I)V

    return-void
.end method

.method static synthetic blacklist lambda$setTrafficStatsTag$10(ILandroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;)V
    .registers 2
    .param p0, "tag"    # I
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    .line 128
    invoke-virtual {p1, p0}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;->setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    return-void
.end method

.method static synthetic blacklist lambda$setTrafficStatsTag$11(ILandroid/net/http/BidirectionalStreamWrapper;)V
    .registers 2
    .param p0, "tag"    # I
    .param p1, "wrapper"    # Landroid/net/http/BidirectionalStreamWrapper;

    .line 129
    invoke-virtual {p1, p0}, Landroid/net/http/BidirectionalStreamWrapper;->setTrafficStatsTag(I)V

    return-void
.end method

.method static synthetic blacklist lambda$setTrafficStatsUid$12(ILandroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;)V
    .registers 2
    .param p0, "uid"    # I
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    .line 137
    invoke-virtual {p1, p0}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;->setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    return-void
.end method

.method static synthetic blacklist lambda$setTrafficStatsUid$13(ILandroid/net/http/BidirectionalStreamWrapper;)V
    .registers 2
    .param p0, "uid"    # I
    .param p1, "wrapper"    # Landroid/net/http/BidirectionalStreamWrapper;

    .line 138
    invoke-virtual {p1, p0}, Landroid/net/http/BidirectionalStreamWrapper;->setTrafficStatsUid(I)V

    return-void
.end method

.method private blacklist maybeCreateBackendAndApplyMutator()V
    .registers 5

    .line 96
    iget-object v0, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mBackend:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    if-eqz v0, :cond_5

    .line 97
    return-void

    .line 99
    :cond_5
    new-instance v0, Landroid/net/http/BidirectionalStreamCallbackWrapper;

    iget-object v1, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mCallback:Landroid/net/http/BidirectionalStream$Callback;

    invoke-direct {v0, v1}, Landroid/net/http/BidirectionalStreamCallbackWrapper;-><init>(Landroid/net/http/BidirectionalStream$Callback;)V

    iput-object v0, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mCallbackWrapper:Landroid/net/http/BidirectionalStreamCallbackWrapper;

    .line 100
    iget-object v0, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    iget-object v1, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mCallbackWrapper:Landroid/net/http/BidirectionalStreamCallbackWrapper;

    iget-object v3, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;->newBidirectionalStreamBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mBackend:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    .line 101
    iget-object v0, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mBuilderMutator:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mBackend:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method private blacklist mutate(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/http/BidirectionalStreamWrapper;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "builderMutator":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;>;"
    .local p2, "wrapperMutator":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/http/BidirectionalStreamWrapper;>;"
    invoke-direct {p0}, Landroid/net/http/BidirectionalStreamBuilderWrapper;->maybeCreateBackendAndApplyMutator()V

    .line 56
    iget-object v0, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mBuilderMutator:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mBuilderMutator:Ljava/util/function/Consumer;

    .line 57
    iget-object v0, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mBackend:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mWrapperMutator:Ljava/util/function/Consumer;

    invoke-interface {v0, p2}, Ljava/util/function/Consumer;->andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mWrapperMutator:Ljava/util/function/Consumer;

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/BidirectionalStream$Builder;
    .registers 5
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2}, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mutate(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 72
    return-object p0
.end method

.method public whitelist build()Landroid/net/http/BidirectionalStream;
    .registers 3

    .line 114
    invoke-direct {p0}, Landroid/net/http/BidirectionalStreamBuilderWrapper;->maybeCreateBackendAndApplyMutator()V

    .line 115
    new-instance v0, Landroid/net/http/BidirectionalStreamWrapper;

    iget-object v1, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mBackend:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;->build()Landroid/net/connectivity/org/chromium/net/BidirectionalStream;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/http/BidirectionalStreamWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)V

    .line 116
    .local v0, "wrapper":Landroid/net/http/BidirectionalStreamWrapper;
    iget-object v1, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mWrapperMutator:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 117
    iget-object v1, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mCallbackWrapper:Landroid/net/http/BidirectionalStreamCallbackWrapper;

    invoke-virtual {v1, v0}, Landroid/net/http/BidirectionalStreamCallbackWrapper;->setOriginalStreamWrapper(Landroid/net/http/BidirectionalStreamWrapper;)V

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mBackend:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    .line 121
    return-object v0
.end method

.method public whitelist setDelayRequestHeadersUntilFirstFlushEnabled(Z)Landroid/net/http/BidirectionalStream$Builder;
    .registers 4
    .param p1, "delayRequestHeadersUntilFirstFlush"    # Z

    .line 85
    new-instance v0, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda2;-><init>(Z)V

    new-instance v1, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda3;-><init>(Z)V

    invoke-direct {p0, v0, v1}, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mutate(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 92
    return-object p0
.end method

.method public whitelist setHttpMethod(Ljava/lang/String;)Landroid/net/http/BidirectionalStream$Builder;
    .registers 4
    .param p1, "method"    # Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mutate(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 64
    return-object p0
.end method

.method public whitelist setPriority(I)Landroid/net/http/BidirectionalStream$Builder;
    .registers 4
    .param p1, "priority"    # I

    .line 77
    new-instance v0, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda4;-><init>(I)V

    new-instance v1, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-direct {p0, v0, v1}, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mutate(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 78
    return-object p0
.end method

.method public whitelist setTrafficStatsTag(I)Landroid/net/http/BidirectionalStream$Builder;
    .registers 4
    .param p1, "tag"    # I

    .line 127
    new-instance v0, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda10;-><init>(I)V

    new-instance v1, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda11;-><init>(I)V

    invoke-direct {p0, v0, v1}, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mutate(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 130
    return-object p0
.end method

.method public whitelist setTrafficStatsUid(I)Landroid/net/http/BidirectionalStream$Builder;
    .registers 4
    .param p1, "uid"    # I

    .line 136
    new-instance v0, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v0, v1}, Landroid/net/http/BidirectionalStreamBuilderWrapper;->mutate(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 139
    return-object p0
.end method
