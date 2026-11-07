.class public Lorg/apache/http/conn/ssl/SSLSocketFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/conn/ssl/SSLSocketFactory$NoPreloadHolder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final whitelist BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final whitelist SSL:Ljava/lang/String; = "SSL"

.field public static final whitelist SSLV2:Ljava/lang/String; = "SSLv2"

.field public static final whitelist STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final whitelist TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private greylist-max-p hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private final greylist-max-r nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

.field private final greylist socketfactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final greylist sslcontext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 153
    new-instance v0, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    sput-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 156
    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 159
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    sput-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-void
.end method

.method private constructor greylist-max-p <init>()V
    .registers 3

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 261
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 262
    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 263
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V
    .registers 10
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "keystore"    # Ljava/security/KeyStore;
    .param p3, "keystorePassword"    # Ljava/lang/String;
    .param p4, "truststore"    # Ljava/security/KeyStore;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .param p6, "nameResolver"    # Lorg/apache/http/conn/scheme/HostNameResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 200
    if-nez p1, :cond_b

    .line 201
    const-string p1, "TLS"

    .line 203
    :cond_b
    const/4 v0, 0x0

    .line 204
    .local v0, "keymanagers":[Ljavax/net/ssl/KeyManager;
    if-eqz p2, :cond_12

    .line 205
    invoke-static {p2, p3}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createKeyManagers(Ljava/security/KeyStore;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    .line 207
    :cond_12
    const/4 v1, 0x0

    .line 208
    .local v1, "trustmanagers":[Ljavax/net/ssl/TrustManager;
    if-eqz p4, :cond_19

    .line 209
    invoke-static {p4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createTrustManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 211
    :cond_19
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 212
    iget-object v2, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2, v0, v1, p5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 213
    iget-object v2, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 214
    iput-object p6, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 215
    return-void
.end method

.method public constructor whitelist <init>(Ljava/security/KeyStore;)V
    .registers 9
    .param p1, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 235
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "TLS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    .end local p1    # "truststore":Ljava/security/KeyStore;
    .local v4, "truststore":Ljava/security/KeyStore;
    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 236
    return-void
.end method

.method public constructor whitelist <init>(Ljava/security/KeyStore;Ljava/lang/String;)V
    .registers 10
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "keystorePassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 229
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "TLS"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "keystore":Ljava/security/KeyStore;
    .end local p2    # "keystorePassword":Ljava/lang/String;
    .local v2, "keystore":Ljava/security/KeyStore;
    .local v3, "keystorePassword":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 230
    return-void
.end method

.method public constructor whitelist <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;)V
    .registers 11
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "keystorePassword"    # Ljava/lang/String;
    .param p3, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 223
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "TLS"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "keystore":Ljava/security/KeyStore;
    .end local p2    # "keystorePassword":Ljava/lang/String;
    .end local p3    # "truststore":Ljava/security/KeyStore;
    .local v2, "keystore":Ljava/security/KeyStore;
    .local v3, "keystorePassword":Ljava/lang/String;
    .local v4, "truststore":Ljava/security/KeyStore;
    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 224
    return-void
.end method

.method public constructor greylist <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3
    .param p1, "socketfactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 248
    iput-object p1, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 249
    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 250
    return-void
.end method

.method synthetic constructor blacklist <init>(Lorg/apache/http/conn/ssl/SSLSocketFactory-IA;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>()V

    return-void
.end method

.method private static greylist-max-r createKeyManagers(Ljava/security/KeyStore;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;
    .registers 4
    .param p0, "keystore"    # Ljava/security/KeyStore;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 268
    if-eqz p0, :cond_1a

    .line 272
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 273
    .local v0, "kmfactory":Ljavax/net/ssl/KeyManagerFactory;
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {v0, p0, v1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 274
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    return-object v1

    .line 269
    .end local v0    # "kmfactory":Ljavax/net/ssl/KeyManagerFactory;
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Keystore may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-r createTrustManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;
    .registers 3
    .param p0, "keystore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 280
    if-eqz p0, :cond_12

    .line 284
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 285
    .local v0, "tmfactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v0, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 286
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    return-object v1

    .line 281
    .end local v0    # "tmfactory":Ljavax/net/ssl/TrustManagerFactory;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Keystore may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .registers 1

    .line 178
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory$NoPreloadHolder;->-$$Nest$sfgetDEFAULT_FACTORY()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .registers 13
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .param p6, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    if-eqz p2, :cond_59

    .line 312
    if-eqz p6, :cond_51

    .line 317
    if-eqz p1, :cond_8

    move-object v0, p1

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_c
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 319
    .local v0, "sslsock":Ljavax/net/ssl/SSLSocket;
    if-nez p4, :cond_12

    if-lez p5, :cond_1d

    .line 322
    :cond_12
    if-gez p5, :cond_15

    .line 323
    const/4 p5, 0x0

    .line 325
    :cond_15
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 327
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 330
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    :cond_1d
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    .line 331
    .local v1, "connTimeout":I
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v2

    .line 334
    .local v2, "soTimeout":I
    iget-object v3, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    if-eqz v3, :cond_35

    .line 335
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    invoke-interface {v4, p2}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .local v3, "remoteAddress":Ljava/net/InetSocketAddress;
    goto :goto_3a

    .line 337
    .end local v3    # "remoteAddress":Ljava/net/InetSocketAddress;
    :cond_35
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 340
    .restart local v3    # "remoteAddress":Ljava/net/InetSocketAddress;
    :goto_3a
    invoke-virtual {v0, v3, v1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 342
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 350
    :try_start_40
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 352
    iget-object v4, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v4, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_48} :catch_4a

    .line 358
    nop

    .line 360
    return-object v0

    .line 354
    :catch_4a
    move-exception v4

    .line 356
    .local v4, "iox":Ljava/io/IOException;
    :try_start_4b
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_50

    :catch_4f
    move-exception v5

    .line 357
    :goto_50
    throw v4

    .line 313
    .end local v0    # "sslsock":Ljavax/net/ssl/SSLSocket;
    .end local v1    # "connTimeout":I
    .end local v2    # "soTimeout":I
    .end local v3    # "remoteAddress":Ljava/net/InetSocketAddress;
    .end local v4    # "iox":Ljava/io/IOException;
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createSocket()Ljava/net/Socket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public whitelist createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 7
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 418
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 420
    iget-object v1, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 422
    return-object v0
.end method

.method public whitelist getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .registers 2

    .line 433
    iget-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method public whitelist isSecure(Ljava/net/Socket;)Z
    .registers 4
    .param p1, "sock"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 381
    if-eqz p1, :cond_1e

    .line 385
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_16

    .line 390
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 394
    const/4 v0, 0x1

    return v0

    .line 391
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .registers 4
    .param p1, "hostnameVerifier"    # Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 426
    if-eqz p1, :cond_5

    .line 429
    iput-object p1, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 430
    return-void

    .line 427
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hostname verifier may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
