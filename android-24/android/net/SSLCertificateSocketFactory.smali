.class public Landroid/net/SSLCertificateSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLCertificateSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SSLCertificateSocketFactory$1;
    }
.end annotation


# static fields
.field private static final INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

.field private static final TAG:Ljava/lang/String; = "SSLCertificateSocketFactory"


# instance fields
.field private mAlpnProtocols:[B

.field private mChannelIdPrivateKey:Ljava/security/PrivateKey;

.field private final mHandshakeTimeoutMillis:I

.field private mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mKeyManagers:[Ljavax/net/ssl/KeyManager;

.field private mNpnProtocols:[B

.field private final mSecure:Z

.field private mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

.field private mTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 76
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    #@3
    .line 77
    new-instance v1, Landroid/net/SSLCertificateSocketFactory$1;

    #@5
    invoke-direct {v1}, Landroid/net/SSLCertificateSocketFactory$1;-><init>()V

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v1, v0, v2

    #@b
    .line 76
    sput-object v0, Landroid/net/SSLCertificateSocketFactory;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    #@d
    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "handshakeTimeoutMillis"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    #@5
    .line 98
    return-void
.end method

.method private constructor <init>(ILandroid/net/SSLSessionCache;Z)V
    .locals 1
    .param p1, "handshakeTimeoutMillis"    # I
    .param p2, "cache"    # Landroid/net/SSLSessionCache;
    .param p3, "secure"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 102
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    #@4
    .line 84
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@6
    .line 85
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@8
    .line 86
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    #@a
    .line 87
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    #@c
    .line 88
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    #@e
    .line 89
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    #@10
    .line 90
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    #@12
    .line 104
    iput p1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    #@14
    .line 105
    if-nez p2, :cond_0

    #@16
    :goto_0
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@18
    .line 106
    iput-boolean p3, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    #@1a
    .line 103
    return-void

    #@1b
    .line 105
    :cond_0
    iget-object v0, p2, Landroid/net/SSLSessionCache;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@1d
    goto :goto_0
.end method

.method private static castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    .locals 3
    .param p0, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 421
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Socket not created by this factory: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 426
    :cond_0
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@20
    .end local p0    # "socket":Ljava/net/Socket;
    return-object p0
.end method

.method public static getDefault(I)Ljavax/net/SocketFactory;
    .locals 3
    .param p0, "handshakeTimeoutMillis"    # I

    #@0
    .prologue
    .line 117
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    invoke-direct {v0, p0, v1, v2}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    #@7
    return-object v0
.end method

.method public static getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2
    .param p0, "handshakeTimeoutMillis"    # I
    .param p1, "cache"    # Landroid/net/SSLSessionCache;

    #@0
    .prologue
    .line 130
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    #@6
    return-object v0
.end method

.method private declared-synchronized getDelegate()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 230
    :try_start_0
    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->isSslCheckRelaxed()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_3

    #@b
    .line 231
    :cond_0
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 232
    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 233
    const-string/jumbo v0, "SSLCertificateSocketFactory"

    #@16
    const-string/jumbo v1, "*** BYPASSING SSL SECURITY CHECKS (socket.relaxsslcheck=yes) ***"

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 237
    :goto_0
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    #@1e
    sget-object v1, Landroid/net/SSLCertificateSocketFactory;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    #@20
    invoke-direct {p0, v0, v1}, Landroid/net/SSLCertificateSocketFactory;->makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@26
    .line 239
    :cond_1
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit p0

    #@29
    return-object v0

    #@2a
    .line 235
    :cond_2
    :try_start_1
    const-string/jumbo v0, "SSLCertificateSocketFactory"

    #@2d
    const-string/jumbo v1, "Bypassing SSL security checks at caller\'s request"

    #@30
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_0

    #@34
    :catchall_0
    move-exception v0

    #@35
    monitor-exit p0

    #@36
    throw v0

    #@37
    .line 241
    :cond_3
    :try_start_2
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@39
    if-nez v0, :cond_4

    #@3b
    .line 242
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    #@3d
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    #@3f
    invoke-direct {p0, v0, v1}, Landroid/net/SSLCertificateSocketFactory;->makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@45
    .line 244
    :cond_4
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    monitor-exit p0

    #@48
    return-object v0
.end method

.method public static getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 3
    .param p0, "handshakeTimeoutMillis"    # I
    .param p1, "cache"    # Landroid/net/SSLSessionCache;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 168
    new-instance v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    #@2
    .line 169
    new-instance v1, Landroid/net/SSLCertificateSocketFactory;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {v1, p0, p1, v2}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    #@8
    .line 168
    invoke-direct {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    #@b
    return-object v0
.end method

.method public static getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2
    .param p0, "handshakeTimeoutMillis"    # I
    .param p1, "cache"    # Landroid/net/SSLSessionCache;

    #@0
    .prologue
    .line 146
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    #@6
    return-object v0
.end method

.method private static isSslCheckRelaxed()Z
    .locals 2

    #@0
    .prologue
    .line 224
    const-string/jumbo v0, "1"

    #@3
    const-string/jumbo v1, "ro.debuggable"

    #@6
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 225
    const-string/jumbo v0, "yes"

    #@13
    const-string/jumbo v1, "socket.relaxsslcheck"

    #@16
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    .line 224
    :goto_0
    return v0

    #@1f
    :cond_0
    const/4 v0, 0x0

    #@20
    goto :goto_0
.end method

.method private makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .param p1, "keyManagers"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "trustManagers"    # [Ljavax/net/ssl/TrustManager;

    #@0
    .prologue
    .line 213
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->getPreferred()Lcom/android/org/conscrypt/OpenSSLContextImpl;

    #@3
    move-result-object v1

    #@4
    .line 214
    .local v1, "sslContext":Lcom/android/org/conscrypt/OpenSSLContextImpl;
    const/4 v2, 0x0

    #@5
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    #@8
    .line 215
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Landroid/net/SSLCertificateSocketFactory;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@e
    invoke-virtual {v2, v3}, Lcom/android/org/conscrypt/ClientSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V

    #@11
    .line 216
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v2

    #@15
    return-object v2

    #@16
    .line 217
    .end local v1    # "sslContext":Lcom/android/org/conscrypt/OpenSSLContextImpl;
    :catch_0
    move-exception v0

    #@17
    .line 218
    .local v0, "e":Ljava/security/KeyManagementException;
    const-string/jumbo v2, "SSLCertificateSocketFactory"

    #@1a
    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    .line 219
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Ljavax/net/ssl/SSLSocketFactory;

    #@23
    return-object v2
.end method

.method static varargs toLengthPrefixedList([[B)[B
    .locals 11
    .param p0, "items"    # [[B

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 308
    array-length v6, p0

    #@2
    if-nez v6, :cond_0

    #@4
    .line 309
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v7, "items.length == 0"

    #@9
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v6

    #@d
    .line 311
    :cond_0
    const/4 v5, 0x0

    #@e
    .line 312
    .local v5, "totalLength":I
    array-length v8, p0

    #@f
    move v6, v7

    #@10
    :goto_0
    if-ge v6, v8, :cond_3

    #@12
    aget-object v4, p0, v6

    #@14
    .line 313
    .local v4, "s":[B
    array-length v9, v4

    #@15
    if-eqz v9, :cond_1

    #@17
    array-length v9, v4

    #@18
    const/16 v10, 0xff

    #@1a
    if-le v9, v10, :cond_2

    #@1c
    .line 314
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@1e
    new-instance v7, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v8, "s.length == 0 || s.length > 255: "

    #@26
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v7

    #@2a
    array-length v8, v4

    #@2b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v6

    #@37
    .line 316
    :cond_2
    array-length v9, v4

    #@38
    add-int/lit8 v9, v9, 0x1

    #@3a
    add-int/2addr v5, v9

    #@3b
    .line 312
    add-int/lit8 v6, v6, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 318
    .end local v4    # "s":[B
    :cond_3
    new-array v3, v5, [B

    #@40
    .line 319
    .local v3, "result":[B
    const/4 v1, 0x0

    #@41
    .line 320
    .local v1, "pos":I
    array-length v9, p0

    #@42
    move v8, v7

    #@43
    move v2, v1

    #@44
    .end local v1    # "pos":I
    .local v2, "pos":I
    :goto_1
    if-ge v8, v9, :cond_5

    #@46
    aget-object v4, p0, v8

    #@48
    .line 321
    .restart local v4    # "s":[B
    add-int/lit8 v1, v2, 0x1

    #@4a
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    array-length v6, v4

    #@4b
    int-to-byte v6, v6

    #@4c
    aput-byte v6, v3, v2

    #@4e
    .line 322
    array-length v10, v4

    #@4f
    move v6, v7

    #@50
    move v2, v1

    #@51
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :goto_2
    if-ge v6, v10, :cond_4

    #@53
    aget-byte v0, v4, v6

    #@55
    .line 323
    .local v0, "b":B
    add-int/lit8 v1, v2, 0x1

    #@57
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    aput-byte v0, v3, v2

    #@59
    .line 322
    add-int/lit8 v6, v6, 0x1

    #@5b
    move v2, v1

    #@5c
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    goto :goto_2

    #@5d
    .line 320
    .end local v0    # "b":B
    :cond_4
    add-int/lit8 v6, v8, 0x1

    #@5f
    move v8, v6

    #@60
    goto :goto_1

    #@61
    .line 326
    .end local v4    # "s":[B
    :cond_5
    return-object v3
.end method

.method public static verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 5
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 190
    instance-of v2, p0, Ljavax/net/ssl/SSLSocket;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 191
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v3, "Attempt to verify non-SSL socket"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 194
    :cond_0
    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->isSslCheckRelaxed()Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_2

    #@13
    move-object v1, p0

    #@14
    .line 197
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    #@16
    .line 198
    .local v1, "ssl":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    #@19
    .line 200
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@1c
    move-result-object v0

    #@1d
    .line 201
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-nez v0, :cond_1

    #@1f
    .line 202
    new-instance v2, Ljavax/net/ssl/SSLException;

    #@21
    const-string/jumbo v3, "Cannot verify SSL socket without session"

    #@24
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2

    #@28
    .line 204
    :cond_1
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {v2, p1, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    #@2f
    move-result v2

    #@30
    if-nez v2, :cond_2

    #@32
    .line 205
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@34
    new-instance v3, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v4, "Cannot verify hostname: "

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2

    #@4c
    .line 189
    .end local v0    # "session":Ljavax/net/ssl/SSLSession;
    .end local v1    # "ssl":Ljavax/net/ssl/SSLSocket;
    :cond_2
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 458
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@a
    .line 459
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    #@f
    .line 460
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    #@14
    .line 461
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    #@16
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    #@19
    .line 462
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    #@1b
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    #@1e
    .line 463
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 531
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@a
    .line 532
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    #@f
    .line 533
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    #@14
    .line 534
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    #@16
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    #@19
    .line 535
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    #@1b
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    #@1e
    .line 536
    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 537
    invoke-static {v0, p1}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    #@25
    .line 539
    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 511
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@a
    .line 513
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    #@f
    .line 514
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    #@14
    .line 515
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    #@16
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    #@19
    .line 516
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    #@1b
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    #@1e
    .line 517
    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 518
    invoke-static {v0, p1}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    #@25
    .line 520
    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 494
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@a
    .line 495
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    #@f
    .line 496
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    #@14
    .line 497
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    #@16
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    #@19
    .line 498
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    #@1b
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    #@1e
    .line 499
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 476
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@a
    .line 478
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    #@f
    .line 479
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    #@14
    .line 480
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    #@16
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    #@19
    .line 481
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    #@1b
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    #@1e
    .line 482
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .param p1, "k"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 437
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@a
    .line 438
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    #@f
    .line 439
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    #@14
    .line 440
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    #@16
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    #@19
    .line 441
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    #@1b
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    #@1e
    .line 442
    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 443
    invoke-static {v0, p2}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    #@25
    .line 445
    :cond_0
    return-object v0
.end method

.method public getAlpnSelectedProtocol(Ljava/net/Socket;)[B
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 352
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getAlpnSelectedProtocol()[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 544
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getNpnSelectedProtocol(Ljava/net/Socket;)[B
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 338
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getNpnSelectedProtocol()[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 549
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setAlpnProtocols([[B)V
    .locals 1
    .param p1, "protocols"    # [[B

    #@0
    .prologue
    .line 300
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->toLengthPrefixedList([[B)[B

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    #@6
    .line 299
    return-void
.end method

.method public setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .locals 0
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    #@0
    .prologue
    .line 377
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    #@2
    .line 376
    return-void
.end method

.method public setHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 401
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    #@7
    .line 400
    return-void
.end method

.method public setKeyManagers([Ljavax/net/ssl/KeyManager;)V
    .locals 1
    .param p1, "keyManagers"    # [Ljavax/net/ssl/KeyManager;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 359
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    #@3
    .line 362
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@5
    .line 363
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@7
    .line 358
    return-void
.end method

.method public setNpnProtocols([[B)V
    .locals 1
    .param p1, "npnProtocols"    # [[B

    #@0
    .prologue
    .line 277
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->toLengthPrefixedList([[B)[B

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    #@6
    .line 276
    return-void
.end method

.method public setSoWriteTimeout(Ljava/net/Socket;I)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "writeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 417
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    #@7
    .line 416
    return-void
.end method

.method public setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .locals 1
    .param p1, "trustManager"    # [Ljavax/net/ssl/TrustManager;

    #@0
    .prologue
    .line 252
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    #@2
    .line 255
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@5
    .line 251
    return-void
.end method

.method public setUseSessionTickets(Ljava/net/Socket;Z)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "useSessionTickets"    # Z

    #@0
    .prologue
    .line 389
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setUseSessionTickets(Z)V

    #@7
    .line 388
    return-void
.end method
