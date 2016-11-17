.class final Lsun/security/ssl/ClientHandshaker;
.super Lsun/security/ssl/Handshaker;
.source "ClientHandshaker.java"


# static fields
.field private static final synthetic -sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

.field private static final enableSNIExtension:Z


# instance fields
.field private certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

.field private dh:Lsun/security/ssl/DHCrypt;

.field private ecdh:Lsun/security/ssl/ECDHCrypt;

.field private ephemeralServerKey:Ljava/security/PublicKey;

.field private maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private serverDH:Ljava/math/BigInteger;

.field private serverKey:Ljava/security/PublicKey;

.field private serverKeyExchangeReceived:Z


# direct methods
.method private static synthetic -getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lsun/security/ssl/ClientHandshaker;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lsun/security/ssl/ClientHandshaker;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

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
    sput-object v0, Lsun/security/ssl/ClientHandshaker;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 93
    const-string/jumbo v0, "jsse.enableSNIExtension"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    .line 92
    sput-boolean v0, Lsun/security/ssl/ClientHandshaker;->enableSNIExtension:Z

    #@a
    .line 61
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;Lsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 11
    .param p1, "engine"    # Lsun/security/ssl/SSLEngineImpl;
    .param p2, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p3, "enabledProtocols"    # Lsun/security/ssl/ProtocolList;
    .param p4, "activeProtocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p5, "isInitialHandshake"    # Z
    .param p6, "secureRenegotiation"    # Z
    .param p7, "clientVerifyData"    # [B
    .param p8, "serverVerifyData"    # [B

    #@0
    .prologue
    .line 115
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    move-object v6, p4

    #@7
    move/from16 v7, p5

    #@9
    move/from16 v8, p6

    #@b
    move-object/from16 v9, p7

    #@d
    move-object/from16 v10, p8

    #@f
    invoke-direct/range {v0 .. v10}, Lsun/security/ssl/Handshaker;-><init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    #@12
    .line 113
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;Lsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 11
    .param p1, "socket"    # Lsun/security/ssl/SSLSocketImpl;
    .param p2, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p3, "enabledProtocols"    # Lsun/security/ssl/ProtocolList;
    .param p4, "activeProtocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p5, "isInitialHandshake"    # Z
    .param p6, "secureRenegotiation"    # Z
    .param p7, "clientVerifyData"    # [B
    .param p8, "serverVerifyData"    # [B

    #@0
    .prologue
    .line 104
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    move-object v6, p4

    #@7
    move/from16 v7, p5

    #@9
    move/from16 v8, p6

    #@b
    move-object/from16 v9, p7

    #@d
    move-object/from16 v10, p8

    #@f
    invoke-direct/range {v0 .. v10}, Lsun/security/ssl/Handshaker;-><init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    #@12
    .line 102
    return-void
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
    .line 1078
    new-instance v0, Lsun/security/ssl/HandshakeMessage$Finished;

    #@2
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@4
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@6
    .line 1079
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@8
    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    #@b
    move-result-object v4

    #@c
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@e
    const/4 v3, 0x1

    #@f
    .line 1078
    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/HandshakeMessage$Finished;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;Lsun/security/ssl/CipherSuite;)V

    #@12
    .line 1087
    .local v0, "mesg":Lsun/security/ssl/HandshakeMessage$Finished;
    invoke-virtual {p0, v0, p1}, Lsun/security/ssl/Handshaker;->sendChangeCipherSpec(Lsun/security/ssl/HandshakeMessage$Finished;Z)V

    #@15
    .line 1092
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 1093
    invoke-virtual {v0}, Lsun/security/ssl/HandshakeMessage$Finished;->getVerifyData()[B

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    #@1f
    .line 1101
    :cond_0
    const/16 v1, 0x13

    #@21
    iput v1, p0, Lsun/security/ssl/Handshaker;->state:I

    #@23
    .line 1077
    return-void
.end method

.method private serverCertificate(Lsun/security/ssl/HandshakeMessage$CertificateMsg;)V
    .locals 6
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$CertificateMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1301
    sget-object v4, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@2
    if-eqz v4, :cond_0

    #@4
    const-string/jumbo v4, "handshake"

    #@7
    invoke-static {v4}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 1302
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    invoke-virtual {p1, v4}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->print(Ljava/io/PrintStream;)V

    #@12
    .line 1304
    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    #@15
    move-result-object v2

    #@16
    .line 1305
    .local v2, "peerCerts":[Ljava/security/cert/X509Certificate;
    array-length v4, v2

    #@17
    if-nez v4, :cond_1

    #@19
    .line 1307
    const-string/jumbo v4, "empty certificate chain"

    #@1c
    .line 1306
    const/16 v5, 0x2a

    #@1e
    invoke-virtual {p0, v5, v4}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@21
    .line 1310
    :cond_1
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@23
    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    #@26
    move-result-object v3

    #@27
    .line 1315
    .local v3, "tm":Ljavax/net/ssl/X509TrustManager;
    :try_start_0
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@29
    sget-object v5, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@2b
    if-ne v4, v5, :cond_2

    #@2d
    iget-boolean v4, p0, Lsun/security/ssl/ClientHandshaker;->serverKeyExchangeReceived:Z

    #@2f
    if-eqz v4, :cond_3

    #@31
    .line 1318
    :cond_2
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@33
    iget-object v1, v4, Lsun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    #@35
    .line 1321
    .local v1, "keyExchangeString":Ljava/lang/String;
    :goto_0
    instance-of v4, v3, Ljavax/net/ssl/X509ExtendedTrustManager;

    #@37
    if-eqz v4, :cond_5

    #@39
    .line 1322
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@3b
    if-eqz v4, :cond_4

    #@3d
    .line 1323
    nop

    #@3e
    nop

    #@3f
    .line 1324
    .end local v3    # "tm":Ljavax/net/ssl/X509TrustManager;
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@42
    move-result-object v4

    #@43
    check-cast v4, [Ljava/security/cert/X509Certificate;

    #@45
    .line 1326
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@47
    .line 1323
    invoke-virtual {v3, v4, v1, v5}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a
    .line 1343
    .end local v1    # "keyExchangeString":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@4c
    invoke-virtual {v4, v2}, Lsun/security/ssl/SSLSessionImpl;->setPeerCertificates([Ljava/security/cert/X509Certificate;)V

    #@4f
    .line 1300
    return-void

    #@50
    .line 1316
    .restart local v3    # "tm":Ljavax/net/ssl/X509TrustManager;
    :cond_3
    :try_start_1
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@52
    iget-object v1, v4, Lsun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    #@54
    .restart local v1    # "keyExchangeString":Ljava/lang/String;
    goto :goto_0

    #@55
    .line 1328
    :cond_4
    nop

    #@56
    nop

    #@57
    .line 1329
    .end local v3    # "tm":Ljavax/net/ssl/X509TrustManager;
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5a
    move-result-object v4

    #@5b
    check-cast v4, [Ljava/security/cert/X509Certificate;

    #@5d
    .line 1331
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@5f
    .line 1328
    invoke-virtual {v3, v4, v1, v5}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    #@62
    goto :goto_1

    #@63
    .line 1339
    .end local v1    # "keyExchangeString":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@64
    .line 1341
    .local v0, "e":Ljava/security/cert/CertificateException;
    const/16 v4, 0x2e

    #@66
    invoke-virtual {p0, v4, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/Throwable;)V

    #@69
    goto :goto_1

    #@6a
    .line 1336
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "keyExchangeString":Ljava/lang/String;
    .restart local v3    # "tm":Ljavax/net/ssl/X509TrustManager;
    :cond_5
    :try_start_2
    new-instance v4, Ljava/security/cert/CertificateException;

    #@6c
    .line 1337
    const-string/jumbo v5, "Improper X509TrustManager implementation"

    #@6f
    .line 1336
    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@72
    throw v4
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method private serverFinished(Lsun/security/ssl/HandshakeMessage$Finished;)V
    .locals 4
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$Finished;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1017
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

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
    .line 1018
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage$Finished;->print(Ljava/io/PrintStream;)V

    #@12
    .line 1021
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@14
    .line 1022
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@16
    invoke-virtual {v2}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    #@19
    move-result-object v2

    #@1a
    .line 1021
    const/4 v3, 0x2

    #@1b
    invoke-virtual {p1, v1, v3, v2}, Lsun/security/ssl/HandshakeMessage$Finished;->verify(Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;)Z

    #@1e
    move-result v0

    #@1f
    .line 1024
    .local v0, "verified":Z
    if-nez v0, :cond_1

    #@21
    .line 1026
    const-string/jumbo v1, "server \'finished\' message doesn\'t verify"

    #@24
    .line 1025
    const/16 v2, 0x2f

    #@26
    invoke-virtual {p0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@29
    .line 1033
    :cond_1
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 1034
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$Finished;->getVerifyData()[B

    #@30
    move-result-object v1

    #@31
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    #@33
    .line 1047
    :cond_2
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@35
    if-eqz v1, :cond_3

    #@37
    .line 1048
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@39
    invoke-virtual {v1}, Lsun/security/ssl/HandshakeInStream;->digestNow()V

    #@3c
    .line 1049
    const/4 v1, 0x1

    #@3d
    invoke-direct {p0, v1}, Lsun/security/ssl/ClientHandshaker;->sendChangeCipherAndFinish(Z)V

    #@40
    .line 1051
    :cond_3
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@45
    move-result-wide v2

    #@46
    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/SSLSessionImpl;->setLastAccessedTime(J)V

    #@49
    .line 1053
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@4b
    if-nez v1, :cond_4

    #@4d
    .line 1054
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@4f
    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_5

    #@55
    .line 1055
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@57
    invoke-virtual {v1}, Lsun/security/ssl/SSLContextImpl;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    #@5a
    move-result-object v1

    #@5b
    check-cast v1, Lsun/security/ssl/SSLSessionContextImpl;

    #@5d
    .line 1057
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@5f
    .line 1055
    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSessionContextImpl;->put(Lsun/security/ssl/SSLSessionImpl;)V

    #@62
    .line 1058
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@64
    if-eqz v1, :cond_4

    #@66
    const-string/jumbo v1, "session"

    #@69
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@6c
    move-result v1

    #@6d
    if-eqz v1, :cond_4

    #@6f
    .line 1059
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@71
    new-instance v2, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v3, "%% Cached client session: "

    #@79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v2

    #@7d
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@7f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8a
    .line 1016
    :cond_4
    :goto_0
    return-void

    #@8b
    .line 1061
    :cond_5
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@8d
    if-eqz v1, :cond_4

    #@8f
    const-string/jumbo v1, "session"

    #@92
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@95
    move-result v1

    #@96
    if-eqz v1, :cond_4

    #@98
    .line 1062
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9a
    .line 1063
    new-instance v2, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v3, "%% Didn\'t cache non-resumable client session: "

    #@a2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v2

    #@a6
    .line 1064
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@a8
    .line 1063
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v2

    #@ac
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v2

    #@b0
    .line 1062
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b3
    goto :goto_0
.end method

.method private serverHello(Lsun/security/ssl/HandshakeMessage$ServerHello;)V
    .locals 20
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$ServerHello;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 374
    const/4 v1, 0x0

    #@1
    move-object/from16 v0, p0

    #@3
    iput-boolean v1, v0, Lsun/security/ssl/ClientHandshaker;->serverKeyExchangeReceived:Z

    #@5
    .line 375
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@7
    if-eqz v1, :cond_0

    #@9
    const-string/jumbo v1, "handshake"

    #@c
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 376
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@14
    move-object/from16 v0, p1

    #@16
    invoke-virtual {v0, v1}, Lsun/security/ssl/HandshakeMessage$ServerHello;->print(Ljava/io/PrintStream;)V

    #@19
    .line 380
    :cond_0
    move-object/from16 v0, p1

    #@1b
    iget-object v12, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@1d
    .line 381
    .local v12, "mesgVersion":Lsun/security/ssl/ProtocolVersion;
    move-object/from16 v0, p0

    #@1f
    invoke-virtual {v0, v12}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/ProtocolVersion;)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_1

    #@25
    .line 382
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    #@27
    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v3, "Server chose "

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 384
    const-string/jumbo v3, ", but that protocol version is not enabled or not supported "

    #@3a
    .line 383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    .line 385
    const-string/jumbo v3, "by the client."

    #@41
    .line 383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    .line 382
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v1

    #@4d
    .line 388
    :cond_1
    move-object/from16 v0, p0

    #@4f
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@51
    invoke-virtual {v1, v12}, Lsun/security/ssl/HandshakeHash;->protocolDetermined(Lsun/security/ssl/ProtocolVersion;)V

    #@54
    .line 392
    move-object/from16 v0, p0

    #@56
    invoke-virtual {v0, v12}, Lsun/security/ssl/Handshaker;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@59
    .line 396
    move-object/from16 v0, p1

    #@5b
    iget-object v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@5d
    sget-object v2, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    #@5f
    invoke-virtual {v1, v2}, Lsun/security/ssl/HelloExtensions;->get(Lsun/security/ssl/ExtensionType;)Lsun/security/ssl/HelloExtension;

    #@62
    move-result-object v14

    #@63
    .line 395
    check-cast v14, Lsun/security/ssl/RenegotiationInfoExtension;

    #@65
    .line 397
    .local v14, "serverHelloRI":Lsun/security/ssl/RenegotiationInfoExtension;
    if-eqz v14, :cond_9

    #@67
    .line 398
    move-object/from16 v0, p0

    #@69
    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    #@6b
    if-eqz v1, :cond_7

    #@6d
    .line 400
    invoke-virtual {v14}, Lsun/security/ssl/RenegotiationInfoExtension;->isEmpty()Z

    #@70
    move-result v1

    #@71
    if-nez v1, :cond_2

    #@73
    .line 403
    const-string/jumbo v1, "The renegotiation_info field is not empty"

    #@76
    .line 402
    const/16 v2, 0x28

    #@78
    move-object/from16 v0, p0

    #@7a
    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@7d
    .line 406
    :cond_2
    const/4 v1, 0x1

    #@7e
    move-object/from16 v0, p0

    #@80
    iput-boolean v1, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@82
    .line 461
    :cond_3
    :goto_0
    move-object/from16 v0, p1

    #@84
    iget-object v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->svr_random:Lsun/security/ssl/RandomCookie;

    #@86
    move-object/from16 v0, p0

    #@88
    iput-object v1, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    #@8a
    .line 463
    move-object/from16 v0, p1

    #@8c
    iget-object v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@8e
    move-object/from16 v0, p0

    #@90
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/CipherSuite;)Z

    #@93
    move-result v1

    #@94
    if-nez v1, :cond_4

    #@96
    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v2, "Server selected improper ciphersuite "

    #@9e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    move-object/from16 v0, p1

    #@a4
    iget-object v2, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@a6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v1

    #@ae
    .line 464
    const/16 v2, 0x2f

    #@b0
    move-object/from16 v0, p0

    #@b2
    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@b5
    .line 468
    :cond_4
    move-object/from16 v0, p1

    #@b7
    iget-object v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@b9
    move-object/from16 v0, p0

    #@bb
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setCipherSuite(Lsun/security/ssl/CipherSuite;)V

    #@be
    .line 469
    move-object/from16 v0, p0

    #@c0
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@c2
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@c4
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@c6
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@c8
    if-lt v1, v2, :cond_5

    #@ca
    .line 470
    move-object/from16 v0, p0

    #@cc
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@ce
    move-object/from16 v0, p0

    #@d0
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@d2
    iget-object v2, v2, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    #@d4
    invoke-virtual {v2}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashAlg()Ljava/lang/String;

    #@d7
    move-result-object v2

    #@d8
    invoke-virtual {v1, v2}, Lsun/security/ssl/HandshakeHash;->setFinishedAlg(Ljava/lang/String;)V

    #@db
    .line 473
    :cond_5
    move-object/from16 v0, p1

    #@dd
    iget-byte v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->compression_method:B

    #@df
    if-eqz v1, :cond_6

    #@e1
    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    const-string/jumbo v2, "compression type not supported, "

    #@e9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v1

    #@ed
    .line 476
    move-object/from16 v0, p1

    #@ef
    iget-byte v2, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->compression_method:B

    #@f1
    .line 475
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v1

    #@f5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v1

    #@f9
    .line 474
    const/16 v2, 0x2f

    #@fb
    move-object/from16 v0, p0

    #@fd
    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@100
    .line 481
    :cond_6
    move-object/from16 v0, p0

    #@102
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@104
    if-eqz v1, :cond_12

    #@106
    .line 483
    move-object/from16 v0, p0

    #@108
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@10a
    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getSessionId()Lsun/security/ssl/SessionId;

    #@10d
    move-result-object v1

    #@10e
    move-object/from16 v0, p1

    #@110
    iget-object v2, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    #@112
    invoke-virtual {v1, v2}, Lsun/security/ssl/SessionId;->equals(Ljava/lang/Object;)Z

    #@115
    move-result v1

    #@116
    if-eqz v1, :cond_16

    #@118
    .line 488
    move-object/from16 v0, p0

    #@11a
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@11c
    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getSuite()Lsun/security/ssl/CipherSuite;

    #@11f
    move-result-object v15

    #@120
    .line 489
    .local v15, "sessionSuite":Lsun/security/ssl/CipherSuite;
    move-object/from16 v0, p0

    #@122
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@124
    if-eq v1, v15, :cond_c

    #@126
    .line 490
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    #@128
    .line 491
    const-string/jumbo v2, "Server returned wrong cipher suite for session"

    #@12b
    .line 490
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@12e
    throw v1

    #@12f
    .line 410
    .end local v15    # "sessionSuite":Lsun/security/ssl/CipherSuite;
    :cond_7
    move-object/from16 v0, p0

    #@131
    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@133
    if-nez v1, :cond_8

    #@135
    .line 412
    const-string/jumbo v1, "Unexpected renegotiation indication extension"

    #@138
    .line 411
    const/16 v2, 0x28

    #@13a
    move-object/from16 v0, p0

    #@13c
    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@13f
    .line 417
    :cond_8
    move-object/from16 v0, p0

    #@141
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    #@143
    array-length v1, v1

    #@144
    move-object/from16 v0, p0

    #@146
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    #@148
    array-length v2, v2

    #@149
    add-int/2addr v1, v2

    #@14a
    new-array v0, v1, [B

    #@14c
    move-object/from16 v19, v0

    #@14e
    .line 418
    .local v19, "verifyData":[B
    move-object/from16 v0, p0

    #@150
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    #@152
    .line 419
    move-object/from16 v0, p0

    #@154
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    #@156
    array-length v2, v2

    #@157
    .line 418
    const/4 v3, 0x0

    #@158
    .line 419
    const/4 v4, 0x0

    #@159
    .line 418
    move-object/from16 v0, v19

    #@15b
    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@15e
    .line 420
    move-object/from16 v0, p0

    #@160
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    #@162
    .line 421
    move-object/from16 v0, p0

    #@164
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    #@166
    array-length v2, v2

    #@167
    move-object/from16 v0, p0

    #@169
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    #@16b
    array-length v3, v3

    #@16c
    .line 420
    const/4 v4, 0x0

    #@16d
    move-object/from16 v0, v19

    #@16f
    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@172
    .line 423
    invoke-virtual {v14}, Lsun/security/ssl/RenegotiationInfoExtension;->getRenegotiatedConnection()[B

    #@175
    move-result-object v1

    #@176
    .line 422
    move-object/from16 v0, v19

    #@178
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@17b
    move-result v1

    #@17c
    if-nez v1, :cond_3

    #@17e
    .line 425
    const-string/jumbo v1, "Incorrect verify data in ServerHello renegotiation_info message"

    #@181
    .line 424
    const/16 v2, 0x28

    #@183
    move-object/from16 v0, p0

    #@185
    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@188
    goto/16 :goto_0

    #@18a
    .line 431
    .end local v19    # "verifyData":[B
    :cond_9
    move-object/from16 v0, p0

    #@18c
    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    #@18e
    if-eqz v1, :cond_b

    #@190
    .line 432
    sget-boolean v1, Lsun/security/ssl/ClientHandshaker;->allowLegacyHelloMessages:Z

    #@192
    if-nez v1, :cond_a

    #@194
    .line 435
    const-string/jumbo v1, "Failed to negotiate the use of secure renegotiation"

    #@197
    .line 434
    const/16 v2, 0x28

    #@199
    move-object/from16 v0, p0

    #@19b
    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@19e
    .line 438
    :cond_a
    const/4 v1, 0x0

    #@19f
    move-object/from16 v0, p0

    #@1a1
    iput-boolean v1, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@1a3
    .line 439
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@1a5
    if-eqz v1, :cond_3

    #@1a7
    const-string/jumbo v1, "handshake"

    #@1aa
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@1ad
    move-result v1

    #@1ae
    if-eqz v1, :cond_3

    #@1b0
    .line 440
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1b2
    const-string/jumbo v2, "Warning: No renegotiation indication extension in ServerHello"

    #@1b5
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1b8
    goto/16 :goto_0

    #@1ba
    .line 446
    :cond_b
    move-object/from16 v0, p0

    #@1bc
    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@1be
    if-eqz v1, :cond_3

    #@1c0
    .line 448
    const-string/jumbo v1, "No renegotiation indication extension"

    #@1c3
    .line 447
    const/16 v2, 0x28

    #@1c5
    move-object/from16 v0, p0

    #@1c7
    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@1ca
    goto/16 :goto_0

    #@1cc
    .line 495
    .restart local v15    # "sessionSuite":Lsun/security/ssl/CipherSuite;
    :cond_c
    move-object/from16 v0, p0

    #@1ce
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@1d0
    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lsun/security/ssl/ProtocolVersion;

    #@1d3
    move-result-object v16

    #@1d4
    .line 496
    .local v16, "sessionVersion":Lsun/security/ssl/ProtocolVersion;
    move-object/from16 v0, p0

    #@1d6
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@1d8
    move-object/from16 v0, v16

    #@1da
    if-eq v1, v0, :cond_d

    #@1dc
    .line 497
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    #@1de
    .line 498
    const-string/jumbo v2, "Server resumed session with wrong protocol version"

    #@1e1
    .line 497
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@1e4
    throw v1

    #@1e5
    .line 502
    :cond_d
    iget-object v1, v15, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1e7
    sget-object v2, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1e9
    if-eq v1, v2, :cond_e

    #@1eb
    .line 503
    iget-object v1, v15, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1ed
    sget-object v2, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1ef
    if-ne v1, v2, :cond_11

    #@1f1
    .line 504
    :cond_e
    move-object/from16 v0, p0

    #@1f3
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@1f5
    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getLocalPrincipal()Ljava/security/Principal;

    #@1f8
    move-result-object v11

    #@1f9
    .line 506
    .local v11, "localPrincipal":Ljava/security/Principal;
    const/16 v17, 0x0

    #@1fb
    .line 509
    .local v17, "subject":Ljavax/security/auth/Subject;
    :try_start_0
    new-instance v1, Lsun/security/ssl/ClientHandshaker$1;

    #@1fd
    move-object/from16 v0, p0

    #@1ff
    invoke-direct {v1, v0}, Lsun/security/ssl/ClientHandshaker$1;-><init>(Lsun/security/ssl/ClientHandshaker;)V

    #@202
    .line 508
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@205
    move-result-object v17

    #@206
    .end local v17    # "subject":Ljavax/security/auth/Subject;
    check-cast v17, Ljavax/security/auth/Subject;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@208
    .line 521
    :cond_f
    :goto_1
    if-eqz v17, :cond_14

    #@20a
    .line 524
    const-class v1, Ljava/security/Principal;

    #@20c
    move-object/from16 v0, v17

    #@20e
    invoke-virtual {v0, v1}, Ljavax/security/auth/Subject;->getPrincipals(Ljava/lang/Class;)Ljava/util/Set;

    #@211
    move-result-object v13

    #@212
    .line 525
    .local v13, "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    invoke-interface {v13, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@215
    move-result v1

    #@216
    if-nez v1, :cond_10

    #@218
    .line 526
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    #@21a
    const-string/jumbo v2, "Server resumed session with wrong subject identity"

    #@21d
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@220
    throw v1

    #@221
    .line 513
    .end local v13    # "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :catch_0
    move-exception v8

    #@222
    .line 514
    .local v8, "e":Ljava/security/PrivilegedActionException;
    const/16 v17, 0x0

    #@224
    .line 515
    .restart local v17    # "subject":Ljavax/security/auth/Subject;
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@226
    if-eqz v1, :cond_f

    #@228
    const-string/jumbo v1, "session"

    #@22b
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@22e
    move-result v1

    #@22f
    if-eqz v1, :cond_f

    #@231
    .line 516
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@233
    const-string/jumbo v2, "Attempt to obtain subject failed!"

    #@236
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@239
    goto :goto_1

    #@23a
    .line 529
    .end local v8    # "e":Ljava/security/PrivilegedActionException;
    .end local v17    # "subject":Ljavax/security/auth/Subject;
    .restart local v13    # "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :cond_10
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@23c
    if-eqz v1, :cond_11

    #@23e
    const-string/jumbo v1, "session"

    #@241
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@244
    move-result v1

    #@245
    if-eqz v1, :cond_11

    #@247
    .line 530
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@249
    const-string/jumbo v2, "Subject identity is same"

    #@24c
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24f
    .line 544
    .end local v11    # "localPrincipal":Ljava/security/Principal;
    .end local v13    # "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :cond_11
    const/4 v1, 0x1

    #@250
    move-object/from16 v0, p0

    #@252
    iput-boolean v1, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@254
    .line 545
    const/16 v1, 0x13

    #@256
    move-object/from16 v0, p0

    #@258
    iput v1, v0, Lsun/security/ssl/Handshaker;->state:I

    #@25a
    .line 546
    move-object/from16 v0, p0

    #@25c
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@25e
    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    #@261
    move-result-object v1

    #@262
    move-object/from16 v0, p0

    #@264
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->calculateConnectionKeys(Ljavax/crypto/SecretKey;)V

    #@267
    .line 547
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@269
    if-eqz v1, :cond_12

    #@26b
    const-string/jumbo v1, "session"

    #@26e
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@271
    move-result v1

    #@272
    if-eqz v1, :cond_12

    #@274
    .line 548
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@276
    new-instance v2, Ljava/lang/StringBuilder;

    #@278
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27b
    const-string/jumbo v3, "%% Server resumed "

    #@27e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@281
    move-result-object v2

    #@282
    move-object/from16 v0, p0

    #@284
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@286
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@289
    move-result-object v2

    #@28a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28d
    move-result-object v2

    #@28e
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@291
    .line 560
    .end local v15    # "sessionSuite":Lsun/security/ssl/CipherSuite;
    .end local v16    # "sessionVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_12
    move-object/from16 v0, p0

    #@293
    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    #@295
    if-eqz v1, :cond_17

    #@297
    move-object/from16 v0, p0

    #@299
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@29b
    if-eqz v1, :cond_17

    #@29d
    .line 561
    move-object/from16 v0, p0

    #@29f
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@2a1
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@2a3
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@2a5
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@2a7
    if-lt v1, v2, :cond_13

    #@2a9
    .line 562
    move-object/from16 v0, p0

    #@2ab
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@2ad
    const/4 v2, 0x0

    #@2ae
    invoke-virtual {v1, v2}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    #@2b1
    .line 565
    :cond_13
    move-object/from16 v0, p0

    #@2b3
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@2b5
    move-object/from16 v0, p0

    #@2b7
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setHandshakeSessionSE(Lsun/security/ssl/SSLSessionImpl;)V

    #@2ba
    .line 566
    return-void

    #@2bb
    .line 533
    .restart local v11    # "localPrincipal":Ljava/security/Principal;
    .restart local v15    # "sessionSuite":Lsun/security/ssl/CipherSuite;
    .restart local v16    # "sessionVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_14
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@2bd
    if-eqz v1, :cond_15

    #@2bf
    const-string/jumbo v1, "session"

    #@2c2
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@2c5
    move-result v1

    #@2c6
    if-eqz v1, :cond_15

    #@2c8
    .line 534
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2ca
    const-string/jumbo v2, "Kerberos credentials are not present in the current Subject; check if  javax.security.auth.useSubjectAsCreds system property has been set to false"

    #@2cd
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2d0
    .line 538
    :cond_15
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    #@2d2
    .line 539
    const-string/jumbo v2, "Server resumed session with no subject"

    #@2d5
    .line 538
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@2d8
    throw v1

    #@2d9
    .line 552
    .end local v11    # "localPrincipal":Ljava/security/Principal;
    .end local v15    # "sessionSuite":Lsun/security/ssl/CipherSuite;
    .end local v16    # "sessionVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_16
    const/4 v1, 0x0

    #@2da
    move-object/from16 v0, p0

    #@2dc
    iput-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@2de
    .line 553
    move-object/from16 v0, p0

    #@2e0
    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    #@2e2
    if-nez v1, :cond_12

    #@2e4
    .line 554
    new-instance v1, Ljavax/net/ssl/SSLException;

    #@2e6
    .line 555
    const-string/jumbo v2, "New session creation is disabled"

    #@2e9
    .line 554
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@2ec
    throw v1

    #@2ed
    .line 570
    :cond_17
    move-object/from16 v0, p1

    #@2ef
    iget-object v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    #@2f1
    invoke-virtual {v1}, Lsun/security/ssl/HelloExtensions;->list()Ljava/util/List;

    #@2f4
    move-result-object v1

    #@2f5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f8
    move-result-object v10

    #@2f9
    .local v10, "ext$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@2fc
    move-result v1

    #@2fd
    if-eqz v1, :cond_19

    #@2ff
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@302
    move-result-object v9

    #@303
    check-cast v9, Lsun/security/ssl/HelloExtension;

    #@305
    .line 571
    .local v9, "ext":Lsun/security/ssl/HelloExtension;
    iget-object v0, v9, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@307
    move-object/from16 v18, v0

    #@309
    .line 572
    .local v18, "type":Lsun/security/ssl/ExtensionType;
    sget-object v1, Lsun/security/ssl/ExtensionType;->EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

    #@30b
    move-object/from16 v0, v18

    #@30d
    if-eq v0, v1, :cond_18

    #@30f
    .line 573
    sget-object v1, Lsun/security/ssl/ExtensionType;->EXT_EC_POINT_FORMATS:Lsun/security/ssl/ExtensionType;

    #@311
    move-object/from16 v0, v18

    #@313
    if-eq v0, v1, :cond_18

    #@315
    .line 574
    sget-object v1, Lsun/security/ssl/ExtensionType;->EXT_SERVER_NAME:Lsun/security/ssl/ExtensionType;

    #@317
    move-object/from16 v0, v18

    #@319
    if-eq v0, v1, :cond_18

    #@31b
    .line 575
    sget-object v1, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    #@31d
    move-object/from16 v0, v18

    #@31f
    if-eq v0, v1, :cond_18

    #@321
    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    #@323
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@326
    const-string/jumbo v2, "Server sent an unsupported extension: "

    #@329
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32c
    move-result-object v1

    #@32d
    move-object/from16 v0, v18

    #@32f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@332
    move-result-object v1

    #@333
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@336
    move-result-object v1

    #@337
    .line 576
    const/16 v2, 0x6e

    #@339
    move-object/from16 v0, p0

    #@33b
    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@33e
    goto :goto_2

    #@33f
    .line 582
    .end local v9    # "ext":Lsun/security/ssl/HelloExtension;
    .end local v18    # "type":Lsun/security/ssl/ExtensionType;
    :cond_19
    new-instance v1, Lsun/security/ssl/SSLSessionImpl;

    #@341
    move-object/from16 v0, p0

    #@343
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@345
    move-object/from16 v0, p0

    #@347
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@349
    .line 583
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getLocalSupportedSignAlgs()Ljava/util/Collection;

    #@34c
    move-result-object v4

    #@34d
    .line 584
    move-object/from16 v0, p1

    #@34f
    iget-object v5, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    #@351
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getHostSE()Ljava/lang/String;

    #@354
    move-result-object v6

    #@355
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getPortSE()I

    #@358
    move-result v7

    #@359
    .line 582
    invoke-direct/range {v1 .. v7}, Lsun/security/ssl/SSLSessionImpl;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite;Ljava/util/Collection;Lsun/security/ssl/SessionId;Ljava/lang/String;I)V

    #@35c
    move-object/from16 v0, p0

    #@35e
    iput-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@360
    .line 585
    move-object/from16 v0, p0

    #@362
    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@364
    move-object/from16 v0, p0

    #@366
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setHandshakeSessionSE(Lsun/security/ssl/SSLSessionImpl;)V

    #@369
    .line 586
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@36b
    if-eqz v1, :cond_1a

    #@36d
    const-string/jumbo v1, "handshake"

    #@370
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@373
    move-result v1

    #@374
    if-eqz v1, :cond_1a

    #@376
    .line 587
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@378
    new-instance v2, Ljava/lang/StringBuilder;

    #@37a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37d
    const-string/jumbo v3, "** "

    #@380
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@383
    move-result-object v2

    #@384
    move-object/from16 v0, p0

    #@386
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@388
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38b
    move-result-object v2

    #@38c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38f
    move-result-object v2

    #@390
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@393
    .line 373
    :cond_1a
    return-void
.end method

.method private serverHelloDone(Lsun/security/ssl/HandshakeMessage$ServerHelloDone;)V
    .locals 30
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$ServerHelloDone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 641
    sget-object v5, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@2
    if-eqz v5, :cond_0

    #@4
    const-string/jumbo v5, "handshake"

    #@7
    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@a
    move-result v5

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 642
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    move-object/from16 v0, p1

    #@11
    invoke-virtual {v0, v5}, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;->print(Ljava/io/PrintStream;)V

    #@14
    .line 650
    :cond_0
    move-object/from16 v0, p0

    #@16
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@18
    invoke-virtual {v5}, Lsun/security/ssl/HandshakeInStream;->digestNow()V

    #@1b
    .line 657
    const/16 v28, 0x0

    #@1d
    .line 659
    .local v28, "signingKey":Ljava/security/PrivateKey;
    move-object/from16 v0, p0

    #@1f
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    #@21
    if-eqz v5, :cond_a

    #@23
    .line 660
    move-object/from16 v0, p0

    #@25
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@27
    invoke-virtual {v5}, Lsun/security/ssl/SSLContextImpl;->getX509KeyManager()Ljavax/net/ssl/X509ExtendedKeyManager;

    #@2a
    move-result-object v21

    #@2b
    .line 662
    .local v21, "km":Ljavax/net/ssl/X509ExtendedKeyManager;
    new-instance v19, Ljava/util/ArrayList;

    #@2d
    const/4 v5, 0x4

    #@2e
    move-object/from16 v0, v19

    #@30
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@33
    .line 664
    .local v19, "keytypesTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    #@34
    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@36
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    #@38
    iget-object v5, v5, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    #@3a
    array-length v5, v5

    #@3b
    if-ge v15, v5, :cond_4

    #@3d
    .line 667
    move-object/from16 v0, p0

    #@3f
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    #@41
    iget-object v5, v5, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    #@43
    aget-byte v5, v5, v15

    #@45
    sparse-switch v5, :sswitch_data_0

    #@48
    .line 690
    const/16 v29, 0x0

    #@4a
    .line 694
    :goto_1
    if-eqz v29, :cond_1

    #@4c
    move-object/from16 v0, v19

    #@4e
    move-object/from16 v1, v29

    #@50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@53
    move-result v5

    #@54
    if-eqz v5, :cond_3

    #@56
    .line 664
    :cond_1
    :goto_2
    add-int/lit8 v15, v15, 0x1

    #@58
    goto :goto_0

    #@59
    .line 669
    :sswitch_0
    const-string/jumbo v29, "RSA"

    #@5c
    .local v29, "typeName":Ljava/lang/String;
    goto :goto_1

    #@5d
    .line 673
    .end local v29    # "typeName":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v29, "DSA"

    #@60
    .restart local v29    # "typeName":Ljava/lang/String;
    goto :goto_1

    #@61
    .line 678
    .end local v29    # "typeName":Ljava/lang/String;
    :sswitch_2
    invoke-static {}, Lsun/security/ssl/JsseJce;->isEcAvailable()Z

    #@64
    move-result v5

    #@65
    if-eqz v5, :cond_2

    #@67
    const-string/jumbo v29, "EC"

    #@6a
    .restart local v29    # "typeName":Ljava/lang/String;
    goto :goto_1

    #@6b
    .end local v29    # "typeName":Ljava/lang/String;
    :cond_2
    const/16 v29, 0x0

    #@6d
    .local v29, "typeName":Ljava/lang/String;
    goto :goto_1

    #@6e
    .line 695
    .end local v29    # "typeName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v19

    #@70
    move-object/from16 v1, v29

    #@72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@75
    goto :goto_2

    #@76
    .line 699
    :cond_4
    const/4 v11, 0x0

    #@77
    .line 700
    .local v11, "alias":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    #@7a
    move-result v20

    #@7b
    .line 701
    .local v20, "keytypesTmpSize":I
    if-eqz v20, :cond_5

    #@7d
    .line 703
    move/from16 v0, v20

    #@7f
    new-array v5, v0, [Ljava/lang/String;

    #@81
    move-object/from16 v0, v19

    #@83
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@86
    move-result-object v18

    #@87
    check-cast v18, [Ljava/lang/String;

    #@89
    .line 705
    .local v18, "keytypes":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@8b
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@8d
    if-eqz v5, :cond_b

    #@8f
    .line 707
    move-object/from16 v0, p0

    #@91
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    #@93
    invoke-virtual {v5}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->getAuthorities()[Ljavax/security/auth/x500/X500Principal;

    #@96
    move-result-object v5

    #@97
    move-object/from16 v0, p0

    #@99
    iget-object v6, v0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@9b
    .line 706
    move-object/from16 v0, v21

    #@9d
    move-object/from16 v1, v18

    #@9f
    invoke-virtual {v0, v1, v5, v6}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    #@a2
    move-result-object v11

    #@a3
    .line 714
    .end local v11    # "alias":Ljava/lang/String;
    .end local v18    # "keytypes":[Ljava/lang/String;
    :cond_5
    :goto_3
    const/16 v22, 0x0

    #@a5
    .line 715
    .local v22, "m1":Lsun/security/ssl/HandshakeMessage$CertificateMsg;
    if-eqz v11, :cond_7

    #@a7
    .line 716
    move-object/from16 v0, v21

    #@a9
    invoke-virtual {v0, v11}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    #@ac
    move-result-object v12

    #@ad
    .line 717
    .local v12, "certs":[Ljava/security/cert/X509Certificate;
    if-eqz v12, :cond_7

    #@af
    array-length v5, v12

    #@b0
    if-eqz v5, :cond_7

    #@b2
    .line 718
    const/4 v5, 0x0

    #@b3
    aget-object v5, v12, v5

    #@b5
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@b8
    move-result-object v26

    #@b9
    .line 720
    .local v26, "publicKey":Ljava/security/PublicKey;
    move-object/from16 v0, v26

    #@bb
    instance-of v5, v0, Ljava/security/interfaces/ECPublicKey;

    #@bd
    if-eqz v5, :cond_6

    #@bf
    move-object/from16 v5, v26

    #@c1
    .line 722
    check-cast v5, Ljava/security/interfaces/ECPublicKey;

    #@c3
    invoke-interface {v5}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@c6
    move-result-object v24

    #@c7
    .line 724
    .local v24, "params":Ljava/security/spec/ECParameterSpec;
    invoke-static/range {v24 .. v24}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->getCurveIndex(Ljava/security/spec/ECParameterSpec;)I

    #@ca
    move-result v16

    #@cb
    .line 726
    .local v16, "index":I
    invoke-static/range {v16 .. v16}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->isSupported(I)Z

    #@ce
    move-result v5

    #@cf
    if-nez v5, :cond_6

    #@d1
    .line 728
    const/16 v26, 0x0

    #@d3
    .line 731
    .end local v16    # "index":I
    .end local v24    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v26    # "publicKey":Ljava/security/PublicKey;
    :cond_6
    if-eqz v26, :cond_7

    #@d5
    .line 732
    new-instance v22, Lsun/security/ssl/HandshakeMessage$CertificateMsg;

    #@d7
    .end local v22    # "m1":Lsun/security/ssl/HandshakeMessage$CertificateMsg;
    move-object/from16 v0, v22

    #@d9
    invoke-direct {v0, v12}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;-><init>([Ljava/security/cert/X509Certificate;)V

    #@dc
    .line 733
    .local v22, "m1":Lsun/security/ssl/HandshakeMessage$CertificateMsg;
    move-object/from16 v0, v21

    #@de
    invoke-virtual {v0, v11}, Ljavax/net/ssl/X509ExtendedKeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    #@e1
    move-result-object v28

    #@e2
    .line 734
    .local v28, "signingKey":Ljava/security/PrivateKey;
    move-object/from16 v0, p0

    #@e4
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@e6
    move-object/from16 v0, v28

    #@e8
    invoke-virtual {v5, v0}, Lsun/security/ssl/SSLSessionImpl;->setLocalPrivateKey(Ljava/security/PrivateKey;)V

    #@eb
    .line 735
    move-object/from16 v0, p0

    #@ed
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@ef
    invoke-virtual {v5, v12}, Lsun/security/ssl/SSLSessionImpl;->setLocalCertificates([Ljava/security/cert/X509Certificate;)V

    #@f2
    .line 739
    .end local v12    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v22    # "m1":Lsun/security/ssl/HandshakeMessage$CertificateMsg;
    .end local v28    # "signingKey":Ljava/security/PrivateKey;
    :cond_7
    if-nez v22, :cond_8

    #@f4
    .line 745
    move-object/from16 v0, p0

    #@f6
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@f8
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@fa
    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@fc
    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    #@fe
    if-lt v5, v6, :cond_c

    #@100
    .line 746
    new-instance v22, Lsun/security/ssl/HandshakeMessage$CertificateMsg;

    #@102
    const/4 v5, 0x0

    #@103
    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    #@105
    move-object/from16 v0, v22

    #@107
    invoke-direct {v0, v5}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;-><init>([Ljava/security/cert/X509Certificate;)V

    #@10a
    .line 755
    :cond_8
    :goto_4
    if-eqz v22, :cond_a

    #@10c
    .line 756
    sget-object v5, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@10e
    if-eqz v5, :cond_9

    #@110
    const-string/jumbo v5, "handshake"

    #@113
    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@116
    move-result v5

    #@117
    if-eqz v5, :cond_9

    #@119
    .line 757
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@11b
    move-object/from16 v0, v22

    #@11d
    invoke-virtual {v0, v5}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->print(Ljava/io/PrintStream;)V

    #@120
    .line 759
    :cond_9
    move-object/from16 v0, p0

    #@122
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@124
    move-object/from16 v0, v22

    #@126
    invoke-virtual {v0, v5}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    #@129
    .line 770
    .end local v15    # "i":I
    .end local v19    # "keytypesTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "keytypesTmpSize":I
    .end local v21    # "km":Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_a
    invoke-static {}, Lsun/security/ssl/ClientHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    #@12c
    move-result-object v5

    #@12d
    move-object/from16 v0, p0

    #@12f
    iget-object v6, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@131
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    #@134
    move-result v6

    #@135
    aget v5, v5, v6

    #@137
    packed-switch v5, :pswitch_data_0

    #@13a
    .line 884
    new-instance v5, Ljava/lang/RuntimeException;

    #@13c
    .line 885
    new-instance v6, Ljava/lang/StringBuilder;

    #@13e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@141
    const-string/jumbo v7, "Unsupported key exchange: "

    #@144
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v6

    #@148
    move-object/from16 v0, p0

    #@14a
    iget-object v7, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@14c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v6

    #@150
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@153
    move-result-object v6

    #@154
    .line 884
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@157
    throw v5

    #@158
    .line 710
    .restart local v11    # "alias":Ljava/lang/String;
    .restart local v15    # "i":I
    .restart local v18    # "keytypes":[Ljava/lang/String;
    .restart local v19    # "keytypesTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "keytypesTmpSize":I
    .restart local v21    # "km":Ljavax/net/ssl/X509ExtendedKeyManager;
    .local v28, "signingKey":Ljava/security/PrivateKey;
    :cond_b
    move-object/from16 v0, p0

    #@15a
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    #@15c
    invoke-virtual {v5}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->getAuthorities()[Ljavax/security/auth/x500/X500Principal;

    #@15f
    move-result-object v5

    #@160
    move-object/from16 v0, p0

    #@162
    iget-object v6, v0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@164
    .line 709
    move-object/from16 v0, v21

    #@166
    move-object/from16 v1, v18

    #@168
    invoke-virtual {v0, v1, v5, v6}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    #@16b
    move-result-object v11

    #@16c
    .local v11, "alias":Ljava/lang/String;
    goto/16 :goto_3

    #@16e
    .line 748
    .end local v11    # "alias":Ljava/lang/String;
    .end local v18    # "keytypes":[Ljava/lang/String;
    .end local v28    # "signingKey":Ljava/security/PrivateKey;
    :cond_c
    const/16 v5, 0x29

    #@170
    move-object/from16 v0, p0

    #@172
    invoke-virtual {v0, v5}, Lsun/security/ssl/Handshaker;->warningSE(B)V

    #@175
    goto :goto_4

    #@176
    .line 774
    .end local v15    # "i":I
    .end local v19    # "keytypesTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "keytypesTmpSize":I
    .end local v21    # "km":Ljavax/net/ssl/X509ExtendedKeyManager;
    :pswitch_0
    move-object/from16 v0, p0

    #@178
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    #@17a
    if-nez v5, :cond_d

    #@17c
    .line 775
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    #@17e
    .line 776
    const-string/jumbo v6, "Server did not send certificate message"

    #@181
    .line 775
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@184
    throw v5

    #@185
    .line 779
    :cond_d
    move-object/from16 v0, p0

    #@187
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    #@189
    instance-of v5, v5, Ljava/security/interfaces/RSAPublicKey;

    #@18b
    if-nez v5, :cond_e

    #@18d
    .line 780
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    #@18f
    .line 781
    const-string/jumbo v6, "Server certificate does not include an RSA key"

    #@192
    .line 780
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@195
    throw v5

    #@196
    .line 799
    :cond_e
    move-object/from16 v0, p0

    #@198
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@19a
    sget-object v6, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@19c
    if-ne v5, v6, :cond_10

    #@19e
    .line 800
    move-object/from16 v0, p0

    #@1a0
    iget-object v0, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    #@1a2
    move-object/from16 v17, v0

    #@1a4
    .line 815
    .local v17, "key":Ljava/security/PublicKey;
    :goto_5
    new-instance v23, Lsun/security/ssl/RSAClientKeyExchange;

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@1aa
    move-object/from16 v0, p0

    #@1ac
    iget-object v6, v0, Lsun/security/ssl/ClientHandshaker;->maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@1ae
    .line 816
    move-object/from16 v0, p0

    #@1b0
    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@1b2
    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@1b5
    move-result-object v7

    #@1b6
    .line 815
    move-object/from16 v0, v23

    #@1b8
    move-object/from16 v1, v17

    #@1ba
    invoke-direct {v0, v5, v6, v7, v1}, Lsun/security/ssl/RSAClientKeyExchange;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Ljava/security/PublicKey;)V

    #@1bd
    .line 887
    .end local v17    # "key":Ljava/security/PublicKey;
    .local v23, "m2":Lsun/security/ssl/HandshakeMessage;
    :goto_6
    sget-object v5, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@1bf
    if-eqz v5, :cond_f

    #@1c1
    const-string/jumbo v5, "handshake"

    #@1c4
    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@1c7
    move-result v5

    #@1c8
    if-eqz v5, :cond_f

    #@1ca
    .line 888
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1cc
    move-object/from16 v0, v23

    #@1ce
    invoke-virtual {v0, v5}, Lsun/security/ssl/HandshakeMessage;->print(Ljava/io/PrintStream;)V

    #@1d1
    .line 890
    :cond_f
    move-object/from16 v0, p0

    #@1d3
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@1d5
    move-object/from16 v0, v23

    #@1d7
    invoke-virtual {v0, v5}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    #@1da
    .line 902
    move-object/from16 v0, p0

    #@1dc
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@1de
    invoke-virtual {v5}, Lsun/security/ssl/HandshakeOutStream;->doHashes()V

    #@1e1
    .line 903
    move-object/from16 v0, p0

    #@1e3
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@1e5
    invoke-virtual {v5}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    #@1e8
    .line 913
    invoke-static {}, Lsun/security/ssl/ClientHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    #@1eb
    move-result-object v5

    #@1ec
    move-object/from16 v0, p0

    #@1ee
    iget-object v6, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1f0
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    #@1f3
    move-result v6

    #@1f4
    aget v5, v5, v6

    #@1f6
    packed-switch v5, :pswitch_data_1

    #@1f9
    .line 940
    :pswitch_1
    new-instance v5, Ljava/io/IOException;

    #@1fb
    new-instance v6, Ljava/lang/StringBuilder;

    #@1fd
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@200
    const-string/jumbo v7, "Internal error: unknown key exchange "

    #@203
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@206
    move-result-object v6

    #@207
    .line 941
    move-object/from16 v0, p0

    #@209
    iget-object v7, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@20b
    .line 940
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v6

    #@20f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@212
    move-result-object v6

    #@213
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@216
    throw v5

    #@217
    .line 802
    .end local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    :cond_10
    move-object/from16 v0, p0

    #@219
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    #@21b
    invoke-static {v5}, Lsun/security/ssl/JsseJce;->getRSAKeyLength(Ljava/security/PublicKey;)I

    #@21e
    move-result v5

    #@21f
    const/16 v6, 0x200

    #@221
    if-gt v5, v6, :cond_11

    #@223
    .line 805
    move-object/from16 v0, p0

    #@225
    iget-object v0, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    #@227
    move-object/from16 v17, v0

    #@229
    .restart local v17    # "key":Ljava/security/PublicKey;
    goto/16 :goto_5

    #@22b
    .line 807
    .end local v17    # "key":Ljava/security/PublicKey;
    :cond_11
    move-object/from16 v0, p0

    #@22d
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ephemeralServerKey:Ljava/security/PublicKey;

    #@22f
    if-nez v5, :cond_12

    #@231
    .line 808
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    #@233
    const-string/jumbo v6, "Server did not send a RSA_EXPORT Server Key Exchange message"

    #@236
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@239
    throw v5

    #@23a
    .line 811
    :cond_12
    move-object/from16 v0, p0

    #@23c
    iget-object v0, v0, Lsun/security/ssl/ClientHandshaker;->ephemeralServerKey:Ljava/security/PublicKey;

    #@23e
    move-object/from16 v17, v0

    #@240
    .restart local v17    # "key":Ljava/security/PublicKey;
    goto/16 :goto_5

    #@242
    .line 832
    .end local v17    # "key":Ljava/security/PublicKey;
    :pswitch_2
    new-instance v23, Lsun/security/ssl/DHClientKeyExchange;

    #@244
    invoke-direct/range {v23 .. v23}, Lsun/security/ssl/DHClientKeyExchange;-><init>()V

    #@247
    .line 833
    .restart local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    goto/16 :goto_6

    #@249
    .line 837
    .end local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    :pswitch_3
    move-object/from16 v0, p0

    #@24b
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    #@24d
    if-nez v5, :cond_13

    #@24f
    .line 838
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    #@251
    .line 839
    const-string/jumbo v6, "Server did not send a DH Server Key Exchange message"

    #@254
    .line 838
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@257
    throw v5

    #@258
    .line 841
    :cond_13
    new-instance v23, Lsun/security/ssl/DHClientKeyExchange;

    #@25a
    move-object/from16 v0, p0

    #@25c
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    #@25e
    invoke-virtual {v5}, Lsun/security/ssl/DHCrypt;->getPublicKey()Ljava/math/BigInteger;

    #@261
    move-result-object v5

    #@262
    move-object/from16 v0, v23

    #@264
    invoke-direct {v0, v5}, Lsun/security/ssl/DHClientKeyExchange;-><init>(Ljava/math/BigInteger;)V

    #@267
    .line 842
    .restart local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    goto/16 :goto_6

    #@269
    .line 846
    .end local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    :pswitch_4
    move-object/from16 v0, p0

    #@26b
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    #@26d
    if-nez v5, :cond_14

    #@26f
    .line 847
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    #@271
    .line 848
    const-string/jumbo v6, "Server did not send a ECDH Server Key Exchange message"

    #@274
    .line 847
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@277
    throw v5

    #@278
    .line 850
    :cond_14
    new-instance v23, Lsun/security/ssl/ECDHClientKeyExchange;

    #@27a
    move-object/from16 v0, p0

    #@27c
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    #@27e
    invoke-virtual {v5}, Lsun/security/ssl/ECDHCrypt;->getPublicKey()Ljava/security/PublicKey;

    #@281
    move-result-object v5

    #@282
    move-object/from16 v0, v23

    #@284
    invoke-direct {v0, v5}, Lsun/security/ssl/ECDHClientKeyExchange;-><init>(Ljava/security/PublicKey;)V

    #@287
    .line 851
    .restart local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    goto/16 :goto_6

    #@289
    .line 854
    .end local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    :pswitch_5
    move-object/from16 v0, p0

    #@28b
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    #@28d
    if-nez v5, :cond_15

    #@28f
    .line 855
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    #@291
    .line 856
    const-string/jumbo v6, "Server did not send certificate message"

    #@294
    .line 855
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@297
    throw v5

    #@298
    .line 858
    :cond_15
    move-object/from16 v0, p0

    #@29a
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    #@29c
    instance-of v5, v5, Ljava/security/interfaces/ECPublicKey;

    #@29e
    if-nez v5, :cond_16

    #@2a0
    .line 859
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    #@2a2
    .line 860
    const-string/jumbo v6, "Server certificate does not include an EC key"

    #@2a5
    .line 859
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@2a8
    throw v5

    #@2a9
    .line 862
    :cond_16
    move-object/from16 v0, p0

    #@2ab
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    #@2ad
    check-cast v5, Ljava/security/interfaces/ECPublicKey;

    #@2af
    invoke-interface {v5}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@2b2
    move-result-object v24

    #@2b3
    .line 863
    .restart local v24    # "params":Ljava/security/spec/ECParameterSpec;
    new-instance v5, Lsun/security/ssl/ECDHCrypt;

    #@2b5
    move-object/from16 v0, p0

    #@2b7
    iget-object v6, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@2b9
    invoke-virtual {v6}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@2bc
    move-result-object v6

    #@2bd
    move-object/from16 v0, v24

    #@2bf
    invoke-direct {v5, v0, v6}, Lsun/security/ssl/ECDHCrypt;-><init>(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)V

    #@2c2
    move-object/from16 v0, p0

    #@2c4
    iput-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    #@2c6
    .line 864
    new-instance v23, Lsun/security/ssl/ECDHClientKeyExchange;

    #@2c8
    move-object/from16 v0, p0

    #@2ca
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    #@2cc
    invoke-virtual {v5}, Lsun/security/ssl/ECDHCrypt;->getPublicKey()Ljava/security/PublicKey;

    #@2cf
    move-result-object v5

    #@2d0
    move-object/from16 v0, v23

    #@2d2
    invoke-direct {v0, v5}, Lsun/security/ssl/ECDHClientKeyExchange;-><init>(Ljava/security/PublicKey;)V

    #@2d5
    .line 865
    .restart local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    goto/16 :goto_6

    #@2d7
    .line 868
    .end local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    .end local v24    # "params":Ljava/security/spec/ECParameterSpec;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getHostSE()Ljava/lang/String;

    #@2da
    move-result-object v3

    #@2db
    .line 869
    .local v3, "hostname":Ljava/lang/String;
    if-nez v3, :cond_17

    #@2dd
    .line 870
    new-instance v5, Ljava/io/IOException;

    #@2df
    const-string/jumbo v6, "Hostname is required to use Kerberos cipher suites"

    #@2e2
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2e5
    throw v5

    #@2e6
    .line 874
    :cond_17
    new-instance v2, Lsun/security/ssl/KerberosClientKeyExchange;

    #@2e8
    .line 875
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->isLoopbackSE()Z

    #@2eb
    move-result v4

    #@2ec
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getAccSE()Ljava/security/AccessControlContext;

    #@2ef
    move-result-object v5

    #@2f0
    move-object/from16 v0, p0

    #@2f2
    iget-object v6, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@2f4
    .line 876
    move-object/from16 v0, p0

    #@2f6
    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@2f8
    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@2fb
    move-result-object v7

    #@2fc
    .line 874
    invoke-direct/range {v2 .. v7}, Lsun/security/ssl/KerberosClientKeyExchange;-><init>(Ljava/lang/String;ZLjava/security/AccessControlContext;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;)V

    #@2ff
    .line 878
    .local v2, "kerberosMsg":Lsun/security/ssl/KerberosClientKeyExchange;
    move-object/from16 v0, p0

    #@301
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@303
    invoke-virtual {v2}, Lsun/security/ssl/KerberosClientKeyExchange;->getPeerPrincipal()Ljava/security/Principal;

    #@306
    move-result-object v6

    #@307
    invoke-virtual {v5, v6}, Lsun/security/ssl/SSLSessionImpl;->setPeerPrincipal(Ljava/security/Principal;)V

    #@30a
    .line 879
    move-object/from16 v0, p0

    #@30c
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@30e
    invoke-virtual {v2}, Lsun/security/ssl/KerberosClientKeyExchange;->getLocalPrincipal()Ljava/security/Principal;

    #@311
    move-result-object v6

    #@312
    invoke-virtual {v5, v6}, Lsun/security/ssl/SSLSessionImpl;->setLocalPrincipal(Ljava/security/Principal;)V

    #@315
    .line 880
    move-object/from16 v23, v2

    #@317
    .line 881
    .restart local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    goto/16 :goto_6

    #@319
    .line 916
    .end local v2    # "kerberosMsg":Lsun/security/ssl/KerberosClientKeyExchange;
    .end local v3    # "hostname":Ljava/lang/String;
    :pswitch_7
    check-cast v23, Lsun/security/ssl/RSAClientKeyExchange;

    #@31b
    .end local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    move-object/from16 v0, v23

    #@31d
    iget-object v0, v0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    #@31f
    move-object/from16 v25, v0

    #@321
    .line 944
    .local v25, "preMasterSecret":Ljavax/crypto/SecretKey;
    :goto_7
    const/4 v5, 0x0

    #@322
    move-object/from16 v0, p0

    #@324
    move-object/from16 v1, v25

    #@326
    invoke-virtual {v0, v1, v5}, Lsun/security/ssl/Handshaker;->calculateKeys(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)V

    #@329
    .line 956
    if-eqz v28, :cond_1e

    #@32b
    .line 959
    const/4 v10, 0x0

    #@32c
    .line 960
    .local v10, "preferableSignatureAlgorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :try_start_0
    move-object/from16 v0, p0

    #@32e
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@330
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@332
    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@334
    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    #@336
    if-lt v5, v6, :cond_1d

    #@338
    .line 963
    move-object/from16 v0, p0

    #@33a
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    #@33c
    invoke-interface/range {v28 .. v28}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@33f
    move-result-object v6

    #@340
    .line 962
    move-object/from16 v0, v28

    #@342
    invoke-static {v5, v6, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;Ljava/security/PrivateKey;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@345
    move-result-object v10

    #@346
    .line 966
    .local v10, "preferableSignatureAlgorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    if-nez v10, :cond_1a

    #@348
    .line 967
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    #@34a
    .line 968
    const-string/jumbo v6, "No supported signature algorithm"

    #@34d
    .line 967
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@350
    throw v5
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@351
    .line 986
    .end local v10    # "preferableSignatureAlgorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :catch_0
    move-exception v13

    #@352
    .line 988
    .local v13, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v5, "Error signing certificate verify"

    #@355
    .line 987
    const/16 v6, 0x28

    #@357
    move-object/from16 v0, p0

    #@359
    invoke-virtual {v0, v6, v5, v13}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;Ljava/lang/Throwable;)V

    #@35c
    .line 990
    const/4 v4, 0x0

    #@35d
    .line 992
    .end local v13    # "e":Ljava/security/GeneralSecurityException;
    :goto_8
    sget-object v5, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@35f
    if-eqz v5, :cond_18

    #@361
    const-string/jumbo v5, "handshake"

    #@364
    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@367
    move-result v5

    #@368
    if-eqz v5, :cond_18

    #@36a
    .line 993
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@36c
    invoke-virtual {v4, v5}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->print(Ljava/io/PrintStream;)V

    #@36f
    .line 995
    :cond_18
    move-object/from16 v0, p0

    #@371
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@373
    invoke-virtual {v4, v5}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    #@376
    .line 996
    move-object/from16 v0, p0

    #@378
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@37a
    invoke-virtual {v5}, Lsun/security/ssl/HandshakeOutStream;->doHashes()V

    #@37d
    .line 1006
    :cond_19
    :goto_9
    const/4 v5, 0x0

    #@37e
    move-object/from16 v0, p0

    #@380
    invoke-direct {v0, v5}, Lsun/security/ssl/ClientHandshaker;->sendChangeCipherAndFinish(Z)V

    #@383
    .line 640
    return-void

    #@384
    .line 921
    .end local v25    # "preMasterSecret":Ljavax/crypto/SecretKey;
    .restart local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    :pswitch_8
    check-cast v23, Lsun/security/ssl/KerberosClientKeyExchange;

    #@386
    .end local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    invoke-virtual/range {v23 .. v23}, Lsun/security/ssl/KerberosClientKeyExchange;->getUnencryptedPreMasterSecret()[B

    #@389
    move-result-object v27

    #@38a
    .line 922
    .local v27, "secretBytes":[B
    new-instance v25, Ljavax/crypto/spec/SecretKeySpec;

    #@38c
    .line 923
    const-string/jumbo v5, "TlsPremasterSecret"

    #@38f
    .line 922
    move-object/from16 v0, v25

    #@391
    move-object/from16 v1, v27

    #@393
    invoke-direct {v0, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@396
    .line 924
    .restart local v25    # "preMasterSecret":Ljavax/crypto/SecretKey;
    goto :goto_7

    #@397
    .line 928
    .end local v25    # "preMasterSecret":Ljavax/crypto/SecretKey;
    .end local v27    # "secretBytes":[B
    .restart local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    :pswitch_9
    move-object/from16 v0, p0

    #@399
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    #@39b
    move-object/from16 v0, p0

    #@39d
    iget-object v6, v0, Lsun/security/ssl/ClientHandshaker;->serverDH:Ljava/math/BigInteger;

    #@39f
    const/4 v7, 0x1

    #@3a0
    invoke-virtual {v5, v6, v7}, Lsun/security/ssl/DHCrypt;->getAgreedSecret(Ljava/math/BigInteger;Z)Ljavax/crypto/SecretKey;

    #@3a3
    move-result-object v25

    #@3a4
    .restart local v25    # "preMasterSecret":Ljavax/crypto/SecretKey;
    goto/16 :goto_7

    #@3a6
    .line 933
    .end local v25    # "preMasterSecret":Ljavax/crypto/SecretKey;
    :pswitch_a
    move-object/from16 v0, p0

    #@3a8
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    #@3aa
    move-object/from16 v0, p0

    #@3ac
    iget-object v6, v0, Lsun/security/ssl/ClientHandshaker;->ephemeralServerKey:Ljava/security/PublicKey;

    #@3ae
    invoke-virtual {v5, v6}, Lsun/security/ssl/ECDHCrypt;->getAgreedSecret(Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;

    #@3b1
    move-result-object v25

    #@3b2
    .restart local v25    # "preMasterSecret":Ljavax/crypto/SecretKey;
    goto/16 :goto_7

    #@3b4
    .line 937
    .end local v25    # "preMasterSecret":Ljavax/crypto/SecretKey;
    :pswitch_b
    move-object/from16 v0, p0

    #@3b6
    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    #@3b8
    move-object/from16 v0, p0

    #@3ba
    iget-object v6, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    #@3bc
    invoke-virtual {v5, v6}, Lsun/security/ssl/ECDHCrypt;->getAgreedSecret(Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;

    #@3bf
    move-result-object v25

    #@3c0
    .restart local v25    # "preMasterSecret":Ljavax/crypto/SecretKey;
    goto/16 :goto_7

    #@3c2
    .line 972
    .end local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    .restart local v10    # "preferableSignatureAlgorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_1a
    :try_start_1
    invoke-static {v10}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashAlgorithmName(Lsun/security/ssl/SignatureAndHashAlgorithm;)Ljava/lang/String;

    #@3c5
    move-result-object v14

    #@3c6
    .line 974
    .local v14, "hashAlg":Ljava/lang/String;
    if-eqz v14, :cond_1b

    #@3c8
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@3cb
    move-result v5

    #@3cc
    if-nez v5, :cond_1c

    #@3ce
    .line 975
    :cond_1b
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    #@3d0
    .line 976
    const-string/jumbo v6, "No supported hash algorithm"

    #@3d3
    .line 975
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@3d6
    throw v5

    #@3d7
    .line 979
    :cond_1c
    move-object/from16 v0, p0

    #@3d9
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@3db
    invoke-virtual {v5, v14}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    #@3de
    .line 982
    .end local v10    # "preferableSignatureAlgorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v14    # "hashAlg":Ljava/lang/String;
    :cond_1d
    new-instance v4, Lsun/security/ssl/HandshakeMessage$CertificateVerify;

    #@3e0
    move-object/from16 v0, p0

    #@3e2
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@3e4
    move-object/from16 v0, p0

    #@3e6
    iget-object v6, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@3e8
    .line 983
    move-object/from16 v0, p0

    #@3ea
    iget-object v7, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@3ec
    invoke-virtual {v7}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    #@3ef
    move-result-object v8

    #@3f0
    .line 984
    move-object/from16 v0, p0

    #@3f2
    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@3f4
    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@3f7
    move-result-object v9

    #@3f8
    move-object/from16 v7, v28

    #@3fa
    .line 982
    invoke-direct/range {v4 .. v10}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Ljava/security/PrivateKey;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;Lsun/security/ssl/SignatureAndHashAlgorithm;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    #@3fd
    .local v4, "m3":Lsun/security/ssl/HandshakeMessage$CertificateVerify;
    goto/16 :goto_8

    #@3ff
    .line 998
    .end local v4    # "m3":Lsun/security/ssl/HandshakeMessage$CertificateVerify;
    :cond_1e
    move-object/from16 v0, p0

    #@401
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@403
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@405
    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@407
    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    #@409
    if-lt v5, v6, :cond_19

    #@40b
    .line 999
    move-object/from16 v0, p0

    #@40d
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@40f
    const/4 v6, 0x0

    #@410
    invoke-virtual {v5, v6}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    #@413
    goto/16 :goto_9

    #@415
    .line 667
    nop

    #@416
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch

    #@424
    .line 770
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@444
    .line 913
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private serverHelloRequest(Lsun/security/ssl/HandshakeMessage$HelloRequest;)V
    .locals 3
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$HelloRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 314
    sget-object v0, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "handshake"

    #@8
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 315
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeMessage$HelloRequest;->print(Ljava/io/PrintStream;)V

    #@13
    .line 322
    :cond_0
    iget v0, p0, Lsun/security/ssl/Handshaker;->state:I

    #@15
    if-ge v0, v2, :cond_3

    #@17
    .line 323
    iget-boolean v0, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@19
    if-nez v0, :cond_1

    #@1b
    sget-boolean v0, Lsun/security/ssl/ClientHandshaker;->allowUnsafeRenegotiation:Z

    #@1d
    if-eqz v0, :cond_4

    #@1f
    .line 350
    :cond_1
    iget-boolean v0, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@21
    if-nez v0, :cond_2

    #@23
    .line 351
    sget-object v0, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@25
    if-eqz v0, :cond_2

    #@27
    const-string/jumbo v0, "handshake"

    #@2a
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_2

    #@30
    .line 352
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@32
    .line 353
    const-string/jumbo v1, "Warning: continue with insecure renegotiation"

    #@35
    .line 352
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 356
    :cond_2
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->kickstart()V

    #@3b
    .line 313
    :cond_3
    :goto_0
    return-void

    #@3c
    .line 325
    :cond_4
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@3e
    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@40
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@42
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@44
    if-lt v0, v1, :cond_5

    #@46
    .line 327
    const/16 v0, 0x64

    #@48
    invoke-virtual {p0, v0}, Lsun/security/ssl/Handshaker;->warningSE(B)V

    #@4b
    .line 331
    iput-boolean v2, p0, Lsun/security/ssl/Handshaker;->invalidated:Z

    #@4d
    goto :goto_0

    #@4e
    .line 347
    :cond_5
    const-string/jumbo v0, "Renegotiation is not allowed"

    #@51
    .line 346
    const/16 v1, 0x28

    #@53
    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@56
    goto :goto_0
.end method

.method private serverKeyExchange(Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;)V
    .locals 4
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 618
    sget-object v0, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

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
    .line 619
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->print(Ljava/io/PrintStream;)V

    #@12
    .line 621
    :cond_0
    new-instance v0, Lsun/security/ssl/DHCrypt;

    #@14
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->getModulus()Ljava/math/BigInteger;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->getBase()Ljava/math/BigInteger;

    #@1b
    move-result-object v2

    #@1c
    .line 622
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@1e
    invoke-virtual {v3}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@21
    move-result-object v3

    #@22
    .line 621
    invoke-direct {v0, v1, v2, v3}, Lsun/security/ssl/DHCrypt;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    #@25
    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    #@27
    .line 623
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->getServerPublicKey()Ljava/math/BigInteger;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverDH:Ljava/math/BigInteger;

    #@2d
    .line 617
    return-void
.end method

.method private serverKeyExchange(Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;)V
    .locals 4
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 628
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

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
    .line 629
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->print(Ljava/io/PrintStream;)V

    #@12
    .line 631
    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->getPublicKey()Ljava/security/interfaces/ECPublicKey;

    #@15
    move-result-object v0

    #@16
    .line 632
    .local v0, "key":Ljava/security/interfaces/ECPublicKey;
    new-instance v1, Lsun/security/ssl/ECDHCrypt;

    #@18
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@1b
    move-result-object v2

    #@1c
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@1e
    invoke-virtual {v3}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@21
    move-result-object v3

    #@22
    invoke-direct {v1, v2, v3}, Lsun/security/ssl/ECDHCrypt;-><init>(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)V

    #@25
    iput-object v1, p0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    #@27
    .line 633
    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->ephemeralServerKey:Ljava/security/PublicKey;

    #@29
    .line 627
    return-void
.end method

.method private serverKeyExchange(Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;)V
    .locals 3
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 598
    sget-object v0, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

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
    .line 599
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->print(Ljava/io/PrintStream;)V

    #@12
    .line 601
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    #@14
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@16
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    #@18
    invoke-virtual {p1, v0, v1, v2}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->verify(Ljava/security/PublicKey;Lsun/security/ssl/RandomCookie;Lsun/security/ssl/RandomCookie;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_1

    #@1e
    .line 603
    const-string/jumbo v0, "server key exchange invalid"

    #@21
    .line 602
    const/16 v1, 0x28

    #@23
    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@26
    .line 606
    :cond_1
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->getPublicKey()Ljava/security/PublicKey;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->ephemeralServerKey:Ljava/security/PublicKey;

    #@2c
    .line 597
    return-void
.end method


# virtual methods
.method getKickstartMessage()Lsun/security/ssl/HandshakeMessage;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    .line 1110
    sget-object v11, Lsun/security/ssl/SSLSessionImpl;->nullSession:Lsun/security/ssl/SSLSessionImpl;

    #@3
    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->getSessionId()Lsun/security/ssl/SessionId;

    #@6
    move-result-object v6

    #@7
    .line 1113
    .local v6, "sessionId":Lsun/security/ssl/SessionId;
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveCipherSuites()Lsun/security/ssl/CipherSuiteList;

    #@a
    move-result-object v1

    #@b
    .line 1116
    .local v1, "cipherSuites":Lsun/security/ssl/CipherSuiteList;
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@d
    iput-object v11, p0, Lsun/security/ssl/ClientHandshaker;->maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@f
    .line 1122
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@11
    invoke-virtual {v11}, Lsun/security/ssl/SSLContextImpl;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    #@14
    move-result-object v11

    #@15
    check-cast v11, Lsun/security/ssl/SSLSessionContextImpl;

    #@17
    .line 1124
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getHostSE()Ljava/lang/String;

    #@1a
    move-result-object v12

    #@1b
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getPortSE()I

    #@1e
    move-result v13

    #@1f
    .line 1122
    invoke-virtual {v11, v12, v13}, Lsun/security/ssl/SSLSessionContextImpl;->get(Ljava/lang/String;I)Lsun/security/ssl/SSLSessionImpl;

    #@22
    move-result-object v11

    #@23
    iput-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@25
    .line 1125
    sget-object v11, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@27
    if-eqz v11, :cond_0

    #@29
    const-string/jumbo v11, "session"

    #@2c
    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@2f
    move-result v11

    #@30
    if-eqz v11, :cond_0

    #@32
    .line 1126
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@34
    if-eqz v11, :cond_9

    #@36
    .line 1127
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@38
    new-instance v11, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v13, "%% Client cached "

    #@40
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v11

    #@44
    .line 1128
    iget-object v13, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@46
    .line 1127
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v13

    #@4a
    .line 1129
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@4c
    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    #@4f
    move-result v11

    #@50
    if-eqz v11, :cond_8

    #@52
    const-string/jumbo v11, ""

    #@55
    .line 1127
    :goto_0
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v11

    #@59
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v11

    #@5d
    invoke-virtual {v12, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@60
    .line 1134
    :cond_0
    :goto_1
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@62
    if-eqz v11, :cond_1

    #@64
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@66
    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    #@69
    move-result v11

    #@6a
    if-nez v11, :cond_1

    #@6c
    .line 1135
    iput-object v14, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@6e
    .line 1138
    :cond_1
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@70
    if-eqz v11, :cond_e

    #@72
    .line 1139
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@74
    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->getSuite()Lsun/security/ssl/CipherSuite;

    #@77
    move-result-object v7

    #@78
    .line 1140
    .local v7, "sessionSuite":Lsun/security/ssl/CipherSuite;
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@7a
    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lsun/security/ssl/ProtocolVersion;

    #@7d
    move-result-object v8

    #@7e
    .line 1141
    .local v8, "sessionVersion":Lsun/security/ssl/ProtocolVersion;
    invoke-virtual {p0, v7}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/CipherSuite;)Z

    #@81
    move-result v11

    #@82
    if-nez v11, :cond_3

    #@84
    .line 1142
    sget-object v11, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@86
    if-eqz v11, :cond_2

    #@88
    const-string/jumbo v11, "session"

    #@8b
    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@8e
    move-result v11

    #@8f
    if-eqz v11, :cond_2

    #@91
    .line 1143
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@93
    const-string/jumbo v12, "%% can\'t resume, unavailable cipher"

    #@96
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@99
    .line 1145
    :cond_2
    iput-object v14, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@9b
    .line 1148
    :cond_3
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@9d
    if-eqz v11, :cond_4

    #@9f
    invoke-virtual {p0, v8}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/ProtocolVersion;)Z

    #@a2
    move-result v11

    #@a3
    if-eqz v11, :cond_a

    #@a5
    .line 1155
    :cond_4
    :goto_2
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@a7
    if-eqz v11, :cond_7

    #@a9
    .line 1156
    sget-object v11, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@ab
    if-eqz v11, :cond_6

    #@ad
    .line 1157
    const-string/jumbo v11, "handshake"

    #@b0
    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@b3
    move-result v11

    #@b4
    if-nez v11, :cond_5

    #@b6
    const-string/jumbo v11, "session"

    #@b9
    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@bc
    move-result v11

    #@bd
    if-eqz v11, :cond_6

    #@bf
    .line 1158
    :cond_5
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c1
    new-instance v12, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v13, "%% Try resuming "

    #@c9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v12

    #@cd
    iget-object v13, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@cf
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v12

    #@d3
    .line 1159
    const-string/jumbo v13, " from port "

    #@d6
    .line 1158
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v12

    #@da
    .line 1159
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getLocalPortSE()I

    #@dd
    move-result v13

    #@de
    .line 1158
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v12

    #@e2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v12

    #@e6
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e9
    .line 1163
    :cond_6
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@eb
    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->getSessionId()Lsun/security/ssl/SessionId;

    #@ee
    move-result-object v6

    #@ef
    .line 1164
    iput-object v8, p0, Lsun/security/ssl/ClientHandshaker;->maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@f1
    .line 1169
    invoke-virtual {p0, v8}, Lsun/security/ssl/Handshaker;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@f4
    .line 1176
    :cond_7
    iget-boolean v11, p0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    #@f6
    if-nez v11, :cond_e

    #@f8
    .line 1177
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@fa
    if-nez v11, :cond_c

    #@fc
    .line 1178
    new-instance v11, Ljavax/net/ssl/SSLHandshakeException;

    #@fe
    .line 1179
    const-string/jumbo v12, "Can\'t reuse existing SSL client session"

    #@101
    .line 1178
    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@104
    throw v11

    #@105
    .line 1129
    .end local v7    # "sessionSuite":Lsun/security/ssl/CipherSuite;
    .end local v8    # "sessionVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_8
    const-string/jumbo v11, " (not rejoinable)"

    #@108
    goto/16 :goto_0

    #@10a
    .line 1131
    :cond_9
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10c
    const-string/jumbo v12, "%% No cached client session"

    #@10f
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@112
    goto/16 :goto_1

    #@114
    .line 1149
    .restart local v7    # "sessionSuite":Lsun/security/ssl/CipherSuite;
    .restart local v8    # "sessionVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_a
    sget-object v11, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@116
    if-eqz v11, :cond_b

    #@118
    const-string/jumbo v11, "session"

    #@11b
    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@11e
    move-result v11

    #@11f
    if-eqz v11, :cond_b

    #@121
    .line 1150
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@123
    const-string/jumbo v12, "%% can\'t resume, protocol disabled"

    #@126
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@129
    .line 1152
    :cond_b
    iput-object v14, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@12b
    goto/16 :goto_2

    #@12d
    .line 1182
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    #@12f
    const/4 v11, 0x2

    #@130
    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    #@133
    .line 1183
    .local v0, "cipherList":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/CipherSuite;>;"
    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@136
    .line 1184
    iget-boolean v11, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@138
    if-nez v11, :cond_d

    #@13a
    .line 1185
    sget-object v11, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    #@13c
    invoke-virtual {v1, v11}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    #@13f
    move-result v11

    #@140
    .line 1184
    if-eqz v11, :cond_d

    #@142
    .line 1186
    sget-object v11, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    #@144
    invoke-interface {v0, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@147
    .line 1189
    :cond_d
    new-instance v1, Lsun/security/ssl/CipherSuiteList;

    #@149
    .end local v1    # "cipherSuites":Lsun/security/ssl/CipherSuiteList;
    invoke-direct {v1, v0}, Lsun/security/ssl/CipherSuiteList;-><init>(Ljava/util/Collection;)V

    #@14c
    .line 1193
    .end local v0    # "cipherList":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/CipherSuite;>;"
    .end local v7    # "sessionSuite":Lsun/security/ssl/CipherSuite;
    .end local v8    # "sessionVersion":Lsun/security/ssl/ProtocolVersion;
    .restart local v1    # "cipherSuites":Lsun/security/ssl/CipherSuiteList;
    :cond_e
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@14e
    if-nez v11, :cond_f

    #@150
    iget-boolean v11, p0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    #@152
    if-eqz v11, :cond_11

    #@154
    .line 1198
    :cond_f
    iget-boolean v11, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@156
    if-eqz v11, :cond_13

    #@158
    sget-object v11, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    #@15a
    invoke-virtual {v1, v11}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    #@15d
    move-result v11

    #@15e
    if-eqz v11, :cond_13

    #@160
    .line 1200
    new-instance v0, Ljava/util/ArrayList;

    #@162
    invoke-virtual {v1}, Lsun/security/ssl/CipherSuiteList;->size()I

    #@165
    move-result v11

    #@166
    add-int/lit8 v11, v11, -0x1

    #@168
    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    #@16b
    .line 1201
    .restart local v0    # "cipherList":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/CipherSuite;>;"
    invoke-virtual {v1}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    #@16e
    move-result-object v11

    #@16f
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@172
    move-result-object v10

    #@173
    .local v10, "suite$iterator":Ljava/util/Iterator;
    :cond_10
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@176
    move-result v11

    #@177
    if-eqz v11, :cond_12

    #@179
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17c
    move-result-object v9

    #@17d
    check-cast v9, Lsun/security/ssl/CipherSuite;

    #@17f
    .line 1202
    .local v9, "suite":Lsun/security/ssl/CipherSuite;
    sget-object v11, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    #@181
    if-eq v9, v11, :cond_10

    #@183
    .line 1203
    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@186
    goto :goto_3

    #@187
    .line 1194
    .end local v0    # "cipherList":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/CipherSuite;>;"
    .end local v9    # "suite":Lsun/security/ssl/CipherSuite;
    .end local v10    # "suite$iterator":Ljava/util/Iterator;
    :cond_11
    new-instance v11, Ljavax/net/ssl/SSLHandshakeException;

    #@189
    const-string/jumbo v12, "No existing session to resume"

    #@18c
    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@18f
    throw v11

    #@190
    .line 1207
    .restart local v0    # "cipherList":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/CipherSuite;>;"
    .restart local v10    # "suite$iterator":Ljava/util/Iterator;
    :cond_12
    new-instance v1, Lsun/security/ssl/CipherSuiteList;

    #@192
    .end local v1    # "cipherSuites":Lsun/security/ssl/CipherSuiteList;
    invoke-direct {v1, v0}, Lsun/security/ssl/CipherSuiteList;-><init>(Ljava/util/Collection;)V

    #@195
    .line 1211
    .end local v0    # "cipherList":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/CipherSuite;>;"
    .end local v10    # "suite$iterator":Ljava/util/Iterator;
    .restart local v1    # "cipherSuites":Lsun/security/ssl/CipherSuiteList;
    :cond_13
    const/4 v5, 0x0

    #@196
    .line 1212
    .local v5, "negotiable":Z
    invoke-virtual {v1}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    #@199
    move-result-object v11

    #@19a
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19d
    move-result-object v10

    #@19e
    .restart local v10    # "suite$iterator":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@1a1
    move-result v11

    #@1a2
    if-eqz v11, :cond_15

    #@1a4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a7
    move-result-object v9

    #@1a8
    check-cast v9, Lsun/security/ssl/CipherSuite;

    #@1aa
    .line 1213
    .restart local v9    # "suite":Lsun/security/ssl/CipherSuite;
    invoke-virtual {p0, v9}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/CipherSuite;)Z

    #@1ad
    move-result v11

    #@1ae
    if-eqz v11, :cond_14

    #@1b0
    .line 1214
    const/4 v5, 0x1

    #@1b1
    .line 1219
    .end local v9    # "suite":Lsun/security/ssl/CipherSuite;
    :cond_15
    if-nez v5, :cond_16

    #@1b3
    .line 1220
    new-instance v11, Ljavax/net/ssl/SSLHandshakeException;

    #@1b5
    const-string/jumbo v12, "No negotiable cipher suite"

    #@1b8
    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@1bb
    throw v11

    #@1bc
    .line 1233
    :cond_16
    new-instance v2, Lsun/security/ssl/HandshakeMessage$ClientHello;

    #@1be
    .line 1234
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@1c0
    invoke-virtual {v11}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@1c3
    move-result-object v11

    #@1c4
    iget-object v12, p0, Lsun/security/ssl/ClientHandshaker;->maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@1c6
    .line 1233
    invoke-direct {v2, v11, v12, v6, v1}, Lsun/security/ssl/HandshakeMessage$ClientHello;-><init>(Ljava/security/SecureRandom;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/SessionId;Lsun/security/ssl/CipherSuiteList;)V

    #@1c9
    .line 1238
    .local v2, "clientHelloMessage":Lsun/security/ssl/HandshakeMessage$ClientHello;
    iget-object v11, p0, Lsun/security/ssl/ClientHandshaker;->maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@1cb
    iget v11, v11, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1cd
    sget-object v12, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@1cf
    iget v12, v12, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1d1
    if-lt v11, v12, :cond_18

    #@1d3
    .line 1241
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getLocalSupportedSignAlgs()Ljava/util/Collection;

    #@1d6
    move-result-object v4

    #@1d7
    .line 1242
    .local v4, "localSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    #@1da
    move-result v11

    #@1db
    if-eqz v11, :cond_17

    #@1dd
    .line 1243
    new-instance v11, Ljavax/net/ssl/SSLHandshakeException;

    #@1df
    .line 1244
    const-string/jumbo v12, "No supported signature algorithm"

    #@1e2
    .line 1243
    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@1e5
    throw v11

    #@1e6
    .line 1247
    :cond_17
    invoke-virtual {v2, v4}, Lsun/security/ssl/HandshakeMessage$ClientHello;->addSignatureAlgorithmsExtension(Ljava/util/Collection;)V

    #@1e9
    .line 1251
    .end local v4    # "localSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :cond_18
    sget-boolean v11, Lsun/security/ssl/ClientHandshaker;->enableSNIExtension:Z

    #@1eb
    if-eqz v11, :cond_19

    #@1ed
    .line 1256
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getRawHostnameSE()Ljava/lang/String;

    #@1f0
    move-result-object v3

    #@1f1
    .line 1259
    .local v3, "hostname":Ljava/lang/String;
    if-eqz v3, :cond_19

    #@1f3
    const/16 v11, 0x2e

    #@1f5
    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    #@1f8
    move-result v11

    #@1f9
    if-lez v11, :cond_19

    #@1fb
    .line 1260
    invoke-static {v3}, Lsun/net/util/IPAddressUtil;->isIPv4LiteralAddress(Ljava/lang/String;)Z

    #@1fe
    move-result v11

    #@1ff
    if-eqz v11, :cond_1a

    #@201
    .line 1267
    .end local v3    # "hostname":Ljava/lang/String;
    :cond_19
    :goto_4
    iget-object v11, v2, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@203
    iput-object v11, p0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@205
    .line 1275
    iget-boolean v11, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@207
    if-nez v11, :cond_1b

    #@209
    .line 1276
    sget-object v11, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    #@20b
    invoke-virtual {v1, v11}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    #@20e
    move-result v11

    #@20f
    if-eqz v11, :cond_1b

    #@211
    .line 1280
    :goto_5
    return-object v2

    #@212
    .line 1261
    .restart local v3    # "hostname":Ljava/lang/String;
    :cond_1a
    invoke-static {v3}, Lsun/net/util/IPAddressUtil;->isIPv6LiteralAddress(Ljava/lang/String;)Z

    #@215
    move-result v11

    #@216
    if-nez v11, :cond_19

    #@218
    .line 1262
    invoke-virtual {v2, v3}, Lsun/security/ssl/HandshakeMessage$ClientHello;->addServerNameIndicationExtension(Ljava/lang/String;)V

    #@21b
    goto :goto_4

    #@21c
    .line 1277
    .end local v3    # "hostname":Ljava/lang/String;
    :cond_1b
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    #@21e
    invoke-virtual {v2, v11}, Lsun/security/ssl/HandshakeMessage$ClientHello;->addRenegotiationInfoExtension([B)V

    #@221
    goto :goto_5
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
    .line 1287
    invoke-static {p1}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1289
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

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
    .line 1290
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "SSL - handshake alert: "

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
    .line 1292
    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "handshake alert:  "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@43
    throw v1
.end method

.method processMessage(BI)V
    .locals 11
    .param p1, "type"    # B
    .param p2, "messageLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 131
    iget v0, p0, Lsun/security/ssl/Handshaker;->state:I

    #@3
    if-lt v0, p1, :cond_0

    #@5
    .line 132
    if-eqz p1, :cond_0

    #@7
    .line 133
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    #@9
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Handshake message sequence violation, "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 133
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 137
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@24
    .line 294
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    #@26
    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "Illegal client handshake msg, "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 294
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 139
    :sswitch_0
    new-instance v0, Lsun/security/ssl/HandshakeMessage$HelloRequest;

    #@40
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@42
    invoke-direct {v0, v1}, Lsun/security/ssl/HandshakeMessage$HelloRequest;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    #@45
    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverHelloRequest(Lsun/security/ssl/HandshakeMessage$HelloRequest;)V

    #@48
    .line 302
    :cond_1
    :goto_0
    iget v0, p0, Lsun/security/ssl/Handshaker;->state:I

    #@4a
    if-ge v0, p1, :cond_2

    #@4c
    .line 303
    iput p1, p0, Lsun/security/ssl/Handshaker;->state:I

    #@4e
    .line 130
    :cond_2
    return-void

    #@4f
    .line 143
    :sswitch_1
    new-instance v0, Lsun/security/ssl/HandshakeMessage$ServerHello;

    #@51
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@53
    invoke-direct {v0, v1, p2}, Lsun/security/ssl/HandshakeMessage$ServerHello;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    #@56
    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverHello(Lsun/security/ssl/HandshakeMessage$ServerHello;)V

    #@59
    goto :goto_0

    #@5a
    .line 147
    :sswitch_2
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5c
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5e
    if-eq v0, v1, :cond_3

    #@60
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@62
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@64
    if-ne v0, v1, :cond_5

    #@66
    .line 150
    :cond_3
    :goto_1
    const-string/jumbo v0, "unexpected server cert chain"

    #@69
    .line 149
    const/16 v1, 0xa

    #@6b
    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    #@6e
    .line 153
    :cond_4
    new-instance v0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;

    #@70
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@72
    invoke-direct {v0, v1}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    #@75
    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverCertificate(Lsun/security/ssl/HandshakeMessage$CertificateMsg;)V

    #@78
    .line 155
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@7a
    invoke-virtual {v0}, Lsun/security/ssl/SSLSessionImpl;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@7d
    move-result-object v0

    #@7e
    aget-object v0, v0, v2

    #@80
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@83
    move-result-object v0

    #@84
    .line 154
    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    #@86
    goto :goto_0

    #@87
    .line 148
    :cond_5
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@89
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@8b
    if-eq v0, v1, :cond_3

    #@8d
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@8f
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@91
    if-ne v0, v1, :cond_4

    #@93
    goto :goto_1

    #@94
    .line 159
    :sswitch_3
    const/4 v0, 0x1

    #@95
    iput-boolean v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKeyExchangeReceived:Z

    #@97
    .line 160
    invoke-static {}, Lsun/security/ssl/ClientHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    #@9a
    move-result-object v0

    #@9b
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@9d
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@a0
    move-result v1

    #@a1
    aget v0, v0, v1

    #@a3
    packed-switch v0, :pswitch_data_0

    #@a6
    .line 239
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    #@a8
    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v2, "unsupported key exchange algorithm = "

    #@b0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v1

    #@b4
    .line 241
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@b6
    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v1

    #@ba
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v1

    #@be
    .line 239
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@c1
    throw v0

    #@c2
    .line 169
    :pswitch_0
    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    #@c4
    if-nez v0, :cond_6

    #@c6
    .line 170
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    #@c8
    .line 171
    const-string/jumbo v1, "Server did not send certificate message"

    #@cb
    .line 170
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@ce
    throw v0

    #@cf
    .line 174
    :cond_6
    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    #@d1
    instance-of v0, v0, Ljava/security/interfaces/RSAPublicKey;

    #@d3
    if-nez v0, :cond_7

    #@d5
    .line 175
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    #@d7
    const-string/jumbo v1, "Protocol violation: the certificate type must be appropriate for the selected cipher suite\'s key exchange algorithm"

    #@da
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@dd
    throw v0

    #@de
    .line 180
    :cond_7
    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    #@e0
    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getRSAKeyLength(Ljava/security/PublicKey;)I

    #@e3
    move-result v0

    #@e4
    const/16 v1, 0x200

    #@e6
    if-gt v0, v1, :cond_8

    #@e8
    .line 181
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    #@ea
    new-instance v1, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v2, "Protocol violation: server sent a server key exchange message for key exchange "

    #@f2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v1

    #@f6
    .line 183
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@f8
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v1

    #@fc
    .line 184
    const-string/jumbo v2, " when the public key in the server certificate"

    #@ff
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v1

    #@103
    .line 185
    const-string/jumbo v2, " is less than or equal to 512 bits in length"

    #@106
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v1

    #@10a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v1

    #@10e
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@111
    throw v0

    #@112
    .line 189
    :cond_8
    :try_start_0
    new-instance v0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;

    #@114
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@116
    invoke-direct {v0, v1}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    #@119
    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverKeyExchange(Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@11c
    goto/16 :goto_0

    #@11e
    .line 190
    :catch_0
    move-exception v8

    #@11f
    .line 191
    .local v8, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v0, "Server key"

    #@122
    invoke-static {v0, v8}, Lsun/security/ssl/ClientHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@125
    goto/16 :goto_0

    #@127
    .line 196
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :pswitch_1
    :try_start_1
    new-instance v0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;

    #@129
    .line 197
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@12b
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@12d
    .line 196
    invoke-direct {v0, v1, v2}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/ProtocolVersion;)V

    #@130
    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverKeyExchange(Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    #@133
    goto/16 :goto_0

    #@135
    .line 198
    :catch_1
    move-exception v8

    #@136
    .line 199
    .restart local v8    # "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v0, "Server key"

    #@139
    invoke-static {v0, v8}, Lsun/security/ssl/ClientHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13c
    goto/16 :goto_0

    #@13e
    .line 205
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :pswitch_2
    :try_start_2
    new-instance v0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;

    #@140
    .line 206
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@142
    iget-object v2, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    #@144
    .line 207
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@146
    iget-object v3, v3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@148
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    #@14a
    iget-object v4, v4, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@14c
    .line 209
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    #@14e
    iget-object v7, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@150
    move v5, p2

    #@151
    .line 205
    invoke-direct/range {v0 .. v7}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;Ljava/security/PublicKey;[B[BILjava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V

    #@154
    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverKeyExchange(Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    #@157
    goto/16 :goto_0

    #@159
    .line 210
    :catch_2
    move-exception v8

    #@15a
    .line 211
    .restart local v8    # "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v0, "Server key"

    #@15d
    invoke-static {v0, v8}, Lsun/security/ssl/ClientHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@160
    goto/16 :goto_0

    #@162
    .line 218
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :pswitch_3
    :try_start_3
    new-instance v0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;

    #@164
    .line 219
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@166
    iget-object v2, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    #@168
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@16a
    iget-object v3, v3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@16c
    .line 220
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    #@16e
    iget-object v4, v4, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@170
    .line 221
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    #@172
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@174
    .line 218
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;Ljava/security/PublicKey;[B[BLjava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V

    #@177
    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverKeyExchange(Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3

    #@17a
    goto/16 :goto_0

    #@17c
    .line 222
    :catch_3
    move-exception v8

    #@17d
    .line 223
    .restart local v8    # "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v0, "Server key"

    #@180
    invoke-static {v0, v8}, Lsun/security/ssl/ClientHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@183
    goto/16 :goto_0

    #@185
    .line 231
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :pswitch_4
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    #@187
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    #@189
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18c
    const-string/jumbo v2, "Protocol violation: server sent a server key exchangemessage for key exchange "

    #@18f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v1

    #@193
    .line 233
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@195
    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v1

    #@199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19c
    move-result-object v1

    #@19d
    .line 231
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@1a0
    throw v0

    #@1a1
    .line 236
    :pswitch_5
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    #@1a3
    .line 237
    const-string/jumbo v1, "unexpected receipt of server key exchange algorithm"

    #@1a6
    .line 236
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@1a9
    throw v0

    #@1aa
    .line 247
    :sswitch_4
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1ac
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1ae
    if-eq v0, v1, :cond_9

    #@1b0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1b2
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1b4
    if-ne v0, v1, :cond_a

    #@1b6
    .line 248
    :cond_9
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    #@1b8
    .line 249
    const-string/jumbo v1, "Client authentication requested for anonymous cipher suite."

    #@1bb
    .line 248
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@1be
    throw v0

    #@1bf
    .line 251
    :cond_a
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1c1
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1c3
    if-eq v0, v1, :cond_b

    #@1c5
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1c7
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1c9
    if-ne v0, v1, :cond_c

    #@1cb
    .line 252
    :cond_b
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    #@1cd
    .line 253
    const-string/jumbo v1, "Client certificate requested for kerberos cipher suite."

    #@1d0
    .line 252
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@1d3
    throw v0

    #@1d4
    .line 256
    :cond_c
    new-instance v0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    #@1d6
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@1d8
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@1da
    invoke-direct {v0, v1, v2}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;-><init>(Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/ProtocolVersion;)V

    #@1dd
    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    #@1df
    .line 257
    sget-object v0, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    #@1e1
    if-eqz v0, :cond_d

    #@1e3
    const-string/jumbo v0, "handshake"

    #@1e6
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@1e9
    move-result v0

    #@1ea
    if-eqz v0, :cond_d

    #@1ec
    .line 258
    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    #@1ee
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1f0
    invoke-virtual {v0, v1}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->print(Ljava/io/PrintStream;)V

    #@1f3
    .line 261
    :cond_d
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@1f5
    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1f7
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@1f9
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1fb
    if-lt v0, v1, :cond_1

    #@1fd
    .line 263
    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    #@1ff
    invoke-virtual {v0}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->getSignAlgorithms()Ljava/util/Collection;

    #@202
    move-result-object v9

    #@203
    .line 264
    .local v9, "peerSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    if-eqz v9, :cond_e

    #@205
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    #@208
    move-result v0

    #@209
    if-eqz v0, :cond_f

    #@20b
    .line 265
    :cond_e
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    #@20d
    .line 266
    const-string/jumbo v1, "No peer supported signature algorithms"

    #@210
    .line 265
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@213
    throw v0

    #@214
    .line 270
    :cond_f
    invoke-static {v9}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSupportedAlgorithms(Ljava/util/Collection;)Ljava/util/Collection;

    #@217
    move-result-object v10

    #@218
    .line 272
    .local v10, "supportedPeerSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    #@21b
    move-result v0

    #@21c
    if-eqz v0, :cond_10

    #@21e
    .line 273
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    #@220
    .line 274
    const-string/jumbo v1, "No supported signature and hash algorithm in common"

    #@223
    .line 273
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@226
    throw v0

    #@227
    .line 277
    :cond_10
    invoke-virtual {p0, v10}, Lsun/security/ssl/Handshaker;->setPeerSupportedSignAlgs(Ljava/util/Collection;)V

    #@22a
    .line 278
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@22c
    invoke-virtual {v0, v10}, Lsun/security/ssl/SSLSessionImpl;->setPeerSupportedSignatureAlgorithms(Ljava/util/Collection;)V

    #@22f
    goto/16 :goto_0

    #@231
    .line 285
    .end local v9    # "peerSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    .end local v10    # "supportedPeerSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :sswitch_5
    new-instance v0, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;

    #@233
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@235
    invoke-direct {v0, v1}, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    #@238
    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverHelloDone(Lsun/security/ssl/HandshakeMessage$ServerHelloDone;)V

    #@23b
    goto/16 :goto_0

    #@23d
    .line 290
    :sswitch_6
    new-instance v0, Lsun/security/ssl/HandshakeMessage$Finished;

    #@23f
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@241
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@243
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@245
    invoke-direct {v0, v1, v2, v3}, Lsun/security/ssl/HandshakeMessage$Finished;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/CipherSuite;)V

    #@248
    .line 289
    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverFinished(Lsun/security/ssl/HandshakeMessage$Finished;)V

    #@24b
    goto/16 :goto_0

    #@24d
    .line 137
    nop

    #@24e
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_5
        0x14 -> :sswitch_6
    .end sparse-switch

    #@26c
    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
