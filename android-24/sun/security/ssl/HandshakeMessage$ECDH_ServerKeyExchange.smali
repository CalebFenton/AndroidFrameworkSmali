.class final Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;
.super Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ECDH_ServerKeyExchange"
.end annotation


# static fields
.field private static final CURVE_EXPLICIT_CHAR2:I = 0x2

.field private static final CURVE_EXPLICIT_PRIME:I = 0x1

.field private static final CURVE_NAMED_CURVE:I = 0x3


# instance fields
.field private curveId:I

.field private pointBytes:[B

.field private preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

.field protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private publicKey:Ljava/security/interfaces/ECPublicKey;

.field private signatureBytes:[B


# direct methods
.method constructor <init>(Lsun/security/ssl/ECDHCrypt;Ljava/security/PrivateKey;[B[BLjava/security/SecureRandom;Lsun/security/ssl/SignatureAndHashAlgorithm;Lsun/security/ssl/ProtocolVersion;)V
    .locals 5
    .param p1, "obj"    # Lsun/security/ssl/ECDHCrypt;
    .param p2, "privateKey"    # Ljava/security/PrivateKey;
    .param p3, "clntNonce"    # [B
    .param p4, "svrNonce"    # [B
    .param p5, "sr"    # Ljava/security/SecureRandom;
    .param p6, "signAlgorithm"    # Lsun/security/ssl/SignatureAndHashAlgorithm;
    .param p7, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 984
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    #@3
    .line 989
    iput-object p7, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@5
    .line 991
    invoke-virtual {p1}, Lsun/security/ssl/ECDHCrypt;->getPublicKey()Ljava/security/PublicKey;

    #@8
    move-result-object v3

    #@9
    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    #@b
    iput-object v3, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->publicKey:Ljava/security/interfaces/ECPublicKey;

    #@d
    .line 992
    iget-object v3, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->publicKey:Ljava/security/interfaces/ECPublicKey;

    #@f
    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@12
    move-result-object v0

    #@13
    .line 993
    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    iget-object v3, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->publicKey:Ljava/security/interfaces/ECPublicKey;

    #@15
    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@18
    move-result-object v1

    #@19
    .line 994
    .local v1, "point":Ljava/security/spec/ECPoint;
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v1, v3}, Lsun/security/ssl/JsseJce;->encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    #@20
    move-result-object v3

    #@21
    iput-object v3, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->pointBytes:[B

    #@23
    .line 995
    invoke-static {v0}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->getCurveIndex(Ljava/security/spec/ECParameterSpec;)I

    #@26
    move-result v3

    #@27
    iput v3, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    #@29
    .line 997
    if-nez p2, :cond_0

    #@2b
    .line 999
    return-void

    #@2c
    .line 1003
    :cond_0
    iget v3, p7, Lsun/security/ssl/ProtocolVersion;->v:I

    #@2e
    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@30
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@32
    if-lt v3, v4, :cond_1

    #@34
    .line 1004
    iput-object p6, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@36
    .line 1005
    invoke-virtual {p6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-static {v3}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@3d
    move-result-object v2

    #@3e
    .line 1009
    .local v2, "sig":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v2, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    #@41
    .line 1011
    invoke-direct {p0, v2, p3, p4}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->updateSignature(Ljava/security/Signature;[B[B)V

    #@44
    .line 1012
    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    #@47
    move-result-object v3

    #@48
    iput-object v3, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->signatureBytes:[B

    #@4a
    .line 987
    return-void

    #@4b
    .line 1007
    .end local v2    # "sig":Ljava/security/Signature;
    :cond_1
    invoke-interface {p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-static {v3}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@52
    move-result-object v2

    #@53
    .restart local v2    # "sig":Ljava/security/Signature;
    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;Ljava/security/PublicKey;[B[BLjava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V
    .locals 12
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "signingKey"    # Ljava/security/PublicKey;
    .param p3, "clntNonce"    # [B
    .param p4, "svrNonce"    # [B
    .param p6, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/ssl/HandshakeInStream;",
            "Ljava/security/PublicKey;",
            "[B[B",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;",
            "Lsun/security/ssl/ProtocolVersion;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1018
    .local p5, "localSupportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    #@3
    .line 1024
    move-object/from16 v0, p6

    #@5
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@7
    .line 1027
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@a
    move-result v2

    #@b
    .line 1031
    .local v2, "curveType":I
    const/4 v9, 0x3

    #@c
    if-ne v2, v9, :cond_2

    #@e
    .line 1032
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    #@11
    move-result v9

    #@12
    iput v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    #@14
    .line 1033
    iget v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    #@16
    invoke-static {v9}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->isSupported(I)Z

    #@19
    move-result v9

    #@1a
    if-nez v9, :cond_0

    #@1c
    .line 1035
    new-instance v9, Ljavax/net/ssl/SSLHandshakeException;

    #@1e
    .line 1036
    new-instance v10, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v11, "Unsupported curveId: "

    #@26
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v10

    #@2a
    iget v11, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    #@2c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v10

    #@30
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v10

    #@34
    .line 1035
    invoke-direct {v9, v10}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@37
    throw v9

    #@38
    .line 1039
    :cond_0
    iget v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    #@3a
    invoke-static {v9}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->getCurveOid(I)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    .line 1040
    .local v1, "curveOid":Ljava/lang/String;
    if-nez v1, :cond_1

    #@40
    .line 1041
    new-instance v9, Ljavax/net/ssl/SSLHandshakeException;

    #@42
    .line 1042
    new-instance v10, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v11, "Unknown named curve: "

    #@4a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v10

    #@4e
    iget v11, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    #@50
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v10

    #@54
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v10

    #@58
    .line 1041
    invoke-direct {v9, v10}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v9

    #@5c
    .line 1044
    :cond_1
    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    #@5f
    move-result-object v5

    #@60
    .line 1045
    .local v5, "parameters":Ljava/security/spec/ECParameterSpec;
    if-nez v5, :cond_3

    #@62
    .line 1046
    new-instance v9, Ljavax/net/ssl/SSLHandshakeException;

    #@64
    .line 1047
    new-instance v10, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v11, "Unsupported curve: "

    #@6c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v10

    #@70
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v10

    #@74
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v10

    #@78
    .line 1046
    invoke-direct {v9, v10}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v9

    #@7c
    .line 1050
    .end local v1    # "curveOid":Ljava/lang/String;
    .end local v5    # "parameters":Ljava/security/spec/ECParameterSpec;
    :cond_2
    new-instance v9, Ljavax/net/ssl/SSLHandshakeException;

    #@7e
    .line 1051
    new-instance v10, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v11, "Unsupported ECCurveType: "

    #@86
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v10

    #@8a
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v10

    #@8e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v10

    #@92
    .line 1050
    invoke-direct {v9, v10}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@95
    throw v9

    #@96
    .line 1053
    .restart local v1    # "curveOid":Ljava/lang/String;
    .restart local v5    # "parameters":Ljava/security/spec/ECParameterSpec;
    :cond_3
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes8()[B

    #@99
    move-result-object v9

    #@9a
    iput-object v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->pointBytes:[B

    #@9c
    .line 1055
    iget-object v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->pointBytes:[B

    #@9e
    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@a1
    move-result-object v10

    #@a2
    invoke-static {v9, v10}, Lsun/security/ssl/JsseJce;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    #@a5
    move-result-object v6

    #@a6
    .line 1056
    .local v6, "point":Ljava/security/spec/ECPoint;
    const-string/jumbo v9, "EC"

    #@a9
    invoke-static {v9}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@ac
    move-result-object v3

    #@ad
    .line 1058
    .local v3, "factory":Ljava/security/KeyFactory;
    new-instance v9, Ljava/security/spec/ECPublicKeySpec;

    #@af
    invoke-direct {v9, v6, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    #@b2
    .line 1057
    invoke-virtual {v3, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@b5
    move-result-object v9

    #@b6
    check-cast v9, Ljava/security/interfaces/ECPublicKey;

    #@b8
    iput-object v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->publicKey:Ljava/security/interfaces/ECPublicKey;

    #@ba
    .line 1060
    if-nez p2, :cond_4

    #@bc
    .line 1062
    return-void

    #@bd
    .line 1066
    :cond_4
    move-object/from16 v0, p6

    #@bf
    iget v9, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@c1
    sget-object v10, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@c3
    iget v10, v10, Lsun/security/ssl/ProtocolVersion;->v:I

    #@c5
    if-lt v9, v10, :cond_5

    #@c7
    .line 1067
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@ca
    move-result v4

    #@cb
    .line 1068
    .local v4, "hash":I
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@ce
    move-result v8

    #@cf
    .line 1071
    .local v8, "signature":I
    const/4 v9, 0x0

    #@d0
    invoke-static {v4, v8, v9}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@d3
    move-result-object v9

    #@d4
    .line 1070
    iput-object v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@d6
    .line 1075
    iget-object v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@d8
    .line 1074
    move-object/from16 v0, p5

    #@da
    invoke-interface {v0, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@dd
    move-result v9

    #@de
    if-nez v9, :cond_5

    #@e0
    .line 1076
    new-instance v9, Ljavax/net/ssl/SSLHandshakeException;

    #@e2
    .line 1077
    const-string/jumbo v10, "Unsupported SignatureAndHashAlgorithm in ServerKeyExchange message"

    #@e5
    .line 1076
    invoke-direct {v9, v10}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@e8
    throw v9

    #@e9
    .line 1083
    .end local v4    # "hash":I
    .end local v8    # "signature":I
    :cond_5
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@ec
    move-result-object v9

    #@ed
    iput-object v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->signatureBytes:[B

    #@ef
    .line 1087
    move-object/from16 v0, p6

    #@f1
    iget v9, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@f3
    sget-object v10, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@f5
    iget v10, v10, Lsun/security/ssl/ProtocolVersion;->v:I

    #@f7
    if-lt v9, v10, :cond_6

    #@f9
    .line 1089
    iget-object v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@fb
    invoke-virtual {v9}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    #@fe
    move-result-object v9

    #@ff
    .line 1088
    invoke-static {v9}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@102
    move-result-object v7

    #@103
    .line 1093
    .local v7, "sig":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v7, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@106
    .line 1095
    move-object/from16 v0, p4

    #@108
    invoke-direct {p0, v7, p3, v0}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->updateSignature(Ljava/security/Signature;[B[B)V

    #@10b
    .line 1097
    iget-object v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->signatureBytes:[B

    #@10d
    invoke-virtual {v7, v9}, Ljava/security/Signature;->verify([B)Z

    #@110
    move-result v9

    #@111
    if-nez v9, :cond_7

    #@113
    .line 1098
    new-instance v9, Ljavax/net/ssl/SSLKeyException;

    #@115
    .line 1099
    const-string/jumbo v10, "Invalid signature on ECDH server key exchange message"

    #@118
    .line 1098
    invoke-direct {v9, v10}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    #@11b
    throw v9

    #@11c
    .line 1091
    .end local v7    # "sig":Ljava/security/Signature;
    :cond_6
    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@11f
    move-result-object v9

    #@120
    invoke-static {v9}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@123
    move-result-object v7

    #@124
    .restart local v7    # "sig":Ljava/security/Signature;
    goto :goto_0

    #@125
    .line 1022
    :cond_7
    return-void
.end method

.method private static getSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 2
    .param p0, "keyAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 1112
    const-string/jumbo v0, "EC"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1113
    const-string/jumbo v0, "SHA1withECDSA"

    #@c
    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 1114
    :cond_0
    const-string/jumbo v0, "RSA"

    #@14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1115
    invoke-static {}, Lsun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 1117
    :cond_1
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    #@21
    const-string/jumbo v1, "neither an RSA or a EC key"

    #@24
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0
.end method

.method private updateSignature(Ljava/security/Signature;[B[B)V
    .locals 1
    .param p1, "sig"    # Ljava/security/Signature;
    .param p2, "clntNonce"    # [B
    .param p3, "svrNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 1123
    invoke-virtual {p1, p2}, Ljava/security/Signature;->update([B)V

    #@3
    .line 1124
    invoke-virtual {p1, p3}, Ljava/security/Signature;->update([B)V

    #@6
    .line 1126
    const/4 v0, 0x3

    #@7
    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    #@a
    .line 1127
    iget v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    #@c
    shr-int/lit8 v0, v0, 0x8

    #@e
    int-to-byte v0, v0

    #@f
    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    #@12
    .line 1128
    iget v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    #@14
    int-to-byte v0, v0

    #@15
    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    #@18
    .line 1129
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->pointBytes:[B

    #@1a
    array-length v0, v0

    #@1b
    int-to-byte v0, v0

    #@1c
    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    #@1f
    .line 1130
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->pointBytes:[B

    #@21
    invoke-virtual {p1, v0}, Ljava/security/Signature;->update([B)V

    #@24
    .line 1122
    return-void
.end method


# virtual methods
.method getPublicKey()Ljava/security/interfaces/ECPublicKey;
    .locals 1

    #@0
    .prologue
    .line 1107
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->publicKey:Ljava/security/interfaces/ECPublicKey;

    #@2
    return-object v0
.end method

.method messageLength()I
    .locals 3

    #@0
    .prologue
    .line 1134
    const/4 v0, 0x0

    #@1
    .line 1135
    .local v0, "sigLen":I
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->signatureBytes:[B

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1136
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->signatureBytes:[B

    #@7
    array-length v1, v1

    #@8
    add-int/lit8 v0, v1, 0x2

    #@a
    .line 1137
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@c
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@e
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@10
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@12
    if-lt v1, v2, :cond_0

    #@14
    .line 1138
    invoke-static {}, Lsun/security/ssl/SignatureAndHashAlgorithm;->sizeInRecord()I

    #@17
    move-result v1

    #@18
    add-int/2addr v0, v1

    #@19
    .line 1142
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->pointBytes:[B

    #@1b
    array-length v1, v1

    #@1c
    add-int/lit8 v1, v1, 0x4

    #@1e
    add-int/2addr v1, v0

    #@1f
    return v1
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
    .line 1161
    const-string/jumbo v0, "*** ECDH ServerKeyExchange"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 1163
    sget-object v0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->debug:Lsun/security/ssl/Debug;

    #@8
    if-eqz v0, :cond_1

    #@a
    const-string/jumbo v0, "verbose"

    #@d
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 1164
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->signatureBytes:[B

    #@15
    if-nez v0, :cond_2

    #@17
    .line 1165
    const-string/jumbo v0, "Anonymous"

    #@1a
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 1173
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v1, "Server key: "

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->publicKey:Ljava/security/interfaces/ECPublicKey;

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@36
    .line 1160
    :cond_1
    return-void

    #@37
    .line 1167
    :cond_2
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@39
    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@3b
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@3d
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@3f
    if-lt v0, v1, :cond_0

    #@41
    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v1, "Signature Algorithm "

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 1169
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@4f
    invoke-virtual {v1}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    .line 1168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5e
    goto :goto_0
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 2
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1146
    const/4 v0, 0x3

    #@1
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@4
    .line 1147
    iget v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    #@6
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@9
    .line 1148
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->pointBytes:[B

    #@b
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    #@e
    .line 1150
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->signatureBytes:[B

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1151
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@14
    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@16
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@18
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1a
    if-lt v0, v1, :cond_0

    #@1c
    .line 1152
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@1e
    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashValue()I

    #@21
    move-result v0

    #@22
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@25
    .line 1153
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@27
    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSignatureValue()I

    #@2a
    move-result v0

    #@2b
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@2e
    .line 1156
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->signatureBytes:[B

    #@30
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    #@33
    .line 1145
    :cond_1
    return-void
.end method
