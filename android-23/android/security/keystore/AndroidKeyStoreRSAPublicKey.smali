.class public Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;
.super Landroid/security/keystore/AndroidKeyStorePublicKey;
.source "AndroidKeyStoreRSAPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPublicKey;


# instance fields
.field private final mModulus:Ljava/math/BigInteger;

.field private final mPublicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/security/interfaces/RSAPublicKey;

    #@0
    .prologue
    .line 39
    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    #@3
    move-result-object v0

    #@4
    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@7
    move-result-object v1

    #@8
    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@b
    move-result-object v2

    #@c
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;-><init>(Ljava/lang/String;[BLjava/math/BigInteger;Ljava/math/BigInteger;)V

    #@f
    .line 40
    const-string/jumbo v0, "X.509"

    #@12
    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getFormat()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_0

    #@1c
    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Unsupported key export format: "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getFormat()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 38
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "x509EncodedForm"    # [B
    .param p3, "modulus"    # Ljava/math/BigInteger;
    .param p4, "publicExponent"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 33
    const-string/jumbo v0, "RSA"

    #@3
    invoke-direct {p0, p1, v0, p2}, Landroid/security/keystore/AndroidKeyStorePublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    #@6
    .line 34
    iput-object p3, p0, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->mModulus:Ljava/math/BigInteger;

    #@8
    .line 35
    iput-object p4, p0, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->mPublicExponent:Ljava/math/BigInteger;

    #@a
    .line 32
    return-void
.end method


# virtual methods
.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->mModulus:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->mPublicExponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
