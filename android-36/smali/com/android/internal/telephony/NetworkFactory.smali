.class public Lcom/android/internal/telephony/NetworkFactory;
.super Ljava/lang/Object;
.source "NetworkFactory.java"


# static fields
.field public static final blacklist CMD_CANCEL_REQUEST:I = 0x2

.field public static final blacklist CMD_REQUEST_NETWORK:I = 0x1


# instance fields
.field private final blacklist LOG_TAG:Ljava/lang/String;

.field final blacklist mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

.field private blacklist mRefCount:I


# direct methods
.method public constructor blacklist <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V
    .registers 6

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/android/internal/telephony/NetworkFactory;->mRefCount:I

    .line 64
    iput-object p3, p0, Lcom/android/internal/telephony/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/android/internal/telephony/build/SdkLevel;->isAtLeastS()Z

    move-result p3

    if-eqz p3, :cond_16

    .line 66
    new-instance p3, Lcom/android/internal/telephony/NetworkFactoryImpl;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/android/internal/telephony/NetworkFactoryImpl;-><init>(Lcom/android/internal/telephony/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V

    iput-object p3, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    return-void

    .line 68
    :cond_16
    new-instance p3, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;-><init>(Lcom/android/internal/telephony/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V

    iput-object p3, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    return-void
.end method


# virtual methods
.method public blacklist acceptRequest(Landroid/net/NetworkRequest;)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 208
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/NetworkFactoryShim;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final blacklist getLooper()Landroid/os/Looper;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    invoke-interface {p0}, Lcom/android/internal/telephony/NetworkFactoryShim;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getProvider()Landroid/net/NetworkProvider;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    invoke-interface {p0}, Lcom/android/internal/telephony/NetworkFactoryShim;->getProvider()Landroid/net/NetworkProvider;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getRequestCount()I
    .registers 1

    .line 192
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    invoke-interface {p0}, Lcom/android/internal/telephony/NetworkFactoryShim;->getRequestCount()I

    move-result p0

    return p0
.end method

.method public blacklist getSerialNumber()I
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    invoke-interface {p0}, Lcom/android/internal/telephony/NetworkFactoryShim;->getSerialNumber()I

    move-result p0

    return p0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 204
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist needNetworkFor(Landroid/net/NetworkRequest;)V
    .registers 3

    .line 156
    iget p1, p0, Lcom/android/internal/telephony/NetworkFactory;->mRefCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/telephony/NetworkFactory;->mRefCount:I

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkFactory;->startNetwork()V

    :cond_b
    return-void
.end method

.method public blacklist obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 5

    .line 80
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/NetworkFactoryShim;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method protected final blacklist reevaluateAllRequests()V
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    invoke-interface {p0}, Lcom/android/internal/telephony/NetworkFactoryShim;->reevaluateAllRequests()V

    return-void
.end method

.method public blacklist register()V
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/NetworkFactoryShim;->register(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist registerIgnoringScore()V
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/NetworkFactoryShim;->registerIgnoringScore(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .registers 2

    .line 160
    iget p1, p0, Lcom/android/internal/telephony/NetworkFactory;->mRefCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/internal/telephony/NetworkFactory;->mRefCount:I

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkFactory;->stopNetwork()V

    :cond_b
    return-void
.end method

.method protected blacklist releaseRequestAsUnfulfillableByAnyFactory(Landroid/net/NetworkRequest;)V
    .registers 2

    .line 147
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryShim;->releaseRequestAsUnfulfillableByAnyFactory(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public blacklist setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
    .registers 2

    .line 187
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryShim;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public blacklist setScoreFilter(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryShim;->setScoreFilter(I)V

    return-void
.end method

.method public blacklist setScoreFilter(Landroid/net/NetworkScore;)V
    .registers 2

    .line 183
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/NetworkFactoryShim;->setScoreFilter(Landroid/net/NetworkScore;)V

    return-void
.end method

.method protected blacklist startNetwork()V
    .registers 1

    .line 0
    return-void
.end method

.method protected blacklist stopNetwork()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist terminate()V
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    invoke-interface {p0}, Lcom/android/internal/telephony/NetworkFactoryShim;->terminate()V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactory;->mImpl:Lcom/android/internal/telephony/NetworkFactoryShim;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
