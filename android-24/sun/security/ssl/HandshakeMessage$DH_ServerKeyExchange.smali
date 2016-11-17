.class final Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;
.super Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DH_ServerKeyExchange"
.end annotation


# static fields
.field private static final dhKeyExchangeFix:Z


# instance fields
.field private dh_Ys:[B

.field private dh_g:[B

.field private dh_p:[B

.field private preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

.field protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private signature:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 685
    const-string/jumbo v0, "com.sun.net.ssl.dhKeyExchangeFix"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    .line 684
    sput-boolean v0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dhKeyExchangeFix:Z

    #@a
    .line 681
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/DHCrypt;Ljava/security/PrivateKey;[B[BLjava/security/SecureRandom;Lsun/security/ssl/SignatureAndHashAlgorithm;Lsun/security/ssl/ProtocolVersion;)V
    .locals 3
    .param p1, "obj"    # Lsun/security/ssl/DHCrypt;
    .param p2, "key"    # Ljava/security/PrivateKey;
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
    .line 717
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    #@3
    .line 722
    iput-object p7, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@5
    .line 725
    invoke-direct {p0, p1}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->setValues(Lsun/security/ssl/DHCrypt;)V

    #@8
    .line 728
    iget v1, p7, Lsun/security/ssl/ProtocolVersion;->v:I

    #@a
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@c
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@e
    if-lt v1, v2, :cond_0

    #@10
    .line 729
    iput-object p6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@12
    .line 730
    invoke-virtual {p6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@19
    move-result-object v0

    #@1a
    .line 740
    .local v0, "sig":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v0, p2, p5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    #@1d
    .line 741
    invoke-direct {p0, v0, p3, p4}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->updateSignature(Ljava/security/Signature;[B[B)V

    #@20
    .line 742
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    #@23
    move-result-object v1

    #@24
    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    #@26
    .line 720
    return-void

    #@27
    .line 732
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_0
    const/4 v1, 0x0

    #@28
    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@2a
    .line 733
    invoke-interface {p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, "DSA"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_1

    #@37
    .line 734
    const-string/jumbo v1, "DSA"

    #@3a
    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@3d
    move-result-object v0

    #@3e
    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_0

    #@3f
    .line 736
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_1
    invoke-static {}, Lsun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    #@42
    move-result-object v0

    #@43
    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/DHCrypt;Lsun/security/ssl/ProtocolVersion;)V
    .locals 1
    .param p1, "obj"    # Lsun/security/ssl/DHCrypt;
    .param p2, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 703
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    #@4
    .line 704
    iput-object p2, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@6
    .line 705
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@8
    .line 708
    invoke-direct {p0, p1}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->setValues(Lsun/security/ssl/DHCrypt;)V

    #@b
    .line 709
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    #@d
    .line 703
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;Ljava/security/PublicKey;[B[BILjava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V
    .locals 12
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .param p3, "clntNonce"    # [B
    .param p4, "svrNonce"    # [B
    .param p5, "messageSize"    # I
    .param p7, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/ssl/HandshakeInStream;",
            "Ljava/security/PublicKey;",
            "[B[BI",
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
    .line 772
    .local p6, "localSupportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    #@3
    .line 778
    move-object/from16 v0, p7

    #@5
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@7
    .line 781
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@a
    move-result-object v6

    #@b
    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    #@d
    .line 782
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@10
    move-result-object v6

    #@11
    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    #@13
    .line 783
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@16
    move-result-object v6

    #@17
    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    #@19
    .line 784
    new-instance v6, Ljavax/crypto/spec/DHPublicKeySpec;

    #@1b
    new-instance v7, Ljava/math/BigInteger;

    #@1d
    iget-object v8, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    #@1f
    const/4 v9, 0x1

    #@20
    invoke-direct {v7, v9, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    #@23
    .line 785
    new-instance v8, Ljava/math/BigInteger;

    #@25
    iget-object v9, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    #@27
    const/4 v10, 0x1

    #@28
    invoke-direct {v8, v10, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    #@2b
    .line 786
    new-instance v9, Ljava/math/BigInteger;

    #@2d
    iget-object v10, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    #@2f
    const/4 v11, 0x1

    #@30
    invoke-direct {v9, v11, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    #@33
    .line 784
    invoke-direct {v6, v7, v8, v9}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@36
    invoke-static {v6}, Lsun/security/util/KeyUtil;->validate(Ljava/security/spec/KeySpec;)V

    #@39
    .line 789
    move-object/from16 v0, p7

    #@3b
    iget v6, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@3d
    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@3f
    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    #@41
    if-lt v6, v7, :cond_0

    #@43
    .line 790
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@46
    move-result v2

    #@47
    .line 791
    .local v2, "hash":I
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@4a
    move-result v4

    #@4b
    .line 794
    .local v4, "signature":I
    const/4 v6, 0x0

    #@4c
    invoke-static {v2, v4, v6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@4f
    move-result-object v6

    #@50
    .line 793
    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@52
    .line 798
    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@54
    .line 797
    move-object/from16 v0, p6

    #@56
    invoke-interface {v0, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@59
    move-result v6

    #@5a
    if-nez v6, :cond_1

    #@5c
    .line 799
    new-instance v6, Ljavax/net/ssl/SSLHandshakeException;

    #@5e
    .line 800
    const-string/jumbo v7, "Unsupported SignatureAndHashAlgorithm in ServerKeyExchange message"

    #@61
    .line 799
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@64
    throw v6

    #@65
    .line 804
    .end local v2    # "hash":I
    .end local v4    # "signature":I
    :cond_0
    const/4 v6, 0x0

    #@66
    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@68
    .line 809
    :cond_1
    sget-boolean v6, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dhKeyExchangeFix:Z

    #@6a
    if-eqz v6, :cond_2

    #@6c
    .line 810
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@6f
    move-result-object v5

    #@70
    .line 821
    .local v5, "signature":[B
    :goto_0
    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    .line 822
    .local v1, "algorithm":Ljava/lang/String;
    move-object/from16 v0, p7

    #@76
    iget v6, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@78
    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@7a
    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    #@7c
    if-lt v6, v7, :cond_3

    #@7e
    .line 824
    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@80
    invoke-virtual {v6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    #@83
    move-result-object v6

    #@84
    .line 823
    invoke-static {v6}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@87
    move-result-object v3

    #@88
    .line 835
    .local v3, "sig":Ljava/security/Signature;
    :goto_1
    invoke-virtual {v3, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@8b
    .line 836
    move-object/from16 v0, p4

    #@8d
    invoke-direct {p0, v3, p3, v0}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->updateSignature(Ljava/security/Signature;[B[B)V

    #@90
    .line 838
    invoke-virtual {v3, v5}, Ljava/security/Signature;->verify([B)Z

    #@93
    move-result v6

    #@94
    if-nez v6, :cond_6

    #@96
    .line 839
    new-instance v6, Ljavax/net/ssl/SSLKeyException;

    #@98
    const-string/jumbo v7, "Server D-H key verification failed"

    #@9b
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v6

    #@9f
    .line 812
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v3    # "sig":Ljava/security/Signature;
    .end local v5    # "signature":[B
    :cond_2
    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    #@a1
    array-length v6, v6

    #@a2
    add-int/lit8 v6, v6, 0x2

    #@a4
    sub-int p5, p5, v6

    #@a6
    .line 813
    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    #@a8
    array-length v6, v6

    #@a9
    add-int/lit8 v6, v6, 0x2

    #@ab
    sub-int p5, p5, v6

    #@ad
    .line 814
    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    #@af
    array-length v6, v6

    #@b0
    add-int/lit8 v6, v6, 0x2

    #@b2
    sub-int p5, p5, v6

    #@b4
    .line 816
    move/from16 v0, p5

    #@b6
    new-array v5, v0, [B

    #@b8
    .line 817
    .restart local v5    # "signature":[B
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    #@bb
    goto :goto_0

    #@bc
    .line 826
    .restart local v1    # "algorithm":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "DSA"

    #@bf
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c2
    move-result v6

    #@c3
    if-eqz v6, :cond_4

    #@c5
    .line 827
    const-string/jumbo v6, "DSA"

    #@c8
    invoke-static {v6}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@cb
    move-result-object v3

    #@cc
    .restart local v3    # "sig":Ljava/security/Signature;
    goto :goto_1

    #@cd
    .line 828
    .end local v3    # "sig":Ljava/security/Signature;
    :cond_4
    const-string/jumbo v6, "RSA"

    #@d0
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d3
    move-result v6

    #@d4
    if-eqz v6, :cond_5

    #@d6
    .line 829
    invoke-static {}, Lsun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    #@d9
    move-result-object v3

    #@da
    .restart local v3    # "sig":Ljava/security/Signature;
    goto :goto_1

    #@db
    .line 831
    .end local v3    # "sig":Ljava/security/Signature;
    :cond_5
    new-instance v6, Ljavax/net/ssl/SSLKeyException;

    #@dd
    const-string/jumbo v7, "neither an RSA or a DSA key"

    #@e0
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    #@e3
    throw v6

    #@e4
    .line 776
    .restart local v3    # "sig":Ljava/security/Signature;
    :cond_6
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/ProtocolVersion;)V
    .locals 7
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 750
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    #@5
    .line 754
    iput-object p2, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@7
    .line 755
    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@9
    .line 757
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    #@f
    .line 758
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    #@15
    .line 759
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    #@1b
    .line 760
    new-instance v0, Ljavax/crypto/spec/DHPublicKeySpec;

    #@1d
    new-instance v1, Ljava/math/BigInteger;

    #@1f
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    #@21
    invoke-direct {v1, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    #@24
    .line 761
    new-instance v2, Ljava/math/BigInteger;

    #@26
    iget-object v3, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    #@28
    invoke-direct {v2, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    #@2b
    .line 762
    new-instance v3, Ljava/math/BigInteger;

    #@2d
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    #@2f
    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    #@32
    .line 760
    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@35
    invoke-static {v0}, Lsun/security/util/KeyUtil;->validate(Ljava/security/spec/KeySpec;)V

    #@38
    .line 764
    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    #@3a
    .line 752
    return-void
.end method

.method private setValues(Lsun/security/ssl/DHCrypt;)V
    .locals 1
    .param p1, "obj"    # Lsun/security/ssl/DHCrypt;

    #@0
    .prologue
    .line 885
    invoke-virtual {p1}, Lsun/security/ssl/DHCrypt;->getModulus()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    #@a
    .line 886
    invoke-virtual {p1}, Lsun/security/ssl/DHCrypt;->getBase()Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    #@14
    .line 887
    invoke-virtual {p1}, Lsun/security/ssl/DHCrypt;->getPublicKey()Ljava/math/BigInteger;

    #@17
    move-result-object v0

    #@18
    invoke-static {v0}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    #@1e
    .line 884
    return-void
.end method

.method private updateSignature(Ljava/security/Signature;[B[B)V
    .locals 2
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
    .line 865
    invoke-virtual {p1, p2}, Ljava/security/Signature;->update([B)V

    #@3
    .line 866
    invoke-virtual {p1, p3}, Ljava/security/Signature;->update([B)V

    #@6
    .line 868
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    #@8
    array-length v0, v1

    #@9
    .line 869
    .local v0, "tmp":I
    shr-int/lit8 v1, v0, 0x8

    #@b
    int-to-byte v1, v1

    #@c
    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    #@f
    .line 870
    and-int/lit16 v1, v0, 0xff

    #@11
    int-to-byte v1, v1

    #@12
    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    #@15
    .line 871
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    #@17
    invoke-virtual {p1, v1}, Ljava/security/Signature;->update([B)V

    #@1a
    .line 873
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    #@1c
    array-length v0, v1

    #@1d
    .line 874
    shr-int/lit8 v1, v0, 0x8

    #@1f
    int-to-byte v1, v1

    #@20
    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    #@23
    .line 875
    and-int/lit16 v1, v0, 0xff

    #@25
    int-to-byte v1, v1

    #@26
    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    #@29
    .line 876
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    #@2b
    invoke-virtual {p1, v1}, Ljava/security/Signature;->update([B)V

    #@2e
    .line 878
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    #@30
    array-length v0, v1

    #@31
    .line 879
    shr-int/lit8 v1, v0, 0x8

    #@33
    int-to-byte v1, v1

    #@34
    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    #@37
    .line 880
    and-int/lit16 v1, v0, 0xff

    #@39
    int-to-byte v1, v1

    #@3a
    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    #@3d
    .line 881
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    #@3f
    invoke-virtual {p1, v1}, Ljava/security/Signature;->update([B)V

    #@42
    .line 862
    return-void
.end method


# virtual methods
.method getBase()Ljava/math/BigInteger;
    .locals 3

    #@0
    .prologue
    .line 850
    new-instance v0, Ljava/math/BigInteger;

    #@2
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@8
    return-object v0
.end method

.method getModulus()Ljava/math/BigInteger;
    .locals 3

    #@0
    .prologue
    .line 845
    new-instance v0, Ljava/math/BigInteger;

    #@2
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@8
    return-object v0
.end method

.method getServerPublicKey()Ljava/math/BigInteger;
    .locals 3

    #@0
    .prologue
    .line 855
    new-instance v0, Ljava/math/BigInteger;

    #@2
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@8
    return-object v0
.end method

.method messageLength()I
    .locals 3

    #@0
    .prologue
    .line 893
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    #@2
    array-length v1, v1

    #@3
    add-int/lit8 v0, v1, 0x6

    #@5
    .line 894
    .local v0, "temp":I
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    #@7
    array-length v1, v1

    #@8
    add-int/2addr v0, v1

    #@9
    .line 895
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    #@b
    array-length v1, v1

    #@c
    add-int/2addr v0, v1

    #@d
    .line 897
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 898
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@13
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@15
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@17
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@19
    if-lt v1, v2, :cond_0

    #@1b
    .line 899
    invoke-static {}, Lsun/security/ssl/SignatureAndHashAlgorithm;->sizeInRecord()I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 902
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    #@22
    array-length v1, v1

    #@23
    add-int/2addr v0, v1

    #@24
    .line 903
    sget-boolean v1, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dhKeyExchangeFix:Z

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 904
    add-int/lit8 v0, v0, 0x2

    #@2a
    .line 908
    :cond_1
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
    .line 931
    const-string/jumbo v0, "*** Diffie-Hellman ServerKeyExchange"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 933
    sget-object v0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->debug:Lsun/security/ssl/Debug;

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
    .line 934
    const-string/jumbo v0, "DH Modulus"

    #@16
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    #@18
    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    #@1b
    .line 935
    const-string/jumbo v0, "DH Base"

    #@1e
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    #@20
    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    #@23
    .line 936
    const-string/jumbo v0, "Server DH Public Key"

    #@26
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    #@28
    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    #@2b
    .line 938
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    #@2d
    if-nez v0, :cond_1

    #@2f
    .line 939
    const-string/jumbo v0, "Anonymous"

    #@32
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@35
    .line 930
    :cond_0
    :goto_0
    return-void

    #@36
    .line 941
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@38
    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@3a
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@3c
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@3e
    if-lt v0, v1, :cond_2

    #@40
    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v1, "Signature Algorithm "

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 943
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@4e
    invoke-virtual {v1}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    .line 942
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5d
    .line 946
    :cond_2
    const-string/jumbo v0, "Signed with a DSA or RSA public key"

    #@60
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@63
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
    .line 912
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    #@2
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    #@5
    .line 913
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    #@7
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    #@a
    .line 914
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    #@c
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    #@f
    .line 916
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 917
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@15
    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@17
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@19
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1b
    if-lt v0, v1, :cond_0

    #@1d
    .line 918
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@1f
    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashValue()I

    #@22
    move-result v0

    #@23
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@26
    .line 919
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@28
    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSignatureValue()I

    #@2b
    move-result v0

    #@2c
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@2f
    .line 922
    :cond_0
    sget-boolean v0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dhKeyExchangeFix:Z

    #@31
    if-eqz v0, :cond_2

    #@33
    .line 923
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    #@35
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    #@38
    .line 911
    :cond_1
    :goto_0
    return-void

    #@39
    .line 925
    :cond_2
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    #@3b
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@3e
    goto :goto_0
.end method
