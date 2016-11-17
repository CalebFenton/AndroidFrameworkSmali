.class final Lsun/security/ssl/HandshakeMessage$Finished;
.super Lsun/security/ssl/HandshakeMessage;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Finished"
.end annotation


# static fields
.field static final CLIENT:I = 0x1

.field static final SERVER:I = 0x2

.field private static final SSL_CLIENT:[B

.field private static final SSL_SERVER:[B


# instance fields
.field private cipherSuite:Lsun/security/ssl/CipherSuite;

.field private protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private verifyData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 1838
    new-array v0, v1, [B

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Lsun/security/ssl/HandshakeMessage$Finished;->SSL_CLIENT:[B

    #@8
    .line 1839
    new-array v0, v1, [B

    #@a
    fill-array-data v0, :array_1

    #@d
    sput-object v0, Lsun/security/ssl/HandshakeMessage$Finished;->SSL_SERVER:[B

    #@f
    .line 1829
    return-void

    #@10
    .line 1838
    :array_0
    .array-data 1
        0x43t
        0x4ct
        0x4et
        0x54t
    .end array-data

    #@16
    .line 1839
    :array_1
    .array-data 1
        0x53t
        0x52t
        0x56t
        0x52t
    .end array-data
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;Lsun/security/ssl/CipherSuite;)V
    .locals 1
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;
    .param p3, "sender"    # I
    .param p4, "master"    # Ljavax/crypto/SecretKey;
    .param p5, "cipherSuite"    # Lsun/security/ssl/CipherSuite;

    #@0
    .prologue
    .line 1857
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 1859
    iput-object p1, p0, Lsun/security/ssl/HandshakeMessage$Finished;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@5
    .line 1860
    iput-object p5, p0, Lsun/security/ssl/HandshakeMessage$Finished;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@7
    .line 1861
    invoke-direct {p0, p2, p3, p4}, Lsun/security/ssl/HandshakeMessage$Finished;->getFinished(Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;)[B

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$Finished;->verifyData:[B

    #@d
    .line 1858
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/CipherSuite;)V
    .locals 3
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "input"    # Lsun/security/ssl/HandshakeInStream;
    .param p3, "cipherSuite"    # Lsun/security/ssl/CipherSuite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1867
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 1869
    iput-object p1, p0, Lsun/security/ssl/HandshakeMessage$Finished;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@5
    .line 1870
    iput-object p3, p0, Lsun/security/ssl/HandshakeMessage$Finished;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@7
    .line 1871
    iget v1, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@9
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@b
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@d
    if-lt v1, v2, :cond_0

    #@f
    const/16 v0, 0xc

    #@11
    .line 1872
    .local v0, "msgLen":I
    :goto_0
    new-array v1, v0, [B

    #@13
    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$Finished;->verifyData:[B

    #@15
    .line 1873
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$Finished;->verifyData:[B

    #@17
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    #@1a
    .line 1868
    return-void

    #@1b
    .line 1871
    .end local v0    # "msgLen":I
    :cond_0
    const/16 v0, 0x24

    #@1d
    goto :goto_0
.end method

.method private getFinished(Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;)[B
    .locals 22
    .param p1, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;
    .param p2, "sender"    # I
    .param p3, "masterKey"    # Ljavax/crypto/SecretKey;

    #@0
    .prologue
    .line 1894
    const/4 v4, 0x1

    #@1
    move/from16 v0, p2

    #@3
    if-ne v0, v4, :cond_0

    #@5
    .line 1895
    sget-object v20, Lsun/security/ssl/HandshakeMessage$Finished;->SSL_CLIENT:[B

    #@7
    .line 1896
    .local v20, "sslLabel":[B
    const-string/jumbo v5, "client finished"

    #@a
    .line 1904
    .local v5, "tlsLabel":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    #@c
    iget-object v4, v0, Lsun/security/ssl/HandshakeMessage$Finished;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@e
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@10
    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@12
    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    #@14
    if-lt v4, v7, :cond_4

    #@16
    .line 1912
    :try_start_0
    move-object/from16 v0, p0

    #@18
    iget-object v4, v0, Lsun/security/ssl/HandshakeMessage$Finished;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@1a
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1c
    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@1e
    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    #@20
    if-lt v4, v7, :cond_2

    #@22
    .line 1914
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/HandshakeHash;->getFinishedHash()[B

    #@25
    move-result-object v6

    #@26
    .line 1916
    .local v6, "seed":[B
    const-string/jumbo v17, "SunTls12Prf"

    #@29
    .line 1917
    .local v17, "prfAlg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2b
    iget-object v4, v0, Lsun/security/ssl/HandshakeMessage$Finished;->cipherSuite:Lsun/security/ssl/CipherSuite;

    #@2d
    iget-object v0, v4, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    #@2f
    move-object/from16 v16, v0

    #@31
    .line 1930
    .local v16, "prf":Lsun/security/ssl/CipherSuite$PRF;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashAlg()Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    .line 1931
    .local v8, "prfHashAlg":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashLength()I

    #@38
    move-result v9

    #@39
    .line 1932
    .local v9, "prfHashLength":I
    invoke-virtual/range {v16 .. v16}, Lsun/security/ssl/CipherSuite$PRF;->getPRFBlockSize()I

    #@3c
    move-result v10

    #@3d
    .line 1940
    .local v10, "prfBlockSize":I
    new-instance v3, Lsun/security/internal/spec/TlsPrfParameterSpec;

    #@3f
    .line 1941
    const/16 v7, 0xc

    #@41
    move-object/from16 v4, p3

    #@43
    .line 1940
    invoke-direct/range {v3 .. v10}, Lsun/security/internal/spec/TlsPrfParameterSpec;-><init>(Ljavax/crypto/SecretKey;Ljava/lang/String;[BILjava/lang/String;II)V

    #@46
    .line 1944
    .local v3, "spec":Lsun/security/internal/spec/TlsPrfParameterSpec;
    invoke-static/range {v17 .. v17}, Lsun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    #@49
    move-result-object v14

    #@4a
    .line 1945
    .local v14, "kg":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v14, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    #@4d
    .line 1946
    invoke-virtual {v14}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    #@50
    move-result-object v18

    #@51
    .line 1947
    .local v18, "prfKey":Ljavax/crypto/SecretKey;
    const-string/jumbo v4, "RAW"

    #@54
    invoke-interface/range {v18 .. v18}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v4

    #@5c
    if-nez v4, :cond_3

    #@5e
    .line 1948
    new-instance v4, Ljava/security/ProviderException;

    #@60
    .line 1949
    const-string/jumbo v7, "Invalid PRF output, format must be RAW"

    #@63
    .line 1948
    invoke-direct {v4, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@66
    throw v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    .line 1953
    .end local v3    # "spec":Lsun/security/internal/spec/TlsPrfParameterSpec;
    .end local v6    # "seed":[B
    .end local v8    # "prfHashAlg":Ljava/lang/String;
    .end local v9    # "prfHashLength":I
    .end local v10    # "prfBlockSize":I
    .end local v14    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v16    # "prf":Lsun/security/ssl/CipherSuite$PRF;
    .end local v17    # "prfAlg":Ljava/lang/String;
    .end local v18    # "prfKey":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v12

    #@68
    .line 1954
    .local v12, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@6a
    const-string/jumbo v7, "PRF failed"

    #@6d
    invoke-direct {v4, v7, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@70
    throw v4

    #@71
    .line 1897
    .end local v5    # "tlsLabel":Ljava/lang/String;
    .end local v12    # "e":Ljava/security/GeneralSecurityException;
    .end local v20    # "sslLabel":[B
    :cond_0
    const/4 v4, 0x2

    #@72
    move/from16 v0, p2

    #@74
    if-ne v0, v4, :cond_1

    #@76
    .line 1898
    sget-object v20, Lsun/security/ssl/HandshakeMessage$Finished;->SSL_SERVER:[B

    #@78
    .line 1899
    .restart local v20    # "sslLabel":[B
    const-string/jumbo v5, "server finished"

    #@7b
    .restart local v5    # "tlsLabel":Ljava/lang/String;
    goto :goto_0

    #@7c
    .line 1901
    .end local v5    # "tlsLabel":Ljava/lang/String;
    .end local v20    # "sslLabel":[B
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    #@7e
    new-instance v7, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v21, "Invalid sender: "

    #@86
    move-object/from16 v0, v21

    #@88
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v7

    #@8c
    move/from16 v0, p2

    #@8e
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    move-result-object v7

    #@92
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v7

    #@96
    invoke-direct {v4, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@99
    throw v4

    #@9a
    .line 1920
    .restart local v5    # "tlsLabel":Ljava/lang/String;
    .restart local v20    # "sslLabel":[B
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/HandshakeHash;->getMD5Clone()Ljava/security/MessageDigest;

    #@9d
    move-result-object v15

    #@9e
    .line 1921
    .local v15, "md5Clone":Ljava/security/MessageDigest;
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/HandshakeHash;->getSHAClone()Ljava/security/MessageDigest;

    #@a1
    move-result-object v19

    #@a2
    .line 1922
    .local v19, "shaClone":Ljava/security/MessageDigest;
    const/16 v4, 0x24

    #@a4
    new-array v6, v4, [B

    #@a6
    .line 1923
    .restart local v6    # "seed":[B
    const/4 v4, 0x0

    #@a7
    const/16 v7, 0x10

    #@a9
    invoke-virtual {v15, v6, v4, v7}, Ljava/security/MessageDigest;->digest([BII)I

    #@ac
    .line 1924
    const/16 v4, 0x10

    #@ae
    const/16 v7, 0x14

    #@b0
    move-object/from16 v0, v19

    #@b2
    invoke-virtual {v0, v6, v4, v7}, Ljava/security/MessageDigest;->digest([BII)I

    #@b5
    .line 1926
    const-string/jumbo v17, "SunTlsPrf"

    #@b8
    .line 1927
    .restart local v17    # "prfAlg":Ljava/lang/String;
    sget-object v16, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    #@ba
    .restart local v16    # "prf":Lsun/security/ssl/CipherSuite$PRF;
    goto/16 :goto_1

    #@bc
    .line 1951
    .end local v15    # "md5Clone":Ljava/security/MessageDigest;
    .end local v19    # "shaClone":Ljava/security/MessageDigest;
    .restart local v3    # "spec":Lsun/security/internal/spec/TlsPrfParameterSpec;
    .restart local v8    # "prfHashAlg":Ljava/lang/String;
    .restart local v9    # "prfHashLength":I
    .restart local v10    # "prfBlockSize":I
    .restart local v14    # "kg":Ljavax/crypto/KeyGenerator;
    .restart local v18    # "prfKey":Ljavax/crypto/SecretKey;
    :cond_3
    invoke-interface/range {v18 .. v18}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    #@bf
    move-result-object v13

    #@c0
    .line 1952
    .local v13, "finished":[B
    return-object v13

    #@c1
    .line 1958
    .end local v3    # "spec":Lsun/security/internal/spec/TlsPrfParameterSpec;
    .end local v6    # "seed":[B
    .end local v8    # "prfHashAlg":Ljava/lang/String;
    .end local v9    # "prfHashLength":I
    .end local v10    # "prfBlockSize":I
    .end local v13    # "finished":[B
    .end local v14    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v16    # "prf":Lsun/security/ssl/CipherSuite$PRF;
    .end local v17    # "prfAlg":Ljava/lang/String;
    .end local v18    # "prfKey":Ljavax/crypto/SecretKey;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/HandshakeHash;->getMD5Clone()Ljava/security/MessageDigest;

    #@c4
    move-result-object v15

    #@c5
    .line 1959
    .restart local v15    # "md5Clone":Ljava/security/MessageDigest;
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/HandshakeHash;->getSHAClone()Ljava/security/MessageDigest;

    #@c8
    move-result-object v19

    #@c9
    .line 1960
    .restart local v19    # "shaClone":Ljava/security/MessageDigest;
    sget-object v4, Lsun/security/ssl/HandshakeMessage$Finished;->MD5_pad1:[B

    #@cb
    sget-object v7, Lsun/security/ssl/HandshakeMessage$Finished;->MD5_pad2:[B

    #@cd
    move-object/from16 v0, v20

    #@cf
    move-object/from16 v1, p3

    #@d1
    invoke-static {v15, v0, v4, v7, v1}, Lsun/security/ssl/HandshakeMessage$Finished;->updateDigest(Ljava/security/MessageDigest;[B[B[BLjavax/crypto/SecretKey;)V

    #@d4
    .line 1961
    sget-object v4, Lsun/security/ssl/HandshakeMessage$Finished;->SHA_pad1:[B

    #@d6
    sget-object v7, Lsun/security/ssl/HandshakeMessage$Finished;->SHA_pad2:[B

    #@d8
    move-object/from16 v0, v19

    #@da
    move-object/from16 v1, v20

    #@dc
    move-object/from16 v2, p3

    #@de
    invoke-static {v0, v1, v4, v7, v2}, Lsun/security/ssl/HandshakeMessage$Finished;->updateDigest(Ljava/security/MessageDigest;[B[B[BLjavax/crypto/SecretKey;)V

    #@e1
    .line 1962
    const/16 v4, 0x24

    #@e3
    new-array v13, v4, [B

    #@e5
    .line 1964
    .restart local v13    # "finished":[B
    const/4 v4, 0x0

    #@e6
    const/16 v7, 0x10

    #@e8
    :try_start_2
    invoke-virtual {v15, v13, v4, v7}, Ljava/security/MessageDigest;->digest([BII)I

    #@eb
    .line 1965
    const/16 v4, 0x10

    #@ed
    const/16 v7, 0x14

    #@ef
    move-object/from16 v0, v19

    #@f1
    invoke-virtual {v0, v13, v4, v7}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_2
    .catch Ljava/security/DigestException; {:try_start_2 .. :try_end_2} :catch_1

    #@f4
    .line 1970
    return-object v13

    #@f5
    .line 1966
    :catch_1
    move-exception v11

    #@f6
    .line 1968
    .local v11, "e":Ljava/security/DigestException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@f8
    const-string/jumbo v7, "Digest failed"

    #@fb
    invoke-direct {v4, v7, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@fe
    throw v4
.end method

.method private static updateDigest(Ljava/security/MessageDigest;[B[B[BLjavax/crypto/SecretKey;)V
    .locals 0
    .param p0, "md"    # Ljava/security/MessageDigest;
    .param p1, "sender"    # [B
    .param p2, "pad1"    # [B
    .param p3, "pad2"    # [B
    .param p4, "masterSecret"    # Ljavax/crypto/SecretKey;

    #@0
    .prologue
    .line 1982
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    #@3
    .line 1983
    invoke-static {p0, p2, p3, p4}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->-wrap0(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V

    #@6
    .line 1981
    return-void
.end method


# virtual methods
.method getVerifyData()[B
    .locals 1

    #@0
    .prologue
    .line 1988
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$Finished;->verifyData:[B

    #@2
    return-object v0
.end method

.method messageLength()I
    .locals 1

    #@0
    .prologue
    .line 1996
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$Finished;->verifyData:[B

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method messageType()I
    .locals 1

    #@0
    .prologue
    .line 1992
    const/16 v0, 0x14

    #@2
    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2006
    const-string/jumbo v0, "*** Finished"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 2007
    sget-object v0, Lsun/security/ssl/HandshakeMessage$Finished;->debug:Lsun/security/ssl/Debug;

    #@8
    if-eqz v0, :cond_0

    #@a
    const-string/jumbo v0, "verbose"

    #@d
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 2008
    const-string/jumbo v0, "verify_data"

    #@16
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$Finished;->verifyData:[B

    #@18
    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    #@1b
    .line 2009
    const-string/jumbo v0, "***"

    #@1e
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@21
    .line 2005
    :cond_0
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "out"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2001
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$Finished;->verifyData:[B

    #@2
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@5
    .line 2000
    return-void
.end method

.method verify(Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;)Z
    .locals 2
    .param p1, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;
    .param p2, "sender"    # I
    .param p3, "master"    # Ljavax/crypto/SecretKey;

    #@0
    .prologue
    .line 1883
    invoke-direct {p0, p1, p2, p3}, Lsun/security/ssl/HandshakeMessage$Finished;->getFinished(Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;)[B

    #@3
    move-result-object v0

    #@4
    .line 1884
    .local v0, "myFinished":[B
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$Finished;->verifyData:[B

    #@6
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@9
    move-result v1

    #@a
    return v1
.end method
