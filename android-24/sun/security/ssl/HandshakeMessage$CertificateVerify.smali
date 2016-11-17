.class final Lsun/security/ssl/HandshakeMessage$CertificateVerify;
.super Lsun/security/ssl/HandshakeMessage;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CertificateVerify"
.end annotation


# static fields
.field private static final NULL_OBJECT:Ljava/lang/Object;

.field private static final delegate:Ljava/lang/Class;

.field private static final methodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final spiField:Ljava/lang/reflect/Field;


# instance fields
.field private preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

.field protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private signature:[B


# direct methods
.method static synthetic -wrap0(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V
    .locals 0
    .param p0, "md"    # Ljava/security/MessageDigest;
    .param p1, "pad1"    # [B
    .param p2, "pad2"    # [B
    .param p3, "masterSecret"    # Ljavax/crypto/SecretKey;

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->updateDigest(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 1716
    :try_start_0
    const-string/jumbo v1, "java.security.MessageDigest$Delegate"

    #@3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    sput-object v1, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->delegate:Ljava/lang/Class;

    #@9
    .line 1717
    sget-object v1, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->delegate:Ljava/lang/Class;

    #@b
    const-string/jumbo v2, "digestSpi"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->spiField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1721
    sget-object v1, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->spiField:Ljava/lang/reflect/Field;

    #@16
    invoke-static {v1}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    #@19
    .line 1734
    new-instance v1, Ljava/lang/Object;

    #@1b
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@1e
    sput-object v1, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->NULL_OBJECT:Ljava/lang/Object;

    #@20
    .line 1740
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    #@22
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@25
    .line 1739
    sput-object v1, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->methodCache:Ljava/util/Map;

    #@27
    .line 1526
    return-void

    #@28
    .line 1718
    :catch_0
    move-exception v0

    #@29
    .line 1719
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    #@2b
    const-string/jumbo v2, "Reflection failed"

    #@2e
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@31
    throw v1
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;Ljava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V
    .locals 4
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .param p3, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/ssl/HandshakeInStream;",
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
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1565
    .local p2, "localSupportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 1535
    const/4 v2, 0x0

    #@4
    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@6
    .line 1569
    iput-object p3, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@8
    .line 1572
    iget v2, p3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@a
    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@c
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@e
    if-lt v2, v3, :cond_0

    #@10
    .line 1573
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@13
    move-result v0

    #@14
    .line 1574
    .local v0, "hashAlg":I
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@17
    move-result v1

    #@18
    .line 1577
    .local v1, "signAlg":I
    const/4 v2, 0x0

    #@19
    invoke-static {v0, v1, v2}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@1c
    move-result-object v2

    #@1d
    .line 1576
    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@1f
    .line 1581
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@21
    .line 1580
    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-nez v2, :cond_0

    #@27
    .line 1582
    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    #@29
    .line 1583
    const-string/jumbo v3, "Unsupported SignatureAndHashAlgorithm in ServerKeyExchange message"

    #@2c
    .line 1582
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 1589
    .end local v0    # "hashAlg":I
    .end local v1    # "signAlg":I
    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@33
    move-result-object v2

    #@34
    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->signature:[B

    #@36
    .line 1567
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Ljava/security/PrivateKey;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;Lsun/security/ssl/SignatureAndHashAlgorithm;)V
    .locals 4
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;
    .param p3, "privateKey"    # Ljava/security/PrivateKey;
    .param p4, "masterSecret"    # Ljavax/crypto/SecretKey;
    .param p5, "sr"    # Ljava/security/SecureRandom;
    .param p6, "signAlgorithm"    # Lsun/security/ssl/SignatureAndHashAlgorithm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1540
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 1535
    const/4 v2, 0x0

    #@4
    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@6
    .line 1546
    iput-object p1, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@8
    .line 1548
    invoke-interface {p3}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 1549
    .local v0, "algorithm":Ljava/lang/String;
    const/4 v1, 0x0

    #@d
    .line 1550
    .local v1, "sig":Ljava/security/Signature;
    iget v2, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@f
    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@11
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@13
    if-lt v2, v3, :cond_0

    #@15
    .line 1551
    iput-object p6, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@17
    .line 1552
    invoke-virtual {p6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v2}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@1e
    move-result-object v1

    #@1f
    .line 1556
    .local v1, "sig":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v1, p3, p5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    #@22
    .line 1557
    invoke-static {v1, p1, p2, v0, p4}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->updateSignature(Ljava/security/Signature;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    #@25
    .line 1559
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    #@28
    move-result-object v2

    #@29
    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->signature:[B

    #@2b
    .line 1544
    return-void

    #@2c
    .line 1554
    .local v1, "sig":Ljava/security/Signature;
    :cond_0
    invoke-static {p1, v0}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->getSignature(Lsun/security/ssl/ProtocolVersion;Ljava/lang/String;)Ljava/security/Signature;

    #@2f
    move-result-object v1

    #@30
    .local v1, "sig":Ljava/security/Signature;
    goto :goto_0
.end method

.method private static digestKey(Ljava/security/MessageDigest;Ljavax/crypto/SecretKey;)V
    .locals 11
    .param p0, "md"    # Ljava/security/MessageDigest;
    .param p1, "key"    # Ljavax/crypto/SecretKey;

    #@0
    .prologue
    .line 1746
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v7

    #@4
    sget-object v8, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->delegate:Ljava/lang/Class;

    #@6
    if-eq v7, v8, :cond_0

    #@8
    .line 1747
    new-instance v7, Ljava/lang/Exception;

    #@a
    const-string/jumbo v8, "Digest is not a MessageDigestSpi"

    #@d
    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@10
    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1767
    :catch_0
    move-exception v2

    #@12
    .line 1768
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    #@14
    .line 1769
    const-string/jumbo v8, "Could not obtain encoded key and MessageDigest cannot digest key"

    #@17
    .line 1768
    invoke-direct {v7, v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v7

    #@1b
    .line 1749
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    sget-object v7, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->spiField:Ljava/lang/reflect/Field;

    #@1d
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    check-cast v5, Ljava/security/MessageDigestSpi;

    #@23
    .line 1750
    .local v5, "spi":Ljava/security/MessageDigestSpi;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@26
    move-result-object v1

    #@27
    .line 1751
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->methodCache:Ljava/util/Map;

    #@29
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@2c
    move-result-object v4

    #@2d
    .line 1752
    .local v4, "r":Ljava/lang/Object;
    if-nez v4, :cond_1

    #@2f
    .line 1754
    :try_start_2
    const-string/jumbo v7, "implUpdate"

    #@32
    const/4 v8, 0x1

    #@33
    new-array v8, v8, [Ljava/lang/Class;

    #@35
    const-class v9, Ljavax/crypto/SecretKey;

    #@37
    const/4 v10, 0x0

    #@38
    aput-object v9, v8, v10

    #@3a
    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@3d
    move-result-object v4

    #@3e
    .line 1755
    move-object v0, v4

    #@3f
    nop

    #@40
    nop

    #@41
    move-object v7, v0

    #@42
    invoke-static {v7}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@45
    .line 1759
    :goto_0
    :try_start_3
    sget-object v7, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->methodCache:Ljava/util/Map;

    #@47
    invoke-interface {v7, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 1761
    :cond_1
    sget-object v7, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->NULL_OBJECT:Ljava/lang/Object;

    #@4c
    if-ne v4, v7, :cond_2

    #@4e
    .line 1762
    new-instance v7, Ljava/lang/Exception;

    #@50
    .line 1763
    const-string/jumbo v8, "Digest does not support implUpdate(SecretKey)"

    #@53
    .line 1762
    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@56
    throw v7

    #@57
    .line 1756
    :catch_1
    move-exception v3

    #@58
    .line 1757
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->NULL_OBJECT:Ljava/lang/Object;

    #@5a
    goto :goto_0

    #@5b
    .line 1765
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2
    move-object v0, v4

    #@5c
    check-cast v0, Ljava/lang/reflect/Method;

    #@5e
    move-object v6, v0

    #@5f
    .line 1766
    .local v6, "update":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    #@60
    new-array v7, v7, [Ljava/lang/Object;

    #@62
    const/4 v8, 0x0

    #@63
    aput-object p1, v7, v8

    #@65
    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@68
    .line 1742
    return-void
.end method

.method private static getSignature(Lsun/security/ssl/ProtocolVersion;Ljava/lang/String;)Ljava/security/Signature;
    .locals 3
    .param p0, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1626
    const-string/jumbo v0, "RSA"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1627
    invoke-static {}, Lsun/security/ssl/RSASignature;->getInternalInstance()Ljava/security/Signature;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 1628
    :cond_0
    const-string/jumbo v0, "DSA"

    #@11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 1629
    const-string/jumbo v0, "RawDSA"

    #@1a
    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 1630
    :cond_1
    const-string/jumbo v0, "EC"

    #@22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 1631
    const-string/jumbo v0, "NONEwithECDSA"

    #@2b
    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@2e
    move-result-object v0

    #@2f
    return-object v0

    #@30
    .line 1633
    :cond_2
    new-instance v0, Ljava/security/SignatureException;

    #@32
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "Unrecognized algorithm: "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0
.end method

.method private static makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/reflect/AccessibleObject;

    #@0
    .prologue
    .line 1725
    new-instance v0, Lsun/security/ssl/HandshakeMessage$CertificateVerify$1;

    #@2
    invoke-direct {v0, p0}, Lsun/security/ssl/HandshakeMessage$CertificateVerify$1;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    .line 1724
    return-void
.end method

.method private static updateDigest(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V
    .locals 4
    .param p0, "md"    # Ljava/security/MessageDigest;
    .param p1, "pad1"    # [B
    .param p2, "pad2"    # [B
    .param p3, "masterSecret"    # Ljavax/crypto/SecretKey;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1692
    const-string/jumbo v2, "RAW"

    #@4
    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1693
    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@11
    move-result-object v0

    #@12
    .line 1694
    .local v0, "keyBytes":[B
    :cond_0
    if-eqz v0, :cond_1

    #@14
    .line 1695
    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    #@17
    .line 1699
    :goto_0
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    #@1a
    .line 1700
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    #@1d
    move-result-object v1

    #@1e
    .line 1702
    .local v1, "temp":[B
    if-eqz v0, :cond_2

    #@20
    .line 1703
    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    #@23
    .line 1707
    :goto_1
    invoke-virtual {p0, p2}, Ljava/security/MessageDigest;->update([B)V

    #@26
    .line 1708
    invoke-virtual {p0, v1}, Ljava/security/MessageDigest;->update([B)V

    #@29
    .line 1687
    return-void

    #@2a
    .line 1697
    .end local v1    # "temp":[B
    :cond_1
    invoke-static {p0, p3}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->digestKey(Ljava/security/MessageDigest;Ljavax/crypto/SecretKey;)V

    #@2d
    goto :goto_0

    #@2e
    .line 1705
    .restart local v1    # "temp":[B
    :cond_2
    invoke-static {p0, p3}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->digestKey(Ljava/security/MessageDigest;Ljavax/crypto/SecretKey;)V

    #@31
    goto :goto_1
.end method

.method private static updateSignature(Ljava/security/Signature;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Ljava/lang/String;Ljavax/crypto/SecretKey;)V
    .locals 4
    .param p0, "sig"    # Ljava/security/Signature;
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "masterKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 1648
    const-string/jumbo v2, "RSA"

    #@3
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_2

    #@9
    .line 1649
    iget v2, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@b
    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@d
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@f
    if-ge v2, v3, :cond_1

    #@11
    .line 1650
    invoke-virtual {p2}, Lsun/security/ssl/HandshakeHash;->getMD5Clone()Ljava/security/MessageDigest;

    #@14
    move-result-object v0

    #@15
    .line 1651
    .local v0, "md5Clone":Ljava/security/MessageDigest;
    invoke-virtual {p2}, Lsun/security/ssl/HandshakeHash;->getSHAClone()Ljava/security/MessageDigest;

    #@18
    move-result-object v1

    #@19
    .line 1653
    .local v1, "shaClone":Ljava/security/MessageDigest;
    iget v2, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1b
    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@1d
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1f
    if-ge v2, v3, :cond_0

    #@21
    .line 1654
    sget-object v2, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->MD5_pad1:[B

    #@23
    sget-object v3, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->MD5_pad2:[B

    #@25
    invoke-static {v0, v2, v3, p4}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->updateDigest(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V

    #@28
    .line 1655
    sget-object v2, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->SHA_pad1:[B

    #@2a
    sget-object v3, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->SHA_pad2:[B

    #@2c
    invoke-static {v1, v2, v3, p4}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->updateDigest(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V

    #@2f
    .line 1660
    :cond_0
    invoke-static {p0, v0, v1}, Lsun/security/ssl/RSASignature;->setHashes(Ljava/security/Signature;Ljava/security/MessageDigest;Ljava/security/MessageDigest;)V

    #@32
    .line 1646
    .end local v0    # "md5Clone":Ljava/security/MessageDigest;
    .end local v1    # "shaClone":Ljava/security/MessageDigest;
    :goto_0
    return-void

    #@33
    .line 1662
    :cond_1
    invoke-virtual {p2}, Lsun/security/ssl/HandshakeHash;->getAllHandshakeMessages()[B

    #@36
    move-result-object v2

    #@37
    invoke-virtual {p0, v2}, Ljava/security/Signature;->update([B)V

    #@3a
    goto :goto_0

    #@3b
    .line 1665
    :cond_2
    iget v2, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@3d
    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@3f
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@41
    if-ge v2, v3, :cond_4

    #@43
    .line 1666
    invoke-virtual {p2}, Lsun/security/ssl/HandshakeHash;->getSHAClone()Ljava/security/MessageDigest;

    #@46
    move-result-object v1

    #@47
    .line 1668
    .restart local v1    # "shaClone":Ljava/security/MessageDigest;
    iget v2, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@49
    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@4b
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@4d
    if-ge v2, v3, :cond_3

    #@4f
    .line 1669
    sget-object v2, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->SHA_pad1:[B

    #@51
    sget-object v3, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->SHA_pad2:[B

    #@53
    invoke-static {v1, v2, v3, p4}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->updateDigest(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V

    #@56
    .line 1672
    :cond_3
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {p0, v2}, Ljava/security/Signature;->update([B)V

    #@5d
    goto :goto_0

    #@5e
    .line 1674
    .end local v1    # "shaClone":Ljava/security/MessageDigest;
    :cond_4
    invoke-virtual {p2}, Lsun/security/ssl/HandshakeHash;->getAllHandshakeMessages()[B

    #@61
    move-result-object v2

    #@62
    invoke-virtual {p0, v2}, Ljava/security/Signature;->update([B)V

    #@65
    goto :goto_0
.end method


# virtual methods
.method getPreferableSignatureAlgorithm()Lsun/security/ssl/SignatureAndHashAlgorithm;
    .locals 1

    #@0
    .prologue
    .line 1596
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@2
    return-object v0
.end method

.method messageLength()I
    .locals 3

    #@0
    .prologue
    .line 1781
    const/4 v0, 0x2

    #@1
    .line 1783
    .local v0, "temp":I
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@3
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@5
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@7
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@9
    if-lt v1, v2, :cond_0

    #@b
    .line 1784
    invoke-static {}, Lsun/security/ssl/SignatureAndHashAlgorithm;->sizeInRecord()I

    #@e
    move-result v1

    #@f
    add-int/lit8 v0, v1, 0x2

    #@11
    .line 1787
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->signature:[B

    #@13
    array-length v1, v1

    #@14
    add-int/2addr v1, v0

    #@15
    return v1
.end method

.method messageType()I
    .locals 1

    #@0
    .prologue
    .line 1776
    const/16 v0, 0xf

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
    .line 1802
    const-string/jumbo v0, "*** CertificateVerify"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 1804
    sget-object v0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->debug:Lsun/security/ssl/Debug;

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
    .line 1805
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@15
    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@17
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@19
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1b
    if-lt v0, v1, :cond_0

    #@1d
    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v1, "Signature Algorithm "

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 1807
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@2b
    invoke-virtual {v1}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 1806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3a
    .line 1801
    :cond_0
    return-void
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
    .line 1792
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@2
    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@4
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@6
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 1793
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@c
    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashValue()I

    #@f
    move-result v0

    #@10
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@13
    .line 1794
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@15
    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSignatureValue()I

    #@18
    move-result v0

    #@19
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@1c
    .line 1797
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->signature:[B

    #@1e
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    #@21
    .line 1791
    return-void
.end method

.method verify(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Ljava/security/PublicKey;Ljavax/crypto/SecretKey;)Z
    .locals 4
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;
    .param p3, "publicKey"    # Ljava/security/PublicKey;
    .param p4, "masterSecret"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1606
    invoke-interface {p3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1607
    .local v0, "algorithm":Ljava/lang/String;
    const/4 v1, 0x0

    #@5
    .line 1608
    .local v1, "sig":Ljava/security/Signature;
    iget v2, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@7
    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@9
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@b
    if-lt v2, v3, :cond_0

    #@d
    .line 1610
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@f
    invoke-virtual {v2}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 1609
    invoke-static {v2}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@16
    move-result-object v1

    #@17
    .line 1614
    .local v1, "sig":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v1, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@1a
    .line 1615
    invoke-static {v1, p1, p2, v0, p4}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->updateSignature(Ljava/security/Signature;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    #@1d
    .line 1617
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->signature:[B

    #@1f
    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    #@22
    move-result v2

    #@23
    return v2

    #@24
    .line 1612
    .local v1, "sig":Ljava/security/Signature;
    :cond_0
    invoke-static {p1, v0}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->getSignature(Lsun/security/ssl/ProtocolVersion;Ljava/lang/String;)Ljava/security/Signature;

    #@27
    move-result-object v1

    #@28
    .local v1, "sig":Ljava/security/Signature;
    goto :goto_0
.end method
