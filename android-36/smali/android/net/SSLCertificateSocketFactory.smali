.class public Landroid/net/SSLCertificateSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLCertificateSocketFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

.field private static final greylist-max-p TAG:Ljava/lang/String; = "SSLCertificateSocketFactory"


# instance fields
.field private greylist-max-r mAlpnProtocols:[B

.field private greylist-max-r mChannelIdPrivateKey:Ljava/security/PrivateKey;

.field private final greylist mHandshakeTimeoutMillis:I

.field private greylist mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private greylist-max-r mKeyManagers:[Ljavax/net/ssl/KeyManager;

.field private greylist-max-r mNpnProtocols:[B

.field private final greylist mSecure:Z

.field private greylist mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final greylist-max-r mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

.field private greylist-max-r mTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Landroid/net/SSLCertificateSocketFactory$1;

    invoke-direct {v1}, Landroid/net/SSLCertificateSocketFactory$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/SSLCertificateSocketFactory;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "handshakeTimeoutMillis"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    .line 140
    return-void
.end method

.method private constructor greylist <init>(ILandroid/net/SSLSessionCache;Z)V
    .registers 5
    .param p1, "handshakeTimeoutMillis"    # I
    .param p2, "cache"    # Landroid/net/SSLSessionCache;
    .param p3, "secure"    # Z

    .line 144
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 116
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 118
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 120
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    .line 122
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    .line 124
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    .line 126
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    .line 145
    iput p1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    .line 146
    if-nez p2, :cond_17

    goto :goto_19

    :cond_17
    iget-object v0, p2, Landroid/net/SSLSessionCache;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    :goto_19
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    .line 147
    iput-boolean p3, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    .line 148
    return-void
.end method

.method private static greylist-max-r castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    .registers 4
    .param p0, "socket"    # Ljava/net/Socket;

    .line 475
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    if-eqz v0, :cond_8

    .line 480
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    return-object v0

    .line 476
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket not created by this factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getDefault(I)Ljavax/net/SocketFactory;
    .registers 4
    .param p0, "handshakeTimeoutMillis"    # I

    .line 158
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method public static whitelist getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 4
    .param p0, "handshakeTimeoutMillis"    # I
    .param p1, "cache"    # Landroid/net/SSLSessionCache;

    .line 171
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method private declared-synchronized greylist getDelegate()Ljavax/net/ssl/SSLSocketFactory;
    .registers 3

    monitor-enter p0

    .line 276
    :try_start_1
    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v0, :cond_1e

    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->isSslCheckRelaxed()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_1e

    .line 287
    :cond_c
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1a

    .line 288
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v0, v1}, Landroid/net/SSLCertificateSocketFactory;->makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 290
    .end local p0    # "this":Landroid/net/SSLCertificateSocketFactory;
    :cond_1a
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_43

    monitor-exit p0

    return-object v0

    .line 277
    :cond_1e
    :goto_1e
    :try_start_1e
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3f

    .line 278
    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v0, :cond_2e

    .line 279
    const-string v0, "SSLCertificateSocketFactory"

    const-string v1, "*** BYPASSING SSL SECURITY CHECKS (socket.relaxsslcheck=yes) ***"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 281
    :cond_2e
    const-string v0, "SSLCertificateSocketFactory"

    const-string v1, "Bypassing SSL security checks at caller\'s request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_35
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    sget-object v1, Landroid/net/SSLCertificateSocketFactory;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v0, v1}, Landroid/net/SSLCertificateSocketFactory;->makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 285
    :cond_3f
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_43

    monitor-exit p0

    return-object v0

    .line 275
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public static greylist getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .registers 5
    .param p0, "handshakeTimeoutMillis"    # I
    .param p1, "cache"    # Landroid/net/SSLSessionCache;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    new-instance v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    new-instance v1, Landroid/net/SSLCertificateSocketFactory;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    invoke-direct {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v0
.end method

.method public static whitelist getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 4
    .param p0, "handshakeTimeoutMillis"    # I
    .param p1, "cache"    # Landroid/net/SSLSessionCache;

    .line 187
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method private static greylist isSslCheckRelaxed()Z
    .registers 2

    .line 269
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 270
    const-string/jumbo v0, "socket.relaxsslcheck"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    nop

    .line 269
    :goto_11
    return v1
.end method

.method private greylist-max-r makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 6
    .param p1, "keyManagers"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "trustManagers"    # [Ljavax/net/ssl/TrustManager;

    .line 256
    :try_start_0
    const-string v0, "TLS"

    const-string v1, "AndroidOpenSSL"

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 257
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 258
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/ClientSessionContext;

    iget-object v2, p0, Landroid/net/SSLCertificateSocketFactory;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    .line 259
    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/ClientSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V

    .line 260
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1
    :try_end_1b
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_1b} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1b} :catch_1c
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v1

    .line 261
    .end local v0    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_1c
    move-exception v0

    .line 262
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v1, "SSLCertificateSocketFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocketFactory;

    return-object v1
.end method

.method public static varargs blacklist toLengthPrefixedList([[B)[B
    .registers 12
    .param p0, "items"    # [[B

    .line 358
    array-length v0, p0

    if-eqz v0, :cond_57

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "totalLength":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_35

    aget-object v4, p0, v3

    .line 363
    .local v4, "s":[B
    array-length v5, v4

    if-eqz v5, :cond_1a

    array-length v5, v4

    const/16 v6, 0xff

    if-gt v5, v6, :cond_1a

    .line 366
    array-length v5, v4

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v5

    .line 362
    .end local v4    # "s":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 364
    .restart local v4    # "s":[B
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "s.length == 0 || s.length > 255: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    .end local v4    # "s":[B
    :cond_35
    new-array v1, v0, [B

    .line 369
    .local v1, "result":[B
    const/4 v3, 0x0

    .line 370
    .local v3, "pos":I
    array-length v4, p0

    move v5, v2

    :goto_3a
    if-ge v5, v4, :cond_56

    aget-object v6, p0, v5

    .line 371
    .local v6, "s":[B
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "pos":I
    .local v7, "pos":I
    array-length v8, v6

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    .line 372
    array-length v3, v6

    move v8, v2

    :goto_46
    if-ge v8, v3, :cond_52

    aget-byte v9, v6, v8

    .line 373
    .local v9, "b":B
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "pos":I
    .local v10, "pos":I
    aput-byte v9, v1, v7

    .line 372
    .end local v9    # "b":B
    add-int/lit8 v8, v8, 0x1

    move v7, v10

    goto :goto_46

    .line 370
    .end local v6    # "s":[B
    .end local v10    # "pos":I
    .restart local v7    # "pos":I
    :cond_52
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_3a

    .line 376
    .end local v7    # "pos":I
    .restart local v3    # "pos":I
    :cond_56
    return-object v1

    .line 359
    .end local v0    # "totalLength":I
    .end local v1    # "result":[B
    .end local v3    # "pos":I
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "items.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .registers 7
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_43

    .line 236
    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->isSslCheckRelaxed()Z

    move-result v0

    if-nez v0, :cond_42

    .line 239
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 240
    .local v0, "ssl":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 242
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 243
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v1, :cond_3a

    .line 246
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_42

    .line 247
    :cond_21
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot verify hostname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_3a
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Cannot verify SSL socket without session"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    .end local v0    # "ssl":Ljavax/net/ssl/SSLSocket;
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    :cond_42
    :goto_42
    return-void

    .line 233
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to verify non-SSL socket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api createSocket()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 516
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 517
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 518
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 519
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 520
    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 599
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 600
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 601
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 602
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 603
    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_25

    .line 604
    invoke-static {v0, p1}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 606
    :cond_25
    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 577
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 578
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 579
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 580
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 581
    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_25

    .line 582
    invoke-static {v0, p1}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 584
    :cond_25
    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 5
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 556
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 557
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 558
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 559
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 560
    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 7
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 537
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 538
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 539
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 540
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 541
    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 7
    .param p1, "k"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 495
    .local v0, "s":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 496
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 497
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 498
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 499
    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_25

    .line 500
    invoke-static {v0, p2}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 502
    :cond_25
    return-object v0
.end method

.method public greylist-max-p getAlpnSelectedProtocol(Ljava/net/Socket;)[B
    .registers 3
    .param p1, "socket"    # Ljava/net/Socket;

    .line 403
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getAlpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 611
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNpnSelectedProtocol(Ljava/net/Socket;)[B
    .registers 3
    .param p1, "socket"    # Ljava/net/Socket;

    .line 388
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getNpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 616
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r setAlpnProtocols([[B)V
    .registers 3
    .param p1, "protocols"    # [[B

    .line 348
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->toLengthPrefixedList([[B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    .line 349
    return-void
.end method

.method public greylist-max-p setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .line 429
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    .line 430
    return-void
.end method

.method public whitelist setHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .registers 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostName"    # Ljava/lang/String;

    .line 453
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public whitelist setKeyManagers([Ljavax/net/ssl/KeyManager;)V
    .registers 3
    .param p1, "keyManagers"    # [Ljavax/net/ssl/KeyManager;

    .line 410
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 414
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 415
    return-void
.end method

.method public whitelist setNpnProtocols([[B)V
    .registers 3
    .param p1, "npnProtocols"    # [[B

    .line 324
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->toLengthPrefixedList([[B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    .line 325
    return-void
.end method

.method public greylist-max-r setSoWriteTimeout(Ljava/net/Socket;I)V
    .registers 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "writeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 470
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    .line 471
    return-void
.end method

.method public whitelist setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .registers 3
    .param p1, "trustManager"    # [Ljavax/net/ssl/TrustManager;

    .line 298
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 304
    return-void
.end method

.method public whitelist setUseSessionTickets(Ljava/net/Socket;Z)V
    .registers 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "useSessionTickets"    # Z

    .line 441
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setUseSessionTickets(Z)V

    .line 442
    return-void
.end method
