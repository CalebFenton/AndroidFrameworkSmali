.class Lcom/android/org/conscrypt/Java7ExtendedSSLSession;
.super Ljavax/net/ssl/ExtendedSSLSession;
.source "Java7ExtendedSSLSession.java"

# interfaces
.implements Lcom/android/org/conscrypt/ConscryptSession;


# static fields
.field private static final blacklist LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

.field private static final blacklist PEER_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;


# instance fields
.field protected final blacklist delegate:Lcom/android/org/conscrypt/ExternalSession;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 32
    const-string v8, "SHA1withRSA"

    const-string v9, "SHA1withECDSA"

    const-string v0, "SHA512withRSA"

    const-string v1, "SHA512withECDSA"

    const-string v2, "SHA384withRSA"

    const-string v3, "SHA384withECDSA"

    const-string v4, "SHA256withRSA"

    const-string v5, "SHA256withECDSA"

    const-string v6, "SHA224withRSA"

    const-string v7, "SHA224withECDSA"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    .line 37
    const-string v0, "SHA1withRSA"

    const-string v1, "SHA1withECDSA"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->PEER_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/ExternalSession;)V
    .registers 2
    .param p1, "delegate"    # Lcom/android/org/conscrypt/ExternalSession;

    .line 41
    invoke-direct {p0}, Ljavax/net/ssl/ExtendedSSLSession;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    .line 43
    return-void
.end method


# virtual methods
.method public final whitelist test-api getApplicationBufferSize()I
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getApplicationBufferSize()I

    move-result v0

    return v0
.end method

.method public blacklist getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getCipherSuite()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getCreationTime()J
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getId()[B
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getLastAccessedTime()J
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getLastAccessedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
    .registers 2

    .line 48
    sget-object v0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getPacketBufferSize()I
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getPacketBufferSize()I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getPeerHost()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getPeerPort()I
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getPeerPrincipal()Ljava/security/Principal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getPeerSignedCertificateTimestamp()[B
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
    .registers 2

    .line 54
    sget-object v0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->PEER_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getProtocol()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getRequestedServerName()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getRequestedServerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getStatusResponses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ExternalSession;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getValueNames()[Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getValueNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api invalidate()V
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->invalidate()V

    .line 98
    return-void
.end method

.method public final whitelist test-api isValid()Z
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->isValid()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/org/conscrypt/ExternalSession;->putValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public final whitelist test-api removeValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0, p0, p1}, Lcom/android/org/conscrypt/ExternalSession;->removeValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    .line 118
    return-void
.end method
