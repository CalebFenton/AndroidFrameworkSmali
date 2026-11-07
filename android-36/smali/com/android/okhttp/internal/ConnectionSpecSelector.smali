.class public final Lcom/android/okhttp/internal/ConnectionSpecSelector;
.super Ljava/lang/Object;
.source "ConnectionSpecSelector.java"


# instance fields
.field private final blacklist connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist isFallback:Z

.field private blacklist isFallbackPossible:Z

.field private blacklist nextModeIndex:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->nextModeIndex:I

    .line 48
    iput-object p1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    return-void
.end method

.method private blacklist isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z
    .registers 4

    .line 138
    iget v0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->nextModeIndex:I

    :goto_2
    iget-object v1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 139
    iget-object v1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/ConnectionSpec;

    invoke-virtual {v1, p1}, Lcom/android/okhttp/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/android/okhttp/ConnectionSpec;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget v0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->nextModeIndex:I

    iget-object v1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_8
    if-ge v0, v1, :cond_20

    .line 60
    iget-object v2, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/ConnectionSpec;

    .line 61
    invoke-virtual {v2, p1}, Lcom/android/okhttp/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-eqz v3, :cond_1d

    add-int/lit8 v0, v0, 0x1

    .line 63
    iput v0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->nextModeIndex:I

    goto :goto_21

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_20
    const/4 v2, 0x0

    :goto_21
    if-eqz v2, :cond_31

    .line 78
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallbackPossible:Z

    .line 80
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-boolean p0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v0, v2, p1, p0}, Lcom/android/okhttp/internal/Internal;->apply(Lcom/android/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V

    return-object v2

    .line 72
    :cond_31
    new-instance v0, Ljava/net/UnknownServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find acceptable protocols. isFallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", modes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", supported protocols="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist connectionFailed(Ljava/io/IOException;)Z
    .registers 5

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallback:Z

    .line 96
    iget-boolean p0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallbackPossible:Z

    const/4 v1, 0x0

    if-nez p0, :cond_9

    return v1

    .line 101
    :cond_9
    instance-of p0, p1, Ljava/net/ProtocolException;

    if-eqz p0, :cond_e

    return v1

    .line 108
    :cond_e
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    if-eqz p0, :cond_13

    return v1

    .line 114
    :cond_13
    instance-of p0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p0, :cond_20

    .line 117
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-eqz v2, :cond_20

    return v1

    .line 121
    :cond_20
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v2, :cond_25

    return v1

    :cond_25
    if-nez p0, :cond_2d

    .line 129
    instance-of p0, p1, Ljavax/net/ssl/SSLProtocolException;

    if-eqz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    return v1

    :cond_2d
    :goto_2d
    return v0
.end method
