.class abstract Lsun/security/ssl/Handshaker;
.super Ljava/lang/Object;
.source "Handshaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/Handshaker$DelegatedTask;
    }
.end annotation


# static fields
.field static final allowLegacyHelloMessages:Z

.field static final allowUnsafeRenegotiation:Z

.field static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

.field activeProtocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private activeProtocols:Lsun/security/ssl/ProtocolList;

.field private algorithmConstraints:Ljava/security/AlgorithmConstraints;

.field cipherSuite:Lsun/security/ssl/CipherSuite;

.field clientVerifyData:[B

.field private clntMacSecret:Ljavax/crypto/SecretKey;

.field private clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

.field private clntWriteKey:Ljavax/crypto/SecretKey;

.field clnt_random:Lsun/security/ssl/RandomCookie;

.field conn:Lsun/security/ssl/SSLSocketImpl;

.field private volatile delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

.field enableNewSession:Z

.field private enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

.field private enabledProtocols:Lsun/security/ssl/ProtocolList;

.field engine:Lsun/security/ssl/SSLEngineImpl;

.field handshakeHash:Lsun/security/ssl/HandshakeHash;

.field identificationProtocol:Ljava/lang/String;

.field input:Lsun/security/ssl/HandshakeInStream;

.field invalidated:Z

.field private isClient:Z

.field isInitialHandshake:Z

.field keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

.field localSupportedSignAlgs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private needCertVerify:Z

.field output:Lsun/security/ssl/HandshakeOutStream;

.field peerSupportedSignAlgs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field resumingSession:Z

.field secureRenegotiation:Z

.field serverVerifyData:[B

.field session:Lsun/security/ssl/SSLSessionImpl;

.field sslContext:Lsun/security/ssl/SSLContextImpl;

.field state:I

.field private svrMacSecret:Ljavax/crypto/SecretKey;

.field private svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

.field private svrWriteKey:Ljavax/crypto/SecretKey;

.field svr_random:Lsun/security/ssl/RandomCookie;

.field private volatile taskDelegated:Z

.field private volatile thrown:Ljava/lang/Exception;

.field private thrownLock:Ljava/lang/Object;


# direct methods
.method static synthetic -set0(Lsun/security/ssl/Handshaker;Lsun/security/ssl/Handshaker$DelegatedTask;)Lsun/security/ssl/Handshaker$DelegatedTask;
    .locals 0

    #@0
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lsun/security/ssl/Handshaker;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lsun/security/ssl/Handshaker;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    #@0
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 165
    const-string/jumbo v0, "ssl"

    #@3
    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    #@9
    .line 169
    const-string/jumbo v0, "sun.security.ssl.allowUnsafeRenegotiation"

    #@c
    const/4 v1, 0x0

    #@d
    .line 168
    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@10
    move-result v0

    #@11
    sput-boolean v0, Lsun/security/ssl/Handshaker;->allowUnsafeRenegotiation:Z

    #@13
    .line 180
    const-string/jumbo v0, "sun.security.ssl.allowLegacyHelloMessages"

    #@16
    const/4 v1, 0x1

    #@17
    .line 179
    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@1a
    move-result v0

    #@1b
    sput-boolean v0, Lsun/security/ssl/Handshaker;->allowLegacyHelloMessages:Z

    #@1d
    .line 62
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 10
    .param p1, "engine"    # Lsun/security/ssl/SSLEngineImpl;
    .param p2, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p3, "enabledProtocols"    # Lsun/security/ssl/ProtocolList;
    .param p4, "needCertVerify"    # Z
    .param p5, "isClient"    # Z
    .param p6, "activeProtocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p7, "isInitialHandshake"    # Z
    .param p8, "secureRenegotiation"    # Z
    .param p9, "clientVerifyData"    # [B
    .param p10, "serverVerifyData"    # [B

    #@0
    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@6
    .line 118
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@9
    .line 119
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@c
    .line 156
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    #@f
    .line 157
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

    #@12
    .line 158
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    #@15
    .line 162
    new-instance v0, Ljava/lang/Object;

    #@17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1a
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->thrownLock:Ljava/lang/Object;

    #@1c
    .line 201
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@1e
    move-object v0, p0

    #@1f
    move-object v1, p2

    #@20
    move-object v2, p3

    #@21
    move v3, p4

    #@22
    move v4, p5

    #@23
    move-object/from16 v5, p6

    #@25
    move/from16 v6, p7

    #@27
    move/from16 v7, p8

    #@29
    move-object/from16 v8, p9

    #@2b
    move-object/from16 v9, p10

    #@2d
    .line 202
    invoke-direct/range {v0 .. v9}, Lsun/security/ssl/Handshaker;->init(Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    #@30
    .line 200
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 10
    .param p1, "c"    # Lsun/security/ssl/SSLSocketImpl;
    .param p2, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p3, "enabledProtocols"    # Lsun/security/ssl/ProtocolList;
    .param p4, "needCertVerify"    # Z
    .param p5, "isClient"    # Z
    .param p6, "activeProtocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p7, "isInitialHandshake"    # Z
    .param p8, "secureRenegotiation"    # Z
    .param p9, "clientVerifyData"    # [B
    .param p10, "serverVerifyData"    # [B

    #@0
    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@6
    .line 118
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@9
    .line 119
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@c
    .line 156
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    #@f
    .line 157
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

    #@12
    .line 158
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    #@15
    .line 162
    new-instance v0, Ljava/lang/Object;

    #@17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1a
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->thrownLock:Ljava/lang/Object;

    #@1c
    .line 190
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@1e
    move-object v0, p0

    #@1f
    move-object v1, p2

    #@20
    move-object v2, p3

    #@21
    move v3, p4

    #@22
    move v4, p5

    #@23
    move-object/from16 v5, p6

    #@25
    move/from16 v6, p7

    #@27
    move/from16 v7, p8

    #@29
    move-object/from16 v8, p9

    #@2b
    move-object/from16 v9, p10

    #@2d
    .line 191
    invoke-direct/range {v0 .. v9}, Lsun/security/ssl/Handshaker;->init(Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    #@30
    .line 189
    return-void
.end method

.method private calculateMasterSecret(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;
    .locals 22
    .param p1, "preMasterSecret"    # Ljavax/crypto/SecretKey;
    .param p2, "requestedVersion"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    .line 1017
    sget-object v3, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    #@2
    if-eqz v3, :cond_0

    #@4
    const-string/jumbo v3, "keygen"

    #@7
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 1018
    new-instance v11, Lsun/misc/HexDumpEncoder;

    #@f
    invoke-direct {v11}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@12
    .line 1020
    .local v11, "dump":Lsun/misc/HexDumpEncoder;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@14
    const-string/jumbo v4, "SESSION KEYGEN:"

    #@17
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a
    .line 1022
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1c
    const-string/jumbo v4, "PreMaster Secret:"

    #@1f
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    .line 1023
    invoke-interface/range {p1 .. p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@25
    move-result-object v3

    #@26
    invoke-static {v11, v3}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    #@29
    .line 1033
    .end local v11    # "dump":Lsun/misc/HexDumpEncoder;
    :cond_0
    move-object/from16 v0, p0

    #@2b
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@2d
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@2f
    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@31
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@33
    if-lt v3, v4, :cond_2

    #@35
    .line 1034
    const-string/jumbo v15, "SunTls12MasterSecret"

    #@38
    .line 1035
    .local v15, "masterAlg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3a
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@3c
    iget-object v0, v3, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    #@3e
    move-object/from16 v19, v0

    #@40
    .line 1041
    .local v19, "prf":Lsun/security/ssl/CipherSuite$PRF;
    :goto_0
    invoke-virtual/range {v19 .. v19}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashAlg()Ljava/lang/String;

    #@43
    move-result-object v8

    #@44
    .line 1042
    .local v8, "prfHashAlg":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashLength()I

    #@47
    move-result v9

    #@48
    .line 1043
    .local v9, "prfHashLength":I
    invoke-virtual/range {v19 .. v19}, Lsun/security/ssl/CipherSuite$PRF;->getPRFBlockSize()I

    #@4b
    move-result v10

    #@4c
    .line 1045
    .local v10, "prfBlockSize":I
    new-instance v2, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;

    #@4e
    .line 1046
    move-object/from16 v0, p0

    #@50
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@52
    iget-byte v4, v3, Lsun/security/ssl/ProtocolVersion;->major:B

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@58
    iget-byte v5, v3, Lsun/security/ssl/ProtocolVersion;->minor:B

    #@5a
    .line 1047
    move-object/from16 v0, p0

    #@5c
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@5e
    iget-object v6, v3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@60
    move-object/from16 v0, p0

    #@62
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    #@64
    iget-object v7, v3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@66
    move-object/from16 v3, p1

    #@68
    .line 1045
    invoke-direct/range {v2 .. v10}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;-><init>(Ljavax/crypto/SecretKey;II[B[BLjava/lang/String;II)V

    #@6b
    .line 1052
    .local v2, "spec":Lsun/security/internal/spec/TlsMasterSecretParameterSpec;
    :try_start_0
    invoke-static {v15}, Lsun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    #@6e
    move-result-object v13

    #@6f
    .line 1053
    .local v13, "kg":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v13, v2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    #@72
    .line 1054
    invoke-virtual {v13}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@75
    move-result-object v16

    #@76
    .line 1083
    .local v16, "masterSecret":Ljavax/crypto/SecretKey;
    if-eqz p2, :cond_6

    #@78
    .line 1084
    move-object/from16 v0, v16

    #@7a
    instance-of v3, v0, Lsun/security/internal/interfaces/TlsMasterSecret;

    #@7c
    if-eqz v3, :cond_6

    #@7e
    move-object/from16 v20, v16

    #@80
    .line 1092
    check-cast v20, Lsun/security/internal/interfaces/TlsMasterSecret;

    #@82
    .line 1093
    .local v20, "tlsKey":Lsun/security/internal/interfaces/TlsMasterSecret;
    invoke-interface/range {v20 .. v20}, Lsun/security/internal/interfaces/TlsMasterSecret;->getMajorVersion()I

    #@85
    move-result v14

    #@86
    .line 1094
    .local v14, "major":I
    invoke-interface/range {v20 .. v20}, Lsun/security/internal/interfaces/TlsMasterSecret;->getMinorVersion()I

    #@89
    move-result v17

    #@8a
    .line 1095
    .local v17, "minor":I
    if-ltz v14, :cond_1

    #@8c
    if-gez v17, :cond_7

    #@8e
    .line 1096
    :cond_1
    return-object v16

    #@8f
    .line 1037
    .end local v2    # "spec":Lsun/security/internal/spec/TlsMasterSecretParameterSpec;
    .end local v8    # "prfHashAlg":Ljava/lang/String;
    .end local v9    # "prfHashLength":I
    .end local v10    # "prfBlockSize":I
    .end local v13    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v14    # "major":I
    .end local v15    # "masterAlg":Ljava/lang/String;
    .end local v16    # "masterSecret":Ljavax/crypto/SecretKey;
    .end local v17    # "minor":I
    .end local v19    # "prf":Lsun/security/ssl/CipherSuite$PRF;
    .end local v20    # "tlsKey":Lsun/security/internal/interfaces/TlsMasterSecret;
    :cond_2
    const-string/jumbo v15, "SunTlsMasterSecret"

    #@92
    .line 1038
    .restart local v15    # "masterAlg":Ljava/lang/String;
    sget-object v19, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    #@94
    .restart local v19    # "prf":Lsun/security/ssl/CipherSuite$PRF;
    goto :goto_0

    #@95
    .line 1055
    .restart local v2    # "spec":Lsun/security/internal/spec/TlsMasterSecretParameterSpec;
    .restart local v8    # "prfHashAlg":Ljava/lang/String;
    .restart local v9    # "prfHashLength":I
    .restart local v10    # "prfBlockSize":I
    :catch_0
    move-exception v12

    #@96
    .line 1058
    .local v12, "e":Ljava/security/GeneralSecurityException;
    invoke-interface/range {p1 .. p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    .line 1059
    const-string/jumbo v4, "TlsRsaPremasterSecret"

    #@9d
    .line 1058
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result v3

    #@a1
    if-nez v3, :cond_3

    #@a3
    .line 1060
    new-instance v3, Ljava/security/ProviderException;

    #@a5
    invoke-direct {v3, v12}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    #@a8
    throw v3

    #@a9
    .line 1063
    :cond_3
    sget-object v3, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    #@ab
    if-eqz v3, :cond_4

    #@ad
    const-string/jumbo v3, "handshake"

    #@b0
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@b3
    move-result v3

    #@b4
    if-eqz v3, :cond_4

    #@b6
    .line 1064
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b8
    const-string/jumbo v4, "RSA master secret generation error:"

    #@bb
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@be
    .line 1065
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c0
    invoke-virtual {v12, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    #@c3
    .line 1068
    :cond_4
    if-eqz p2, :cond_5

    #@c5
    .line 1070
    invoke-static/range {p2 .. p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    #@c8
    move-result-object p1

    #@c9
    .line 1077
    :goto_1
    const/4 v3, 0x0

    #@ca
    move-object/from16 v0, p0

    #@cc
    move-object/from16 v1, p1

    #@ce
    invoke-direct {v0, v1, v3}, Lsun/security/ssl/Handshaker;->calculateMasterSecret(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    #@d1
    move-result-object v3

    #@d2
    return-object v3

    #@d3
    .line 1073
    :cond_5
    move-object/from16 v0, p0

    #@d5
    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@d7
    invoke-static {v3}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    #@da
    move-result-object p1

    #@db
    goto :goto_1

    #@dc
    .line 1085
    .end local v12    # "e":Ljava/security/GeneralSecurityException;
    .restart local v13    # "kg":Ljavax/crypto/KeyGenerator;
    .restart local v16    # "masterSecret":Ljavax/crypto/SecretKey;
    :cond_6
    return-object v16

    #@dd
    .line 1107
    .restart local v14    # "major":I
    .restart local v17    # "minor":I
    .restart local v20    # "tlsKey":Lsun/security/internal/interfaces/TlsMasterSecret;
    :cond_7
    move/from16 v0, v17

    #@df
    invoke-static {v14, v0}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    #@e2
    move-result-object v18

    #@e3
    .line 1108
    .local v18, "premasterVersion":Lsun/security/ssl/ProtocolVersion;
    move-object/from16 v0, v18

    #@e5
    iget v3, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@e7
    move-object/from16 v0, p2

    #@e9
    iget v4, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@eb
    if-eq v3, v4, :cond_9

    #@ed
    const/16 v21, 0x1

    #@ef
    .line 1115
    .local v21, "versionMismatch":Z
    :goto_2
    if-eqz v21, :cond_8

    #@f1
    move-object/from16 v0, p2

    #@f3
    iget v3, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@f5
    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@f7
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@f9
    if-gt v3, v4, :cond_8

    #@fb
    .line 1116
    move-object/from16 v0, v18

    #@fd
    iget v3, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@ff
    move-object/from16 v0, p0

    #@101
    iget-object v4, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@103
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@105
    if-eq v3, v4, :cond_a

    #@107
    const/16 v21, 0x1

    #@109
    .line 1119
    :cond_8
    :goto_3
    if-nez v21, :cond_b

    #@10b
    .line 1121
    return-object v16

    #@10c
    .line 1108
    .end local v21    # "versionMismatch":Z
    :cond_9
    const/16 v21, 0x0

    #@10e
    .restart local v21    # "versionMismatch":Z
    goto :goto_2

    #@10f
    .line 1116
    :cond_a
    const/16 v21, 0x0

    #@111
    goto :goto_3

    #@112
    .line 1128
    :cond_b
    sget-object v3, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    #@114
    if-eqz v3, :cond_c

    #@116
    const-string/jumbo v3, "handshake"

    #@119
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@11c
    move-result v3

    #@11d
    if-eqz v3, :cond_c

    #@11f
    .line 1129
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@121
    new-instance v4, Ljava/lang/StringBuilder;

    #@123
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@126
    const-string/jumbo v5, "RSA PreMasterSecret version error: expected"

    #@129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v4

    #@12d
    .line 1130
    move-object/from16 v0, p0

    #@12f
    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@131
    .line 1129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v4

    #@135
    .line 1130
    const-string/jumbo v5, " or "

    #@138
    .line 1129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v4

    #@13c
    move-object/from16 v0, p2

    #@13e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v4

    #@142
    .line 1130
    const-string/jumbo v5, ", decrypted: "

    #@145
    .line 1129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v4

    #@149
    move-object/from16 v0, v18

    #@14b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v4

    #@14f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@152
    move-result-object v4

    #@153
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@156
    .line 1134
    :cond_c
    invoke-static/range {p2 .. p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    #@159
    move-result-object p1

    #@15a
    .line 1137
    const/4 v3, 0x0

    #@15b
    move-object/from16 v0, p0

    #@15d
    move-object/from16 v1, p1

    #@15f
    invoke-direct {v0, v1, v3}, Lsun/security/ssl/Handshaker;->calculateMasterSecret(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    #@162
    move-result-object v3

    #@163
    return-object v3
.end method

.method private delegateTask(Ljava/security/PrivilegedExceptionAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1312
    .local p1, "pea":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    new-instance v0, Lsun/security/ssl/Handshaker$DelegatedTask;

    #@2
    invoke-direct {v0, p0, p1}, Lsun/security/ssl/Handshaker$DelegatedTask;-><init>(Lsun/security/ssl/Handshaker;Ljava/security/PrivilegedExceptionAction;)V

    #@5
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

    #@7
    .line 1313
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    #@a
    .line 1314
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    #@d
    .line 1311
    return-void
.end method

.method private init(Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 4
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "enabledProtocols"    # Lsun/security/ssl/ProtocolList;
    .param p3, "needCertVerify"    # Z
    .param p4, "isClient"    # Z
    .param p5, "activeProtocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p6, "isInitialHandshake"    # Z
    .param p7, "secureRenegotiation"    # Z
    .param p8, "clientVerifyData"    # [B
    .param p9, "serverVerifyData"    # [B

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 213
    sget-object v0, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

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
    .line 214
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Allow unsafe renegotiation: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    sget-boolean v2, Lsun/security/ssl/Handshaker;->allowUnsafeRenegotiation:Z

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 216
    const-string/jumbo v2, "\nAllow legacy hello messages: "

    #@25
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 216
    sget-boolean v2, Lsun/security/ssl/Handshaker;->allowLegacyHelloMessages:Z

    #@2b
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 217
    const-string/jumbo v2, "\nIs initial handshake: "

    #@32
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 218
    const-string/jumbo v2, "\nIs secure renegotiation: "

    #@3d
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    .line 214
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4c
    .line 221
    :cond_0
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@4e
    .line 222
    iput-boolean p4, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    #@50
    .line 223
    iput-boolean p3, p0, Lsun/security/ssl/Handshaker;->needCertVerify:Z

    #@52
    .line 224
    iput-object p5, p0, Lsun/security/ssl/Handshaker;->activeProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@54
    .line 225
    iput-boolean p6, p0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    #@56
    .line 226
    iput-boolean p7, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@58
    .line 227
    iput-object p8, p0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    #@5a
    .line 228
    iput-object p9, p0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    #@5c
    .line 229
    iput-boolean v3, p0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    #@5e
    .line 230
    const/4 v0, 0x0

    #@5f
    iput-boolean v0, p0, Lsun/security/ssl/Handshaker;->invalidated:Z

    #@61
    .line 232
    sget-object v0, Lsun/security/ssl/CipherSuite;->C_NULL:Lsun/security/ssl/CipherSuite;

    #@63
    invoke-virtual {p0, v0}, Lsun/security/ssl/Handshaker;->setCipherSuite(Lsun/security/ssl/CipherSuite;)V

    #@66
    .line 233
    invoke-virtual {p0, p2}, Lsun/security/ssl/Handshaker;->setEnabledProtocols(Lsun/security/ssl/ProtocolList;)V

    #@69
    .line 235
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@6b
    if-eqz v0, :cond_1

    #@6d
    .line 236
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    #@6f
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@71
    invoke-direct {v0, v1, v3}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    #@74
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@76
    .line 255
    :goto_0
    const/4 v0, -0x2

    #@77
    iput v0, p0, Lsun/security/ssl/Handshaker;->state:I

    #@79
    .line 211
    return-void

    #@7a
    .line 238
    :cond_1
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    #@7c
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@7e
    invoke-direct {v0, v1, v3}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    #@81
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@83
    goto :goto_0
.end method

.method private static printHex(Lsun/misc/HexDumpEncoder;[B)V
    .locals 3
    .param p0, "dump"    # Lsun/misc/HexDumpEncoder;
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 1256
    if-nez p1, :cond_0

    #@2
    .line 1257
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4
    const-string/jumbo v2, "(key bytes not available)"

    #@7
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a
    .line 1255
    :goto_0
    return-void

    #@b
    .line 1260
    :cond_0
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@d
    invoke-virtual {p0, p1, v1}, Lsun/misc/CharacterEncoder;->encodeBuffer([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    goto :goto_0

    #@11
    .line 1261
    :catch_0
    move-exception v0

    #@12
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private setVersionSE(Lsun/security/ssl/ProtocolVersion;)V
    .locals 1
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 353
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@6
    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLSocketImpl;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@9
    .line 351
    :goto_0
    return-void

    #@a
    .line 355
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@c
    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLEngineImpl;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@f
    goto :goto_0
.end method

.method static throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 1274
    new-instance v0, Ljavax/net/ssl/SSLException;

    #@2
    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@5
    .line 1275
    .local v0, "e":Ljavax/net/ssl/SSLException;
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@8
    .line 1276
    throw v0
.end method


# virtual methods
.method activate(Lsun/security/ssl/ProtocolVersion;)V
    .locals 5
    .param p1, "helloVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 443
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 444
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveProtocols()Lsun/security/ssl/ProtocolList;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@a
    .line 447
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@c
    invoke-virtual {v1}, Lsun/security/ssl/ProtocolList;->collection()Ljava/util/Collection;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_1

    #@16
    .line 448
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@18
    iget-object v1, v1, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    #@1a
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1c
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    #@1e
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@20
    if-ne v1, v2, :cond_2

    #@22
    .line 449
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    #@24
    const-string/jumbo v2, "No appropriate protocol"

    #@27
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 452
    :cond_2
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@2d
    if-nez v1, :cond_3

    #@2f
    .line 453
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveCipherSuites()Lsun/security/ssl/CipherSuiteList;

    #@32
    move-result-object v1

    #@33
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@35
    .line 456
    :cond_3
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@37
    invoke-virtual {v1}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    #@3a
    move-result-object v1

    #@3b
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_4

    #@41
    .line 457
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    #@43
    const-string/jumbo v2, "No appropriate cipher suite"

    #@46
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@49
    throw v1

    #@4a
    .line 463
    :cond_4
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    #@4c
    if-nez v1, :cond_7

    #@4e
    .line 464
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@50
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@52
    .line 469
    :goto_0
    if-eqz p1, :cond_5

    #@54
    iget v1, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@56
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    #@58
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@5a
    if-ne v1, v2, :cond_6

    #@5c
    .line 470
    :cond_5
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@5e
    iget-object p1, v1, Lsun/security/ssl/ProtocolList;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    #@60
    .line 478
    :cond_6
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getLocalSupportedSignAlgs()Ljava/util/Collection;

    #@63
    move-result-object v1

    #@64
    .line 477
    invoke-static {v1}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashAlgorithmNames(Ljava/util/Collection;)Ljava/util/Set;

    #@67
    move-result-object v0

    #@68
    .line 479
    .local v0, "localSupportedHashAlgorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Lsun/security/ssl/HandshakeHash;

    #@6a
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    #@6c
    if-eqz v1, :cond_8

    #@6e
    const/4 v1, 0x0

    #@6f
    :goto_1
    iget-boolean v3, p0, Lsun/security/ssl/Handshaker;->needCertVerify:Z

    #@71
    invoke-direct {v2, v1, v3, v0}, Lsun/security/ssl/HandshakeHash;-><init>(ZZLjava/util/Set;)V

    #@74
    iput-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@76
    .line 483
    new-instance v1, Lsun/security/ssl/HandshakeInStream;

    #@78
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@7a
    invoke-direct {v1, v2}, Lsun/security/ssl/HandshakeInStream;-><init>(Lsun/security/ssl/HandshakeHash;)V

    #@7d
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@7f
    .line 484
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@81
    if-eqz v1, :cond_9

    #@83
    .line 485
    new-instance v1, Lsun/security/ssl/HandshakeOutStream;

    #@85
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@87
    .line 486
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@89
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@8b
    .line 485
    invoke-direct {v1, v2, p1, v3, v4}, Lsun/security/ssl/HandshakeOutStream;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Lsun/security/ssl/SSLSocketImpl;)V

    #@8e
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@90
    .line 487
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@92
    invoke-virtual {v1}, Lsun/security/ssl/SSLSocketImpl;->getAppInputStream()Lsun/security/ssl/AppInputStream;

    #@95
    move-result-object v1

    #@96
    iget-object v1, v1, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    #@98
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@9a
    invoke-virtual {v1, v2}, Lsun/security/ssl/InputRecord;->setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V

    #@9d
    .line 488
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@9f
    invoke-virtual {v1}, Lsun/security/ssl/SSLSocketImpl;->getAppInputStream()Lsun/security/ssl/AppInputStream;

    #@a2
    move-result-object v1

    #@a3
    iget-object v1, v1, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    #@a5
    invoke-virtual {v1, p1}, Lsun/security/ssl/InputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@a8
    .line 489
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@aa
    invoke-virtual {v1}, Lsun/security/ssl/SSLSocketImpl;->getAppOutputStream()Lsun/security/ssl/AppOutputStream;

    #@ad
    move-result-object v1

    #@ae
    iget-object v1, v1, Lsun/security/ssl/AppOutputStream;->r:Lsun/security/ssl/OutputRecord;

    #@b0
    invoke-virtual {v1, p1}, Lsun/security/ssl/OutputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@b3
    .line 499
    :goto_2
    const/4 v1, -0x1

    #@b4
    iput v1, p0, Lsun/security/ssl/Handshaker;->state:I

    #@b6
    .line 442
    return-void

    #@b7
    .line 466
    .end local v0    # "localSupportedHashAlgorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@b9
    iget-object v1, v1, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    #@bb
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@bd
    goto :goto_0

    #@be
    .line 479
    .restart local v0    # "localSupportedHashAlgorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    const/4 v1, 0x1

    #@bf
    goto :goto_1

    #@c0
    .line 491
    :cond_9
    new-instance v1, Lsun/security/ssl/HandshakeOutStream;

    #@c2
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@c4
    .line 492
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@c6
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@c8
    .line 491
    invoke-direct {v1, v2, p1, v3, v4}, Lsun/security/ssl/HandshakeOutStream;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Lsun/security/ssl/SSLEngineImpl;)V

    #@cb
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@cd
    .line 493
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@cf
    iget-object v1, v1, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    #@d1
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@d3
    invoke-virtual {v1, v2}, Lsun/security/ssl/InputRecord;->setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V

    #@d6
    .line 494
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@d8
    iget-object v1, v1, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    #@da
    invoke-virtual {v1, p1}, Lsun/security/ssl/InputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@dd
    .line 495
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@df
    iget-object v1, v1, Lsun/security/ssl/SSLEngineImpl;->outputRecord:Lsun/security/ssl/EngineOutputRecord;

    #@e1
    invoke-virtual {v1, p1}, Lsun/security/ssl/OutputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@e4
    goto :goto_2
.end method

.method activated()Z
    .locals 2

    #@0
    .prologue
    .line 881
    iget v0, p0, Lsun/security/ssl/Handshaker;->state:I

    #@2
    const/4 v1, -0x1

    #@3
    if-lt v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method calculateConnectionKeys(Ljavax/crypto/SecretKey;)V
    .locals 23
    .param p1, "masterKey"    # Ljavax/crypto/SecretKey;

    #@0
    .prologue
    .line 1158
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@4
    iget-object v2, v2, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    #@6
    iget v11, v2, Lsun/security/ssl/CipherSuite$MacAlg;->size:I

    #@8
    .line 1159
    .local v11, "hashSize":I
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@c
    iget-boolean v0, v2, Lsun/security/ssl/CipherSuite;->exportable:Z

    #@e
    move/from16 v18, v0

    #@10
    .line 1160
    .local v18, "is_exportable":Z
    move-object/from16 v0, p0

    #@12
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@14
    iget-object v15, v2, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@16
    .line 1161
    .local v15, "cipher":Lsun/security/ssl/CipherSuite$BulkCipher;
    if-eqz v18, :cond_1

    #@18
    iget v9, v15, Lsun/security/ssl/CipherSuite$BulkCipher;->expandedKeySize:I

    #@1a
    .line 1167
    .local v9, "expandedKeySize":I
    :goto_0
    move-object/from16 v0, p0

    #@1c
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@1e
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@20
    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@22
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@24
    if-lt v2, v3, :cond_2

    #@26
    .line 1168
    const-string/jumbo v19, "SunTls12KeyMaterial"

    #@29
    .line 1169
    .local v19, "keyMaterialAlg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@2d
    iget-object v0, v2, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    #@2f
    move-object/from16 v22, v0

    #@31
    .line 1175
    .local v22, "prf":Lsun/security/ssl/CipherSuite$PRF;
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashAlg()Ljava/lang/String;

    #@34
    move-result-object v12

    #@35
    .line 1176
    .local v12, "prfHashAlg":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashLength()I

    #@38
    move-result v13

    #@39
    .line 1177
    .local v13, "prfHashLength":I
    invoke-virtual/range {v22 .. v22}, Lsun/security/ssl/CipherSuite$PRF;->getPRFBlockSize()I

    #@3c
    move-result v14

    #@3d
    .line 1179
    .local v14, "prfBlockSize":I
    new-instance v1, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    #@3f
    .line 1180
    move-object/from16 v0, p0

    #@41
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@43
    iget-byte v3, v2, Lsun/security/ssl/ProtocolVersion;->major:B

    #@45
    move-object/from16 v0, p0

    #@47
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@49
    iget-byte v4, v2, Lsun/security/ssl/ProtocolVersion;->minor:B

    #@4b
    .line 1181
    move-object/from16 v0, p0

    #@4d
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@4f
    iget-object v5, v2, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@51
    move-object/from16 v0, p0

    #@53
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    #@55
    iget-object v6, v2, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@57
    .line 1182
    iget-object v7, v15, Lsun/security/ssl/CipherSuite$BulkCipher;->algorithm:Ljava/lang/String;

    #@59
    iget v8, v15, Lsun/security/ssl/CipherSuite$BulkCipher;->keySize:I

    #@5b
    .line 1183
    iget v10, v15, Lsun/security/ssl/CipherSuite$BulkCipher;->ivSize:I

    #@5d
    move-object/from16 v2, p1

    #@5f
    .line 1179
    invoke-direct/range {v1 .. v14}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;-><init>(Ljavax/crypto/SecretKey;II[B[BLjava/lang/String;IIIILjava/lang/String;II)V

    #@62
    .line 1187
    .local v1, "spec":Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;
    :try_start_0
    invoke-static/range {v19 .. v19}, Lsun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    #@65
    move-result-object v21

    #@66
    .line 1188
    .local v21, "kg":Ljavax/crypto/KeyGenerator;
    move-object/from16 v0, v21

    #@68
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    #@6b
    .line 1189
    invoke-virtual/range {v21 .. v21}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    #@6e
    move-result-object v20

    #@6f
    check-cast v20, Lsun/security/internal/spec/TlsKeyMaterialSpec;

    #@71
    .line 1191
    .local v20, "keySpec":Lsun/security/internal/spec/TlsKeyMaterialSpec;
    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getClientCipherKey()Ljavax/crypto/SecretKey;

    #@74
    move-result-object v2

    #@75
    move-object/from16 v0, p0

    #@77
    iput-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    #@79
    .line 1192
    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getServerCipherKey()Ljavax/crypto/SecretKey;

    #@7c
    move-result-object v2

    #@7d
    move-object/from16 v0, p0

    #@7f
    iput-object v2, v0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    #@81
    .line 1196
    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getClientIv()Ljavax/crypto/spec/IvParameterSpec;

    #@84
    move-result-object v2

    #@85
    move-object/from16 v0, p0

    #@87
    iput-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    #@89
    .line 1197
    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getServerIv()Ljavax/crypto/spec/IvParameterSpec;

    #@8c
    move-result-object v2

    #@8d
    move-object/from16 v0, p0

    #@8f
    iput-object v2, v0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    #@91
    .line 1199
    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getClientMacKey()Ljavax/crypto/SecretKey;

    #@94
    move-result-object v2

    #@95
    move-object/from16 v0, p0

    #@97
    iput-object v2, v0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    #@99
    .line 1200
    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getServerMacKey()Ljavax/crypto/SecretKey;

    #@9c
    move-result-object v2

    #@9d
    move-object/from16 v0, p0

    #@9f
    iput-object v2, v0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@a1
    .line 1208
    sget-object v2, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    #@a3
    if-eqz v2, :cond_0

    #@a5
    const-string/jumbo v2, "keygen"

    #@a8
    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@ab
    move-result v2

    #@ac
    if-eqz v2, :cond_0

    #@ae
    .line 1209
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b0
    monitor-enter v3

    #@b1
    .line 1210
    :try_start_1
    new-instance v16, Lsun/misc/HexDumpEncoder;

    #@b3
    invoke-direct/range {v16 .. v16}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@b6
    .line 1212
    .local v16, "dump":Lsun/misc/HexDumpEncoder;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b8
    const-string/jumbo v4, "CONNECTION KEYGEN:"

    #@bb
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@be
    .line 1215
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c0
    const-string/jumbo v4, "Client Nonce:"

    #@c3
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c6
    .line 1216
    move-object/from16 v0, p0

    #@c8
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    #@ca
    iget-object v2, v2, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@cc
    move-object/from16 v0, v16

    #@ce
    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    #@d1
    .line 1217
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@d3
    const-string/jumbo v4, "Server Nonce:"

    #@d6
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d9
    .line 1218
    move-object/from16 v0, p0

    #@db
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    #@dd
    iget-object v2, v2, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@df
    move-object/from16 v0, v16

    #@e1
    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    #@e4
    .line 1219
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@e6
    const-string/jumbo v4, "Master Secret:"

    #@e9
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ec
    .line 1220
    invoke-interface/range {p1 .. p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@ef
    move-result-object v2

    #@f0
    move-object/from16 v0, v16

    #@f2
    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    #@f5
    .line 1223
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f7
    const-string/jumbo v4, "Client MAC write Secret:"

    #@fa
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@fd
    .line 1224
    move-object/from16 v0, p0

    #@ff
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    #@101
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@104
    move-result-object v2

    #@105
    move-object/from16 v0, v16

    #@107
    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    #@10a
    .line 1225
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10c
    const-string/jumbo v4, "Server MAC write Secret:"

    #@10f
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@112
    .line 1226
    move-object/from16 v0, p0

    #@114
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;

    #@116
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@119
    move-result-object v2

    #@11a
    move-object/from16 v0, v16

    #@11c
    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    #@11f
    .line 1228
    move-object/from16 v0, p0

    #@121
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    #@123
    if-eqz v2, :cond_3

    #@125
    .line 1229
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@127
    const-string/jumbo v4, "Client write key:"

    #@12a
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@12d
    .line 1230
    move-object/from16 v0, p0

    #@12f
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    #@131
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@134
    move-result-object v2

    #@135
    move-object/from16 v0, v16

    #@137
    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    #@13a
    .line 1231
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@13c
    const-string/jumbo v4, "Server write key:"

    #@13f
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@142
    .line 1232
    move-object/from16 v0, p0

    #@144
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    #@146
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@149
    move-result-object v2

    #@14a
    move-object/from16 v0, v16

    #@14c
    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    #@14f
    .line 1237
    :goto_2
    move-object/from16 v0, p0

    #@151
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    #@153
    if-eqz v2, :cond_4

    #@155
    .line 1238
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@157
    const-string/jumbo v4, "Client write IV:"

    #@15a
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@15d
    .line 1239
    move-object/from16 v0, p0

    #@15f
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    #@161
    invoke-virtual {v2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@164
    move-result-object v2

    #@165
    move-object/from16 v0, v16

    #@167
    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    #@16a
    .line 1240
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@16c
    const-string/jumbo v4, "Server write IV:"

    #@16f
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@172
    .line 1241
    move-object/from16 v0, p0

    #@174
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    #@176
    invoke-virtual {v2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@179
    move-result-object v2

    #@17a
    move-object/from16 v0, v16

    #@17c
    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    #@17f
    .line 1250
    :goto_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@181
    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@184
    monitor-exit v3

    #@185
    .line 1150
    .end local v16    # "dump":Lsun/misc/HexDumpEncoder;
    :cond_0
    return-void

    #@186
    .line 1161
    .end local v1    # "spec":Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;
    .end local v9    # "expandedKeySize":I
    .end local v12    # "prfHashAlg":Ljava/lang/String;
    .end local v13    # "prfHashLength":I
    .end local v14    # "prfBlockSize":I
    .end local v19    # "keyMaterialAlg":Ljava/lang/String;
    .end local v20    # "keySpec":Lsun/security/internal/spec/TlsKeyMaterialSpec;
    .end local v21    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v22    # "prf":Lsun/security/ssl/CipherSuite$PRF;
    :cond_1
    const/4 v9, 0x0

    #@187
    .restart local v9    # "expandedKeySize":I
    goto/16 :goto_0

    #@189
    .line 1171
    :cond_2
    const-string/jumbo v19, "SunTlsKeyMaterial"

    #@18c
    .line 1172
    .restart local v19    # "keyMaterialAlg":Ljava/lang/String;
    sget-object v22, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    #@18e
    .restart local v22    # "prf":Lsun/security/ssl/CipherSuite$PRF;
    goto/16 :goto_1

    #@190
    .line 1201
    .restart local v1    # "spec":Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;
    .restart local v12    # "prfHashAlg":Ljava/lang/String;
    .restart local v13    # "prfHashLength":I
    .restart local v14    # "prfBlockSize":I
    :catch_0
    move-exception v17

    #@191
    .line 1202
    .local v17, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/ProviderException;

    #@193
    move-object/from16 v0, v17

    #@195
    invoke-direct {v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    #@198
    throw v2

    #@199
    .line 1234
    .end local v17    # "e":Ljava/security/GeneralSecurityException;
    .restart local v16    # "dump":Lsun/misc/HexDumpEncoder;
    .restart local v20    # "keySpec":Lsun/security/internal/spec/TlsKeyMaterialSpec;
    .restart local v21    # "kg":Ljavax/crypto/KeyGenerator;
    :cond_3
    :try_start_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@19b
    const-string/jumbo v4, "... no encryption keys used"

    #@19e
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a1
    goto :goto_2

    #@1a2
    .line 1209
    .end local v16    # "dump":Lsun/misc/HexDumpEncoder;
    :catchall_0
    move-exception v2

    #@1a3
    monitor-exit v3

    #@1a4
    throw v2

    #@1a5
    .line 1243
    .restart local v16    # "dump":Lsun/misc/HexDumpEncoder;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    #@1a7
    iget-object v2, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@1a9
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1ab
    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@1ad
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1af
    if-lt v2, v4, :cond_5

    #@1b1
    .line 1244
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1b3
    .line 1245
    const-string/jumbo v4, "... no IV derived for this protocol"

    #@1b6
    .line 1244
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1b9
    goto :goto_3

    #@1ba
    .line 1247
    :cond_5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1bc
    const-string/jumbo v4, "... no IV used for this cipher"

    #@1bf
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1c2
    goto :goto_3
.end method

.method calculateKeys(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)V
    .locals 2
    .param p1, "preMasterSecret"    # Ljavax/crypto/SecretKey;
    .param p2, "version"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    .line 999
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/Handshaker;->calculateMasterSecret(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    #@3
    move-result-object v0

    #@4
    .line 1000
    .local v0, "master":Ljavax/crypto/SecretKey;
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@6
    invoke-virtual {v1, v0}, Lsun/security/ssl/SSLSessionImpl;->setMasterSecret(Ljavax/crypto/SecretKey;)V

    #@9
    .line 1001
    invoke-virtual {p0, v0}, Lsun/security/ssl/Handshaker;->calculateConnectionKeys(Ljavax/crypto/SecretKey;)V

    #@c
    .line 998
    return-void
.end method

.method checkThrown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 1342
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->thrownLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1343
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    #@5
    if-eqz v2, :cond_6

    #@7
    .line 1345
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    #@9
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 1347
    .local v1, "msg":Ljava/lang/String;
    if-nez v1, :cond_0

    #@f
    .line 1348
    const-string/jumbo v1, "Delegated task threw Exception/Error"

    #@12
    .line 1355
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    #@14
    .line 1356
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    #@15
    iput-object v2, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    #@17
    .line 1358
    instance-of v2, v0, Ljava/lang/RuntimeException;

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 1360
    new-instance v2, Ljava/lang/RuntimeException;

    #@1d
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@23
    move-result-object v2

    #@24
    .line 1359
    check-cast v2, Ljava/lang/RuntimeException;

    #@26
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1342
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2

    #@2a
    .line 1361
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_1
    instance-of v2, v0, Ljavax/net/ssl/SSLHandshakeException;

    #@2c
    if-eqz v2, :cond_2

    #@2e
    .line 1363
    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    #@30
    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@33
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@36
    move-result-object v2

    #@37
    .line 1362
    check-cast v2, Ljavax/net/ssl/SSLHandshakeException;

    #@39
    throw v2

    #@3a
    .line 1364
    :cond_2
    instance-of v2, v0, Ljavax/net/ssl/SSLKeyException;

    #@3c
    if-eqz v2, :cond_3

    #@3e
    .line 1366
    new-instance v2, Ljavax/net/ssl/SSLKeyException;

    #@40
    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    #@43
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@46
    move-result-object v2

    #@47
    .line 1365
    check-cast v2, Ljavax/net/ssl/SSLKeyException;

    #@49
    throw v2

    #@4a
    .line 1367
    :cond_3
    instance-of v2, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@4c
    if-eqz v2, :cond_4

    #@4e
    .line 1369
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@50
    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@53
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@56
    move-result-object v2

    #@57
    .line 1368
    check-cast v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@59
    throw v2

    #@5a
    .line 1370
    :cond_4
    instance-of v2, v0, Ljavax/net/ssl/SSLProtocolException;

    #@5c
    if-eqz v2, :cond_5

    #@5e
    .line 1372
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    #@60
    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@63
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@66
    move-result-object v2

    #@67
    .line 1371
    check-cast v2, Ljavax/net/ssl/SSLProtocolException;

    #@69
    throw v2

    #@6a
    .line 1379
    :cond_5
    new-instance v2, Ljavax/net/ssl/SSLException;

    #@6c
    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@6f
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@72
    move-result-object v2

    #@73
    .line 1378
    check-cast v2, Ljavax/net/ssl/SSLException;

    #@75
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@76
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_6
    monitor-exit v3

    #@77
    .line 1341
    return-void
.end method

.method fatalSE(BLjava/lang/String;)V
    .locals 1
    .param p1, "b"    # B
    .param p2, "diagnostic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;Ljava/lang/Throwable;)V

    #@4
    .line 265
    return-void
.end method

.method fatalSE(BLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "b"    # B
    .param p2, "diagnostic"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 276
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@6
    invoke-virtual {v0, p1, p2, p3}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V

    #@9
    .line 274
    :goto_0
    return-void

    #@a
    .line 278
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@c
    invoke-virtual {v0, p1, p2, p3}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V

    #@f
    goto :goto_0
.end method

.method fatalSE(BLjava/lang/Throwable;)V
    .locals 1
    .param p1, "b"    # B
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 270
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;Ljava/lang/Throwable;)V

    #@4
    .line 269
    return-void
.end method

.method getAccSE()Ljava/security/AccessControlContext;
    .locals 1

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 345
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@6
    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->getAcc()Ljava/security/AccessControlContext;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 347
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@d
    invoke-virtual {v0}, Lsun/security/ssl/SSLEngineImpl;->getAcc()Ljava/security/AccessControlContext;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method getActiveCipherSuites()Lsun/security/ssl/CipherSuiteList;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 567
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@3
    if-nez v3, :cond_5

    #@5
    .line 568
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@7
    if-nez v3, :cond_0

    #@9
    .line 569
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveProtocols()Lsun/security/ssl/ProtocolList;

    #@c
    move-result-object v3

    #@d
    iput-object v3, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@f
    .line 572
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@14
    .line 573
    .local v2, "suites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/security/ssl/CipherSuite;>;"
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@16
    invoke-virtual {v3}, Lsun/security/ssl/ProtocolList;->collection()Ljava/util/Collection;

    #@19
    move-result-object v3

    #@1a
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_4

    #@20
    .line 574
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@22
    iget-object v3, v3, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    #@24
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@26
    sget-object v4, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    #@28
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@2a
    if-eq v3, v4, :cond_4

    #@2c
    .line 575
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@2e
    invoke-virtual {v3}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    #@31
    move-result-object v3

    #@32
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v1

    #@36
    .local v1, "suite$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_4

    #@3c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Lsun/security/ssl/CipherSuite;

    #@42
    .line 576
    .local v0, "suite":Lsun/security/ssl/CipherSuite;
    iget v3, v0, Lsun/security/ssl/CipherSuite;->obsoleted:I

    #@44
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@46
    iget-object v4, v4, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    #@48
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@4a
    if-le v3, v4, :cond_2

    #@4c
    .line 577
    iget v3, v0, Lsun/security/ssl/CipherSuite;->supported:I

    #@4e
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@50
    iget-object v4, v4, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    #@52
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@54
    if-gt v3, v4, :cond_2

    #@56
    .line 578
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@58
    .line 579
    sget-object v4, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    #@5a
    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@5d
    move-result-object v4

    #@5e
    .line 580
    iget-object v5, v0, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    #@60
    .line 578
    invoke-interface {v3, v4, v5, v6}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    #@63
    move-result v3

    #@64
    if-eqz v3, :cond_1

    #@66
    .line 581
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@69
    goto :goto_0

    #@6a
    .line 583
    :cond_2
    sget-object v3, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    #@6c
    if-eqz v3, :cond_1

    #@6e
    const-string/jumbo v3, "verbose"

    #@71
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@74
    move-result v3

    #@75
    if-eqz v3, :cond_1

    #@77
    .line 584
    iget v3, v0, Lsun/security/ssl/CipherSuite;->obsoleted:I

    #@79
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@7b
    iget-object v4, v4, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    #@7d
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@7f
    if-gt v3, v4, :cond_3

    #@81
    .line 585
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@83
    .line 586
    new-instance v4, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v5, "Ignoring obsoleted cipher suite: "

    #@8b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v4

    #@8f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v4

    #@97
    .line 585
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9a
    goto :goto_0

    #@9b
    .line 588
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9d
    .line 589
    new-instance v4, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v5, "Ignoring unsupported cipher suite: "

    #@a5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v4

    #@a9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v4

    #@ad
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v4

    #@b1
    .line 588
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b4
    goto :goto_0

    #@b5
    .line 594
    .end local v0    # "suite":Lsun/security/ssl/CipherSuite;
    .end local v1    # "suite$iterator":Ljava/util/Iterator;
    :cond_4
    new-instance v3, Lsun/security/ssl/CipherSuiteList;

    #@b7
    invoke-direct {v3, v2}, Lsun/security/ssl/CipherSuiteList;-><init>(Ljava/util/Collection;)V

    #@ba
    iput-object v3, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@bc
    .line 597
    .end local v2    # "suites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/security/ssl/CipherSuite;>;"
    :cond_5
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@be
    return-object v3
.end method

.method getActiveProtocols()Lsun/security/ssl/ProtocolList;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 616
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@3
    if-nez v6, :cond_6

    #@5
    .line 617
    new-instance v3, Ljava/util/ArrayList;

    #@7
    const/4 v6, 0x4

    #@8
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    .line 618
    .local v3, "protocols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/security/ssl/ProtocolVersion;>;"
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@d
    invoke-virtual {v6}, Lsun/security/ssl/ProtocolList;->collection()Ljava/util/Collection;

    #@10
    move-result-object v6

    #@11
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "protocol$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_5

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Lsun/security/ssl/ProtocolVersion;

    #@21
    .line 619
    .local v1, "protocol":Lsun/security/ssl/ProtocolVersion;
    const/4 v0, 0x0

    #@22
    .line 620
    .local v0, "found":Z
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@24
    invoke-virtual {v6}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    #@27
    move-result-object v6

    #@28
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v5

    #@2c
    .local v5, "suite$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_2

    #@32
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v4

    #@36
    check-cast v4, Lsun/security/ssl/CipherSuite;

    #@38
    .line 621
    .local v4, "suite":Lsun/security/ssl/CipherSuite;
    invoke-virtual {v4}, Lsun/security/ssl/CipherSuite;->isAvailable()Z

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_4

    #@3e
    iget v6, v4, Lsun/security/ssl/CipherSuite;->obsoleted:I

    #@40
    iget v7, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@42
    if-le v6, v7, :cond_4

    #@44
    .line 622
    iget v6, v4, Lsun/security/ssl/CipherSuite;->supported:I

    #@46
    iget v7, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@48
    if-gt v6, v7, :cond_4

    #@4a
    .line 623
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@4c
    .line 624
    sget-object v7, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    #@4e
    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@51
    move-result-object v7

    #@52
    .line 625
    iget-object v8, v4, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    #@54
    .line 623
    invoke-interface {v6, v7, v8, v9}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    #@57
    move-result v6

    #@58
    if-eqz v6, :cond_3

    #@5a
    .line 626
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5d
    .line 627
    const/4 v0, 0x1

    #@5e
    .line 640
    .end local v4    # "suite":Lsun/security/ssl/CipherSuite;
    :cond_2
    if-nez v0, :cond_0

    #@60
    sget-object v6, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    #@62
    if-eqz v6, :cond_0

    #@64
    const-string/jumbo v6, "handshake"

    #@67
    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@6a
    move-result v6

    #@6b
    if-eqz v6, :cond_0

    #@6d
    .line 641
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6f
    .line 642
    new-instance v7, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v8, "No available cipher suite for "

    #@77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v7

    #@7b
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v7

    #@7f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v7

    #@83
    .line 641
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@86
    goto :goto_0

    #@87
    .line 629
    .restart local v4    # "suite":Lsun/security/ssl/CipherSuite;
    :cond_3
    sget-object v6, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    #@89
    if-eqz v6, :cond_1

    #@8b
    const-string/jumbo v6, "verbose"

    #@8e
    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@91
    move-result v6

    #@92
    if-eqz v6, :cond_1

    #@94
    .line 630
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@96
    .line 631
    new-instance v7, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v8, "Ignoring disabled cipher suite: "

    #@9e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v7

    #@a2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v7

    #@a6
    .line 632
    const-string/jumbo v8, " for "

    #@a9
    .line 631
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v7

    #@ad
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v7

    #@b1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v7

    #@b5
    .line 630
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b8
    goto/16 :goto_1

    #@ba
    .line 634
    :cond_4
    sget-object v6, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    #@bc
    if-eqz v6, :cond_1

    #@be
    const-string/jumbo v6, "verbose"

    #@c1
    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@c4
    move-result v6

    #@c5
    if-eqz v6, :cond_1

    #@c7
    .line 635
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c9
    .line 636
    new-instance v7, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    const-string/jumbo v8, "Ignoring unsupported cipher suite: "

    #@d1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v7

    #@d5
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v7

    #@d9
    .line 637
    const-string/jumbo v8, " for "

    #@dc
    .line 636
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v7

    #@e0
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v7

    #@e4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v7

    #@e8
    .line 635
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@eb
    goto/16 :goto_1

    #@ed
    .line 645
    .end local v0    # "found":Z
    .end local v1    # "protocol":Lsun/security/ssl/ProtocolVersion;
    .end local v4    # "suite":Lsun/security/ssl/CipherSuite;
    .end local v5    # "suite$iterator":Ljava/util/Iterator;
    :cond_5
    new-instance v6, Lsun/security/ssl/ProtocolList;

    #@ef
    invoke-direct {v6, v3}, Lsun/security/ssl/ProtocolList;-><init>(Ljava/util/ArrayList;)V

    #@f2
    iput-object v6, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@f4
    .line 648
    .end local v2    # "protocol$iterator":Ljava/util/Iterator;
    .end local v3    # "protocols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/security/ssl/ProtocolVersion;>;"
    :cond_6
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@f6
    return-object v6
.end method

.method getClientVerifyData()[B
    .locals 1

    #@0
    .prologue
    .line 774
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    #@2
    return-object v0
.end method

.method getHostAddressSE()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 308
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@6
    invoke-virtual {v0}, Lsun/security/ssl/BaseSSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 315
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@11
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method getHostSE()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 300
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@6
    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->getHost()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 302
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@d
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method abstract getKickstartMessage()Lsun/security/ssl/HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method getLocalPortSE()I
    .locals 1

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 337
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@6
    invoke-virtual {v0}, Lsun/security/ssl/BaseSSLSocketImpl;->getLocalPort()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 339
    :cond_0
    const/4 v0, -0x1

    #@c
    return v0
.end method

.method getLocalSupportedSignAlgs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 412
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@6
    .line 411
    invoke-static {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSupportedAlgorithms(Ljava/security/AlgorithmConstraints;)Ljava/util/Collection;

    #@9
    move-result-object v0

    #@a
    .line 410
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    #@c
    .line 415
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    #@e
    return-object v0
.end method

.method getPeerSupportedSignAlgs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 425
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method getPortSE()I
    .locals 1

    #@0
    .prologue
    .line 328
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 329
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@6
    invoke-virtual {v0}, Lsun/security/ssl/BaseSSLSocketImpl;->getPort()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 331
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@d
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method getRawHostnameSE()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 292
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@6
    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->getRawHostname()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 294
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@d
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method getServerVerifyData()[B
    .locals 1

    #@0
    .prologue
    .line 781
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    #@2
    return-object v0
.end method

.method getSession()Lsun/security/ssl/SSLSessionImpl;
    .locals 1

    #@0
    .prologue
    .line 749
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    #@2
    return-object v0
.end method

.method getTask()Lsun/security/ssl/Handshaker$DelegatedTask;
    .locals 1

    #@0
    .prologue
    .line 1318
    iget-boolean v0, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1319
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    #@7
    .line 1320
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

    #@9
    return-object v0

    #@a
    .line 1322
    :cond_0
    const/4 v0, 0x0

    #@b
    return-object v0
.end method

.method abstract handshakeAlert(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLProtocolException;
        }
    .end annotation
.end method

.method isDone()Z
    .locals 2

    #@0
    .prologue
    .line 739
    iget v0, p0, Lsun/security/ssl/Handshaker;->state:I

    #@2
    const/16 v1, 0x14

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method isLoopbackSE()Z
    .locals 1

    #@0
    .prologue
    .line 320
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 321
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@6
    invoke-virtual {v0}, Lsun/security/ssl/BaseSSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 323
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method isNegotiable(Lsun/security/ssl/CipherSuite;)Z
    .locals 1
    .param p1, "s"    # Lsun/security/ssl/CipherSuite;

    #@0
    .prologue
    .line 517
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 518
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveCipherSuites()Lsun/security/ssl/CipherSuiteList;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@a
    .line 521
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@c
    invoke-virtual {v0, p1}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    invoke-virtual {p1}, Lsun/security/ssl/CipherSuite;->isNegotiable()Z

    #@15
    move-result v0

    #@16
    :goto_0
    return v0

    #@17
    :cond_1
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method isNegotiable(Lsun/security/ssl/ProtocolVersion;)Z
    .locals 1
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    .line 528
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 529
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveProtocols()Lsun/security/ssl/ProtocolList;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@a
    .line 532
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@c
    invoke-virtual {v0, p1}, Lsun/security/ssl/ProtocolList;->contains(Lsun/security/ssl/ProtocolVersion;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method isSecureRenegotiation()Z
    .locals 1

    #@0
    .prologue
    .line 767
    iget-boolean v0, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    #@2
    return v0
.end method

.method kickstart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 899
    iget v1, p0, Lsun/security/ssl/Handshaker;->state:I

    #@2
    if-ltz v1, :cond_0

    #@4
    .line 900
    return-void

    #@5
    .line 903
    :cond_0
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getKickstartMessage()Lsun/security/ssl/HandshakeMessage;

    #@8
    move-result-object v0

    #@9
    .line 905
    .local v0, "m":Lsun/security/ssl/HandshakeMessage;
    sget-object v1, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    #@b
    if-eqz v1, :cond_1

    #@d
    const-string/jumbo v1, "handshake"

    #@10
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 906
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@18
    invoke-virtual {v0, v1}, Lsun/security/ssl/HandshakeMessage;->print(Ljava/io/PrintStream;)V

    #@1b
    .line 908
    :cond_1
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@1d
    invoke-virtual {v0, v1}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    #@20
    .line 909
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@22
    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    #@25
    .line 911
    invoke-virtual {v0}, Lsun/security/ssl/HandshakeMessage;->messageType()I

    #@28
    move-result v1

    #@29
    iput v1, p0, Lsun/security/ssl/Handshaker;->state:I

    #@2b
    .line 898
    return-void
.end method

.method newReadCipher()Lsun/security/ssl/CipherBox;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 666
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@4
    iget-object v0, v1, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@6
    .line 668
    .local v0, "cipher":Lsun/security/ssl/CipherSuite$BulkCipher;
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 669
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@c
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    #@e
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    #@10
    .line 670
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@12
    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@15
    move-result-object v4

    #@16
    .line 669
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$BulkCipher;->newCipher(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;

    #@19
    move-result-object v6

    #@1a
    .line 671
    .local v6, "box":Lsun/security/ssl/CipherBox;
    iput-object v7, p0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    #@1c
    .line 672
    iput-object v7, p0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    #@1e
    .line 679
    :goto_0
    return-object v6

    #@1f
    .line 674
    .end local v6    # "box":Lsun/security/ssl/CipherBox;
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@21
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    #@23
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    #@25
    .line 675
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@27
    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@2a
    move-result-object v4

    #@2b
    .line 674
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$BulkCipher;->newCipher(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;

    #@2e
    move-result-object v6

    #@2f
    .line 676
    .restart local v6    # "box":Lsun/security/ssl/CipherBox;
    iput-object v7, p0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    #@31
    .line 677
    iput-object v7, p0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    #@33
    goto :goto_0
.end method

.method newReadMAC()Lsun/security/ssl/MAC;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 706
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@3
    iget-object v1, v2, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    #@5
    .line 708
    .local v1, "macAlg":Lsun/security/ssl/CipherSuite$MacAlg;
    iget-boolean v2, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 709
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@b
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;

    #@d
    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/CipherSuite$MacAlg;->newMac(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)Lsun/security/ssl/MAC;

    #@10
    move-result-object v0

    #@11
    .line 710
    .local v0, "mac":Lsun/security/ssl/MAC;
    iput-object v4, p0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;

    #@13
    .line 715
    :goto_0
    return-object v0

    #@14
    .line 712
    .end local v0    # "mac":Lsun/security/ssl/MAC;
    :cond_0
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@16
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    #@18
    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/CipherSuite$MacAlg;->newMac(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)Lsun/security/ssl/MAC;

    #@1b
    move-result-object v0

    #@1c
    .line 713
    .restart local v0    # "mac":Lsun/security/ssl/MAC;
    iput-object v4, p0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    #@1e
    goto :goto_0
.end method

.method newWriteCipher()Lsun/security/ssl/CipherBox;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 686
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@4
    iget-object v0, v1, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@6
    .line 688
    .local v0, "cipher":Lsun/security/ssl/CipherSuite$BulkCipher;
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 689
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@c
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    #@e
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    #@10
    .line 690
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@12
    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@15
    move-result-object v4

    #@16
    .line 689
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$BulkCipher;->newCipher(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;

    #@19
    move-result-object v6

    #@1a
    .line 691
    .local v6, "box":Lsun/security/ssl/CipherBox;
    iput-object v7, p0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    #@1c
    .line 692
    iput-object v7, p0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    #@1e
    .line 699
    :goto_0
    return-object v6

    #@1f
    .line 694
    .end local v6    # "box":Lsun/security/ssl/CipherBox;
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@21
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    #@23
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    #@25
    .line 695
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@27
    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    #@2a
    move-result-object v4

    #@2b
    .line 694
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$BulkCipher;->newCipher(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;

    #@2e
    move-result-object v6

    #@2f
    .line 696
    .restart local v6    # "box":Lsun/security/ssl/CipherBox;
    iput-object v7, p0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    #@31
    .line 697
    iput-object v7, p0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    #@33
    goto :goto_0
.end method

.method newWriteMAC()Lsun/security/ssl/MAC;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 722
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@3
    iget-object v1, v2, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    #@5
    .line 724
    .local v1, "macAlg":Lsun/security/ssl/CipherSuite$MacAlg;
    iget-boolean v2, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 725
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@b
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    #@d
    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/CipherSuite$MacAlg;->newMac(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)Lsun/security/ssl/MAC;

    #@10
    move-result-object v0

    #@11
    .line 726
    .local v0, "mac":Lsun/security/ssl/MAC;
    iput-object v4, p0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    #@13
    .line 731
    :goto_0
    return-object v0

    #@14
    .line 728
    .end local v0    # "mac":Lsun/security/ssl/MAC;
    :cond_0
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@16
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;

    #@18
    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/CipherSuite$MacAlg;->newMac(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)Lsun/security/ssl/MAC;

    #@1b
    move-result-object v0

    #@1c
    .line 729
    .restart local v0    # "mac":Lsun/security/ssl/MAC;
    iput-object v4, p0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;

    #@1e
    goto :goto_0
.end method

.method processLoop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    .line 828
    :goto_0
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@3
    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->available()I

    #@6
    move-result v2

    #@7
    if-lt v2, v4, :cond_2

    #@9
    .line 837
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@b
    invoke-virtual {v2, v4}, Lsun/security/ssl/HandshakeInStream;->mark(I)V

    #@e
    .line 839
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@10
    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@13
    move-result v2

    #@14
    int-to-byte v1, v2

    #@15
    .line 840
    .local v1, "messageType":B
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@17
    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->getInt24()I

    #@1a
    move-result v0

    #@1b
    .line 842
    .local v0, "messageLen":I
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@1d
    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->available()I

    #@20
    move-result v2

    #@21
    if-ge v2, v0, :cond_0

    #@23
    .line 843
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@25
    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->reset()V

    #@28
    .line 844
    return-void

    #@29
    .line 862
    :cond_0
    if-nez v1, :cond_1

    #@2b
    .line 863
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@2d
    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->reset()V

    #@30
    .line 864
    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/Handshaker;->processMessage(BI)V

    #@33
    .line 865
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@35
    add-int/lit8 v3, v0, 0x4

    #@37
    invoke-virtual {v2, v3}, Lsun/security/ssl/HandshakeInStream;->ignore(I)V

    #@3a
    goto :goto_0

    #@3b
    .line 867
    :cond_1
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@3d
    invoke-virtual {v2, v0}, Lsun/security/ssl/HandshakeInStream;->mark(I)V

    #@40
    .line 868
    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/Handshaker;->processMessage(BI)V

    #@43
    .line 869
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@45
    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->digestNow()V

    #@48
    goto :goto_0

    #@49
    .line 824
    .end local v0    # "messageLen":I
    .end local v1    # "messageType":B
    :cond_2
    return-void
.end method

.method abstract processMessage(BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method process_record(Lsun/security/ssl/InputRecord;Z)V
    .locals 1
    .param p1, "r"    # Lsun/security/ssl/InputRecord;
    .param p2, "expectingFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 791
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->checkThrown()V

    #@3
    .line 797
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    #@5
    invoke-virtual {v0, p1}, Lsun/security/ssl/HandshakeInStream;->incomingRecord(Lsun/security/ssl/InputRecord;)V

    #@8
    .line 803
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@a
    if-nez v0, :cond_0

    #@c
    if-eqz p2, :cond_1

    #@e
    .line 804
    :cond_0
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->processLoop()V

    #@11
    .line 789
    :goto_0
    return-void

    #@12
    .line 806
    :cond_1
    new-instance v0, Lsun/security/ssl/Handshaker$1;

    #@14
    invoke-direct {v0, p0}, Lsun/security/ssl/Handshaker$1;-><init>(Lsun/security/ssl/Handshaker;)V

    #@17
    invoke-direct {p0, v0}, Lsun/security/ssl/Handshaker;->delegateTask(Ljava/security/PrivilegedExceptionAction;)V

    #@1a
    goto :goto_0
.end method

.method selectProtocolVersion(Lsun/security/ssl/ProtocolVersion;)Lsun/security/ssl/ProtocolVersion;
    .locals 1
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    .line 543
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 544
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveProtocols()Lsun/security/ssl/ProtocolList;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@a
    .line 547
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@c
    invoke-virtual {v0, p1}, Lsun/security/ssl/ProtocolList;->selectProtocolVersion(Lsun/security/ssl/ProtocolVersion;)Lsun/security/ssl/ProtocolVersion;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method sendChangeCipherSpec(Lsun/security/ssl/HandshakeMessage$Finished;Z)V
    .locals 3
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$Finished;
    .param p2, "lastMessage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x14

    #@2
    .line 941
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@4
    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    #@7
    .line 954
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 955
    new-instance v0, Lsun/security/ssl/OutputRecord;

    #@d
    invoke-direct {v0, v2}, Lsun/security/ssl/OutputRecord;-><init>(B)V

    #@10
    .line 960
    .local v0, "r":Lsun/security/ssl/OutputRecord;
    :goto_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@12
    invoke-virtual {v0, v1}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@15
    .line 961
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@19
    .line 963
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 964
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@1f
    iget-object v1, v1, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@21
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@24
    .line 966
    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@26
    invoke-virtual {v1, v0}, Lsun/security/ssl/SSLSocketImpl;->writeRecord(Lsun/security/ssl/OutputRecord;)V

    #@29
    .line 967
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@2b
    invoke-virtual {v1}, Lsun/security/ssl/SSLSocketImpl;->changeWriteCiphers()V

    #@2e
    .line 968
    sget-object v1, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    #@30
    if-eqz v1, :cond_0

    #@32
    const-string/jumbo v1, "handshake"

    #@35
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_0

    #@3b
    .line 969
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3d
    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage$Finished;->print(Ljava/io/PrintStream;)V

    #@40
    .line 971
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@42
    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    #@45
    .line 972
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@47
    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    .line 974
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@4c
    iget-object v1, v1, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@4e
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@51
    .line 939
    .end local v0    # "r":Lsun/security/ssl/OutputRecord;
    :goto_1
    return-void

    #@52
    .line 957
    :cond_1
    new-instance v0, Lsun/security/ssl/EngineOutputRecord;

    #@54
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@56
    invoke-direct {v0, v2, v1}, Lsun/security/ssl/EngineOutputRecord;-><init>(BLsun/security/ssl/SSLEngineImpl;)V

    #@59
    .restart local v0    # "r":Lsun/security/ssl/OutputRecord;
    goto :goto_0

    #@5a
    .line 973
    :catchall_0
    move-exception v1

    #@5b
    .line 974
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@5d
    iget-object v2, v2, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@5f
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@62
    .line 973
    throw v1

    #@63
    .line 977
    :cond_2
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@65
    iget-object v2, v1, Lsun/security/ssl/SSLEngineImpl;->writeLock:Ljava/lang/Object;

    #@67
    monitor-enter v2

    #@68
    .line 978
    :try_start_1
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@6a
    check-cast v0, Lsun/security/ssl/EngineOutputRecord;

    #@6c
    .end local v0    # "r":Lsun/security/ssl/OutputRecord;
    invoke-virtual {v1, v0}, Lsun/security/ssl/SSLEngineImpl;->writeRecord(Lsun/security/ssl/EngineOutputRecord;)V

    #@6f
    .line 979
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@71
    invoke-virtual {v1}, Lsun/security/ssl/SSLEngineImpl;->changeWriteCiphers()V

    #@74
    .line 980
    sget-object v1, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    #@76
    if-eqz v1, :cond_3

    #@78
    const-string/jumbo v1, "handshake"

    #@7b
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@7e
    move-result v1

    #@7f
    if-eqz v1, :cond_3

    #@81
    .line 981
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@83
    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage$Finished;->print(Ljava/io/PrintStream;)V

    #@86
    .line 983
    :cond_3
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@88
    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    #@8b
    .line 985
    if-eqz p2, :cond_4

    #@8d
    .line 986
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@8f
    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->setFinishedMsg()V

    #@92
    .line 988
    :cond_4
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@94
    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@97
    monitor-exit v2

    #@98
    goto :goto_1

    #@99
    .line 977
    :catchall_1
    move-exception v1

    #@9a
    monitor-exit v2

    #@9b
    throw v1
.end method

.method setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    .locals 2
    .param p1, "algorithmConstraints"    # Ljava/security/AlgorithmConstraints;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 400
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@3
    .line 401
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@5
    .line 404
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    #@7
    invoke-direct {v0, p1}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljava/security/AlgorithmConstraints;)V

    #@a
    .line 403
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@c
    .line 405
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    #@e
    .line 399
    return-void
.end method

.method setCipherSuite(Lsun/security/ssl/CipherSuite;)V
    .locals 1
    .param p1, "s"    # Lsun/security/ssl/CipherSuite;

    #@0
    .prologue
    .line 508
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@2
    .line 509
    iget-object v0, p1, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@6
    .line 507
    return-void
.end method

.method setEnableSessionCreation(Z)V
    .locals 0
    .param p1, "newSessions"    # Z

    #@0
    .prologue
    .line 659
    iput-boolean p1, p0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    #@2
    .line 658
    return-void
.end method

.method setEnabledCipherSuites(Lsun/security/ssl/CipherSuiteList;)V
    .locals 1
    .param p1, "enabledCipherSuites"    # Lsun/security/ssl/CipherSuiteList;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 389
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@3
    .line 390
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@5
    .line 391
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@7
    .line 388
    return-void
.end method

.method setEnabledProtocols(Lsun/security/ssl/ProtocolList;)V
    .locals 1
    .param p1, "enabledProtocols"    # Lsun/security/ssl/ProtocolList;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 377
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@3
    .line 378
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    #@5
    .line 380
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@7
    .line 376
    return-void
.end method

.method setHandshakeSessionSE(Lsun/security/ssl/SSLSessionImpl;)V
    .locals 1
    .param p1, "handshakeSession"    # Lsun/security/ssl/SSLSessionImpl;

    #@0
    .prologue
    .line 756
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 757
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@6
    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLSocketImpl;->setHandshakeSession(Lsun/security/ssl/SSLSessionImpl;)V

    #@9
    .line 755
    :goto_0
    return-void

    #@a
    .line 759
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@c
    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLEngineImpl;->setHandshakeSession(Lsun/security/ssl/SSLSessionImpl;)V

    #@f
    goto :goto_0
.end method

.method setIdentificationProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    .line 435
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->identificationProtocol:Ljava/lang/String;

    #@2
    .line 434
    return-void
.end method

.method setPeerSupportedSignAlgs(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 421
    .local p1, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@5
    .line 420
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    #@7
    .line 419
    return-void
.end method

.method setVersion(Lsun/security/ssl/ProtocolVersion;)V
    .locals 1
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    .line 365
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@2
    .line 366
    invoke-direct {p0, p1}, Lsun/security/ssl/Handshaker;->setVersionSE(Lsun/security/ssl/ProtocolVersion;)V

    #@5
    .line 368
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    #@7
    iget-object v0, v0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    #@9
    invoke-virtual {v0, p1}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@c
    .line 364
    return-void
.end method

.method started()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 888
    iget v1, p0, Lsun/security/ssl/Handshaker;->state:I

    #@3
    if-ltz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method taskOutstanding()Z
    .locals 1

    #@0
    .prologue
    .line 1332
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method warningSE(B)V
    .locals 1
    .param p1, "b"    # B

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 284
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    #@6
    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLSocketImpl;->warning(B)V

    #@9
    .line 282
    :goto_0
    return-void

    #@a
    .line 286
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@c
    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLEngineImpl;->warning(B)V

    #@f
    goto :goto_0
.end method
