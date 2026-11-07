.class Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;
.super Landroid/os/Handler;
.source "NetworkFactoryLegacyImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/NetworkFactoryShim;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;
    }
.end annotation


# static fields
.field public static final blacklist CMD_CANCEL_REQUEST:I = 0x2

.field public static final blacklist CMD_REQUEST_NETWORK:I = 0x1


# instance fields
.field blacklist mCapabilityFilter:Landroid/net/NetworkCapabilities;

.field final blacklist mContext:Landroid/content/Context;

.field private final blacklist mNetworkRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/NetworkRequest;",
            "Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mParent:Lcom/android/internal/telephony/NetworkFactory;

.field blacklist mProvider:Landroid/net/NetworkProvider;

.field private blacklist mScore:I


# direct methods
.method public static synthetic blacklist $r8$lambda$Y4Kij905vlrtx-n4lTXr1dzt4v0(Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->evalRequests()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jAPtBPkB9N8wUvRSwjjH-2rg97I(Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;Landroid/net/NetworkRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->lambda$releaseRequestAsUnfulfillableByAnyFactory$0(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRemoveRequest(Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;Landroid/net/NetworkRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->handleRemoveRequest(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V
    .registers 5

    .line 114
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 104
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    const/4 p2, 0x0

    .line 110
    iput-object p2, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mParent:Lcom/android/internal/telephony/NetworkFactory;

    .line 116
    iput-object p3, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mContext:Landroid/content/Context;

    .line 117
    iput-object p4, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method private blacklist evalRequest(Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;)V
    .registers 3

    .line 283
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->shouldNeedNetworkFor(Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 285
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mParent:Lcom/android/internal/telephony/NetworkFactory;

    iget-object v0, p1, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;)V

    const/4 p0, 0x1

    .line 286
    iput-boolean p0, p1, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    return-void

    .line 287
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->shouldReleaseNetworkFor(Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 289
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mParent:Lcom/android/internal/telephony/NetworkFactory;

    iget-object v0, p1, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    const/4 p0, 0x0

    .line 290
    iput-boolean p0, p1, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    :cond_21
    return-void
.end method

.method private blacklist evalRequests()V
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;

    .line 327
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->evalRequest(Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private blacklist handleRemoveRequest(Landroid/net/NetworkRequest;)V
    .registers 4

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;

    if-eqz v0, :cond_1a

    .line 236
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-boolean p1, v0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mParent:Lcom/android/internal/telephony/NetworkFactory;

    iget-object p1, v0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    :cond_1a
    return-void
.end method

.method private blacklist handleSetFilter(Landroid/net/NetworkCapabilities;)V
    .registers 2

    .line 247
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 248
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->evalRequests()V

    return-void
.end method

.method private blacklist handleSetScore(I)V
    .registers 2

    .line 242
    iput p1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mScore:I

    .line 243
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->evalRequests()V

    return-void
.end method

.method private synthetic blacklist lambda$releaseRequestAsUnfulfillableByAnyFactory$0(Landroid/net/NetworkRequest;)V
    .registers 5

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mParent:Lcom/android/internal/telephony/NetworkFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseRequestAsUnfulfillableByAnyFactory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkFactory;->log(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    if-nez v0, :cond_22

    .line 353
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mParent:Lcom/android/internal/telephony/NetworkFactory;

    const-string p1, "Ignoring attempt to release unregistered request as unfulfillable"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkFactory;->log(Ljava/lang/String;)V

    return-void

    .line 356
    :cond_22
    invoke-virtual {v0, p1}, Landroid/net/NetworkProvider;->declareNetworkRequestUnfulfillable(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method private blacklist shouldNeedNetworkFor(Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;)Z
    .registers 4

    .line 298
    iget-boolean v0, p1, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    if-nez v0, :cond_28

    iget v0, p1, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->score:I

    iget v1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mScore:I

    if-lt v0, v1, :cond_14

    iget v0, p1, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->providerId:I

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 302
    invoke-virtual {v1}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result v1

    if-ne v0, v1, :cond_28

    :cond_14
    iget-object v0, p1, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 305
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object p1, p1, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->acceptRequest(Landroid/net/NetworkRequest;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist shouldReleaseNetworkFor(Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;)Z
    .registers 4

    .line 313
    iget-boolean v0, p1, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    if-eqz v0, :cond_28

    iget v0, p1, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->score:I

    iget v1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mScore:I

    if-le v0, v1, :cond_14

    iget v0, p1, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->providerId:I

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 320
    invoke-virtual {v1}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result v1

    if-ne v0, v1, :cond_26

    :cond_14
    iget-object v0, p1, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 321
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p1, p1, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->acceptRequest(Landroid/net/NetworkRequest;)Z

    move-result p0

    if-nez p0, :cond_28

    :cond_26
    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist acceptRequest(Landroid/net/NetworkRequest;)Z
    .registers 2

    .line 271
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mParent:Lcom/android/internal/telephony/NetworkFactory;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;

    .line 388
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    :cond_32
    return-void
.end method

.method public blacklist getProvider()Landroid/net/NetworkProvider;
    .registers 1

    .line 382
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    return-object p0
.end method

.method public blacklist getRequestCount()I
    .registers 1

    .line 373
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public blacklist getSerialNumber()I
    .registers 1

    .line 378
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    invoke-virtual {p0}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result p0

    return p0
.end method

.method protected blacklist handleAddRequest(Landroid/net/NetworkRequest;II)V
    .registers 7

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;

    if-nez v0, :cond_3d

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mParent:Lcom/android/internal/telephony/NetworkFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with score "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and providerId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkFactory;->log(Ljava/lang/String;)V

    .line 218
    new-instance v0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;-><init>(Landroid/net/NetworkRequest;II)V

    .line 219
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    iget-object p2, v0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 225
    :cond_3d
    iput p2, v0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->score:I

    .line 226
    iput p3, v0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->providerId:I

    .line 230
    :goto_41
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->evalRequest(Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;)V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    return-void

    .line 176
    :cond_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->handleSetFilter(Landroid/net/NetworkCapabilities;)V

    return-void

    .line 172
    :cond_17
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->handleSetScore(I)V

    return-void

    .line 168
    :cond_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->handleRemoveRequest(Landroid/net/NetworkRequest;)V

    return-void

    .line 164
    :cond_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->handleAddRequest(Landroid/net/NetworkRequest;II)V

    return-void
.end method

.method public blacklist reevaluateAllRequests()V
    .registers 2

    .line 336
    new-instance v0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist register(Ljava/lang/String;)V
    .registers 5

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    if-nez v0, :cond_28

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mParent:Lcom/android/internal/telephony/NetworkFactory;

    const-string v1, "Registering NetworkFactory"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkFactory;->log(Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$1;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$1;-><init>(Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 141
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 142
    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->registerNetworkProvider(Landroid/net/NetworkProvider;)I

    return-void

    .line 123
    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A NetworkFactory must only be registered once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist releaseRequestAsUnfulfillableByAnyFactory(Landroid/net/NetworkRequest;)V
    .registers 3

    .line 349
    new-instance v0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;Landroid/net/NetworkRequest;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
    .registers 3

    .line 369
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist setScoreFilter(I)V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 361
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist setScoreFilter(Landroid/net/NetworkScore;)V
    .registers 2

    .line 365
    invoke-virtual {p1}, Landroid/net/NetworkScore;->getLegacyInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->setScoreFilter(I)V

    return-void
.end method

.method public blacklist terminate()V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    if-eqz v0, :cond_1f

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mParent:Lcom/android/internal/telephony/NetworkFactory;

    const-string v1, "Unregistering NetworkFactory"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkFactory;->log(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 153
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkProvider(Landroid/net/NetworkProvider;)V

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 148
    :cond_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This NetworkFactory was never registered"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "providerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_19

    :cond_17
    const-string v1, "null"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ScoreFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->mNetworkRequests:Ljava/util/Map;

    .line 395
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
