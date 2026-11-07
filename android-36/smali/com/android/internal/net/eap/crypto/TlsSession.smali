.class public Lcom/android/internal/net/eap/crypto/TlsSession;
.super Ljava/lang/Object;
.source "TlsSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;,
        Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;,
        Lcom/android/internal/net/eap/crypto/TlsSession$TlsStatus;
    }
.end annotation


# static fields
.field private static final blacklist CERT_PATH_ALGO_PKIX:Ljava/lang/String; = "PKIX"

.field private static final blacklist ENABLED_TLS_PROTOCOLS:[Ljava/lang/String;

.field private static final blacklist KEY_STORE_TYPE_PKCS12:Ljava/lang/String; = "PKCS12"

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist TLS_STATUS_CLOSED:I = 0x3

.field public static final blacklist TLS_STATUS_FAILURE:I = 0x2

.field public static final blacklist TLS_STATUS_SUCCESS:I = 0x1

.field public static final blacklist TLS_STATUS_TUNNEL_ESTABLISHED:I = 0x0

.field private static final blacklist TRUST_MANAGER_PROVIDER:Ljava/security/Provider;

.field private static final blacklist TTLS_EXPORTER_LABEL:Ljava/lang/String; = "ttls keying material"

.field private static final blacklist TTLS_KEYING_MATERIAL_LEN:I = 0x80


# instance fields
.field private blacklist mApplicationData:Ljava/nio/ByteBuffer;

.field blacklist mHandshakeComplete:Z

.field blacklist mHandshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field private blacklist mPacketData:Ljava/nio/ByteBuffer;

.field private final blacklist mSecureRandom:Ljava/security/SecureRandom;

.field private final blacklist mSslContext:Ljavax/net/ssl/SSLContext;

.field private final blacklist mSslEngine:Ljavax/net/ssl/SSLEngine;

.field private final blacklist mSslSession:Ljavax/net/ssl/SSLSession;

.field private blacklist mTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    const-class v0, Lcom/android/internal/net/eap/crypto/TlsSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/crypto/TlsSession;->TAG:Ljava/lang/String;

    .line 88
    const-string v0, "TLSv1.2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/crypto/TlsSession;->ENABLED_TLS_PROTOCOLS:[Ljava/lang/String;

    .line 93
    const-string v0, "HarmonyJSSE"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/crypto/TlsSession;->TRUST_MANAGER_PROVIDER:Ljava/security/Provider;

    return-void
.end method

.method constructor blacklist <init>(Ljava/security/cert/X509Certificate;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "serverCaCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mHandshakeComplete:Z

    .line 118
    iput-object p2, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSecureRandom:Ljava/security/SecureRandom;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/crypto/TlsSession;->initTrustManagers(Ljava/security/cert/X509Certificate;)V

    .line 120
    const-string v0, "TLSv1.2"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 121
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslContext:Ljavax/net/ssl/SSLContext;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    invoke-virtual {v0, v1, v2, p2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslEngine:Ljavax/net/ssl/SSLEngine;

    .line 123
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslEngine:Ljavax/net/ssl/SSLEngine;

    sget-object v1, Lcom/android/internal/net/eap/crypto/TlsSession;->ENABLED_TLS_PROTOCOLS:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslEngine:Ljavax/net/ssl/SSLEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslSession:Ljavax/net/ssl/SSLSession;

    .line 126
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mApplicationData:Ljava/nio/ByteBuffer;

    .line 127
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mPacketData:Ljava/nio/ByteBuffer;

    .line 128
    return-void
.end method

.method public constructor blacklist <init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/SSLEngine;Ljavax/net/ssl/SSLSession;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "sslEngine"    # Ljavax/net/ssl/SSLEngine;
    .param p3, "sslSession"    # Ljavax/net/ssl/SSLSession;
    .param p4, "secureRandom"    # Ljava/security/SecureRandom;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mHandshakeComplete:Z

    .line 136
    iput-object p1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 137
    iput-object p2, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslEngine:Ljavax/net/ssl/SSLEngine;

    .line 138
    iput-object p4, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSecureRandom:Ljava/security/SecureRandom;

    .line 139
    iput-object p3, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslSession:Ljavax/net/ssl/SSLSession;

    .line 140
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mApplicationData:Ljava/nio/ByteBuffer;

    .line 141
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mPacketData:Ljava/nio/ByteBuffer;

    .line 142
    return-void
.end method

.method private blacklist clearAndGrowApplicationBufferIfNeeded()V
    .registers 3

    .line 465
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mApplicationData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 466
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mApplicationData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 467
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mApplicationData:Ljava/nio/ByteBuffer;

    .line 469
    :cond_1f
    return-void
.end method

.method private blacklist clearAndGrowPacketBufferIfNeeded()V
    .registers 3

    .line 454
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mPacketData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 455
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mPacketData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 456
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslSession:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mPacketData:Ljava/nio/ByteBuffer;

    .line 458
    :cond_1f
    return-void
.end method

.method private blacklist doUnwrap()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    .registers 5

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mPacketData:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mApplicationData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_a} :catch_2b

    .line 321
    .local v0, "result":Ljavax/net/ssl/SSLEngineResult;
    nop

    .line 323
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mHandshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 324
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v1, v2, :cond_1e

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->closeConnection()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    move-result-object v1

    return-object v1

    .line 328
    :cond_1e
    new-instance v1, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    iget-object v2, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mApplicationData:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/android/internal/net/eap/crypto/TlsSession;->getByteArrayFromBuffer(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;-><init>(Lcom/android/internal/net/eap/crypto/TlsSession;[BI)V

    return-object v1

    .line 318
    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catch_2b
    move-exception v0

    .line 319
    .local v0, "e":Ljavax/net/ssl/SSLException;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/crypto/TlsSession;->TAG:Ljava/lang/String;

    const-string v3, "Encountered an issue while unwrapping data. Connection will be closed."

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->closeConnection()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    move-result-object v1

    return-object v1
.end method

.method private blacklist doWrap()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    .registers 6

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mApplicationData:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mPacketData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_a} :catch_33

    .line 345
    .local v0, "result":Ljavax/net/ssl/SSLEngineResult;
    nop

    .line 347
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mHandshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 348
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v1, v2, :cond_1e

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->closeConnection()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    move-result-object v1

    return-object v1

    .line 352
    :cond_1e
    new-instance v1, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    iget-object v2, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mPacketData:Ljava/nio/ByteBuffer;

    .line 353
    invoke-static {v2}, Lcom/android/internal/net/eap/crypto/TlsSession;->getByteArrayFromBuffer(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 354
    iget-object v3, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mHandshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v4, :cond_2e

    .line 355
    const/4 v3, 0x0

    goto :goto_2f

    .line 356
    :cond_2e
    const/4 v3, 0x1

    :goto_2f
    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;-><init>(Lcom/android/internal/net/eap/crypto/TlsSession;[BI)V

    .line 352
    return-object v1

    .line 342
    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catch_33
    move-exception v0

    .line 343
    .local v0, "e":Ljavax/net/ssl/SSLException;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/crypto/TlsSession;->TAG:Ljava/lang/String;

    const-string v3, "Encountered an issue while wrapping data. Connection will be closed."

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->closeConnection()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getByteArrayFromBuffer(Ljava/nio/ByteBuffer;)[B
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 479
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private blacklist initTrustManagers(Ljava/security/cert/X509Certificate;)V
    .registers 9
    .param p1, "serverCaCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, "keyStore":Ljava/security/KeyStore;
    if-eqz p1, :cond_2d

    .line 160
    const-string v1, "PKCS12"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 161
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "alias":Ljava/lang/String;
    invoke-virtual {v0, v1, p1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 167
    .end local v1    # "alias":Ljava/lang/String;
    :cond_2d
    sget-object v1, Lcom/android/internal/net/eap/crypto/TlsSession;->TRUST_MANAGER_PROVIDER:Ljava/security/Provider;

    .line 168
    const-string v2, "PKIX"

    invoke-static {v2, v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 169
    .local v1, "tmFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 171
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 172
    iget-object v2, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_42
    if-ge v4, v3, :cond_4e

    aget-object v5, v2, v4

    .line 173
    .local v5, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v6, v5, Ljavax/net/ssl/X509TrustManager;

    if-eqz v6, :cond_4b

    .line 174
    return-void

    .line 172
    .end local v5    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 178
    :cond_4e
    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X509TrustManager is not supported by provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/eap/crypto/TlsSession;->TRUST_MANAGER_PROVIDER:Ljava/security/Provider;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public blacklist closeConnection()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    .registers 6

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_5} :catch_6

    .line 371
    goto :goto_10

    .line 369
    :catch_6
    move-exception v0

    .line 370
    .local v0, "e":Ljavax/net/ssl/SSLException;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/crypto/TlsSession;->TAG:Ljava/lang/String;

    const-string v3, "Error occurred when trying to close inbound."

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :goto_10
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 374
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mHandshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 376
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mHandshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2a

    .line 377
    new-instance v0, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;-><init>(Lcom/android/internal/net/eap/crypto/TlsSession;I)V

    return-object v0

    .line 380
    :cond_2a
    invoke-direct {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->clearAndGrowPacketBufferIfNeeded()V

    .line 381
    invoke-direct {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->clearAndGrowApplicationBufferIfNeeded()V

    .line 384
    :cond_30
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mHandshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_77

    .line 388
    const/4 v0, 0x2

    :try_start_37
    iget-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mApplicationData:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mPacketData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3, v4}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1
    :try_end_41
    .catch Ljavax/net/ssl/SSLException; {:try_start_37 .. :try_end_41} :catch_67

    .line 395
    .local v1, "result":Ljavax/net/ssl/SSLEngineResult;
    nop

    .line 397
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mHandshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 398
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v3, v4, :cond_58

    .line 399
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v3, v4, :cond_30

    .line 401
    :cond_58
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v3, Lcom/android/internal/net/eap/crypto/TlsSession;->TAG:Ljava/lang/String;

    const-string v4, "Experienced an overflow or underflow while trying to close the TLS connection."

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v2, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;-><init>(Lcom/android/internal/net/eap/crypto/TlsSession;I)V

    return-object v2

    .line 389
    .end local v1    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catch_67
    move-exception v1

    .line 390
    .local v1, "e":Ljavax/net/ssl/SSLException;
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v3, Lcom/android/internal/net/eap/crypto/TlsSession;->TAG:Ljava/lang/String;

    const-string v4, "Wrap operation failed whilst attempting to flush out data during a close."

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    new-instance v2, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;-><init>(Lcom/android/internal/net/eap/crypto/TlsSession;I)V

    return-object v2

    .line 409
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :cond_77
    new-instance v0, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    iget-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mPacketData:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/android/internal/net/eap/crypto/TlsSession;->getByteArrayFromBuffer(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;-><init>(Lcom/android/internal/net/eap/crypto/TlsSession;[BI)V

    return-object v0
.end method

.method public blacklist generateKeyingMaterial()Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;
    .registers 5

    .line 418
    iget-boolean v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mHandshakeComplete:Z

    if-nez v0, :cond_16

    .line 419
    new-instance v0, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v1, "Keying material can only be generated once the handshake is complete."

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    .line 423
    .local v0, "invalidRequestException":Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;
    new-instance v1, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;

    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v2, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;-><init>(Lcom/android/internal/net/eap/crypto/TlsSession;Lcom/android/internal/net/eap/EapResult$EapError;)V

    return-object v1

    .line 429
    .end local v0    # "invalidRequestException":Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslEngine:Ljavax/net/ssl/SSLEngine;

    const-string v1, "ttls keying material"

    .line 431
    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-static {v0, v1, v2, v3}, Landroid/net/ssl/SSLEngines;->exportKeyingMaterial(Ljavax/net/ssl/SSLEngine;Ljava/lang/String;[BI)[B

    move-result-object v0

    .line 430
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 437
    .local v0, "keyingMaterial":Ljava/nio/ByteBuffer;
    const/16 v1, 0x40

    new-array v2, v1, [B

    .line 438
    .local v2, "msk":[B
    new-array v1, v1, [B

    .line 439
    .local v1, "emsk":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 440
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 442
    new-instance v3, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;-><init>(Lcom/android/internal/net/eap/crypto/TlsSession;[B[B)V
    :try_end_36
    .catch Ljavax/net/ssl/SSLException; {:try_start_16 .. :try_end_36} :catch_37

    return-object v3

    .line 443
    .end local v0    # "keyingMaterial":Ljava/nio/ByteBuffer;
    .end local v1    # "emsk":[B
    .end local v2    # "msk":[B
    :catch_37
    move-exception v0

    .line 444
    .local v0, "e":Ljavax/net/ssl/SSLException;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/crypto/TlsSession;->TAG:Ljava/lang/String;

    const-string v3, "Failed to generate EAP-TTLS keying material"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 445
    new-instance v1, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;

    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v2, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;-><init>(Lcom/android/internal/net/eap/crypto/TlsSession;Lcom/android/internal/net/eap/EapResult$EapError;)V

    return-object v1
.end method

.method public blacklist processHandshakeData([B[B)Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    .registers 7
    .param p1, "handshakeData"    # [B
    .param p2, "avp"    # [B

    .line 231
    invoke-direct {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->clearAndGrowApplicationBufferIfNeeded()V

    .line 232
    invoke-direct {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->clearAndGrowPacketBufferIfNeeded()V

    .line 237
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mApplicationData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 238
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mPacketData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_10
    .catch Ljava/nio/BufferOverflowException; {:try_start_6 .. :try_end_10} :catch_62

    .line 248
    nop

    .line 249
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mApplicationData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 250
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mPacketData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 252
    new-instance v0, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;-><init>(Lcom/android/internal/net/eap/crypto/TlsSession;I)V

    .line 256
    .local v0, "tlsResult":Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    :goto_21
    sget-object v1, Lcom/android/internal/net/eap/crypto/TlsSession$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v2, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mHandshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_72

    .line 276
    goto :goto_61

    .line 265
    :pswitch_2f
    iget-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mPacketData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 266
    invoke-direct {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->doWrap()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mHandshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v1, v2, :cond_61

    .line 268
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mHandshakeComplete:Z

    .line 269
    iget-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mHandshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_61

    .line 261
    :pswitch_4a
    iget-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 262
    iget-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mHandshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 263
    goto :goto_21

    .line 258
    :pswitch_5c
    invoke-direct {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->doUnwrap()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    move-result-object v0

    .line 259
    goto :goto_21

    .line 280
    :cond_61
    :goto_61
    return-object v0

    .line 239
    .end local v0    # "tlsResult":Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    :catch_62
    move-exception v0

    .line 242
    .local v0, "e":Ljava/nio/BufferOverflowException;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/crypto/TlsSession;->TAG:Ljava/lang/String;

    const-string v3, "Buffer overflow while attempting to process handshake message. Attempting to close connection."

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->closeConnection()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_4a
        :pswitch_2f
    .end packed-switch
.end method

.method public blacklist processIncomingData([B)Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    .registers 3
    .param p1, "data"    # [B

    .line 290
    invoke-direct {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->clearAndGrowApplicationBufferIfNeeded()V

    .line 291
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mPacketData:Ljava/nio/ByteBuffer;

    .line 292
    invoke-direct {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->doUnwrap()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist processOutgoingData([B)Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    .registers 3
    .param p1, "data"    # [B

    .line 302
    invoke-direct {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->clearAndGrowPacketBufferIfNeeded()V

    .line 303
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mApplicationData:Ljava/nio/ByteBuffer;

    .line 304
    invoke-direct {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->doWrap()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist startHandshake()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    .registers 5

    .line 191
    invoke-direct {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->clearAndGrowApplicationBufferIfNeeded()V

    .line 192
    invoke-direct {p0}, Lcom/android/internal/net/eap/crypto/TlsSession;->clearAndGrowPacketBufferIfNeeded()V

    .line 198
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mSslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mApplicationData:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mPacketData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_10} :catch_24

    .line 202
    .local v0, "result":Ljavax/net/ssl/SSLEngineResult;
    nop

    .line 203
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mHandshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 205
    new-instance v1, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    iget-object v2, p0, Lcom/android/internal/net/eap/crypto/TlsSession;->mPacketData:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/android/internal/net/eap/crypto/TlsSession;->getByteArrayFromBuffer(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;-><init>(Lcom/android/internal/net/eap/crypto/TlsSession;[BI)V

    return-object v1

    .line 199
    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catch_24
    move-exception v0

    .line 200
    .local v0, "e":Ljavax/net/ssl/SSLException;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/crypto/TlsSession;->TAG:Ljava/lang/String;

    const-string v3, "Failed to initiate handshake"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    new-instance v1, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;-><init>(Lcom/android/internal/net/eap/crypto/TlsSession;I)V

    return-object v1
.end method
