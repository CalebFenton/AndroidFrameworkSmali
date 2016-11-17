.class public final Lcom/android/okhttp/internal/ConnectionSpecSelector;
.super Ljava/lang/Object;
.source "ConnectionSpecSelector.java"


# instance fields
.field private final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private isFallback:Z

.field private isFallbackPossible:Z

.field private nextModeIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 44
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->nextModeIndex:I

    #@6
    .line 46
    iput-object p1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    #@8
    .line 44
    return-void
.end method

.method private isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 2
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    #@0
    .prologue
    .line 136
    iget v0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->nextModeIndex:I

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    #@4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 137
    iget-object v1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    #@c
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/okhttp/ConnectionSpec;

    #@12
    invoke-virtual {v1, p1}, Lcom/android/okhttp/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 138
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 141
    :cond_1
    const/4 v1, 0x0

    #@1e
    return v1
.end method


# virtual methods
.method public configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/android/okhttp/ConnectionSpec;
    .locals 7
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    const/4 v3, 0x0

    #@1
    .line 57
    .local v3, "tlsConfiguration":Lcom/android/okhttp/ConnectionSpec;
    iget v1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->nextModeIndex:I

    #@3
    .local v1, "i":I
    iget-object v4, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    #@5
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@8
    move-result v2

    #@9
    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@b
    .line 58
    iget-object v4, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    #@d
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/okhttp/ConnectionSpec;

    #@13
    .line 59
    .local v0, "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    invoke-virtual {v0, p1}, Lcom/android/okhttp/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 60
    move-object v3, v0

    #@1a
    .line 61
    .local v3, "tlsConfiguration":Lcom/android/okhttp/ConnectionSpec;
    add-int/lit8 v4, v1, 0x1

    #@1c
    iput v4, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->nextModeIndex:I

    #@1e
    .line 66
    .end local v0    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .end local v3    # "tlsConfiguration":Lcom/android/okhttp/ConnectionSpec;
    :cond_0
    if-nez v3, :cond_2

    #@20
    .line 70
    new-instance v4, Ljava/net/UnknownServiceException;

    #@22
    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v6, "Unable to find acceptable protocols. isFallback="

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    iget-boolean v6, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallback:Z

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    .line 72
    const-string/jumbo v6, ", modes="

    #@37
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    .line 72
    iget-object v6, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    #@3d
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    .line 73
    const-string/jumbo v6, ", supported protocols="

    #@44
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    .line 73
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@4f
    move-result-object v6

    #@50
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    .line 70
    invoke-direct {v4, v5}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v4

    #@5c
    .line 57
    .restart local v0    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .local v3, "tlsConfiguration":Lcom/android/okhttp/ConnectionSpec;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 76
    .end local v0    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .end local v3    # "tlsConfiguration":Lcom/android/okhttp/ConnectionSpec;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z

    #@62
    move-result v4

    #@63
    iput-boolean v4, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallbackPossible:Z

    #@65
    .line 78
    sget-object v4, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@67
    iget-boolean v5, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallback:Z

    #@69
    invoke-virtual {v4, v3, p1, v5}, Lcom/android/okhttp/internal/Internal;->apply(Lcom/android/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V

    #@6c
    .line 80
    return-object v3
.end method

.method public connectionFailed(Ljava/io/IOException;)Z
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 92
    iput-boolean v0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallback:Z

    #@4
    .line 94
    iget-boolean v1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallbackPossible:Z

    #@6
    if-nez v1, :cond_0

    #@8
    .line 95
    return v2

    #@9
    .line 99
    :cond_0
    instance-of v1, p1, Ljava/net/ProtocolException;

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 100
    return v2

    #@e
    .line 106
    :cond_1
    instance-of v1, p1, Ljava/io/InterruptedIOException;

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 107
    return v2

    #@13
    .line 112
    :cond_2
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    #@15
    if-eqz v1, :cond_3

    #@17
    .line 115
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    #@1a
    move-result-object v1

    #@1b
    instance-of v1, v1, Ljava/security/cert/CertificateException;

    #@1d
    if-eqz v1, :cond_3

    #@1f
    .line 116
    return v2

    #@20
    .line 119
    :cond_3
    instance-of v1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@22
    if-eqz v1, :cond_4

    #@24
    .line 121
    return v2

    #@25
    .line 127
    :cond_4
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    #@27
    if-nez v1, :cond_5

    #@29
    instance-of v0, p1, Ljavax/net/ssl/SSLProtocolException;

    #@2b
    :cond_5
    return v0
.end method
