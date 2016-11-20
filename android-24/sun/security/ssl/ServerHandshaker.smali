.class final Lsun/security/ssl/ServerHandshaker;
.super Lsun/security/ssl/Handshaker;
.source "ServerHandshaker.java"


# static fields
.field private static final synthetic -sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I


# instance fields
.field private certs:[Ljava/security/cert/X509Certificate;

.field private clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

.field private dh:Lsun/security/ssl/DHCrypt;

.field private doClientAuth:B

.field private ecdh:Lsun/security/ssl/ECDHCrypt;

.field private kerberosKeys:[Ljavax/crypto/SecretKey;

.field private needClientVerify:Z

.field preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

.field private privateKey:Ljava/security/PrivateKey;

.field private supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

.field private tempPrivateKey:Ljava/security/PrivateKey;

.field private tempPublicKey:Ljava/security/PublicKey;


# direct methods
.method private static synthetic -getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lsun/security/ssl/ServerHandshaker;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lsun/security/ssl/ServerHandshaker;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lsun/security/ssl/CipherSuite$KeyExchange;->values()[Lsun/security/ssl/CipherSuite$KeyExchange;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@34
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@3d
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@46
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4f
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@59
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@63
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0xa

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    #@6b
    :goto_9
    :try_start_a
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@6d
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@70
    move-result v1

    #@71
    const/16 v2, 0xb

    #@73
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    #@75
    :goto_a
    :try_start_b
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@77
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@7a
    move-result v1

    #@7b
    const/16 v2, 0xc

    #@7d
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4

    #@7f
    :goto_b
    :try_start_c
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_NULL:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@81
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@84
    move-result v1

    #@85
    const/16 v2, 0xf

    #@87
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    #@89
    :goto_c
    :try_start_d
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@8b
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@8e
    move-result v1

    #@8f
    const/16 v2, 0xd

    #@91
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2

    #@93
    :goto_d
    :try_start_e
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@95
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@98
    move-result v1

    #@99
    const/16 v2, 0xe

    #@9b
    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1

    #@9d
    :goto_e
    :try_start_f
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_SCSV:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@9f
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@a2
    move-result v1

    #@a3
    const/16 v2, 0x10

    #@a5
    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_0

    #@a7
    :goto_f
    sput-object v0, Lsun/security/ssl/ServerHandshaker;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

    #@a9
    return-object v0

    #@aa
    :catch_0
    move-exception v1

    #@ab
    goto :goto_f

    #@ac
    :catch_1
    move-exception v1

    #@ad
    goto :goto_e

    #@ae
    :catch_2
    move-exception v1

    #@af
    goto :goto_d

    #@b0
    :catch_3
    move-exception v1

    #@b1
    goto :goto_c

    #@b2
    :catch_4
    move-exception v1

    #@b3
    goto :goto_b

    #@b4
    :catch_5
    move-exception v1

    #@b5
    goto :goto_a

    #@b6
    :catch_6
    move-exception v1

    #@b7
    goto :goto_9

    #@b8
    :catch_7
    move-exception v1

    #@b9
    goto :goto_8

    #@ba
    :catch_8
    move-exception v1

    #@bb
    goto :goto_7

    #@bc
    :catch_9
    move-exception v1

    #@bd
    goto :goto_6

    #@be
    :catch_a
    move-exception v1

    #@bf
    goto :goto_5

    #@c0
    :catch_b
    move-exception v1

    #@c1
    goto/16 :goto_4

    #@c3
    :catch_c
    move-exception v1

    #@c4
    goto/16 :goto_3

    #@c6
    :catch_d
    move-exception v1

    #@c7
    goto/16 :goto_2

    #@c9
    :catch_e
    move-exception v1

    #@ca
    goto/16 :goto_1

    #@cc
    :catch_f
    move-exception v1

    #@cd
    goto/16 :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;BLsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 11
    .param p1, "engine"    # Lsun/security/ssl/SSLEngineImpl;
    .param p2, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p3, "enabledProtocols"    # Lsun/security/ssl/ProtocolList;
    .param p4, "clientAuth"    # B
    .param p5, "activeProtocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p6, "isInitialHandshake"    # Z
    .param p7, "secureRenegotiation"    # Z
    .param p8, "clientVerifyData"    # [B
    .param p9, "serverVerifyData"    # [B

    #@0
    .prologue
    .line 123
    if-eqz p4, :cond_0

    #@2
    const/4 v4, 0x1

    #@3
    :goto_0
    const/4 v5, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move-object/from16 v6, p5

    #@a
    move/from16 v7, p6

    #@c
    move/from16 v8, p7

    #@e
    move-object/from16 v9, p8

    #@10
    move-object/from16 v10, p9

    #@12
    .line 122
    invoke-direct/range {v0 .. v10}, Lsun/security/ssl/Handshaker;-><init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    #@15
    .line 69
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Lsun/security/ssl/ServerHandshaker;->needClientVerify:Z

    #@18
    .line 126
    iput-byte p4, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    #@1a
    .line 120
    return-void

    #@1b
    .line 123
    :cond_0
    const/4 v4, 0x0

    #@1c
    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;BLsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 11
    .param p1, "socket"    # Lsun/security/ssl/SSLSocketImpl;
    .param p2, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p3, "enabledProtocols"    # Lsun/security/ssl/ProtocolList;
    .param p4, "clientAuth"    # B
    .param p5, "activeProtocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p6, "isInitialHandshake"    # Z
    .param p7, "secureRenegotiation"    # Z
    .param p8, "clientVerifyData"    # [B
    .param p9, "serverVerifyData"    # [B

    #@0
    .prologue
    .line 107
    if-eqz p4, :cond_0

    #@2
    const/4 v4, 0x1

    #@3
    :goto_0
    const/4 v5, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move-object/from16 v6, p5

    #@a
    move/from16 v7, p6

    #@c
    move/from16 v8, p7

    #@e
    move-object/from16 v9, p8

    #@10
    move-object/from16 v10, p9

    #@12
    .line 106
    invoke-direct/range {v0 .. v10}, Lsun/security/ssl/Handshaker;-><init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    #@15
    .line 69
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Lsun/security/ssl/ServerHandshaker;->needClientVerify:Z

    #@18
    .line 110
    iput-byte p4, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    #@1a
    .line 104
    return-void

    #@1b
    .line 107
    :cond_0
    const/4 v4, 0x0

    #@1c
    goto :goto_0
.end method

.method private chooseCipherSuite(Lsun/security/ssl/HandshakeMessage$ClientHello;)V
    .locals 4
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$ClientHello;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 878
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$ClientHello;->getCipherSuites()Lsun/security/ssl/CipherSuiteList;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "suite$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_2

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lsun/security/ssl/CipherSuite;

    #@18
    .line 879
    .local v0, "suite":Lsun/security/ssl/CipherSuite;
    invoke-virtual {p0, v0}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/CipherSuite;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 883
    iget-byte v2, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    #@20
    const/4 v3, 0x2

    #@21
    if-ne v2, v3, :cond_1

    #@23
    .line 884
    iget-object v2, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@25
    sget-object v3, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@27
    if-eq v2, v3, :cond_0

    #@29
    .line 885
    iget-object v2, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@2b
    sget-object v3, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@2d
    if-eq v2, v3, :cond_0

    #@2f
    .line 889
    :cond_1
    invoke-virtual {p0, v0}, Lsun/security/ssl/ServerHandshaker;->trySetCipherSuite(Lsun/security/ssl/CipherSuite;)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_0

    #@35
    .line 892
    return-void

    #@36
    .line 895
    .end local v0    # "suite":Lsun/security/ssl/CipherSuite;
    :cond_2
    const-string/jumbo v2, "no cipher suites in common"

    #@39
    .line 894
    const/16 v3, 0x28

    #@3b
    invoke-virtual {p0, v3, v2}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@3e
    .line 877
    return-void
.end method

.method private clientCertificate(Lsun/security/ssl/HandshakeMessage$CertificateMsg;)V
    .locals 10
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$CertificateMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1612
    sget-object v6, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@4
    if-eqz v6, :cond_0

    #@6
    const-string/jumbo v6, "handshake"

    #@9
    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_0

    #@f
    .line 1613
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@11
    invoke-virtual {p1, v6}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->print(Ljava/io/PrintStream;)V

    #@14
    .line 1616
    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    #@17
    move-result-object v4

    #@18
    .line 1618
    .local v4, "peerCerts":[Ljava/security/cert/X509Certificate;
    array-length v6, v4

    #@19
    if-nez v6, :cond_3

    #@1b
    .line 1623
    iget-byte v6, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    #@1d
    if-ne v6, v9, :cond_2

    #@1f
    .line 1626
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@21
    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    #@23
    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@25
    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    #@27
    if-lt v6, v7, :cond_1

    #@29
    .line 1627
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@2b
    invoke-virtual {v6, v8}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    #@2e
    .line 1629
    :cond_1
    return-void

    #@2f
    .line 1632
    :cond_2
    const-string/jumbo v6, "null cert chain"

    #@32
    .line 1631
    const/16 v7, 0x2a

    #@34
    invoke-virtual {p0, v7, v6}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@37
    .line 1637
    :cond_3
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@39
    invoke-virtual {v6}, Lsun/security/ssl/SSLContextImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    #@3c
    move-result-object v5

    #@3d
    .line 1641
    .local v5, "tm":Ljavax/net/ssl/X509TrustManager;
    const/4 v6, 0x0

    #@3e
    :try_start_0
    aget-object v6, v4, v6

    #@40
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@43
    move-result-object v2

    #@44
    .line 1642
    .local v2, "key":Ljava/security/PublicKey;
    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    .line 1644
    .local v3, "keyAlgorithm":Ljava/lang/String;
    const-string/jumbo v6, "RSA"

    #@4b
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v6

    #@4f
    if-eqz v6, :cond_4

    #@51
    .line 1645
    const-string/jumbo v0, "RSA"

    #@54
    .line 1655
    .local v0, "authType":Ljava/lang/String;
    :goto_0
    instance-of v6, v5, Ljavax/net/ssl/X509ExtendedTrustManager;

    #@56
    if-eqz v6, :cond_8

    #@58
    .line 1656
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@5a
    if-eqz v6, :cond_7

    #@5c
    .line 1657
    nop

    #@5d
    nop

    #@5e
    .line 1658
    .end local v5    # "tm":Ljavax/net/ssl/X509TrustManager;
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@61
    move-result-object v6

    #@62
    check-cast v6, [Ljava/security/cert/X509Certificate;

    #@64
    .line 1660
    iget-object v7, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@66
    .line 1657
    invoke-virtual {v5, v6, v0, v7}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@69
    .line 1678
    .end local v0    # "authType":Ljava/lang/String;
    .end local v2    # "key":Ljava/security/PublicKey;
    .end local v3    # "keyAlgorithm":Ljava/lang/String;
    :goto_1
    iput-boolean v9, p0, Lsun/security/ssl/ServerHandshaker;->needClientVerify:Z

    #@6b
    .line 1680
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@6d
    invoke-virtual {v6, v4}, Lsun/security/ssl/SSLSessionImpl;->setPeerCertificates([Ljava/security/cert/X509Certificate;)V

    #@70
    .line 1611
    return-void

    #@71
    .line 1646
    .restart local v2    # "key":Ljava/security/PublicKey;
    .restart local v3    # "keyAlgorithm":Ljava/lang/String;
    .restart local v5    # "tm":Ljavax/net/ssl/X509TrustManager;
    :cond_4
    :try_start_1
    const-string/jumbo v6, "DSA"

    #@74
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v6

    #@78
    if-eqz v6, :cond_5

    #@7a
    .line 1647
    const-string/jumbo v0, "DSA"

    #@7d
    .restart local v0    # "authType":Ljava/lang/String;
    goto :goto_0

    #@7e
    .line 1648
    .end local v0    # "authType":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "EC"

    #@81
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v6

    #@85
    if-eqz v6, :cond_6

    #@87
    .line 1649
    const-string/jumbo v0, "EC"

    #@8a
    .restart local v0    # "authType":Ljava/lang/String;
    goto :goto_0

    #@8b
    .line 1652
    .end local v0    # "authType":Ljava/lang/String;
    :cond_6
    const-string/jumbo v0, "UNKNOWN"

    #@8e
    .restart local v0    # "authType":Ljava/lang/String;
    goto :goto_0

    #@8f
    .line 1662
    :cond_7
    nop

    #@90
    nop

    #@91
    .line 1663
    .end local v5    # "tm":Ljavax/net/ssl/X509TrustManager;
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@94
    move-result-object v6

    #@95
    check-cast v6, [Ljava/security/cert/X509Certificate;

    #@97
    .line 1665
    iget-object v7, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@99
    .line 1662
    invoke-virtual {v5, v6, v0, v7}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    #@9c
    goto :goto_1

    #@9d
    .line 1673
    .end local v0    # "authType":Ljava/lang/String;
    .end local v2    # "key":Ljava/security/PublicKey;
    .end local v3    # "keyAlgorithm":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@9e
    .line 1675
    .local v1, "e":Ljava/security/cert/CertificateException;
    const/16 v6, 0x2e

    #@a0
    invoke-virtual {p0, v6, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/Throwable;)V

    #@a3
    goto :goto_1

    #@a4
    .line 1670
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "authType":Ljava/lang/String;
    .restart local v2    # "key":Ljava/security/PublicKey;
    .restart local v3    # "keyAlgorithm":Ljava/lang/String;
    .restart local v5    # "tm":Ljavax/net/ssl/X509TrustManager;
    :cond_8
    :try_start_2
    new-instance v6, Ljava/security/cert/CertificateException;

    #@a6
    .line 1671
    const-string/jumbo v7, "Improper X509TrustManager implementation"

    #@a9
    .line 1670
    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@ac
    throw v6
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method private clientCertificateVerify(Lsun/security/ssl/HandshakeMessage$CertificateVerify;)V
    .locals 10
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$CertificateVerify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x2a

    #@2
    const/4 v8, 0x0

    #@3
    .line 1392
    sget-object v5, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@5
    if-eqz v5, :cond_0

    #@7
    const-string/jumbo v5, "handshake"

    #@a
    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 1393
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@12
    invoke-virtual {p1, v5}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->print(Ljava/io/PrintStream;)V

    #@15
    .line 1396
    :cond_0
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@17
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@19
    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@1b
    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1d
    if-lt v5, v6, :cond_4

    #@1f
    .line 1398
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->getPreferableSignatureAlgorithm()Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@22
    move-result-object v3

    #@23
    .line 1399
    .local v3, "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    if-nez v3, :cond_1

    #@25
    .line 1400
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    #@27
    .line 1401
    const-string/jumbo v6, "Illegal CertificateVerify message"

    #@2a
    .line 1400
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v5

    #@2e
    .line 1405
    :cond_1
    invoke-static {v3}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashAlgorithmName(Lsun/security/ssl/SignatureAndHashAlgorithm;)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 1406
    .local v1, "hashAlg":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@34
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@37
    move-result v5

    #@38
    if-nez v5, :cond_3

    #@3a
    .line 1407
    :cond_2
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    #@3c
    .line 1408
    const-string/jumbo v6, "No supported hash algorithm"

    #@3f
    .line 1407
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@42
    throw v5

    #@43
    .line 1411
    :cond_3
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@45
    invoke-virtual {v5, v1}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    #@48
    .line 1416
    .end local v1    # "hashAlg":Ljava/lang/String;
    .end local v3    # "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_4
    :try_start_0
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@4a
    invoke-virtual {v5}, Lsun/security/ssl/SSLSessionImpl;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@4d
    move-result-object v5

    #@4e
    const/4 v6, 0x0

    #@4f
    aget-object v5, v5, v6

    #@51
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@54
    move-result-object v2

    #@55
    .line 1418
    .local v2, "publicKey":Ljava/security/PublicKey;
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@57
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@59
    .line 1419
    iget-object v7, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@5b
    invoke-virtual {v7}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    #@5e
    move-result-object v7

    #@5f
    .line 1418
    invoke-virtual {p1, v5, v6, v2, v7}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->verify(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Ljava/security/PublicKey;Ljavax/crypto/SecretKey;)Z

    #@62
    move-result v4

    #@63
    .line 1420
    .local v4, "valid":Z
    if-nez v4, :cond_5

    #@65
    .line 1422
    const-string/jumbo v5, "certificate verify message signature error"

    #@68
    .line 1421
    const/16 v6, 0x2a

    #@6a
    invoke-virtual {p0, v6, v5}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    .line 1430
    .end local v2    # "publicKey":Ljava/security/PublicKey;
    .end local v4    # "valid":Z
    :cond_5
    :goto_0
    iput-boolean v8, p0, Lsun/security/ssl/ServerHandshaker;->needClientVerify:Z

    #@6f
    .line 1390
    return-void

    #@70
    .line 1424
    :catch_0
    move-exception v0

    #@71
    .line 1426
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v5, "certificate verify format error"

    #@74
    .line 1425
    invoke-virtual {p0, v9, v5, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;Ljava/lang/Throwable;)V

    #@77
    goto :goto_0
.end method

.method private clientFinished(Lsun/security/ssl/HandshakeMessage$Finished;)V
    .locals 5
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$Finished;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x28

    #@2
    const/4 v3, 0x1

    #@3
    .line 1442
    sget-object v1, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@5
    if-eqz v1, :cond_0

    #@7
    const-string/jumbo v1, "handshake"

    #@a
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1443
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@12
    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage$Finished;->print(Ljava/io/PrintStream;)V

    #@15
    .line 1450
    :cond_0
    iget-byte v1, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    #@17
    const/4 v2, 0x2

    #@18
    if-ne v1, v2, :cond_1

    #@1a
    .line 1453
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@1c
    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getPeerPrincipal()Ljava/security/Principal;

    #@1f
    .line 1460
    :cond_1
    iget-boolean v1, p0, Lsun/security/ssl/ServerHandshaker;->needClientVerify:Z

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 1462
    const-string/jumbo v1, "client did not send certificate verify message"

    #@26
    .line 1461
    invoke-virtual {p0, v4, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@29
    .line 1469
    :cond_2
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@2b
    .line 1470
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@2d
    invoke-virtual {v2}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    #@30
    move-result-object v2

    #@31
    .line 1469
    invoke-virtual {p1, v1, v3, v2}, Lsun/security/ssl/HandshakeMessage$Finished;->verify(Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;)Z

    #@34
    move-result v0

    #@35
    .line 1472
    .local v0, "verified":Z
    if-nez v0, :cond_3

    #@37
    .line 1474
    const-string/jumbo v1, "client \'finished\' message doesn\'t verify"

    #@3a
    .line 1473
    invoke-virtual {p0, v4, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@3d
    .line 1481
    :cond_3
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@3f
    if-eqz v1, :cond_4

    #@41
    .line 1482
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$Finished;->getVerifyData()[B

    #@44
    move-result-object v1

    #@45
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    #@47
    .line 1490
    :cond_4
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@49
    if-nez v1, :cond_5

    #@4b
    .line 1491
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@4d
    invoke-virtual {v1}, Lsun/security/ssl/HandshakeInStream;->digestNow()V

    #@50
    .line 1492
    invoke-direct {p0, v3}, Lsun/security/ssl/ServerHandshaker;->sendChangeCipherAndFinish(Z)V

    #@53
    .line 1499
    :cond_5
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@58
    move-result-wide v2

    #@59
    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/SSLSessionImpl;->setLastAccessedTime(J)V

    #@5c
    .line 1500
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@5e
    if-nez v1, :cond_7

    #@60
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@62
    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_7

    #@68
    .line 1501
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@6a
    invoke-virtual {v1}, Lsun/security/ssl/SSLContextImpl;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    #@6d
    move-result-object v1

    #@6e
    check-cast v1, Lsun/security/ssl/SSLSessionContextImpl;

    #@70
    .line 1502
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@72
    .line 1501
    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSessionContextImpl;->put(Lsun/security/ssl/SSLSessionImpl;)V

    #@75
    .line 1503
    sget-object v1, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@77
    if-eqz v1, :cond_6

    #@79
    const-string/jumbo v1, "session"

    #@7c
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@7f
    move-result v1

    #@80
    if-eqz v1, :cond_6

    #@82
    .line 1504
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@84
    .line 1505
    new-instance v2, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v3, "%% Cached server session: "

    #@8c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v2

    #@96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v2

    #@9a
    .line 1504
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9d
    .line 1441
    :cond_6
    :goto_0
    return-void

    #@9e
    .line 1507
    :cond_7
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@a0
    if-nez v1, :cond_6

    #@a2
    .line 1508
    sget-object v1, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@a4
    if-eqz v1, :cond_6

    #@a6
    const-string/jumbo v1, "session"

    #@a9
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@ac
    move-result v1

    #@ad
    .line 1507
    if-eqz v1, :cond_6

    #@af
    .line 1509
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b1
    .line 1510
    new-instance v2, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v3, "%% Didn\'t cache non-resumable server session: "

    #@b9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v2

    #@bd
    .line 1511
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@bf
    .line 1510
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v2

    #@c3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v2

    #@c7
    .line 1509
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ca
    goto :goto_0
.end method

.method private clientHello(Lsun/security/ssl/HandshakeMessage$ClientHello;)V
    .locals 34
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$ClientHello;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@2
    if-eqz v3, :cond_0

    #@4
    const-string/jumbo v3, "handshake"

    #@7
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 278
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    move-object/from16 v0, p1

    #@11
    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage$ClientHello;->print(Ljava/io/PrintStream;)V

    #@14
    .line 282
    :cond_0
    const/16 v27, 0x0

    #@16
    .line 285
    .local v27, "renegotiationIndicated":Z
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/HandshakeMessage$ClientHello;->getCipherSuites()Lsun/security/ssl/CipherSuiteList;

    #@19
    move-result-object v11

    #@1a
    .line 286
    .local v11, "cipherSuites":Lsun/security/ssl/CipherSuiteList;
    sget-object v3, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    #@1c
    invoke-virtual {v11, v3}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 287
    const/16 v27, 0x1

    #@24
    .line 288
    move-object/from16 v0, p0

    #@26
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    #@28
    if-eqz v3, :cond_10

    #@2a
    .line 289
    const/4 v3, 0x1

    #@2b
    move-object/from16 v0, p0

    #@2d
    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@2f
    .line 304
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    #@31
    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@33
    sget-object v4, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    #@35
    invoke-virtual {v3, v4}, Lsun/security/ssl/HelloExtensions;->get(Lsun/security/ssl/ExtensionType;)Lsun/security/ssl/HelloExtension;

    #@38
    move-result-object v12

    #@39
    .line 303
    check-cast v12, Lsun/security/ssl/RenegotiationInfoExtension;

    #@3b
    .line 305
    .local v12, "clientHelloRI":Lsun/security/ssl/RenegotiationInfoExtension;
    if-eqz v12, :cond_14

    #@3d
    .line 306
    const/16 v27, 0x1

    #@3f
    .line 307
    move-object/from16 v0, p0

    #@41
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    #@43
    if-eqz v3, :cond_12

    #@45
    .line 309
    invoke-virtual {v12}, Lsun/security/ssl/RenegotiationInfoExtension;->isEmpty()Z

    #@48
    move-result v3

    #@49
    if-nez v3, :cond_2

    #@4b
    .line 312
    const-string/jumbo v3, "The renegotiation_info field is not empty"

    #@4e
    .line 311
    const/16 v4, 0x28

    #@50
    move-object/from16 v0, p0

    #@52
    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@55
    .line 315
    :cond_2
    const/4 v3, 0x1

    #@56
    move-object/from16 v0, p0

    #@58
    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@5a
    .line 343
    :cond_3
    :goto_1
    if-eqz v27, :cond_15

    #@5c
    move-object/from16 v0, p0

    #@5e
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@60
    if-eqz v3, :cond_15

    #@62
    .line 404
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    #@64
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@66
    invoke-virtual {v3}, Lsun/security/ssl/HandshakeInStream;->digestNow()V

    #@69
    .line 415
    new-instance v19, Lsun/security/ssl/HandshakeMessage$ServerHello;

    #@6b
    invoke-direct/range {v19 .. v19}, Lsun/security/ssl/HandshakeMessage$ServerHello;-><init>()V

    #@6e
    .line 417
    .local v19, "m1":Lsun/security/ssl/HandshakeMessage$ServerHello;
    move-object/from16 v0, p1

    #@70
    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@72
    move-object/from16 v0, p0

    #@74
    iput-object v3, v0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    #@76
    .line 421
    move-object/from16 v0, p0

    #@78
    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    #@7a
    move-object/from16 v0, p0

    #@7c
    invoke-virtual {v0, v3}, Lsun/security/ssl/Handshaker;->selectProtocolVersion(Lsun/security/ssl/ProtocolVersion;)Lsun/security/ssl/ProtocolVersion;

    #@7f
    move-result-object v28

    #@80
    .line 422
    .local v28, "selectedVersion":Lsun/security/ssl/ProtocolVersion;
    if-eqz v28, :cond_5

    #@82
    .line 423
    move-object/from16 v0, v28

    #@84
    iget v3, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@86
    sget-object v4, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    #@88
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@8a
    if-ne v3, v4, :cond_6

    #@8c
    .line 425
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v4, "Client requested protocol "

    #@94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    move-object/from16 v0, p0

    #@9a
    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    #@9c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v3

    #@a0
    .line 426
    const-string/jumbo v4, " not enabled or not supported"

    #@a3
    .line 425
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v3

    #@a7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v3

    #@ab
    .line 424
    const/16 v4, 0x28

    #@ad
    move-object/from16 v0, p0

    #@af
    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@b2
    .line 429
    :cond_6
    move-object/from16 v0, p0

    #@b4
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@b6
    move-object/from16 v0, v28

    #@b8
    invoke-virtual {v3, v0}, Lsun/security/ssl/HandshakeHash;->protocolDetermined(Lsun/security/ssl/ProtocolVersion;)V

    #@bb
    .line 430
    move-object/from16 v0, p0

    #@bd
    move-object/from16 v1, v28

    #@bf
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@c2
    .line 432
    move-object/from16 v0, p0

    #@c4
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@c6
    move-object/from16 v0, v19

    #@c8
    iput-object v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@ca
    .line 445
    move-object/from16 v0, p1

    #@cc
    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@ce
    move-object/from16 v0, p0

    #@d0
    iput-object v3, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@d2
    .line 446
    new-instance v3, Lsun/security/ssl/RandomCookie;

    #@d4
    move-object/from16 v0, p0

    #@d6
    iget-object v4, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@d8
    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@db
    move-result-object v4

    #@dc
    invoke-direct {v3, v4}, Lsun/security/ssl/RandomCookie;-><init>(Ljava/security/SecureRandom;)V

    #@df
    move-object/from16 v0, p0

    #@e1
    iput-object v3, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    #@e3
    .line 447
    move-object/from16 v0, p0

    #@e5
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    #@e7
    move-object/from16 v0, v19

    #@e9
    iput-object v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->svr_random:Lsun/security/ssl/RandomCookie;

    #@eb
    .line 449
    const/4 v3, 0x0

    #@ec
    move-object/from16 v0, p0

    #@ee
    iput-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@f0
    .line 455
    move-object/from16 v0, p1

    #@f2
    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    #@f4
    invoke-virtual {v3}, Lsun/security/ssl/SessionId;->length()I

    #@f7
    move-result v3

    #@f8
    if-eqz v3, :cond_f

    #@fa
    .line 458
    move-object/from16 v0, p0

    #@fc
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@fe
    invoke-virtual {v3}, Lsun/security/ssl/SSLContextImpl;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    #@101
    move-result-object v3

    #@102
    check-cast v3, Lsun/security/ssl/SSLSessionContextImpl;

    #@104
    .line 460
    move-object/from16 v0, p1

    #@106
    iget-object v4, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    #@108
    invoke-virtual {v4}, Lsun/security/ssl/SessionId;->getId()[B

    #@10b
    move-result-object v4

    #@10c
    .line 458
    invoke-virtual {v3, v4}, Lsun/security/ssl/SSLSessionContextImpl;->get([B)Lsun/security/ssl/SSLSessionImpl;

    #@10f
    move-result-object v25

    #@110
    .line 468
    .local v25, "previous":Lsun/security/ssl/SSLSessionImpl;
    if-eqz v25, :cond_f

    #@112
    .line 469
    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    #@115
    move-result v3

    #@116
    move-object/from16 v0, p0

    #@118
    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@11a
    .line 471
    move-object/from16 v0, p0

    #@11c
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@11e
    if-eqz v3, :cond_7

    #@120
    .line 472
    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lsun/security/ssl/ProtocolVersion;

    #@123
    move-result-object v23

    #@124
    .line 474
    .local v23, "oldVersion":Lsun/security/ssl/ProtocolVersion;
    move-object/from16 v0, p0

    #@126
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@128
    move-object/from16 v0, v23

    #@12a
    if-eq v0, v3, :cond_7

    #@12c
    .line 475
    const/4 v3, 0x0

    #@12d
    move-object/from16 v0, p0

    #@12f
    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@131
    .line 479
    .end local v23    # "oldVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_7
    move-object/from16 v0, p0

    #@133
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@135
    if-eqz v3, :cond_8

    #@137
    .line 480
    move-object/from16 v0, p0

    #@139
    iget-byte v3, v0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    #@13b
    const/4 v4, 0x2

    #@13c
    if-ne v3, v4, :cond_8

    #@13e
    .line 482
    :try_start_0
    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->getPeerPrincipal()Ljava/security/Principal;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    #@141
    .line 489
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    #@143
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@145
    if-eqz v3, :cond_b

    #@147
    .line 490
    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->getSuite()Lsun/security/ssl/CipherSuite;

    #@14a
    move-result-object v32

    #@14b
    .line 491
    .local v32, "suite":Lsun/security/ssl/CipherSuite;
    move-object/from16 v0, v32

    #@14d
    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@14f
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@151
    if-eq v3, v4, :cond_9

    #@153
    .line 492
    move-object/from16 v0, v32

    #@155
    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@157
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@159
    if-ne v3, v4, :cond_b

    #@15b
    .line 493
    :cond_9
    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->getLocalPrincipal()Ljava/security/Principal;

    #@15e
    move-result-object v17

    #@15f
    .line 495
    .local v17, "localPrincipal":Ljava/security/Principal;
    const/16 v31, 0x0

    #@161
    .line 498
    .local v31, "subject":Ljavax/security/auth/Subject;
    :try_start_1
    new-instance v3, Lsun/security/ssl/ServerHandshaker$1;

    #@163
    move-object/from16 v0, p0

    #@165
    invoke-direct {v3, v0}, Lsun/security/ssl/ServerHandshaker$1;-><init>(Lsun/security/ssl/ServerHandshaker;)V

    #@168
    .line 497
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@16b
    move-result-object v31

    #@16c
    .end local v31    # "subject":Ljavax/security/auth/Subject;
    check-cast v31, Ljavax/security/auth/Subject;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    #@16e
    .line 511
    :cond_a
    :goto_4
    if-eqz v31, :cond_1c

    #@170
    .line 514
    const-class v3, Ljava/security/Principal;

    #@172
    move-object/from16 v0, v31

    #@174
    invoke-virtual {v0, v3}, Ljavax/security/auth/Subject;->getPrincipals(Ljava/lang/Class;)Ljava/util/Set;

    #@177
    move-result-object v26

    #@178
    .line 515
    .local v26, "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    move-object/from16 v0, v26

    #@17a
    move-object/from16 v1, v17

    #@17c
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@17f
    move-result v3

    #@180
    if-nez v3, :cond_1b

    #@182
    .line 516
    const/4 v3, 0x0

    #@183
    move-object/from16 v0, p0

    #@185
    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@187
    .line 517
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@189
    if-eqz v3, :cond_b

    #@18b
    const-string/jumbo v3, "session"

    #@18e
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@191
    move-result v3

    #@192
    if-eqz v3, :cond_b

    #@194
    .line 518
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@196
    const-string/jumbo v4, "Subject identity is not the same"

    #@199
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19c
    .line 538
    .end local v17    # "localPrincipal":Ljava/security/Principal;
    .end local v26    # "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    .end local v32    # "suite":Lsun/security/ssl/CipherSuite;
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    #@19e
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@1a0
    if-eqz v3, :cond_d

    #@1a2
    .line 539
    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->getSuite()Lsun/security/ssl/CipherSuite;

    #@1a5
    move-result-object v32

    #@1a6
    .line 543
    .restart local v32    # "suite":Lsun/security/ssl/CipherSuite;
    move-object/from16 v0, p0

    #@1a8
    move-object/from16 v1, v32

    #@1aa
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/CipherSuite;)Z

    #@1ad
    move-result v3

    #@1ae
    if-eqz v3, :cond_c

    #@1b0
    .line 544
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/HandshakeMessage$ClientHello;->getCipherSuites()Lsun/security/ssl/CipherSuiteList;

    #@1b3
    move-result-object v3

    #@1b4
    move-object/from16 v0, v32

    #@1b6
    invoke-virtual {v3, v0}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    #@1b9
    move-result v3

    #@1ba
    if-nez v3, :cond_1d

    #@1bc
    .line 545
    :cond_c
    const/4 v3, 0x0

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@1c1
    .line 554
    .end local v32    # "suite":Lsun/security/ssl/CipherSuite;
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    #@1c3
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@1c5
    if-eqz v3, :cond_f

    #@1c7
    .line 555
    move-object/from16 v0, v25

    #@1c9
    move-object/from16 v1, p0

    #@1cb
    iput-object v0, v1, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@1cd
    .line 556
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@1cf
    if-eqz v3, :cond_f

    #@1d1
    .line 557
    const-string/jumbo v3, "handshake"

    #@1d4
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@1d7
    move-result v3

    #@1d8
    if-nez v3, :cond_e

    #@1da
    const-string/jumbo v3, "session"

    #@1dd
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@1e0
    move-result v3

    #@1e1
    .line 556
    if-eqz v3, :cond_f

    #@1e3
    .line 558
    :cond_e
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1e5
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1ea
    const-string/jumbo v5, "%% Resuming "

    #@1ed
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v4

    #@1f1
    move-object/from16 v0, p0

    #@1f3
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@1f5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v4

    #@1f9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fc
    move-result-object v4

    #@1fd
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@200
    .line 569
    .end local v25    # "previous":Lsun/security/ssl/SSLSessionImpl;
    :cond_f
    move-object/from16 v0, p0

    #@202
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@204
    if-nez v3, :cond_28

    #@206
    .line 570
    move-object/from16 v0, p0

    #@208
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    #@20a
    if-nez v3, :cond_1e

    #@20c
    .line 571
    new-instance v3, Ljavax/net/ssl/SSLException;

    #@20e
    const-string/jumbo v4, "Client did not resume a session"

    #@211
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@214
    throw v3

    #@215
    .line 292
    .end local v12    # "clientHelloRI":Lsun/security/ssl/RenegotiationInfoExtension;
    .end local v19    # "m1":Lsun/security/ssl/HandshakeMessage$ServerHello;
    .end local v28    # "selectedVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_10
    move-object/from16 v0, p0

    #@217
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@219
    if-eqz v3, :cond_11

    #@21b
    .line 294
    const-string/jumbo v3, "The SCSV is present in a secure renegotiation"

    #@21e
    .line 293
    const/16 v4, 0x28

    #@220
    move-object/from16 v0, p0

    #@222
    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@225
    goto/16 :goto_0

    #@227
    .line 297
    :cond_11
    const-string/jumbo v3, "The SCSV is present in a insecure renegotiation"

    #@22a
    .line 296
    const/16 v4, 0x28

    #@22c
    move-object/from16 v0, p0

    #@22e
    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@231
    goto/16 :goto_0

    #@233
    .line 317
    .restart local v12    # "clientHelloRI":Lsun/security/ssl/RenegotiationInfoExtension;
    :cond_12
    move-object/from16 v0, p0

    #@235
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@237
    if-nez v3, :cond_13

    #@239
    .line 321
    const-string/jumbo v3, "The renegotiation_info is present in a insecure renegotiation"

    #@23c
    .line 320
    const/16 v4, 0x28

    #@23e
    move-object/from16 v0, p0

    #@240
    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@243
    .line 326
    :cond_13
    move-object/from16 v0, p0

    #@245
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    #@247
    .line 327
    invoke-virtual {v12}, Lsun/security/ssl/RenegotiationInfoExtension;->getRenegotiatedConnection()[B

    #@24a
    move-result-object v4

    #@24b
    .line 326
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    #@24e
    move-result v3

    #@24f
    if-nez v3, :cond_3

    #@251
    .line 329
    const-string/jumbo v3, "Incorrect verify data in ClientHello renegotiation_info message"

    #@254
    .line 328
    const/16 v4, 0x28

    #@256
    move-object/from16 v0, p0

    #@258
    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@25b
    goto/16 :goto_1

    #@25d
    .line 333
    :cond_14
    move-object/from16 v0, p0

    #@25f
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    #@261
    if-nez v3, :cond_3

    #@263
    move-object/from16 v0, p0

    #@265
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@267
    if-eqz v3, :cond_3

    #@269
    .line 338
    const-string/jumbo v3, "Inconsistent secure renegotiation indication"

    #@26c
    .line 337
    const/16 v4, 0x28

    #@26e
    move-object/from16 v0, p0

    #@270
    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@273
    goto/16 :goto_1

    #@275
    .line 344
    :cond_15
    move-object/from16 v0, p0

    #@277
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    #@279
    if-eqz v3, :cond_17

    #@27b
    .line 345
    sget-boolean v3, Lsun/security/ssl/ServerHandshaker;->allowLegacyHelloMessages:Z

    #@27d
    if-nez v3, :cond_16

    #@27f
    .line 348
    const-string/jumbo v3, "Failed to negotiate the use of secure renegotiation"

    #@282
    .line 347
    const/16 v4, 0x28

    #@284
    move-object/from16 v0, p0

    #@286
    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@289
    .line 352
    :cond_16
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@28b
    if-eqz v3, :cond_4

    #@28d
    const-string/jumbo v3, "handshake"

    #@290
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@293
    move-result v3

    #@294
    if-eqz v3, :cond_4

    #@296
    .line 353
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@298
    const-string/jumbo v4, "Warning: No renegotiation indication in ClientHello, allow legacy ClientHello"

    #@29b
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@29e
    goto/16 :goto_2

    #@2a0
    .line 356
    :cond_17
    sget-boolean v3, Lsun/security/ssl/ServerHandshaker;->allowUnsafeRenegotiation:Z

    #@2a2
    if-nez v3, :cond_1a

    #@2a4
    .line 358
    move-object/from16 v0, p0

    #@2a6
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->activeProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@2a8
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@2aa
    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@2ac
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@2ae
    if-lt v3, v4, :cond_19

    #@2b0
    .line 360
    const/16 v3, 0x64

    #@2b2
    move-object/from16 v0, p0

    #@2b4
    invoke-virtual {v0, v3}, Lsun/security/ssl/Handshaker;->warningSE(B)V

    #@2b7
    .line 364
    const/4 v3, 0x1

    #@2b8
    move-object/from16 v0, p0

    #@2ba
    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->invalidated:Z

    #@2bc
    .line 375
    move-object/from16 v0, p0

    #@2be
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@2c0
    invoke-virtual {v3}, Lsun/security/ssl/HandshakeInStream;->available()I

    #@2c3
    move-result v3

    #@2c4
    if-lez v3, :cond_18

    #@2c6
    .line 377
    const-string/jumbo v3, "ClientHello followed by an unexpected  handshake message"

    #@2c9
    .line 376
    const/16 v4, 0xa

    #@2cb
    move-object/from16 v0, p0

    #@2cd
    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@2d0
    .line 381
    :cond_18
    return-void

    #@2d1
    .line 389
    :cond_19
    const-string/jumbo v3, "Renegotiation is not allowed"

    #@2d4
    .line 388
    const/16 v4, 0x28

    #@2d6
    move-object/from16 v0, p0

    #@2d8
    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@2db
    goto/16 :goto_2

    #@2dd
    .line 393
    :cond_1a
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@2df
    if-eqz v3, :cond_4

    #@2e1
    const-string/jumbo v3, "handshake"

    #@2e4
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@2e7
    move-result v3

    #@2e8
    if-eqz v3, :cond_4

    #@2ea
    .line 394
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2ec
    .line 395
    const-string/jumbo v4, "Warning: continue with insecure renegotiation"

    #@2ef
    .line 394
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2f2
    goto/16 :goto_2

    #@2f4
    .line 483
    .restart local v19    # "m1":Lsun/security/ssl/HandshakeMessage$ServerHello;
    .restart local v25    # "previous":Lsun/security/ssl/SSLSessionImpl;
    .restart local v28    # "selectedVersion":Lsun/security/ssl/ProtocolVersion;
    :catch_0
    move-exception v15

    #@2f5
    .line 484
    .local v15, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v3, 0x0

    #@2f6
    move-object/from16 v0, p0

    #@2f8
    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@2fa
    goto/16 :goto_3

    #@2fc
    .line 503
    .end local v15    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    .restart local v17    # "localPrincipal":Ljava/security/Principal;
    .restart local v32    # "suite":Lsun/security/ssl/CipherSuite;
    :catch_1
    move-exception v14

    #@2fd
    .line 504
    .local v14, "e":Ljava/security/PrivilegedActionException;
    const/16 v31, 0x0

    #@2ff
    .line 505
    .restart local v31    # "subject":Ljavax/security/auth/Subject;
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@301
    if-eqz v3, :cond_a

    #@303
    const-string/jumbo v3, "session"

    #@306
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@309
    move-result v3

    #@30a
    if-eqz v3, :cond_a

    #@30c
    .line 506
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@30e
    const-string/jumbo v4, "Attempt to obtain subject failed!"

    #@311
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@314
    goto/16 :goto_4

    #@316
    .line 522
    .end local v14    # "e":Ljava/security/PrivilegedActionException;
    .end local v31    # "subject":Ljavax/security/auth/Subject;
    .restart local v26    # "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :cond_1b
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@318
    if-eqz v3, :cond_b

    #@31a
    const-string/jumbo v3, "session"

    #@31d
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@320
    move-result v3

    #@321
    if-eqz v3, :cond_b

    #@323
    .line 523
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@325
    const-string/jumbo v4, "Subject identity is same"

    #@328
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32b
    goto/16 :goto_5

    #@32d
    .line 527
    .end local v26    # "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :cond_1c
    const/4 v3, 0x0

    #@32e
    move-object/from16 v0, p0

    #@330
    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@332
    .line 528
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@334
    if-eqz v3, :cond_b

    #@336
    const-string/jumbo v3, "session"

    #@339
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@33c
    move-result v3

    #@33d
    if-eqz v3, :cond_b

    #@33f
    .line 529
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@341
    const-string/jumbo v4, "Kerberos credentials are not present in the current Subject; check if  javax.security.auth.useSubjectAsCreds system property has been set to false"

    #@344
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@347
    goto/16 :goto_5

    #@349
    .line 550
    .end local v17    # "localPrincipal":Ljava/security/Principal;
    :cond_1d
    move-object/from16 v0, p0

    #@34b
    move-object/from16 v1, v32

    #@34d
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setCipherSuite(Lsun/security/ssl/CipherSuite;)V

    #@350
    goto/16 :goto_6

    #@352
    .line 575
    .end local v25    # "previous":Lsun/security/ssl/SSLSessionImpl;
    .end local v32    # "suite":Lsun/security/ssl/CipherSuite;
    :cond_1e
    move-object/from16 v0, p1

    #@354
    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@356
    sget-object v4, Lsun/security/ssl/ExtensionType;->EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

    #@358
    invoke-virtual {v3, v4}, Lsun/security/ssl/HelloExtensions;->get(Lsun/security/ssl/ExtensionType;)Lsun/security/ssl/HelloExtension;

    #@35b
    move-result-object v3

    #@35c
    .line 574
    check-cast v3, Lsun/security/ssl/SupportedEllipticCurvesExtension;

    #@35e
    move-object/from16 v0, p0

    #@360
    iput-object v3, v0, Lsun/security/ssl/ServerHandshaker;->supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    #@362
    .line 579
    move-object/from16 v0, p0

    #@364
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@366
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@368
    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@36a
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@36c
    if-lt v3, v4, :cond_22

    #@36e
    .line 581
    move-object/from16 v0, p1

    #@370
    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@372
    .line 582
    sget-object v4, Lsun/security/ssl/ExtensionType;->EXT_SIGNATURE_ALGORITHMS:Lsun/security/ssl/ExtensionType;

    #@374
    .line 581
    invoke-virtual {v3, v4}, Lsun/security/ssl/HelloExtensions;->get(Lsun/security/ssl/ExtensionType;)Lsun/security/ssl/HelloExtension;

    #@377
    move-result-object v30

    #@378
    check-cast v30, Lsun/security/ssl/SignatureAlgorithmsExtension;

    #@37a
    .line 583
    .local v30, "signAlgs":Lsun/security/ssl/SignatureAlgorithmsExtension;
    if-eqz v30, :cond_22

    #@37c
    .line 585
    invoke-virtual/range {v30 .. v30}, Lsun/security/ssl/SignatureAlgorithmsExtension;->getSignAlgorithms()Ljava/util/Collection;

    #@37f
    move-result-object v24

    #@380
    .line 586
    .local v24, "peerSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    if-eqz v24, :cond_1f

    #@382
    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->isEmpty()Z

    #@385
    move-result v3

    #@386
    if-eqz v3, :cond_20

    #@388
    .line 587
    :cond_1f
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    #@38a
    .line 588
    const-string/jumbo v4, "No peer supported signature algorithms"

    #@38d
    .line 587
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@390
    throw v3

    #@391
    .line 593
    :cond_20
    invoke-static/range {v24 .. v24}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSupportedAlgorithms(Ljava/util/Collection;)Ljava/util/Collection;

    #@394
    move-result-object v33

    #@395
    .line 595
    .local v33, "supportedPeerSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/Collection;->isEmpty()Z

    #@398
    move-result v3

    #@399
    if-eqz v3, :cond_21

    #@39b
    .line 596
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    #@39d
    .line 597
    const-string/jumbo v4, "No supported signature and hash algorithm in common"

    #@3a0
    .line 596
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@3a3
    throw v3

    #@3a4
    .line 601
    :cond_21
    move-object/from16 v0, p0

    #@3a6
    move-object/from16 v1, v33

    #@3a8
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setPeerSupportedSignAlgs(Ljava/util/Collection;)V

    #@3ab
    .line 605
    .end local v24    # "peerSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    .end local v30    # "signAlgs":Lsun/security/ssl/SignatureAlgorithmsExtension;
    .end local v33    # "supportedPeerSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :cond_22
    new-instance v2, Lsun/security/ssl/SSLSessionImpl;

    #@3ad
    move-object/from16 v0, p0

    #@3af
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@3b1
    sget-object v4, Lsun/security/ssl/CipherSuite;->C_NULL:Lsun/security/ssl/CipherSuite;

    #@3b3
    .line 606
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getLocalSupportedSignAlgs()Ljava/util/Collection;

    #@3b6
    move-result-object v5

    #@3b7
    .line 607
    move-object/from16 v0, p0

    #@3b9
    iget-object v6, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@3bb
    invoke-virtual {v6}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@3be
    move-result-object v6

    #@3bf
    .line 608
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getHostAddressSE()Ljava/lang/String;

    #@3c2
    move-result-object v7

    #@3c3
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getPortSE()I

    #@3c6
    move-result v8

    #@3c7
    .line 605
    invoke-direct/range {v2 .. v8}, Lsun/security/ssl/SSLSessionImpl;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite;Ljava/util/Collection;Ljava/security/SecureRandom;Ljava/lang/String;I)V

    #@3ca
    move-object/from16 v0, p0

    #@3cc
    iput-object v2, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@3ce
    .line 610
    move-object/from16 v0, p0

    #@3d0
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@3d2
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@3d4
    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@3d6
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@3d8
    if-lt v3, v4, :cond_23

    #@3da
    .line 611
    move-object/from16 v0, p0

    #@3dc
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    #@3de
    if-eqz v3, :cond_23

    #@3e0
    .line 612
    move-object/from16 v0, p0

    #@3e2
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@3e4
    .line 613
    move-object/from16 v0, p0

    #@3e6
    iget-object v4, v0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    #@3e8
    .line 612
    invoke-virtual {v3, v4}, Lsun/security/ssl/SSLSessionImpl;->setPeerSupportedSignatureAlgorithms(Ljava/util/Collection;)V

    #@3eb
    .line 619
    :cond_23
    move-object/from16 v0, p0

    #@3ed
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@3ef
    move-object/from16 v0, p0

    #@3f1
    invoke-virtual {v0, v3}, Lsun/security/ssl/Handshaker;->setHandshakeSessionSE(Lsun/security/ssl/SSLSessionImpl;)V

    #@3f4
    .line 622
    invoke-direct/range {p0 .. p1}, Lsun/security/ssl/ServerHandshaker;->chooseCipherSuite(Lsun/security/ssl/HandshakeMessage$ClientHello;)V

    #@3f7
    .line 624
    move-object/from16 v0, p0

    #@3f9
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@3fb
    move-object/from16 v0, p0

    #@3fd
    iget-object v4, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@3ff
    invoke-virtual {v3, v4}, Lsun/security/ssl/SSLSessionImpl;->setSuite(Lsun/security/ssl/CipherSuite;)V

    #@402
    .line 625
    move-object/from16 v0, p0

    #@404
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@406
    move-object/from16 v0, p0

    #@408
    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    #@40a
    invoke-virtual {v3, v4}, Lsun/security/ssl/SSLSessionImpl;->setLocalPrivateKey(Ljava/security/PrivateKey;)V

    #@40d
    .line 633
    :goto_7
    move-object/from16 v0, p0

    #@40f
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@411
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@413
    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@415
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@417
    if-lt v3, v4, :cond_25

    #@419
    .line 634
    move-object/from16 v0, p0

    #@41b
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@41d
    if-eqz v3, :cond_24

    #@41f
    .line 635
    move-object/from16 v0, p0

    #@421
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@423
    const/4 v4, 0x0

    #@424
    invoke-virtual {v3, v4}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    #@427
    .line 637
    :cond_24
    move-object/from16 v0, p0

    #@429
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@42b
    move-object/from16 v0, p0

    #@42d
    iget-object v4, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@42f
    iget-object v4, v4, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    #@431
    invoke-virtual {v4}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashAlg()Ljava/lang/String;

    #@434
    move-result-object v4

    #@435
    invoke-virtual {v3, v4}, Lsun/security/ssl/HandshakeHash;->setFinishedAlg(Ljava/lang/String;)V

    #@438
    .line 640
    :cond_25
    move-object/from16 v0, p0

    #@43a
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@43c
    move-object/from16 v0, v19

    #@43e
    iput-object v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@440
    .line 641
    move-object/from16 v0, p0

    #@442
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@444
    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->getSessionId()Lsun/security/ssl/SessionId;

    #@447
    move-result-object v3

    #@448
    move-object/from16 v0, v19

    #@44a
    iput-object v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    #@44c
    .line 642
    move-object/from16 v0, p0

    #@44e
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@450
    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->getCompression()B

    #@453
    move-result v3

    #@454
    move-object/from16 v0, v19

    #@456
    iput-byte v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->compression_method:B

    #@458
    .line 644
    move-object/from16 v0, p0

    #@45a
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@45c
    if-eqz v3, :cond_26

    #@45e
    .line 654
    new-instance v29, Lsun/security/ssl/RenegotiationInfoExtension;

    #@460
    .line 655
    move-object/from16 v0, p0

    #@462
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    #@464
    move-object/from16 v0, p0

    #@466
    iget-object v4, v0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    #@468
    .line 654
    move-object/from16 v0, v29

    #@46a
    invoke-direct {v0, v3, v4}, Lsun/security/ssl/RenegotiationInfoExtension;-><init>([B[B)V

    #@46d
    .line 656
    .local v29, "serverHelloRI":Lsun/security/ssl/HelloExtension;
    move-object/from16 v0, v19

    #@46f
    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@471
    move-object/from16 v0, v29

    #@473
    invoke-virtual {v3, v0}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V

    #@476
    .line 659
    .end local v29    # "serverHelloRI":Lsun/security/ssl/HelloExtension;
    :cond_26
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@478
    if-eqz v3, :cond_27

    #@47a
    const-string/jumbo v3, "handshake"

    #@47d
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@480
    move-result v3

    #@481
    if-eqz v3, :cond_27

    #@483
    .line 660
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@485
    move-object/from16 v0, v19

    #@487
    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage$ServerHello;->print(Ljava/io/PrintStream;)V

    #@48a
    .line 661
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@48c
    new-instance v4, Ljava/lang/StringBuilder;

    #@48e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@491
    const-string/jumbo v5, "Cipher suite:  "

    #@494
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@497
    move-result-object v4

    #@498
    move-object/from16 v0, p0

    #@49a
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@49c
    invoke-virtual {v5}, Lsun/security/ssl/SSLSessionImpl;->getSuite()Lsun/security/ssl/CipherSuite;

    #@49f
    move-result-object v5

    #@4a0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a3
    move-result-object v4

    #@4a4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a7
    move-result-object v4

    #@4a8
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4ab
    .line 663
    :cond_27
    move-object/from16 v0, p0

    #@4ad
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@4af
    move-object/from16 v0, v19

    #@4b1
    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    #@4b4
    .line 669
    move-object/from16 v0, p0

    #@4b6
    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@4b8
    if-eqz v3, :cond_29

    #@4ba
    .line 670
    move-object/from16 v0, p0

    #@4bc
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@4be
    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    #@4c1
    move-result-object v3

    #@4c2
    move-object/from16 v0, p0

    #@4c4
    invoke-virtual {v0, v3}, Lsun/security/ssl/Handshaker;->calculateConnectionKeys(Ljavax/crypto/SecretKey;)V

    #@4c7
    .line 671
    const/4 v3, 0x0

    #@4c8
    move-object/from16 v0, p0

    #@4ca
    invoke-direct {v0, v3}, Lsun/security/ssl/ServerHandshaker;->sendChangeCipherAndFinish(Z)V

    #@4cd
    .line 672
    return-void

    #@4ce
    .line 630
    :cond_28
    move-object/from16 v0, p0

    #@4d0
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@4d2
    move-object/from16 v0, p0

    #@4d4
    invoke-virtual {v0, v3}, Lsun/security/ssl/Handshaker;->setHandshakeSessionSE(Lsun/security/ssl/SSLSessionImpl;)V

    #@4d7
    goto/16 :goto_7

    #@4d9
    .line 684
    :cond_29
    move-object/from16 v0, p0

    #@4db
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4dd
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4df
    if-eq v3, v4, :cond_2a

    #@4e1
    move-object/from16 v0, p0

    #@4e3
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4e5
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4e7
    if-ne v3, v4, :cond_2b

    #@4e9
    .line 725
    :cond_2a
    :goto_8
    invoke-static {}, Lsun/security/ssl/ServerHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    #@4ec
    move-result-object v3

    #@4ed
    move-object/from16 v0, p0

    #@4ef
    iget-object v4, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4f1
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    #@4f4
    move-result v4

    #@4f5
    aget v3, v3, v4

    #@4f7
    packed-switch v3, :pswitch_data_0

    #@4fa
    .line 791
    :pswitch_0
    new-instance v3, Ljava/lang/RuntimeException;

    #@4fc
    new-instance v4, Ljava/lang/StringBuilder;

    #@4fe
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@501
    const-string/jumbo v5, "internal error: "

    #@504
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@507
    move-result-object v4

    #@508
    move-object/from16 v0, p0

    #@50a
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@50c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50f
    move-result-object v4

    #@510
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@513
    move-result-object v4

    #@514
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@517
    throw v3

    #@518
    .line 687
    :cond_2b
    move-object/from16 v0, p0

    #@51a
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@51c
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@51e
    if-eq v3, v4, :cond_2e

    #@520
    move-object/from16 v0, p0

    #@522
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@524
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@526
    if-eq v3, v4, :cond_2e

    #@528
    .line 688
    move-object/from16 v0, p0

    #@52a
    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    #@52c
    if-nez v3, :cond_2c

    #@52e
    .line 689
    new-instance v3, Ljava/lang/RuntimeException;

    #@530
    const-string/jumbo v4, "no certificates"

    #@533
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@536
    throw v3

    #@537
    .line 692
    :cond_2c
    new-instance v20, Lsun/security/ssl/HandshakeMessage$CertificateMsg;

    #@539
    move-object/from16 v0, p0

    #@53b
    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    #@53d
    move-object/from16 v0, v20

    #@53f
    invoke-direct {v0, v3}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;-><init>([Ljava/security/cert/X509Certificate;)V

    #@542
    .line 698
    .local v20, "m2":Lsun/security/ssl/HandshakeMessage$CertificateMsg;
    move-object/from16 v0, p0

    #@544
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@546
    move-object/from16 v0, p0

    #@548
    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    #@54a
    invoke-virtual {v3, v4}, Lsun/security/ssl/SSLSessionImpl;->setLocalCertificates([Ljava/security/cert/X509Certificate;)V

    #@54d
    .line 699
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@54f
    if-eqz v3, :cond_2d

    #@551
    const-string/jumbo v3, "handshake"

    #@554
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@557
    move-result v3

    #@558
    if-eqz v3, :cond_2d

    #@55a
    .line 700
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@55c
    move-object/from16 v0, v20

    #@55e
    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->print(Ljava/io/PrintStream;)V

    #@561
    .line 702
    :cond_2d
    move-object/from16 v0, p0

    #@563
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@565
    move-object/from16 v0, v20

    #@567
    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    #@56a
    goto/16 :goto_8

    #@56c
    .line 710
    .end local v20    # "m2":Lsun/security/ssl/HandshakeMessage$CertificateMsg;
    :cond_2e
    move-object/from16 v0, p0

    #@56e
    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    #@570
    if-eqz v3, :cond_2a

    #@572
    .line 711
    new-instance v3, Ljava/lang/RuntimeException;

    #@574
    const-string/jumbo v4, "anonymous keyexchange with certs"

    #@577
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@57a
    throw v3

    #@57b
    .line 730
    :pswitch_1
    const/4 v2, 0x0

    #@57c
    .line 793
    :goto_9
    if-eqz v2, :cond_30

    #@57e
    .line 794
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@580
    if-eqz v3, :cond_2f

    #@582
    const-string/jumbo v3, "handshake"

    #@585
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@588
    move-result v3

    #@589
    if-eqz v3, :cond_2f

    #@58b
    .line 795
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@58d
    invoke-virtual {v2, v3}, Lsun/security/ssl/HandshakeMessage;->print(Ljava/io/PrintStream;)V

    #@590
    .line 797
    :cond_2f
    move-object/from16 v0, p0

    #@592
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@594
    invoke-virtual {v2, v3}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    #@597
    .line 811
    :cond_30
    move-object/from16 v0, p0

    #@599
    iget-byte v3, v0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    #@59b
    if-eqz v3, :cond_38

    #@59d
    .line 812
    move-object/from16 v0, p0

    #@59f
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5a1
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5a3
    if-eq v3, v4, :cond_38

    #@5a5
    move-object/from16 v0, p0

    #@5a7
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5a9
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5ab
    if-eq v3, v4, :cond_38

    #@5ad
    .line 813
    move-object/from16 v0, p0

    #@5af
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5b1
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5b3
    if-eq v3, v4, :cond_38

    #@5b5
    move-object/from16 v0, p0

    #@5b7
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5b9
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5bb
    if-eq v3, v4, :cond_38

    #@5bd
    .line 818
    const/16 v18, 0x0

    #@5bf
    .line 819
    .local v18, "localSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    move-object/from16 v0, p0

    #@5c1
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@5c3
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@5c5
    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@5c7
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@5c9
    if-lt v3, v4, :cond_34

    #@5cb
    .line 824
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getLocalSupportedSignAlgs()Ljava/util/Collection;

    #@5ce
    move-result-object v18

    #@5cf
    .line 825
    .local v18, "localSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->isEmpty()Z

    #@5d2
    move-result v3

    #@5d3
    if-eqz v3, :cond_32

    #@5d5
    .line 826
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    #@5d7
    .line 827
    const-string/jumbo v4, "No supported signature algorithm"

    #@5da
    .line 826
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@5dd
    throw v3

    #@5de
    .line 733
    .end local v18    # "localSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :pswitch_2
    move-object/from16 v0, p0

    #@5e0
    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    #@5e2
    const/4 v4, 0x0

    #@5e3
    aget-object v3, v3, v4

    #@5e5
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@5e8
    move-result-object v3

    #@5e9
    invoke-static {v3}, Lsun/security/ssl/JsseJce;->getRSAKeyLength(Ljava/security/PublicKey;)I

    #@5ec
    move-result v3

    #@5ed
    const/16 v4, 0x200

    #@5ef
    if-le v3, v4, :cond_31

    #@5f1
    .line 735
    :try_start_2
    new-instance v2, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;

    #@5f3
    .line 736
    move-object/from16 v0, p0

    #@5f5
    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->tempPublicKey:Ljava/security/PublicKey;

    #@5f7
    move-object/from16 v0, p0

    #@5f9
    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    #@5fb
    .line 737
    move-object/from16 v0, p0

    #@5fd
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@5ff
    move-object/from16 v0, p0

    #@601
    iget-object v6, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    #@603
    .line 738
    move-object/from16 v0, p0

    #@605
    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@607
    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@60a
    move-result-object v7

    #@60b
    .line 735
    invoke-direct/range {v2 .. v7}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Lsun/security/ssl/RandomCookie;Lsun/security/ssl/RandomCookie;Ljava/security/SecureRandom;)V

    #@60e
    .line 739
    .local v2, "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    move-object/from16 v0, p0

    #@610
    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->tempPrivateKey:Ljava/security/PrivateKey;

    #@612
    move-object/from16 v0, p0

    #@614
    iput-object v3, v0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    #@616
    goto/16 :goto_9

    #@618
    .line 740
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    :catch_2
    move-exception v13

    #@619
    .line 742
    .local v13, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v3, "Error generating RSA server key exchange"

    #@61c
    .line 741
    invoke-static {v3, v13}, Lsun/security/ssl/ServerHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@61f
    .line 743
    const/4 v2, 0x0

    #@620
    .local v2, "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    goto/16 :goto_9

    #@622
    .line 747
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    .end local v13    # "e":Ljava/security/GeneralSecurityException;
    :cond_31
    const/4 v2, 0x0

    #@623
    .restart local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    goto/16 :goto_9

    #@625
    .line 753
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    :pswitch_3
    :try_start_3
    new-instance v2, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;

    #@627
    move-object/from16 v0, p0

    #@629
    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    #@62b
    .line 754
    move-object/from16 v0, p0

    #@62d
    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    #@62f
    .line 755
    move-object/from16 v0, p0

    #@631
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@633
    iget-object v5, v5, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@635
    .line 756
    move-object/from16 v0, p0

    #@637
    iget-object v6, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    #@639
    iget-object v6, v6, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@63b
    .line 757
    move-object/from16 v0, p0

    #@63d
    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@63f
    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@642
    move-result-object v7

    #@643
    .line 758
    move-object/from16 v0, p0

    #@645
    iget-object v8, v0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@647
    .line 759
    move-object/from16 v0, p0

    #@649
    iget-object v9, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@64b
    .line 753
    invoke-direct/range {v2 .. v9}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;-><init>(Lsun/security/ssl/DHCrypt;Ljava/security/PrivateKey;[B[BLjava/security/SecureRandom;Lsun/security/ssl/SignatureAndHashAlgorithm;Lsun/security/ssl/ProtocolVersion;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3

    #@64e
    .local v2, "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    goto/16 :goto_9

    #@650
    .line 760
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    :catch_3
    move-exception v13

    #@651
    .line 761
    .restart local v13    # "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v3, "Error generating DH server key exchange"

    #@654
    invoke-static {v3, v13}, Lsun/security/ssl/ServerHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@657
    .line 762
    const/4 v2, 0x0

    #@658
    .local v2, "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    goto/16 :goto_9

    #@65a
    .line 766
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    .end local v13    # "e":Ljava/security/GeneralSecurityException;
    :pswitch_4
    new-instance v2, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;

    #@65c
    move-object/from16 v0, p0

    #@65e
    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    #@660
    move-object/from16 v0, p0

    #@662
    iget-object v4, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@664
    invoke-direct {v2, v3, v4}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;-><init>(Lsun/security/ssl/DHCrypt;Lsun/security/ssl/ProtocolVersion;)V

    #@667
    .line 767
    .local v2, "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    goto/16 :goto_9

    #@669
    .line 772
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    :pswitch_5
    :try_start_4
    new-instance v2, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;

    #@66b
    move-object/from16 v0, p0

    #@66d
    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    #@66f
    .line 773
    move-object/from16 v0, p0

    #@671
    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    #@673
    .line 774
    move-object/from16 v0, p0

    #@675
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@677
    iget-object v5, v5, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@679
    .line 775
    move-object/from16 v0, p0

    #@67b
    iget-object v6, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    #@67d
    iget-object v6, v6, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@67f
    .line 776
    move-object/from16 v0, p0

    #@681
    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@683
    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@686
    move-result-object v7

    #@687
    .line 777
    move-object/from16 v0, p0

    #@689
    iget-object v8, v0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@68b
    .line 778
    move-object/from16 v0, p0

    #@68d
    iget-object v9, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@68f
    .line 772
    invoke-direct/range {v2 .. v9}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;-><init>(Lsun/security/ssl/ECDHCrypt;Ljava/security/PrivateKey;[B[BLjava/security/SecureRandom;Lsun/security/ssl/SignatureAndHashAlgorithm;Lsun/security/ssl/ProtocolVersion;)V
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_4

    #@692
    .restart local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    goto/16 :goto_9

    #@694
    .line 779
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    :catch_4
    move-exception v13

    #@695
    .line 781
    .restart local v13    # "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v3, "Error generating ECDH server key exchange"

    #@698
    .line 780
    invoke-static {v3, v13}, Lsun/security/ssl/ServerHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@69b
    .line 782
    const/4 v2, 0x0

    #@69c
    .local v2, "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    goto/16 :goto_9

    #@69e
    .line 788
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    .end local v13    # "e":Ljava/security/GeneralSecurityException;
    :pswitch_6
    const/4 v2, 0x0

    #@69f
    .line 789
    .restart local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    goto/16 :goto_9

    #@6a1
    .line 831
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    .restart local v18    # "localSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :cond_32
    invoke-static/range {v18 .. v18}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashAlgorithmNames(Ljava/util/Collection;)Ljava/util/Set;

    #@6a4
    move-result-object v16

    #@6a5
    .line 833
    .local v16, "localHashAlgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->isEmpty()Z

    #@6a8
    move-result v3

    #@6a9
    if-eqz v3, :cond_33

    #@6ab
    .line 834
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    #@6ad
    .line 835
    const-string/jumbo v4, "No supported signature algorithm"

    #@6b0
    .line 834
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@6b3
    throw v3

    #@6b4
    .line 837
    :cond_33
    move-object/from16 v0, p0

    #@6b6
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@6b8
    move-object/from16 v0, v16

    #@6ba
    invoke-virtual {v3, v0}, Lsun/security/ssl/HandshakeHash;->restrictCertificateVerifyAlgs(Ljava/util/Set;)V

    #@6bd
    .line 840
    .end local v16    # "localHashAlgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "localSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :cond_34
    move-object/from16 v0, p0

    #@6bf
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@6c1
    invoke-virtual {v3}, Lsun/security/ssl/SSLContextImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    #@6c4
    move-result-object v3

    #@6c5
    invoke-interface {v3}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    #@6c8
    move-result-object v10

    #@6c9
    .line 841
    .local v10, "caCerts":[Ljava/security/cert/X509Certificate;
    new-instance v21, Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    #@6cb
    move-object/from16 v0, p0

    #@6cd
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@6cf
    .line 842
    move-object/from16 v0, p0

    #@6d1
    iget-object v4, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@6d3
    .line 841
    move-object/from16 v0, v21

    #@6d5
    move-object/from16 v1, v18

    #@6d7
    invoke-direct {v0, v10, v3, v1, v4}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;-><init>([Ljava/security/cert/X509Certificate;Lsun/security/ssl/CipherSuite$KeyExchange;Ljava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V

    #@6da
    .line 844
    .local v21, "m4":Lsun/security/ssl/HandshakeMessage$CertificateRequest;
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@6dc
    if-eqz v3, :cond_35

    #@6de
    const-string/jumbo v3, "handshake"

    #@6e1
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@6e4
    move-result v3

    #@6e5
    if-eqz v3, :cond_35

    #@6e7
    .line 845
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6e9
    move-object/from16 v0, v21

    #@6eb
    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->print(Ljava/io/PrintStream;)V

    #@6ee
    .line 847
    :cond_35
    move-object/from16 v0, p0

    #@6f0
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@6f2
    move-object/from16 v0, v21

    #@6f4
    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    #@6f7
    .line 857
    .end local v10    # "caCerts":[Ljava/security/cert/X509Certificate;
    .end local v21    # "m4":Lsun/security/ssl/HandshakeMessage$CertificateRequest;
    :cond_36
    :goto_a
    new-instance v22, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;

    #@6f9
    invoke-direct/range {v22 .. v22}, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;-><init>()V

    #@6fc
    .line 859
    .local v22, "m5":Lsun/security/ssl/HandshakeMessage$ServerHelloDone;
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@6fe
    if-eqz v3, :cond_37

    #@700
    const-string/jumbo v3, "handshake"

    #@703
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@706
    move-result v3

    #@707
    if-eqz v3, :cond_37

    #@709
    .line 860
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@70b
    move-object/from16 v0, v22

    #@70d
    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;->print(Ljava/io/PrintStream;)V

    #@710
    .line 862
    :cond_37
    move-object/from16 v0, p0

    #@712
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@714
    move-object/from16 v0, v22

    #@716
    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    #@719
    .line 870
    move-object/from16 v0, p0

    #@71b
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@71d
    invoke-virtual {v3}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    #@720
    .line 276
    return-void

    #@721
    .line 849
    .end local v22    # "m5":Lsun/security/ssl/HandshakeMessage$ServerHelloDone;
    :cond_38
    move-object/from16 v0, p0

    #@723
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@725
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@727
    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@729
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@72b
    if-lt v3, v4, :cond_36

    #@72d
    .line 850
    move-object/from16 v0, p0

    #@72f
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@731
    const/4 v4, 0x0

    #@732
    invoke-virtual {v3, v4}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    #@735
    goto :goto_a

    #@736
    .line 725
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private clientKeyExchange(Lsun/security/ssl/DHClientKeyExchange;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p1, "mesg"    # Lsun/security/ssl/DHClientKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1365
    sget-object v0, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "handshake"

    #@7
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1366
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    invoke-virtual {p1, v0}, Lsun/security/ssl/DHClientKeyExchange;->print(Ljava/io/PrintStream;)V

    #@12
    .line 1368
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/ServerHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    #@14
    invoke-virtual {p1}, Lsun/security/ssl/DHClientKeyExchange;->getClientPublicKey()Ljava/math/BigInteger;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x0

    #@19
    invoke-virtual {v0, v1, v2}, Lsun/security/ssl/DHCrypt;->getAgreedSecret(Ljava/math/BigInteger;Z)Ljavax/crypto/SecretKey;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method private clientKeyExchange(Lsun/security/ssl/ECDHClientKeyExchange;)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1, "mesg"    # Lsun/security/ssl/ECDHClientKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1374
    sget-object v0, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "handshake"

    #@7
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1375
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    invoke-virtual {p1, v0}, Lsun/security/ssl/ECDHClientKeyExchange;->print(Ljava/io/PrintStream;)V

    #@12
    .line 1377
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/ServerHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    #@14
    invoke-virtual {p1}, Lsun/security/ssl/ECDHClientKeyExchange;->getEncodedPoint()[B

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Lsun/security/ssl/ECDHCrypt;->getAgreedSecret([B)Ljavax/crypto/SecretKey;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method private clientKeyExchange(Lsun/security/ssl/KerberosClientKeyExchange;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p1, "mesg"    # Lsun/security/ssl/KerberosClientKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1336
    sget-object v1, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@2
    if-eqz v1, :cond_0

    #@4
    const-string/jumbo v1, "handshake"

    #@7
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1337
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    invoke-virtual {p1, v1}, Lsun/security/ssl/KerberosClientKeyExchange;->print(Ljava/io/PrintStream;)V

    #@12
    .line 1341
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@14
    invoke-virtual {p1}, Lsun/security/ssl/KerberosClientKeyExchange;->getPeerPrincipal()Ljava/security/Principal;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSessionImpl;->setPeerPrincipal(Ljava/security/Principal;)V

    #@1b
    .line 1342
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@1d
    invoke-virtual {p1}, Lsun/security/ssl/KerberosClientKeyExchange;->getLocalPrincipal()Ljava/security/Principal;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSessionImpl;->setLocalPrincipal(Ljava/security/Principal;)V

    #@24
    .line 1344
    invoke-virtual {p1}, Lsun/security/ssl/KerberosClientKeyExchange;->getUnencryptedPreMasterSecret()[B

    #@27
    move-result-object v0

    #@28
    .line 1345
    .local v0, "b":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    #@2a
    const-string/jumbo v2, "TlsPremasterSecret"

    #@2d
    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@30
    return-object v1
.end method

.method private clientKeyExchange(Lsun/security/ssl/RSAClientKeyExchange;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "mesg"    # Lsun/security/ssl/RSAClientKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1598
    sget-object v0, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "handshake"

    #@7
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1599
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    invoke-virtual {p1, v0}, Lsun/security/ssl/RSAClientKeyExchange;->print(Ljava/io/PrintStream;)V

    #@12
    .line 1601
    :cond_0
    iget-object v0, p1, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    #@14
    return-object v0
.end method

.method private sendChangeCipherAndFinish(Z)V
    .locals 6
    .param p1, "finishedTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1522
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@2
    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    #@5
    .line 1524
    new-instance v0, Lsun/security/ssl/HandshakeMessage$Finished;

    #@7
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@9
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@b
    .line 1525
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@d
    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    #@10
    move-result-object v4

    #@11
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@13
    const/4 v3, 0x2

    #@14
    .line 1524
    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/HandshakeMessage$Finished;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;Lsun/security/ssl/CipherSuite;)V

    #@17
    .line 1532
    .local v0, "mesg":Lsun/security/ssl/HandshakeMessage$Finished;
    invoke-virtual {p0, v0, p1}, Lsun/security/ssl/Handshaker;->sendChangeCipherSpec(Lsun/security/ssl/HandshakeMessage$Finished;Z)V

    #@1a
    .line 1537
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 1538
    invoke-virtual {v0}, Lsun/security/ssl/HandshakeMessage$Finished;->getVerifyData()[B

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    #@24
    .line 1547
    :cond_0
    if-eqz p1, :cond_1

    #@26
    .line 1548
    const/16 v1, 0x14

    #@28
    iput v1, p0, Lsun/security/ssl/Handshaker;->state:I

    #@2a
    .line 1520
    :cond_1
    return-void
.end method

.method private setupEphemeralDHKeys(Z)V
    .locals 3
    .param p1, "export"    # Z

    #@0
    .prologue
    .line 1182
    new-instance v1, Lsun/security/ssl/DHCrypt;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/16 v0, 0x200

    #@6
    :goto_0
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@8
    invoke-virtual {v2}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v0, v2}, Lsun/security/ssl/DHCrypt;-><init>(ILjava/security/SecureRandom;)V

    #@f
    iput-object v1, p0, Lsun/security/ssl/ServerHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    #@11
    .line 1174
    return-void

    #@12
    .line 1182
    :cond_0
    const/16 v0, 0x300

    #@14
    goto :goto_0
.end method

.method private setupEphemeralECDHKeys()Z
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1189
    const/4 v1, -0x1

    #@2
    .line 1190
    .local v1, "index":I
    iget-object v3, p0, Lsun/security/ssl/ServerHandshaker;->supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    #@4
    if-eqz v3, :cond_2

    #@6
    .line 1193
    iget-object v3, p0, Lsun/security/ssl/ServerHandshaker;->supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    #@8
    invoke-virtual {v3}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds()[I

    #@b
    move-result-object v5

    #@c
    array-length v6, v5

    #@d
    move v3, v4

    #@e
    :goto_0
    if-ge v3, v6, :cond_0

    #@10
    aget v0, v5, v3

    #@12
    .line 1194
    .local v0, "curveId":I
    invoke-static {v0}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->isSupported(I)Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_1

    #@18
    .line 1195
    move v1, v0

    #@19
    .line 1199
    .end local v0    # "curveId":I
    :cond_0
    if-gez v1, :cond_3

    #@1b
    .line 1201
    return v4

    #@1c
    .line 1193
    .restart local v0    # "curveId":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1205
    .end local v0    # "curveId":I
    :cond_2
    sget-object v3, Lsun/security/ssl/SupportedEllipticCurvesExtension;->DEFAULT:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    #@21
    invoke-virtual {v3}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds()[I

    #@24
    move-result-object v3

    #@25
    aget v1, v3, v4

    #@27
    .line 1207
    :cond_3
    invoke-static {v1}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->getCurveOid(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    .line 1208
    .local v2, "oid":Ljava/lang/String;
    new-instance v3, Lsun/security/ssl/ECDHCrypt;

    #@2d
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@2f
    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@32
    move-result-object v4

    #@33
    invoke-direct {v3, v2, v4}, Lsun/security/ssl/ECDHCrypt;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    #@36
    iput-object v3, p0, Lsun/security/ssl/ServerHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    #@38
    .line 1209
    const/4 v3, 0x1

    #@39
    return v3
.end method

.method private setupEphemeralRSAKeys(Z)Z
    .locals 3
    .param p1, "export"    # Z

    #@0
    .prologue
    .line 1159
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@2
    invoke-virtual {v1}, Lsun/security/ssl/SSLContextImpl;->getEphemeralKeyManager()Lsun/security/ssl/EphemeralKeyManager;

    #@5
    move-result-object v1

    #@6
    .line 1160
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@8
    invoke-virtual {v2}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@b
    move-result-object v2

    #@c
    .line 1159
    invoke-virtual {v1, p1, v2}, Lsun/security/ssl/EphemeralKeyManager;->getRSAKeyPair(ZLjava/security/SecureRandom;)Ljava/security/KeyPair;

    #@f
    move-result-object v0

    #@10
    .line 1161
    .local v0, "kp":Ljava/security/KeyPair;
    if-nez v0, :cond_0

    #@12
    .line 1162
    const/4 v1, 0x0

    #@13
    return v1

    #@14
    .line 1164
    :cond_0
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Lsun/security/ssl/ServerHandshaker;->tempPublicKey:Ljava/security/PublicKey;

    #@1a
    .line 1165
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Lsun/security/ssl/ServerHandshaker;->tempPrivateKey:Ljava/security/PrivateKey;

    #@20
    .line 1166
    const/4 v1, 0x1

    #@21
    return v1
.end method

.method private setupKerberosKeys()Z
    .locals 14

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1277
    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    #@4
    if-eqz v6, :cond_0

    #@6
    .line 1278
    return v7

    #@7
    .line 1281
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getAccSE()Ljava/security/AccessControlContext;

    #@a
    move-result-object v0

    #@b
    .line 1284
    .local v0, "acc":Ljava/security/AccessControlContext;
    new-instance v6, Lsun/security/ssl/ServerHandshaker$2;

    #@d
    invoke-direct {v6, p0, v0}, Lsun/security/ssl/ServerHandshaker$2;-><init>(Lsun/security/ssl/ServerHandshaker;Ljava/security/AccessControlContext;)V

    #@10
    .line 1282
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@13
    move-result-object v6

    #@14
    check-cast v6, [Ljavax/crypto/SecretKey;

    #@16
    iput-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    #@18
    .line 1292
    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    #@1a
    if-eqz v6, :cond_2

    #@1c
    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    #@1e
    array-length v6, v6

    #@1f
    if-lez v6, :cond_2

    #@21
    .line 1293
    sget-object v6, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@23
    if-eqz v6, :cond_1

    #@25
    const-string/jumbo v6, "handshake"

    #@28
    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@2b
    move-result v6

    #@2c
    if-eqz v6, :cond_1

    #@2e
    .line 1294
    iget-object v9, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    #@30
    array-length v10, v9

    #@31
    move v6, v8

    #@32
    :goto_0
    if-ge v6, v10, :cond_1

    #@34
    aget-object v2, v9, v6

    #@36
    .line 1295
    .local v2, "k":Ljavax/crypto/SecretKey;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@38
    new-instance v12, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v13, "Using Kerberos key: "

    #@40
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v12

    #@44
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v12

    #@48
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v12

    #@4c
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4f
    .line 1294
    add-int/lit8 v6, v6, 0x1

    #@51
    goto :goto_0

    #@52
    .line 1301
    .end local v2    # "k":Ljavax/crypto/SecretKey;
    :cond_1
    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    #@54
    const/4 v9, 0x0

    #@55
    aget-object v6, v6, v9

    #@57
    invoke-static {v6}, Lsun/security/ssl/Krb5Helper;->getServerPrincipalName(Ljavax/crypto/SecretKey;)Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    .line 1302
    .local v4, "serverPrincipal":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1

    #@5e
    move-result-object v5

    #@5f
    .line 1304
    .local v5, "sm":Ljava/lang/SecurityManager;
    if-eqz v5, :cond_2

    #@61
    .line 1307
    :try_start_1
    const-string/jumbo v6, "accept"

    #@64
    .line 1306
    invoke-static {v4, v6}, Lsun/security/ssl/Krb5Helper;->getServicePermission(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Permission;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {v5, v6, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    #@6b
    .line 1318
    .end local v4    # "serverPrincipal":Ljava/lang/String;
    .end local v5    # "sm":Ljava/lang/SecurityManager;
    :cond_2
    :try_start_2
    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    #@6d
    if-eqz v6, :cond_4

    #@6f
    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    #@71
    array-length v6, v6

    #@72
    if-lez v6, :cond_4

    #@74
    move v6, v7

    #@75
    :goto_1
    return v6

    #@76
    .line 1309
    .restart local v4    # "serverPrincipal":Ljava/lang/String;
    .restart local v5    # "sm":Ljava/lang/SecurityManager;
    :catch_0
    move-exception v3

    #@77
    .line 1310
    .local v3, "se":Ljava/lang/SecurityException;
    const/4 v6, 0x0

    #@78
    iput-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    #@7a
    .line 1312
    sget-object v6, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@7c
    if-eqz v6, :cond_3

    #@7e
    const-string/jumbo v6, "handshake"

    #@81
    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@84
    move-result v6

    #@85
    if-eqz v6, :cond_3

    #@87
    .line 1313
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@89
    const-string/jumbo v7, "Permission to access Kerberos secret key denied"

    #@8c
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/PrivilegedActionException; {:try_start_2 .. :try_end_2} :catch_1

    #@8f
    .line 1315
    :cond_3
    return v8

    #@90
    .end local v3    # "se":Ljava/lang/SecurityException;
    .end local v4    # "serverPrincipal":Ljava/lang/String;
    .end local v5    # "sm":Ljava/lang/SecurityManager;
    :cond_4
    move v6, v8

    #@91
    .line 1318
    goto :goto_1

    #@92
    .line 1319
    .end local v0    # "acc":Ljava/security/AccessControlContext;
    :catch_1
    move-exception v1

    #@93
    .line 1321
    .local v1, "e":Ljava/security/PrivilegedActionException;
    sget-object v6, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@95
    if-eqz v6, :cond_5

    #@97
    const-string/jumbo v6, "handshake"

    #@9a
    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@9d
    move-result v6

    #@9e
    if-eqz v6, :cond_5

    #@a0
    .line 1322
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a2
    new-instance v7, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v9, "Attempt to obtain Kerberos key failed: "

    #@aa
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v7

    #@ae
    .line 1323
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@b1
    move-result-object v9

    #@b2
    .line 1322
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v7

    #@b6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v7

    #@ba
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@bd
    .line 1325
    :cond_5
    return v8
.end method

.method private setupPrivateKeyAndChain(Ljava/lang/String;)Z
    .locals 11
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 1225
    iget-object v8, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@4
    invoke-virtual {v8}, Lsun/security/ssl/SSLContextImpl;->getX509KeyManager()Ljavax/net/ssl/X509ExtendedKeyManager;

    #@7
    move-result-object v3

    #@8
    .line 1227
    .local v3, "km":Ljavax/net/ssl/X509ExtendedKeyManager;
    iget-object v8, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@a
    if-eqz v8, :cond_0

    #@c
    .line 1228
    iget-object v8, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@e
    invoke-virtual {v3, p1, v10, v8}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 1232
    .local v0, "alias":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    #@14
    .line 1233
    return v9

    #@15
    .line 1230
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@17
    invoke-virtual {v3, p1, v10, v8}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .restart local v0    # "alias":Ljava/lang/String;
    goto :goto_0

    #@1c
    .line 1235
    :cond_1
    invoke-virtual {v3, v0}, Ljavax/net/ssl/X509ExtendedKeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    #@1f
    move-result-object v7

    #@20
    .line 1236
    .local v7, "tempPrivateKey":Ljava/security/PrivateKey;
    if-nez v7, :cond_2

    #@22
    .line 1237
    return v9

    #@23
    .line 1239
    :cond_2
    invoke-virtual {v3, v0}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    #@26
    move-result-object v6

    #@27
    .line 1240
    .local v6, "tempCerts":[Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_3

    #@29
    array-length v8, v6

    #@2a
    if-nez v8, :cond_4

    #@2c
    .line 1241
    :cond_3
    return v9

    #@2d
    .line 1243
    :cond_4
    const-string/jumbo v8, "_"

    #@30
    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@33
    move-result-object v8

    #@34
    aget-object v2, v8, v9

    #@36
    .line 1244
    .local v2, "keyAlgorithm":Ljava/lang/String;
    aget-object v8, v6, v9

    #@38
    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3b
    move-result-object v5

    #@3c
    .line 1245
    .local v5, "publicKey":Ljava/security/PublicKey;
    invoke-interface {v7}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@3f
    move-result-object v8

    #@40
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v8

    #@44
    if-eqz v8, :cond_5

    #@46
    .line 1246
    invoke-interface {v5}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@49
    move-result-object v8

    #@4a
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v8

    #@4e
    if-nez v8, :cond_6

    #@50
    .line 1247
    :cond_5
    return v9

    #@51
    .line 1252
    :cond_6
    const-string/jumbo v8, "EC"

    #@54
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v8

    #@58
    if-eqz v8, :cond_9

    #@5a
    .line 1253
    instance-of v8, v5, Ljava/security/interfaces/ECPublicKey;

    #@5c
    if-nez v8, :cond_7

    #@5e
    .line 1254
    return v9

    #@5f
    .line 1256
    :cond_7
    check-cast v5, Ljava/security/interfaces/ECPublicKey;

    #@61
    .end local v5    # "publicKey":Ljava/security/PublicKey;
    invoke-interface {v5}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@64
    move-result-object v4

    #@65
    .line 1257
    .local v4, "params":Ljava/security/spec/ECParameterSpec;
    invoke-static {v4}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->getCurveIndex(Ljava/security/spec/ECParameterSpec;)I

    #@68
    move-result v1

    #@69
    .line 1258
    .local v1, "index":I
    invoke-static {v1}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->isSupported(I)Z

    #@6c
    move-result v8

    #@6d
    if-nez v8, :cond_8

    #@6f
    .line 1259
    return v9

    #@70
    .line 1261
    :cond_8
    iget-object v8, p0, Lsun/security/ssl/ServerHandshaker;->supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    #@72
    if-eqz v8, :cond_9

    #@74
    iget-object v8, p0, Lsun/security/ssl/ServerHandshaker;->supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    #@76
    invoke-virtual {v8, v1}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->contains(I)Z

    #@79
    move-result v8

    #@7a
    if-eqz v8, :cond_a

    #@7c
    .line 1265
    .end local v1    # "index":I
    .end local v4    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_9
    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    #@7e
    .line 1266
    iput-object v6, p0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    #@80
    .line 1267
    const/4 v8, 0x1

    #@81
    return v8

    #@82
    .line 1262
    .restart local v1    # "index":I
    .restart local v4    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_a
    return v9
.end method

.method private setupStaticECDHKeys()V
    .locals 4

    #@0
    .prologue
    .line 1215
    new-instance v0, Lsun/security/ssl/ECDHCrypt;

    #@2
    iget-object v1, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    #@4
    iget-object v2, p0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    #@6
    const/4 v3, 0x0

    #@7
    aget-object v2, v2, v3

    #@9
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v0, v1, v2}, Lsun/security/ssl/ECDHCrypt;-><init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    #@10
    iput-object v0, p0, Lsun/security/ssl/ServerHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    #@12
    .line 1212
    return-void
.end method


# virtual methods
.method getKickstartMessage()Lsun/security/ssl/HandshakeMessage;
    .locals 1

    #@0
    .prologue
    .line 1557
    new-instance v0, Lsun/security/ssl/HandshakeMessage$HelloRequest;

    #@2
    invoke-direct {v0}, Lsun/security/ssl/HandshakeMessage$HelloRequest;-><init>()V

    #@5
    return-object v0
.end method

.method handshakeAlert(B)V
    .locals 4
    .param p1, "description"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 1566
    invoke-static {p1}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1568
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    #@6
    if-eqz v1, :cond_0

    #@8
    const-string/jumbo v1, "handshake"

    #@b
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 1569
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "SSL -- handshake alert:  "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2a
    .line 1581
    :cond_0
    const/16 v1, 0x29

    #@2c
    if-ne p1, v1, :cond_1

    #@2e
    .line 1582
    iget-byte v1, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    #@30
    const/4 v2, 0x1

    #@31
    if-ne v1, v2, :cond_1

    #@33
    .line 1583
    return-void

    #@34
    .line 1586
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    #@36
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v3, "handshake alert: "

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v1
.end method

.method processMessage(BI)V
    .locals 10
    .param p1, "type"    # B
    .param p2, "message_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0xf

    #@2
    .line 153
    iget v1, p0, Lsun/security/ssl/Handshaker;->state:I

    #@4
    if-lt v1, p1, :cond_0

    #@6
    .line 154
    iget v1, p0, Lsun/security/ssl/Handshaker;->state:I

    #@8
    const/16 v2, 0x10

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 155
    if-eq p1, v9, :cond_0

    #@e
    .line 156
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    #@10
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Handshake message sequence violation, state = "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    iget v3, p0, Lsun/security/ssl/Handshaker;->state:I

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 158
    const-string/jumbo v3, ", type = "

    #@25
    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 156
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 161
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@38
    .line 248
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    #@3a
    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v3, "Illegal server handshake msg, "

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    .line 248
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@51
    throw v1

    #@52
    .line 163
    :sswitch_0
    new-instance v7, Lsun/security/ssl/HandshakeMessage$ClientHello;

    #@54
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@56
    invoke-direct {v7, v1, p2}, Lsun/security/ssl/HandshakeMessage$ClientHello;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    #@59
    .line 167
    .local v7, "ch":Lsun/security/ssl/HandshakeMessage$ClientHello;
    invoke-direct {p0, v7}, Lsun/security/ssl/ServerHandshaker;->clientHello(Lsun/security/ssl/HandshakeMessage$ClientHello;)V

    #@5c
    .line 256
    .end local v7    # "ch":Lsun/security/ssl/HandshakeMessage$ClientHello;
    :goto_0
    iget v1, p0, Lsun/security/ssl/Handshaker;->state:I

    #@5e
    if-ge v1, p1, :cond_1

    #@60
    .line 257
    if-ne p1, v9, :cond_3

    #@62
    .line 258
    add-int/lit8 v1, p1, 0x2

    #@64
    iput v1, p0, Lsun/security/ssl/Handshaker;->state:I

    #@66
    .line 148
    :cond_1
    :goto_1
    return-void

    #@67
    .line 171
    :sswitch_1
    iget-byte v1, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    #@69
    if-nez v1, :cond_2

    #@6b
    .line 173
    const-string/jumbo v1, "client sent unsolicited cert chain"

    #@6e
    .line 172
    const/16 v2, 0xa

    #@70
    invoke-virtual {p0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@73
    .line 176
    :cond_2
    new-instance v1, Lsun/security/ssl/HandshakeMessage$CertificateMsg;

    #@75
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@77
    invoke-direct {v1, v2}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    #@7a
    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientCertificate(Lsun/security/ssl/HandshakeMessage$CertificateMsg;)V

    #@7d
    goto :goto_0

    #@7e
    .line 181
    :sswitch_2
    invoke-static {}, Lsun/security/ssl/ServerHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    #@81
    move-result-object v1

    #@82
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@84
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    #@87
    move-result v2

    #@88
    aget v1, v1, v2

    #@8a
    packed-switch v1, :pswitch_data_0

    #@8d
    .line 226
    :pswitch_0
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    #@8f
    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v3, "Unrecognized key exchange: "

    #@97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v2

    #@9b
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@9d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    .line 226
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@a8
    throw v1

    #@a9
    .line 190
    :pswitch_1
    new-instance v0, Lsun/security/ssl/RSAClientKeyExchange;

    #@ab
    .line 191
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@ad
    iget-object v2, p0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    #@af
    .line 192
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@b1
    invoke-virtual {v3}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@b4
    move-result-object v3

    #@b5
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@b7
    .line 193
    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    #@b9
    move v5, p2

    #@ba
    .line 190
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/RSAClientKeyExchange;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;ILjava/security/PrivateKey;)V

    #@bd
    .line 194
    .local v0, "pms":Lsun/security/ssl/RSAClientKeyExchange;
    invoke-direct {p0, v0}, Lsun/security/ssl/ServerHandshaker;->clientKeyExchange(Lsun/security/ssl/RSAClientKeyExchange;)Ljavax/crypto/SecretKey;

    #@c0
    move-result-object v8

    #@c1
    .line 234
    .end local v0    # "pms":Lsun/security/ssl/RSAClientKeyExchange;
    .local v8, "preMasterSecret":Ljavax/crypto/SecretKey;
    :goto_2
    iget-object v1, p0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    #@c3
    invoke-virtual {p0, v8, v1}, Lsun/security/ssl/Handshaker;->calculateKeys(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)V

    #@c6
    goto :goto_0

    #@c7
    .line 199
    .end local v8    # "preMasterSecret":Ljavax/crypto/SecretKey;
    :pswitch_2
    new-instance v1, Lsun/security/ssl/KerberosClientKeyExchange;

    #@c9
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@cb
    .line 200
    iget-object v3, p0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    #@cd
    .line 201
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@cf
    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@d2
    move-result-object v4

    #@d3
    .line 202
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@d5
    .line 203
    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    #@d7
    .line 199
    invoke-direct/range {v1 .. v6}, Lsun/security/ssl/KerberosClientKeyExchange;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;[Ljavax/crypto/SecretKey;)V

    #@da
    .line 198
    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientKeyExchange(Lsun/security/ssl/KerberosClientKeyExchange;)Ljavax/crypto/SecretKey;

    #@dd
    move-result-object v8

    #@de
    .restart local v8    # "preMasterSecret":Ljavax/crypto/SecretKey;
    goto :goto_2

    #@df
    .line 215
    .end local v8    # "preMasterSecret":Ljavax/crypto/SecretKey;
    :pswitch_3
    new-instance v1, Lsun/security/ssl/DHClientKeyExchange;

    #@e1
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@e3
    invoke-direct {v1, v2}, Lsun/security/ssl/DHClientKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    #@e6
    .line 214
    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientKeyExchange(Lsun/security/ssl/DHClientKeyExchange;)Ljavax/crypto/SecretKey;

    #@e9
    move-result-object v8

    #@ea
    .restart local v8    # "preMasterSecret":Ljavax/crypto/SecretKey;
    goto :goto_2

    #@eb
    .line 223
    .end local v8    # "preMasterSecret":Ljavax/crypto/SecretKey;
    :pswitch_4
    new-instance v1, Lsun/security/ssl/ECDHClientKeyExchange;

    #@ed
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@ef
    invoke-direct {v1, v2}, Lsun/security/ssl/ECDHClientKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    #@f2
    .line 222
    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientKeyExchange(Lsun/security/ssl/ECDHClientKeyExchange;)Ljavax/crypto/SecretKey;

    #@f5
    move-result-object v8

    #@f6
    .restart local v8    # "preMasterSecret":Ljavax/crypto/SecretKey;
    goto :goto_2

    #@f7
    .line 238
    .end local v8    # "preMasterSecret":Ljavax/crypto/SecretKey;
    :sswitch_3
    new-instance v1, Lsun/security/ssl/HandshakeMessage$CertificateVerify;

    #@f9
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@fb
    .line 239
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    #@fd
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@ff
    .line 238
    invoke-direct {v1, v2, v3, v4}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;-><init>(Lsun/security/ssl/HandshakeInStream;Ljava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V

    #@102
    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientCertificateVerify(Lsun/security/ssl/HandshakeMessage$CertificateVerify;)V

    #@105
    goto/16 :goto_0

    #@107
    .line 244
    :sswitch_4
    new-instance v1, Lsun/security/ssl/HandshakeMessage$Finished;

    #@109
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@10b
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@10d
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@10f
    invoke-direct {v1, v2, v3, v4}, Lsun/security/ssl/HandshakeMessage$Finished;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/CipherSuite;)V

    #@112
    .line 243
    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientFinished(Lsun/security/ssl/HandshakeMessage$Finished;)V

    #@115
    goto/16 :goto_0

    #@117
    .line 260
    :cond_3
    iput p1, p0, Lsun/security/ssl/Handshaker;->state:I

    #@119
    goto/16 :goto_1

    #@11b
    .line 161
    nop

    #@11c
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_1
        0xf -> :sswitch_3
        0x10 -> :sswitch_2
        0x14 -> :sswitch_4
    .end sparse-switch

    #@132
    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method setClientAuth(B)V
    .locals 0
    .param p1, "clientAuth"    # B

    #@0
    .prologue
    .line 135
    iput-byte p1, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    #@2
    .line 134
    return-void
.end method

.method trySetCipherSuite(Lsun/security/ssl/CipherSuite;)Z
    .locals 9
    .param p1, "suite"    # Lsun/security/ssl/CipherSuite;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 918
    iget-boolean v4, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 919
    return v8

    #@8
    .line 922
    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/CipherSuite;->isNegotiable()Z

    #@b
    move-result v4

    #@c
    if-nez v4, :cond_1

    #@e
    .line 923
    return v6

    #@f
    .line 927
    :cond_1
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@11
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@13
    iget v5, p1, Lsun/security/ssl/CipherSuite;->obsoleted:I

    #@15
    if-lt v4, v5, :cond_2

    #@17
    .line 928
    return v6

    #@18
    .line 932
    :cond_2
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@1a
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1c
    iget v5, p1, Lsun/security/ssl/CipherSuite;->supported:I

    #@1e
    if-ge v4, v5, :cond_3

    #@20
    .line 933
    return v6

    #@21
    .line 936
    :cond_3
    iget-object v2, p1, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@23
    .line 939
    .local v2, "keyExchange":Lsun/security/ssl/CipherSuite$KeyExchange;
    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    #@25
    .line 940
    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    #@27
    .line 941
    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    #@29
    .line 942
    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->tempPrivateKey:Ljava/security/PrivateKey;

    #@2b
    .line 943
    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->tempPublicKey:Ljava/security/PublicKey;

    #@2d
    .line 945
    const/4 v3, 0x0

    #@2e
    .line 946
    .local v3, "supportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@30
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@32
    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@34
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@36
    if-lt v4, v5, :cond_4

    #@38
    .line 947
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    #@3a
    if-eqz v4, :cond_5

    #@3c
    .line 948
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    #@3e
    .line 1004
    .end local v3    # "supportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :cond_4
    :goto_0
    invoke-static {}, Lsun/security/ssl/ServerHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    #@45
    move-result v5

    #@46
    aget v4, v4, v5

    #@48
    packed-switch v4, :pswitch_data_0

    #@4b
    .line 1135
    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    #@4d
    new-instance v5, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v6, "Unrecognized cipherSuite: "

    #@55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@64
    throw v4

    #@65
    .line 950
    .restart local v3    # "supportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :cond_5
    const/4 v0, 0x0

    #@66
    .line 953
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    invoke-static {}, Lsun/security/ssl/ServerHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    #@6d
    move-result v5

    #@6e
    aget v4, v4, v5

    #@70
    packed-switch v4, :pswitch_data_1

    #@73
    .line 989
    .end local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :goto_1
    :pswitch_1
    if-nez v0, :cond_6

    #@75
    .line 991
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@78
    move-result-object v3

    #@79
    .line 1000
    .local v3, "supportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :goto_2
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@7b
    invoke-virtual {v4, v3}, Lsun/security/ssl/SSLSessionImpl;->setPeerSupportedSignatureAlgorithms(Ljava/util/Collection;)V

    #@7e
    goto :goto_0

    #@7f
    .line 964
    .restart local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .local v3, "supportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :pswitch_2
    sget-object v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@81
    iget v4, v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    #@83
    .line 965
    sget-object v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@85
    iget v5, v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    #@87
    .line 963
    invoke-static {v4, v5, v6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@8a
    move-result-object v0

    #@8b
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    goto :goto_1

    #@8c
    .line 973
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :pswitch_3
    sget-object v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@8e
    iget v4, v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    #@90
    .line 974
    sget-object v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@92
    iget v5, v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    #@94
    .line 972
    invoke-static {v4, v5, v6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@97
    move-result-object v0

    #@98
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    goto :goto_1

    #@99
    .line 982
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :pswitch_4
    sget-object v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    #@9b
    iget v4, v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    #@9d
    .line 983
    sget-object v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    #@9f
    iget v5, v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    #@a1
    .line 981
    invoke-static {v4, v5, v6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@a4
    move-result-object v0

    #@a5
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    goto :goto_1

    #@a6
    .line 994
    .end local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    #@a8
    .end local v3    # "supportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@ab
    .line 995
    .local v3, "supportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@ae
    goto :goto_2

    #@af
    .line 1007
    .end local v3    # "supportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :pswitch_5
    const-string/jumbo v4, "RSA"

    #@b2
    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    #@b5
    move-result v4

    #@b6
    if-nez v4, :cond_a

    #@b8
    .line 1008
    return v6

    #@b9
    .line 1013
    :pswitch_6
    const-string/jumbo v4, "RSA"

    #@bc
    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    #@bf
    move-result v4

    #@c0
    if-nez v4, :cond_7

    #@c2
    .line 1014
    return v6

    #@c3
    .line 1018
    :cond_7
    :try_start_0
    iget-object v4, p0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    #@c5
    const/4 v5, 0x0

    #@c6
    aget-object v4, v4, v5

    #@c8
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@cb
    move-result-object v4

    #@cc
    invoke-static {v4}, Lsun/security/ssl/JsseJce;->getRSAKeyLength(Ljava/security/PublicKey;)I

    #@cf
    move-result v4

    #@d0
    const/16 v5, 0x200

    #@d2
    if-le v4, v5, :cond_a

    #@d4
    .line 1019
    iget-boolean v4, p1, Lsun/security/ssl/CipherSuite;->exportable:Z

    #@d6
    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralRSAKeys(Z)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@d9
    move-result v4

    #@da
    if-nez v4, :cond_a

    #@dc
    .line 1020
    return v6

    #@dd
    .line 1023
    :catch_0
    move-exception v1

    #@de
    .line 1025
    .local v1, "e":Ljava/lang/RuntimeException;
    return v6

    #@df
    .line 1030
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :pswitch_7
    const-string/jumbo v4, "RSA"

    #@e2
    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    #@e5
    move-result v4

    #@e6
    if-nez v4, :cond_8

    #@e8
    .line 1031
    return v6

    #@e9
    .line 1035
    :cond_8
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@eb
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@ed
    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@ef
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@f1
    if-lt v4, v5, :cond_9

    #@f3
    .line 1038
    const-string/jumbo v4, "RSA"

    #@f6
    iget-object v5, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    #@f8
    .line 1037
    invoke-static {v3, v4, v5}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;Ljava/security/PrivateKey;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@fb
    move-result-object v4

    #@fc
    .line 1036
    iput-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@fe
    .line 1039
    iget-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@100
    if-nez v4, :cond_9

    #@102
    .line 1040
    return v6

    #@103
    .line 1044
    :cond_9
    iget-boolean v4, p1, Lsun/security/ssl/CipherSuite;->exportable:Z

    #@105
    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralDHKeys(Z)V

    #@108
    .line 1137
    :cond_a
    :goto_3
    invoke-virtual {p0, p1}, Lsun/security/ssl/Handshaker;->setCipherSuite(Lsun/security/ssl/CipherSuite;)V

    #@10b
    .line 1140
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@10d
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@10f
    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@111
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@113
    if-lt v4, v5, :cond_b

    #@115
    .line 1141
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    #@117
    if-nez v4, :cond_b

    #@119
    .line 1142
    invoke-virtual {p0, v3}, Lsun/security/ssl/Handshaker;->setPeerSupportedSignAlgs(Ljava/util/Collection;)V

    #@11c
    .line 1146
    :cond_b
    return v8

    #@11d
    .line 1048
    :pswitch_8
    const-string/jumbo v4, "RSA"

    #@120
    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    #@123
    move-result v4

    #@124
    if-nez v4, :cond_c

    #@126
    .line 1049
    return v6

    #@127
    .line 1053
    :cond_c
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@129
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@12b
    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@12d
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@12f
    if-lt v4, v5, :cond_d

    #@131
    .line 1056
    const-string/jumbo v4, "RSA"

    #@134
    iget-object v5, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    #@136
    .line 1055
    invoke-static {v3, v4, v5}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;Ljava/security/PrivateKey;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@139
    move-result-object v4

    #@13a
    .line 1054
    iput-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@13c
    .line 1057
    iget-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@13e
    if-nez v4, :cond_d

    #@140
    .line 1058
    return v6

    #@141
    .line 1062
    :cond_d
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralECDHKeys()Z

    #@144
    move-result v4

    #@145
    if-nez v4, :cond_a

    #@147
    .line 1063
    return v6

    #@148
    .line 1068
    :pswitch_9
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@14a
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@14c
    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@14e
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@150
    if-lt v4, v5, :cond_e

    #@152
    .line 1071
    const-string/jumbo v4, "DSA"

    #@155
    .line 1070
    invoke-static {v3, v4}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@158
    move-result-object v4

    #@159
    .line 1069
    iput-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@15b
    .line 1072
    iget-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@15d
    if-nez v4, :cond_e

    #@15f
    .line 1073
    return v6

    #@160
    .line 1078
    :cond_e
    const-string/jumbo v4, "DSA"

    #@163
    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    #@166
    move-result v4

    #@167
    if-nez v4, :cond_f

    #@169
    .line 1079
    return v6

    #@16a
    .line 1081
    :cond_f
    iget-boolean v4, p1, Lsun/security/ssl/CipherSuite;->exportable:Z

    #@16c
    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralDHKeys(Z)V

    #@16f
    goto :goto_3

    #@170
    .line 1085
    :pswitch_a
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@172
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@174
    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@176
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@178
    if-lt v4, v5, :cond_10

    #@17a
    .line 1088
    const-string/jumbo v4, "ECDSA"

    #@17d
    .line 1087
    invoke-static {v3, v4}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@180
    move-result-object v4

    #@181
    .line 1086
    iput-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@183
    .line 1089
    iget-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@185
    if-nez v4, :cond_10

    #@187
    .line 1090
    return v6

    #@188
    .line 1095
    :cond_10
    const-string/jumbo v4, "EC_EC"

    #@18b
    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    #@18e
    move-result v4

    #@18f
    if-nez v4, :cond_11

    #@191
    .line 1096
    return v6

    #@192
    .line 1098
    :cond_11
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralECDHKeys()Z

    #@195
    move-result v4

    #@196
    if-nez v4, :cond_a

    #@198
    .line 1099
    return v6

    #@199
    .line 1104
    :pswitch_b
    const-string/jumbo v4, "EC_RSA"

    #@19c
    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    #@19f
    move-result v4

    #@1a0
    if-nez v4, :cond_12

    #@1a2
    .line 1105
    return v6

    #@1a3
    .line 1107
    :cond_12
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupStaticECDHKeys()V

    #@1a6
    goto/16 :goto_3

    #@1a8
    .line 1111
    :pswitch_c
    const-string/jumbo v4, "EC_EC"

    #@1ab
    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    #@1ae
    move-result v4

    #@1af
    if-nez v4, :cond_13

    #@1b1
    .line 1112
    return v6

    #@1b2
    .line 1114
    :cond_13
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupStaticECDHKeys()V

    #@1b5
    goto/16 :goto_3

    #@1b7
    .line 1119
    :pswitch_d
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupKerberosKeys()Z

    #@1ba
    move-result v4

    #@1bb
    if-nez v4, :cond_a

    #@1bd
    .line 1120
    return v6

    #@1be
    .line 1125
    :pswitch_e
    iget-boolean v4, p1, Lsun/security/ssl/CipherSuite;->exportable:Z

    #@1c0
    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralDHKeys(Z)V

    #@1c3
    goto/16 :goto_3

    #@1c5
    .line 1129
    :pswitch_f
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralECDHKeys()Z

    #@1c8
    move-result v4

    #@1c9
    if-nez v4, :cond_a

    #@1cb
    .line 1130
    return v6

    #@1cc
    .line 1004
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_f
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_5
        :pswitch_6
    .end packed-switch

    #@1ec
    .line 953
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
