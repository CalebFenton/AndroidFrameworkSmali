.class public Lcom/android/org/conscrypt/OpenSSLSessionImpl;
.super Ljava/lang/Object;
.source "OpenSSLSessionImpl.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# instance fields
.field private cipherSuite:Ljava/lang/String;

.field private creationTime:J

.field private id:[B

.field private isValid:Z

.field lastAccessedTime:J

.field final localCertificates:[Ljava/security/cert/X509Certificate;

.field private volatile peerCertificateChain:[Ljavax/security/cert/X509Certificate;

.field final peerCertificates:[Ljava/security/cert/X509Certificate;

.field private peerHost:Ljava/lang/String;

.field private peerPort:I

.field private protocol:Ljava/lang/String;

.field private sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

.field protected sslSessionNativePointer:J

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V
    .locals 3
    .param p1, "sslSessionNativePointer"    # J
    .param p3, "localCertificates"    # [Ljava/security/cert/X509Certificate;
    .param p4, "peerCertificates"    # [Ljava/security/cert/X509Certificate;
    .param p5, "peerHost"    # Ljava/lang/String;
    .param p6, "peerPort"    # I
    .param p7, "sessionContext"    # Lcom/android/org/conscrypt/AbstractSessionContext;

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 39
    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->creationTime:J

    #@7
    .line 40
    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    #@9
    .line 44
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->isValid:Z

    #@c
    .line 45
    new-instance v0, Ljava/util/HashMap;

    #@e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    #@13
    .line 49
    const/4 v0, -0x1

    #@14
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerPort:I

    #@16
    .line 62
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    #@18
    .line 63
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    #@1a
    .line 64
    iput-object p4, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    #@1c
    .line 65
    iput-object p5, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    #@1e
    .line 66
    iput p6, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerPort:I

    #@20
    .line 67
    iput-object p7, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

    #@22
    .line 61
    return-void
.end method

.method constructor <init>([BLjava/lang/String;I[Ljava/security/cert/X509Certificate;Lcom/android/org/conscrypt/AbstractSessionContext;)V
    .locals 9
    .param p1, "derData"    # [B
    .param p2, "peerHost"    # Ljava/lang/String;
    .param p3, "peerPort"    # I
    .param p4, "peerCertificates"    # [Ljava/security/cert/X509Certificate;
    .param p5, "sessionContext"    # Lcom/android/org/conscrypt/AbstractSessionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_SSL_SESSION([B)J

    #@3
    move-result-wide v2

    #@4
    const/4 v4, 0x0

    #@5
    move-object v1, p0

    #@6
    move-object v5, p4

    #@7
    move-object v6, p2

    #@8
    move v7, p3

    #@9
    move-object v8, p5

    #@a
    invoke-direct/range {v1 .. v8}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V

    #@d
    .line 78
    return-void
.end method

.method private checkPeerCertificatesPresent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    #@6
    array-length v0, v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 257
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@b
    const-string/jumbo v1, "No peer certificates"

    #@e
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 255
    :cond_1
    return-void
.end method

.method private createPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    :try_start_0
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    #@2
    array-length v6, v6

    #@3
    new-array v0, v6, [Ljavax/security/cert/X509Certificate;

    #@5
    .line 220
    .local v0, "chain":[Ljavax/security/cert/X509Certificate;
    const/4 v5, 0x0

    #@6
    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    #@8
    array-length v6, v6

    #@9
    if-ge v5, v6, :cond_0

    #@b
    .line 221
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    #@d
    aget-object v6, v6, v5

    #@f
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@12
    move-result-object v3

    #@13
    .line 222
    .local v3, "encoded":[B
    invoke-static {v3}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    #@16
    move-result-object v6

    #@17
    aput-object v6, v0, v5
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 220
    add-int/lit8 v5, v5, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 224
    .end local v3    # "encoded":[B
    :cond_0
    return-object v0

    #@1d
    .line 229
    .end local v0    # "chain":[Ljavax/security/cert/X509Certificate;
    .end local v5    # "i":I
    :catch_0
    move-exception v2

    #@1e
    .line 230
    .local v2, "e":Ljavax/security/cert/CertificateException;
    new-instance v4, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@20
    invoke-virtual {v2}, Ljavax/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    #@23
    move-result-object v6

    #@24
    invoke-direct {v4, v6}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@27
    .line 231
    .local v4, "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v4, v4}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@2a
    .line 232
    throw v4

    #@2b
    .line 225
    .end local v2    # "e":Ljavax/security/cert/CertificateException;
    .end local v4    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :catch_1
    move-exception v1

    #@2c
    .line 226
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@2e
    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-direct {v4, v6}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@35
    .line 227
    .restart local v4    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v4, v4}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@38
    .line 228
    throw v4
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 485
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 486
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    #@a
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 489
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@10
    .line 481
    return-void

    #@11
    .line 488
    :catchall_0
    move-exception v0

    #@12
    .line 489
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@15
    .line 488
    throw v0
.end method

.method public getApplicationBufferSize()I
    .locals 1

    #@0
    .prologue
    .line 146
    const/16 v0, 0x4000

    #@2
    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 311
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    #@6
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_cipher(J)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 312
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    #@c
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/String;

    #@12
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    #@14
    .line 313
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    #@16
    if-nez v1, :cond_0

    #@18
    .line 314
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    #@1a
    .line 317
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    #@1c
    return-object v1
.end method

.method public getCreationTime()J
    .locals 4

    #@0
    .prologue
    .line 121
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->creationTime:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 122
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    #@a
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_get_time(J)J

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->creationTime:J

    #@10
    .line 124
    :cond_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->creationTime:J

    #@12
    return-wide v0
.end method

.method getEncoded()[B
    .locals 2

    #@0
    .prologue
    .line 112
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_SSL_SESSION(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getId()[B
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->id:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 90
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->resetId()V

    #@7
    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->id:[B

    #@9
    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 4

    #@0
    .prologue
    .line 136
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getCreationTime()J

    #@b
    move-result-wide v0

    #@c
    :goto_0
    return-wide v0

    #@d
    :cond_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    #@f
    goto :goto_0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 166
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    #@8
    array-length v0, v0

    #@9
    if-lez v0, :cond_0

    #@b
    .line 167
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    #@d
    aget-object v0, v0, v1

    #@f
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 169
    :cond_0
    return-object v2
.end method

.method public getPacketBufferSize()I
    .locals 1

    #@0
    .prologue
    .line 156
    const/16 v0, 0x4805

    #@2
    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    #@3
    .line 202
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    #@5
    .line 203
    .local v0, "result":[Ljavax/security/cert/X509Certificate;
    if-nez v0, :cond_0

    #@7
    .line 205
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->createPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    #@d
    .line 207
    :cond_0
    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    #@3
    .line 249
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    #@5
    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    #@0
    .prologue
    .line 301
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerPort:I

    #@2
    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 272
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    #@3
    .line 273
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    #@5
    const/4 v1, 0x0

    #@6
    aget-object v0, v0, v1

    #@8
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 327
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    #@6
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_get_version(J)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    #@c
    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    #@e
    return-object v0
.end method

.method public getRequestedServerName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 477
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_SSL_SESSION_tlsext_hostname(J)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

    #@2
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 404
    if-nez p1, :cond_0

    #@2
    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    #@d
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    #@8
    invoke-interface {v1}, Ljava/util/Map;->size()I

    #@b
    move-result v1

    #@c
    new-array v1, v1, [Ljava/lang/String;

    #@e
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [Ljava/lang/String;

    #@14
    return-object v0
.end method

.method public invalidate()V
    .locals 1

    #@0
    .prologue
    .line 388
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->isValid:Z

    #@3
    .line 389
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

    #@6
    .line 387
    return-void
.end method

.method public isValid()Z
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 352
    iget-boolean v6, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->isValid:Z

    #@4
    if-nez v6, :cond_0

    #@6
    .line 353
    return v10

    #@7
    .line 357
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

    #@9
    .line 358
    .local v2, "context":Ljavax/net/ssl/SSLSessionContext;
    if-nez v2, :cond_1

    #@b
    .line 360
    return v11

    #@c
    .line 363
    :cond_1
    invoke-interface {v2}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    #@f
    move-result v3

    #@10
    .line 364
    .local v3, "timeoutSeconds":I
    if-nez v3, :cond_2

    #@12
    .line 366
    return v11

    #@13
    .line 369
    :cond_2
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getCreationTime()J

    #@16
    move-result-wide v4

    #@17
    .line 370
    .local v4, "creationTimestampMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1a
    move-result-wide v6

    #@1b
    sub-long/2addr v6, v4

    #@1c
    const-wide/16 v8, 0x3e8

    #@1e
    div-long v0, v6, v8

    #@20
    .line 373
    .local v0, "ageSeconds":J
    int-to-long v6, v3

    #@21
    cmp-long v6, v0, v6

    #@23
    if-gez v6, :cond_3

    #@25
    const-wide/16 v6, 0x0

    #@27
    cmp-long v6, v0, v6

    #@29
    if-gez v6, :cond_4

    #@2b
    .line 375
    :cond_3
    iput-boolean v10, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->isValid:Z

    #@2d
    .line 376
    return v10

    #@2e
    .line 380
    :cond_4
    return v11
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 436
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 437
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v2, "name == null || value == null"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 439
    :cond_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    #@f
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 440
    .local v0, "old":Ljava/lang/Object;
    instance-of v1, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 441
    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    #@19
    .line 442
    .end local p2    # "value":Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    #@1b
    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    #@1e
    .line 441
    invoke-interface {p2, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    #@21
    .line 444
    :cond_2
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    #@23
    if-eqz v1, :cond_3

    #@25
    .line 445
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    #@27
    .line 446
    .end local v0    # "old":Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    #@29
    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    #@2c
    .line 445
    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    #@2f
    .line 435
    :cond_3
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 463
    if-nez p1, :cond_0

    #@2
    .line 464
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "name == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 466
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    #@d
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    .line 467
    .local v1, "old":Ljava/lang/Object;
    instance-of v2, v1, Ljavax/net/ssl/SSLSessionBindingListener;

    #@13
    if-eqz v2, :cond_1

    #@15
    move-object v0, v1

    #@16
    .line 468
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    #@18
    .line 469
    .local v0, "listener":Ljavax/net/ssl/SSLSessionBindingListener;
    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    #@1a
    invoke-direct {v2, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    #@1d
    invoke-interface {v0, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    #@20
    .line 462
    .end local v0    # "listener":Ljavax/net/ssl/SSLSessionBindingListener;
    :cond_1
    return-void
.end method

.method resetId()V
    .locals 2

    #@0
    .prologue
    .line 104
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_session_id(J)[B

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->id:[B

    #@8
    .line 103
    return-void
.end method
