.class final Lsun/security/ssl/X509TrustManagerImpl;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "X509TrustManagerImpl.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private volatile clientValidator:Lsun/security/validator/Validator;

.field private final pkixParams:Ljava/security/cert/PKIXBuilderParameters;

.field private volatile serverValidator:Lsun/security/validator/Validator;

.field private final trustedCerts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final validatorType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 71
    const-string/jumbo v0, "ssl"

    #@3
    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/ssl/X509TrustManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@9
    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 1
    .param p1, "validatorType"    # Ljava/lang/String;
    .param p2, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 73
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    #@4
    .line 75
    iput-object p1, p0, Lsun/security/ssl/X509TrustManagerImpl;->validatorType:Ljava/lang/String;

    #@6
    .line 76
    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->pkixParams:Ljava/security/cert/PKIXBuilderParameters;

    #@8
    .line 77
    if-nez p2, :cond_0

    #@a
    .line 78
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    #@10
    .line 82
    :goto_0
    invoke-direct {p0}, Lsun/security/ssl/X509TrustManagerImpl;->showTrustedCerts()V

    #@13
    .line 74
    return-void

    #@14
    .line 80
    :cond_0
    invoke-static {p2}, Lsun/security/validator/KeyStores;->getTrustedCerts(Ljava/security/KeyStore;)Ljava/util/Set;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    #@1a
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 2
    .param p1, "validatorType"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/cert/PKIXBuilderParameters;

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    #@3
    .line 86
    iput-object p1, p0, Lsun/security/ssl/X509TrustManagerImpl;->validatorType:Ljava/lang/String;

    #@5
    .line 87
    iput-object p2, p0, Lsun/security/ssl/X509TrustManagerImpl;->pkixParams:Ljava/security/cert/PKIXBuilderParameters;

    #@7
    .line 92
    const-string/jumbo v1, "tls server"

    #@a
    invoke-direct {p0, v1}, Lsun/security/ssl/X509TrustManagerImpl;->getValidator(Ljava/lang/String;)Lsun/security/validator/Validator;

    #@d
    move-result-object v0

    #@e
    .line 93
    .local v0, "v":Lsun/security/validator/Validator;
    invoke-virtual {v0}, Lsun/security/validator/Validator;->getTrustedCertificates()Ljava/util/Collection;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    #@14
    .line 94
    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->serverValidator:Lsun/security/validator/Validator;

    #@16
    .line 95
    invoke-direct {p0}, Lsun/security/ssl/X509TrustManagerImpl;->showTrustedCerts()V

    #@19
    .line 85
    return-void
.end method

.method static checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 339
    if-eqz p2, :cond_1

    #@3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 341
    if-eqz p0, :cond_0

    #@b
    const-string/jumbo v0, "["

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 342
    const-string/jumbo v0, "]"

    #@17
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1a
    move-result v0

    #@1b
    .line 341
    if-eqz v0, :cond_0

    #@1d
    .line 343
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@20
    move-result v0

    #@21
    add-int/lit8 v0, v0, -0x1

    #@23
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object p0

    #@27
    .line 346
    :cond_0
    const-string/jumbo v0, "HTTPS"

    #@2a
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_2

    #@30
    .line 347
    invoke-static {v1}, Lsun/security/util/HostnameChecker;->getInstance(B)Lsun/security/util/HostnameChecker;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0, p0, p1}, Lsun/security/util/HostnameChecker;->match(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    #@37
    .line 338
    :cond_1
    :goto_0
    return-void

    #@38
    .line 349
    :cond_2
    const-string/jumbo v0, "LDAP"

    #@3b
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3e
    move-result v0

    #@3f
    if-nez v0, :cond_3

    #@41
    .line 350
    const-string/jumbo v0, "LDAPS"

    #@44
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@47
    move-result v0

    #@48
    .line 349
    if-eqz v0, :cond_4

    #@4a
    .line 351
    :cond_3
    const/4 v0, 0x2

    #@4b
    invoke-static {v0}, Lsun/security/util/HostnameChecker;->getInstance(B)Lsun/security/util/HostnameChecker;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0, p0, p1}, Lsun/security/util/HostnameChecker;->match(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    #@52
    goto :goto_0

    #@53
    .line 354
    :cond_4
    new-instance v0, Ljava/security/cert/CertificateException;

    #@55
    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v2, "Unknown identification algorithm: "

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    .line 354
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v0
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V
    .locals 13
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .param p4, "isClient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    move/from16 v0, p4

    #@2
    invoke-direct {p0, p1, p2, v0}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrustedInit([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)Lsun/security/validator/Validator;

    #@5
    move-result-object v10

    #@6
    .line 188
    .local v10, "v":Lsun/security/validator/Validator;
    const/4 v1, 0x0

    #@7
    .line 189
    .local v1, "constraints":Ljava/security/AlgorithmConstraints;
    if-eqz p3, :cond_2

    #@9
    invoke-virtual/range {p3 .. p3}, Ljava/net/Socket;->isConnected()Z

    #@c
    move-result v11

    #@d
    if-eqz v11, :cond_2

    #@f
    .line 190
    move-object/from16 v0, p3

    #@11
    instance-of v11, v0, Ljavax/net/ssl/SSLSocket;

    #@13
    .line 189
    if-eqz v11, :cond_2

    #@15
    move-object/from16 v8, p3

    #@17
    .line 192
    nop

    #@18
    nop

    #@19
    .line 193
    .local v8, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v8}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    #@1c
    move-result-object v7

    #@1d
    .line 194
    .local v7, "session":Ljavax/net/ssl/SSLSession;
    if-nez v7, :cond_0

    #@1f
    .line 195
    new-instance v11, Ljava/security/cert/CertificateException;

    #@21
    const-string/jumbo v12, "No handshake session"

    #@24
    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v11

    #@28
    .line 199
    :cond_0
    invoke-virtual {v8}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@2b
    move-result-object v11

    #@2c
    invoke-virtual {v11}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    .line 201
    .local v4, "identityAlg":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@32
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@35
    move-result v11

    #@36
    if-eqz v11, :cond_1

    #@38
    .line 202
    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .line 203
    .local v3, "hostname":Ljava/lang/String;
    const/4 v11, 0x0

    #@3d
    aget-object v11, p1, v11

    #@3f
    invoke-static {v3, v11, v4}, Lsun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    #@42
    .line 208
    .end local v3    # "hostname":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    #@45
    move-result-object v11

    #@46
    invoke-static {v11}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    #@49
    move-result-object v6

    #@4a
    .line 209
    .local v6, "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    iget v11, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    #@4c
    sget-object v12, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@4e
    iget v12, v12, Lsun/security/ssl/ProtocolVersion;->v:I

    #@50
    if-lt v11, v12, :cond_5

    #@52
    .line 210
    instance-of v11, v7, Ljavax/net/ssl/ExtendedSSLSession;

    #@54
    if-eqz v11, :cond_4

    #@56
    move-object v2, v7

    #@57
    .line 212
    nop

    #@58
    nop

    #@59
    .line 214
    .local v2, "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    invoke-virtual {v2}, Ljavax/net/ssl/ExtendedSSLSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    .line 216
    .local v5, "localSupportedSignAlgs":[Ljava/lang/String;
    new-instance v1, Lsun/security/ssl/SSLAlgorithmConstraints;

    #@5f
    .line 217
    .end local v1    # "constraints":Ljava/security/AlgorithmConstraints;
    const/4 v11, 0x0

    #@60
    .line 216
    invoke-direct {v1, v8, v5, v11}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;Z)V

    #@63
    .line 227
    .end local v2    # "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    .end local v4    # "identityAlg":Ljava/lang/String;
    .end local v5    # "localSupportedSignAlgs":[Ljava/lang/String;
    .end local v6    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .end local v7    # "session":Ljavax/net/ssl/SSLSession;
    .end local v8    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_2
    :goto_0
    const/4 v9, 0x0

    #@64
    .line 228
    .local v9, "trustedChain":[Ljava/security/cert/X509Certificate;
    if-eqz p4, :cond_6

    #@66
    .line 229
    const/4 v11, 0x0

    #@67
    invoke-static {v10, p1, v1, v11}, Lsun/security/ssl/X509TrustManagerImpl;->validate(Lsun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    #@6a
    move-result-object v9

    #@6b
    .line 233
    .local v9, "trustedChain":[Ljava/security/cert/X509Certificate;
    :goto_1
    sget-object v11, Lsun/security/ssl/X509TrustManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@6d
    if-eqz v11, :cond_3

    #@6f
    const-string/jumbo v11, "trustmanager"

    #@72
    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@75
    move-result v11

    #@76
    if-eqz v11, :cond_3

    #@78
    .line 234
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7a
    const-string/jumbo v12, "Found trusted certificate:"

    #@7d
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@80
    .line 235
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@82
    array-length v12, v9

    #@83
    add-int/lit8 v12, v12, -0x1

    #@85
    aget-object v12, v9, v12

    #@87
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@8a
    .line 185
    :cond_3
    return-void

    #@8b
    .line 220
    .end local v9    # "trustedChain":[Ljava/security/cert/X509Certificate;
    .restart local v1    # "constraints":Ljava/security/AlgorithmConstraints;
    .restart local v4    # "identityAlg":Ljava/lang/String;
    .restart local v6    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .restart local v7    # "session":Ljavax/net/ssl/SSLSession;
    .restart local v8    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_4
    new-instance v1, Lsun/security/ssl/SSLAlgorithmConstraints;

    #@8d
    .end local v1    # "constraints":Ljava/security/AlgorithmConstraints;
    const/4 v11, 0x0

    #@8e
    invoke-direct {v1, v8, v11}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    #@91
    .line 219
    .local v1, "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0

    #@92
    .line 223
    .local v1, "constraints":Ljava/security/AlgorithmConstraints;
    :cond_5
    new-instance v1, Lsun/security/ssl/SSLAlgorithmConstraints;

    #@94
    .end local v1    # "constraints":Ljava/security/AlgorithmConstraints;
    const/4 v11, 0x0

    #@95
    invoke-direct {v1, v8, v11}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    #@98
    .local v1, "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0

    #@99
    .line 231
    .end local v1    # "constraints":Ljava/security/AlgorithmConstraints;
    .end local v4    # "identityAlg":Ljava/lang/String;
    .end local v6    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .end local v7    # "session":Ljavax/net/ssl/SSLSession;
    .end local v8    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .local v9, "trustedChain":[Ljava/security/cert/X509Certificate;
    :cond_6
    invoke-static {v10, p1, v1, p2}, Lsun/security/ssl/X509TrustManagerImpl;->validate(Lsun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    #@9c
    move-result-object v9

    #@9d
    .local v9, "trustedChain":[Ljava/security/cert/X509Certificate;
    goto :goto_1
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V
    .locals 11
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p4, "isClient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 241
    invoke-direct {p0, p1, p2, p4}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrustedInit([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)Lsun/security/validator/Validator;

    #@3
    move-result-object v8

    #@4
    .line 243
    .local v8, "v":Lsun/security/validator/Validator;
    const/4 v0, 0x0

    #@5
    .line 244
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    if-eqz p3, :cond_2

    #@7
    .line 245
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    #@a
    move-result-object v6

    #@b
    .line 246
    .local v6, "session":Ljavax/net/ssl/SSLSession;
    if-nez v6, :cond_0

    #@d
    .line 247
    new-instance v9, Ljava/security/cert/CertificateException;

    #@f
    const-string/jumbo v10, "No handshake session"

    #@12
    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v9

    #@16
    .line 251
    :cond_0
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@19
    move-result-object v9

    #@1a
    invoke-virtual {v9}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 253
    .local v3, "identityAlg":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@20
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@23
    move-result v9

    #@24
    if-eqz v9, :cond_1

    #@26
    .line 254
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 255
    .local v2, "hostname":Ljava/lang/String;
    const/4 v9, 0x0

    #@2b
    aget-object v9, p1, v9

    #@2d
    invoke-static {v2, v9, v3}, Lsun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    #@30
    .line 260
    .end local v2    # "hostname":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    #@33
    move-result-object v9

    #@34
    invoke-static {v9}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    #@37
    move-result-object v5

    #@38
    .line 261
    .local v5, "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    iget v9, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@3a
    sget-object v10, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@3c
    iget v10, v10, Lsun/security/ssl/ProtocolVersion;->v:I

    #@3e
    if-lt v9, v10, :cond_5

    #@40
    .line 262
    instance-of v9, v6, Ljavax/net/ssl/ExtendedSSLSession;

    #@42
    if-eqz v9, :cond_4

    #@44
    move-object v1, v6

    #@45
    .line 264
    nop

    #@46
    nop

    #@47
    .line 266
    .local v1, "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    invoke-virtual {v1}, Ljavax/net/ssl/ExtendedSSLSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    .line 268
    .local v4, "localSupportedSignAlgs":[Ljava/lang/String;
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    #@4d
    .line 269
    .end local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    const/4 v9, 0x0

    #@4e
    .line 268
    invoke-direct {v0, p3, v4, v9}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;Z)V

    #@51
    .line 279
    .end local v1    # "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    .end local v3    # "identityAlg":Ljava/lang/String;
    .end local v4    # "localSupportedSignAlgs":[Ljava/lang/String;
    .end local v5    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .end local v6    # "session":Ljavax/net/ssl/SSLSession;
    :cond_2
    :goto_0
    const/4 v7, 0x0

    #@52
    .line 280
    .local v7, "trustedChain":[Ljava/security/cert/X509Certificate;
    if-eqz p4, :cond_6

    #@54
    .line 281
    const/4 v9, 0x0

    #@55
    invoke-static {v8, p1, v0, v9}, Lsun/security/ssl/X509TrustManagerImpl;->validate(Lsun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    #@58
    move-result-object v7

    #@59
    .line 285
    .local v7, "trustedChain":[Ljava/security/cert/X509Certificate;
    :goto_1
    sget-object v9, Lsun/security/ssl/X509TrustManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@5b
    if-eqz v9, :cond_3

    #@5d
    const-string/jumbo v9, "trustmanager"

    #@60
    invoke-static {v9}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@63
    move-result v9

    #@64
    if-eqz v9, :cond_3

    #@66
    .line 286
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@68
    const-string/jumbo v10, "Found trusted certificate:"

    #@6b
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6e
    .line 287
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@70
    array-length v10, v7

    #@71
    add-int/lit8 v10, v10, -0x1

    #@73
    aget-object v10, v7, v10

    #@75
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@78
    .line 240
    :cond_3
    return-void

    #@79
    .line 272
    .end local v7    # "trustedChain":[Ljava/security/cert/X509Certificate;
    .restart local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    .restart local v3    # "identityAlg":Ljava/lang/String;
    .restart local v5    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .restart local v6    # "session":Ljavax/net/ssl/SSLSession;
    :cond_4
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    #@7b
    .end local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    const/4 v9, 0x0

    #@7c
    invoke-direct {v0, p3, v9}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    #@7f
    .line 271
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0

    #@80
    .line 275
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    :cond_5
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    #@82
    .end local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    const/4 v9, 0x0

    #@83
    invoke-direct {v0, p3, v9}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    #@86
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0

    #@87
    .line 283
    .end local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    .end local v3    # "identityAlg":Ljava/lang/String;
    .end local v5    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .end local v6    # "session":Ljavax/net/ssl/SSLSession;
    .local v7, "trustedChain":[Ljava/security/cert/X509Certificate;
    :cond_6
    invoke-static {v8, p1, v0, p2}, Lsun/security/ssl/X509TrustManagerImpl;->validate(Lsun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    #@8a
    move-result-object v7

    #@8b
    .local v7, "trustedChain":[Ljava/security/cert/X509Certificate;
    goto :goto_1
.end method

.method private checkTrustedInit([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)Lsun/security/validator/Validator;
    .locals 3
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "isClient"    # Z

    #@0
    .prologue
    .line 143
    if-eqz p1, :cond_0

    #@2
    array-length v1, p1

    #@3
    if-nez v1, :cond_1

    #@5
    .line 144
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    .line 145
    const-string/jumbo v2, "null or zero-length certificate chain"

    #@a
    .line 144
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 148
    :cond_1
    if-eqz p2, :cond_2

    #@10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_3

    #@16
    .line 149
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@18
    .line 150
    const-string/jumbo v2, "null or zero-length authentication type"

    #@1b
    .line 149
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 153
    :cond_3
    const/4 v0, 0x0

    #@20
    .line 154
    .local v0, "v":Lsun/security/validator/Validator;
    if-eqz p3, :cond_6

    #@22
    .line 155
    iget-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->clientValidator:Lsun/security/validator/Validator;

    #@24
    .line 156
    .local v0, "v":Lsun/security/validator/Validator;
    if-nez v0, :cond_5

    #@26
    .line 157
    monitor-enter p0

    #@27
    .line 158
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->clientValidator:Lsun/security/validator/Validator;

    #@29
    .line 159
    if-nez v0, :cond_4

    #@2b
    .line 160
    const-string/jumbo v1, "tls client"

    #@2e
    invoke-direct {p0, v1}, Lsun/security/ssl/X509TrustManagerImpl;->getValidator(Ljava/lang/String;)Lsun/security/validator/Validator;

    #@31
    move-result-object v0

    #@32
    .line 161
    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->clientValidator:Lsun/security/validator/Validator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    :cond_4
    :goto_0
    monitor-exit p0

    #@35
    .line 180
    :cond_5
    return-object v0

    #@36
    .line 157
    :catchall_0
    move-exception v1

    #@37
    monitor-exit p0

    #@38
    throw v1

    #@39
    .line 168
    .local v0, "v":Lsun/security/validator/Validator;
    :cond_6
    iget-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->serverValidator:Lsun/security/validator/Validator;

    #@3b
    .line 169
    .local v0, "v":Lsun/security/validator/Validator;
    if-nez v0, :cond_5

    #@3d
    .line 170
    monitor-enter p0

    #@3e
    .line 171
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->serverValidator:Lsun/security/validator/Validator;

    #@40
    .line 172
    if-nez v0, :cond_4

    #@42
    .line 173
    const-string/jumbo v1, "tls server"

    #@45
    invoke-direct {p0, v1}, Lsun/security/ssl/X509TrustManagerImpl;->getValidator(Ljava/lang/String;)Lsun/security/validator/Validator;

    #@48
    move-result-object v0

    #@49
    .line 174
    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->serverValidator:Lsun/security/validator/Validator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4b
    goto :goto_0

    #@4c
    .line 170
    :catchall_1
    move-exception v1

    #@4d
    monitor-exit p0

    #@4e
    throw v1
.end method

.method private getValidator(Ljava/lang/String;)Lsun/security/validator/Validator;
    .locals 3
    .param p1, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 313
    iget-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->pkixParams:Ljava/security/cert/PKIXBuilderParameters;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 314
    iget-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->validatorType:Ljava/lang/String;

    #@6
    iget-object v2, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    #@8
    invoke-static {v1, p1, v2}, Lsun/security/validator/Validator;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lsun/security/validator/Validator;

    #@b
    move-result-object v0

    #@c
    .line 318
    .local v0, "v":Lsun/security/validator/Validator;
    :goto_0
    return-object v0

    #@d
    .line 316
    .end local v0    # "v":Lsun/security/validator/Validator;
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->validatorType:Ljava/lang/String;

    #@f
    iget-object v2, p0, Lsun/security/ssl/X509TrustManagerImpl;->pkixParams:Ljava/security/cert/PKIXBuilderParameters;

    #@11
    invoke-static {v1, p1, v2}, Lsun/security/validator/Validator;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)Lsun/security/validator/Validator;

    #@14
    move-result-object v0

    #@15
    .restart local v0    # "v":Lsun/security/validator/Validator;
    goto :goto_0
.end method

.method private showTrustedCerts()V
    .locals 6

    #@0
    .prologue
    .line 292
    sget-object v2, Lsun/security/ssl/X509TrustManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v2, "trustmanager"

    #@7
    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 293
    iget-object v2, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    #@f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "cert$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@1f
    .line 294
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@21
    const-string/jumbo v3, "adding as trusted cert:"

    #@24
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@27
    .line 295
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@29
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v4, "  Subject: "

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    .line 296
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@38
    move-result-object v4

    #@39
    .line 295
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@44
    .line 297
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@46
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v4, "  Issuer:  "

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    .line 298
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@55
    move-result-object v4

    #@56
    .line 297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@61
    .line 299
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@63
    new-instance v3, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v4, "  Algorithm: "

    #@6b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    .line 300
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@72
    move-result-object v4

    #@73
    invoke-interface {v4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v3

    #@7b
    .line 301
    const-string/jumbo v4, "; Serial number: 0x"

    #@7e
    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v3

    #@82
    .line 302
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@85
    move-result-object v4

    #@86
    const/16 v5, 0x10

    #@88
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@8b
    move-result-object v4

    #@8c
    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v3

    #@90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v3

    #@94
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@97
    .line 303
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@99
    new-instance v3, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v4, "  Valid from "

    #@a1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v3

    #@a5
    .line 304
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    #@a8
    move-result-object v4

    #@a9
    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v3

    #@ad
    .line 304
    const-string/jumbo v4, " until "

    #@b0
    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v3

    #@b4
    .line 305
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    #@b7
    move-result-object v4

    #@b8
    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v3

    #@bc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v3

    #@c0
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c3
    .line 306
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c5
    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    #@c8
    goto/16 :goto_0

    #@ca
    .line 291
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "cert$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private static validate(Lsun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "v"    # Lsun/security/validator/Validator;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p3, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 324
    invoke-static {}, Lsun/security/ssl/JsseJce;->beginFipsProvider()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 326
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    #@5
    :try_start_0
    invoke-virtual {p0, p1, v1, p2, p3}, Lsun/security/validator/Validator;->validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v1

    #@9
    .line 328
    invoke-static {v0}, Lsun/security/ssl/JsseJce;->endFipsProvider(Ljava/lang/Object;)V

    #@c
    .line 326
    return-object v1

    #@d
    .line 327
    :catchall_0
    move-exception v1

    #@e
    .line 328
    invoke-static {v0}, Lsun/security/ssl/JsseJce;->endFipsProvider(Ljava/lang/Object;)V

    #@11
    .line 327
    throw v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    const/4 v0, 0x0

    #@1
    nop

    #@2
    nop

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p1, p2, v0, v1}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    #@7
    .line 100
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    #@4
    .line 119
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V

    #@4
    .line 131
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    const/4 v0, 0x0

    #@1
    nop

    #@2
    nop

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p1, p2, v0, v1}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    #@7
    .line 106
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    #@4
    .line 125
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V

    #@4
    .line 137
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    #@0
    .prologue
    .line 112
    iget-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    #@2
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    #@5
    move-result v1

    #@6
    new-array v0, v1, [Ljava/security/cert/X509Certificate;

    #@8
    .line 113
    .local v0, "certsArray":[Ljava/security/cert/X509Certificate;
    iget-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    #@a
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    .line 114
    return-object v0
.end method
