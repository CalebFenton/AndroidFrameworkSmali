.class final Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;
.super Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RSA_ServerKeyExchange"
.end annotation


# instance fields
.field private rsa_exponent:[B

.field private rsa_modulus:[B

.field private signature:Ljava/security/Signature;

.field private signatureBytes:[B


# direct methods
.method constructor <init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Lsun/security/ssl/RandomCookie;Lsun/security/ssl/RandomCookie;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "ephemeralKey"    # Ljava/security/PublicKey;
    .param p2, "privateKey"    # Ljava/security/PrivateKey;
    .param p3, "clntNonce"    # Lsun/security/ssl/RandomCookie;
    .param p4, "svrNonce"    # Lsun/security/ssl/RandomCookie;
    .param p5, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 590
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    #@3
    .line 593
    invoke-static {p1}, Lsun/security/ssl/JsseJce;->getRSAPublicKeySpec(Ljava/security/PublicKey;)Ljava/security/spec/RSAPublicKeySpec;

    #@6
    move-result-object v0

    #@7
    .line 594
    .local v0, "rsaKey":Ljava/security/spec/RSAPublicKeySpec;
    invoke-virtual {v0}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    #@11
    .line 595
    invoke-virtual {v0}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    #@14
    move-result-object v1

    #@15
    invoke-static {v1}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    #@1b
    .line 596
    invoke-static {}, Lsun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    #@21
    .line 597
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    #@23
    invoke-virtual {v1, p2, p5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    #@26
    .line 598
    iget-object v1, p3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@28
    iget-object v2, p4, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@2a
    invoke-direct {p0, v1, v2}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->updateSignature([B[B)V

    #@2d
    .line 599
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    #@2f
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    #@32
    move-result-object v1

    #@33
    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signatureBytes:[B

    #@35
    .line 592
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 1
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 607
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    #@3
    .line 609
    invoke-static {}, Lsun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    #@9
    .line 610
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    #@f
    .line 611
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    #@15
    .line 612
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signatureBytes:[B

    #@1b
    .line 608
    return-void
.end method

.method private updateSignature([B[B)V
    .locals 3
    .param p1, "clntNonce"    # [B
    .param p2, "svrNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 565
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    #@2
    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    #@5
    .line 566
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    #@7
    invoke-virtual {v1, p2}, Ljava/security/Signature;->update([B)V

    #@a
    .line 568
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    #@c
    array-length v0, v1

    #@d
    .line 569
    .local v0, "tmp":I
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    #@f
    shr-int/lit8 v2, v0, 0x8

    #@11
    int-to-byte v2, v2

    #@12
    invoke-virtual {v1, v2}, Ljava/security/Signature;->update(B)V

    #@15
    .line 570
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    #@17
    and-int/lit16 v2, v0, 0xff

    #@19
    int-to-byte v2, v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/security/Signature;->update(B)V

    #@1d
    .line 571
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    #@1f
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    #@21
    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    #@24
    .line 573
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    #@26
    array-length v0, v1

    #@27
    .line 574
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    #@29
    shr-int/lit8 v2, v0, 0x8

    #@2b
    int-to-byte v2, v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/security/Signature;->update(B)V

    #@2f
    .line 575
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    #@31
    and-int/lit16 v2, v0, 0xff

    #@33
    int-to-byte v2, v2

    #@34
    invoke-virtual {v1, v2}, Ljava/security/Signature;->update(B)V

    #@37
    .line 576
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    #@39
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    #@3b
    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    #@3e
    .line 562
    return-void
.end method


# virtual methods
.method getPublicKey()Ljava/security/PublicKey;
    .locals 7

    #@0
    .prologue
    .line 621
    :try_start_0
    const-string/jumbo v3, "RSA"

    #@3
    invoke-static {v3}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@6
    move-result-object v1

    #@7
    .line 623
    .local v1, "kfac":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    #@9
    .line 624
    new-instance v3, Ljava/math/BigInteger;

    #@b
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    #@d
    const/4 v5, 0x1

    #@e
    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    #@11
    .line 625
    new-instance v4, Ljava/math/BigInteger;

    #@13
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    #@15
    const/4 v6, 0x1

    #@16
    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    #@19
    .line 623
    invoke-direct {v2, v3, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1c
    .line 626
    .local v2, "kspec":Ljava/security/spec/RSAPublicKeySpec;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v3

    #@20
    return-object v3

    #@21
    .line 627
    .end local v1    # "kfac":Ljava/security/KeyFactory;
    .end local v2    # "kspec":Ljava/security/spec/RSAPublicKeySpec;
    :catch_0
    move-exception v0

    #@22
    .line 628
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    #@24
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v3
.end method

.method messageLength()I
    .locals 2

    #@0
    .prologue
    .line 645
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    #@2
    array-length v0, v0

    #@3
    add-int/lit8 v0, v0, 0x6

    #@5
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    #@7
    array-length v1, v1

    #@8
    add-int/2addr v0, v1

    #@9
    .line 646
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signatureBytes:[B

    #@b
    array-length v1, v1

    #@c
    .line 645
    add-int/2addr v0, v1

    #@d
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
    .line 656
    const-string/jumbo v0, "*** RSA ServerKeyExchange"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 658
    sget-object v0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->debug:Lsun/security/ssl/Debug;

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
    .line 659
    const-string/jumbo v0, "RSA Modulus"

    #@16
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    #@18
    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    #@1b
    .line 660
    const-string/jumbo v0, "RSA Public Exponent"

    #@1e
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    #@20
    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    #@23
    .line 655
    :cond_0
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 650
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    #@2
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    #@5
    .line 651
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    #@7
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    #@a
    .line 652
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signatureBytes:[B

    #@c
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    #@f
    .line 649
    return-void
.end method

.method verify(Ljava/security/PublicKey;Lsun/security/ssl/RandomCookie;Lsun/security/ssl/RandomCookie;)Z
    .locals 2
    .param p1, "certifiedKey"    # Ljava/security/PublicKey;
    .param p2, "clntNonce"    # Lsun/security/ssl/RandomCookie;
    .param p3, "svrNonce"    # Lsun/security/ssl/RandomCookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 639
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@5
    .line 640
    iget-object v0, p2, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@7
    iget-object v1, p3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@9
    invoke-direct {p0, v0, v1}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->updateSignature([B[B)V

    #@c
    .line 641
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    #@e
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signatureBytes:[B

    #@10
    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    #@13
    move-result v0

    #@14
    return v0
.end method
