.class public Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;
.super Ljavax/net/ssl/ExtendedSSLSession;
.source "OpenSSLExtendedSessionImpl.java"


# instance fields
.field private final delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLSessionImpl;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljavax/net/ssl/ExtendedSSLSession;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@5
    .line 36
    return-void
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getApplicationBufferSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getCreationTime()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getDelegate()Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .locals 1

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    return-object v0
.end method

.method public getId()[B
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getId()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 2

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getLastAccessedTime()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getLocalCertificates()[Ljava/security/cert/Certificate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getLocalPrincipal()Ljava/security/Principal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 47
    const/16 v0, 0xa

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 48
    const-string/jumbo v1, "SHA512withRSA"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 49
    const-string/jumbo v1, "SHA512withECDSA"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 50
    const-string/jumbo v1, "SHA384withRSA"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 51
    const-string/jumbo v1, "SHA384withECDSA"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 52
    const-string/jumbo v1, "SHA256withRSA"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 53
    const-string/jumbo v1, "SHA256withECDSA"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 54
    const-string/jumbo v1, "SHA224withRSA"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 55
    const-string/jumbo v1, "SHA224withECDSA"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 56
    const-string/jumbo v1, "SHA1withRSA"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 57
    const-string/jumbo v1, "SHA1withECDSA"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 47
    return-object v0
.end method

.method public getPacketBufferSize()I
    .locals 1

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getPacketBufferSize()I

    #@5
    move-result v0

    #@6
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
    .line 140
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    #@5
    move-result-object v0

    #@6
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
    .line 130
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getPeerHost()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getPeerPort()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getPeerPrincipal()Ljava/security/Principal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 63
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 64
    const-string/jumbo v1, "SHA1withRSA"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 65
    const-string/jumbo v1, "SHA1withECDSA"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 63
    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getProtocol()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRequestedServerNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 70
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@3
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getRequestedServerName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 71
    .local v0, "requestedServerName":Ljava/lang/String;
    if-nez v0, :cond_0

    #@9
    .line 72
    return-object v2

    #@a
    .line 75
    :cond_0
    new-instance v1, Ljavax/net/ssl/SNIHostName;

    #@c
    invoke-direct {v1, v0}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    #@f
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getValueNames()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public invalidate()V
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->invalidate()V

    #@5
    .line 99
    return-void
.end method

.method public isValid()Z
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->isValid()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    .line 109
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->removeValue(Ljava/lang/String;)V

    #@5
    .line 119
    return-void
.end method
