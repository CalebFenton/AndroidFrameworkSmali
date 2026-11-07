.class public final Lsun/security/util/KeyUtil;
.super Ljava/lang/Object;
.source "KeyUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist getKeySize(Ljava/security/Key;)I
    .registers 5
    .param p0, "key"    # Ljava/security/Key;

    .line 52
    const/4 v0, -0x1

    .line 54
    .local v0, "size":I
    instance-of v1, p0, Lsun/security/util/Length;

    if-eqz v1, :cond_12

    .line 56
    :try_start_5
    move-object v1, p0

    check-cast v1, Lsun/security/util/Length;

    .line 57
    .local v1, "ruler":Lsun/security/util/Length;
    invoke-interface {v1}, Lsun/security/util/Length;->length()I

    move-result v2
    :try_end_c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_c} :catch_e

    move v0, v2

    .line 60
    .end local v1    # "ruler":Lsun/security/util/Length;
    goto :goto_f

    .line 58
    :catch_e
    move-exception v1

    .line 62
    :goto_f
    if-ltz v0, :cond_12

    .line 63
    return v0

    .line 68
    :cond_12
    instance-of v1, p0, Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_33

    .line 69
    move-object v1, p0

    check-cast v1, Ljavax/crypto/SecretKey;

    .line 70
    .local v1, "sk":Ljavax/crypto/SecretKey;
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "format":Ljava/lang/String;
    const-string v3, "RAW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    if-eqz v3, :cond_32

    .line 72
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    array-length v3, v3

    mul-int/lit8 v0, v3, 0x8

    .line 75
    .end local v1    # "sk":Ljavax/crypto/SecretKey;
    .end local v2    # "format":Ljava/lang/String;
    :cond_32
    goto :goto_87

    :cond_33
    instance-of v1, p0, Ljava/security/interfaces/RSAKey;

    if-eqz v1, :cond_43

    .line 76
    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/RSAKey;

    .line 77
    .local v1, "pubk":Ljava/security/interfaces/RSAKey;
    invoke-interface {v1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 78
    .end local v1    # "pubk":Ljava/security/interfaces/RSAKey;
    goto :goto_87

    :cond_43
    instance-of v1, p0, Ljava/security/interfaces/ECKey;

    if-eqz v1, :cond_59

    .line 79
    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/ECKey;

    .line 82
    .local v1, "pubk":Ljava/security/interfaces/ECKey;
    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 88
    .local v2, "params":Ljava/security/spec/ECParameterSpec;
    if-eqz v2, :cond_58

    .line 89
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 92
    .end local v1    # "pubk":Ljava/security/interfaces/ECKey;
    .end local v2    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_58
    goto :goto_87

    :cond_59
    instance-of v1, p0, Ljava/security/interfaces/DSAKey;

    if-eqz v1, :cond_72

    .line 93
    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/DSAKey;

    .line 94
    .local v1, "pubk":Ljava/security/interfaces/DSAKey;
    invoke-interface {v1}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 95
    .local v2, "params":Ljava/security/interfaces/DSAParams;
    if-eqz v2, :cond_6f

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    goto :goto_70

    :cond_6f
    const/4 v3, -0x1

    :goto_70
    move v0, v3

    .end local v1    # "pubk":Ljava/security/interfaces/DSAKey;
    .end local v2    # "params":Ljava/security/interfaces/DSAParams;
    goto :goto_86

    .line 96
    :cond_72
    instance-of v1, p0, Ljavax/crypto/interfaces/DHKey;

    if-eqz v1, :cond_86

    .line 97
    move-object v1, p0

    check-cast v1, Ljavax/crypto/interfaces/DHKey;

    .line 98
    .local v1, "pubk":Ljavax/crypto/interfaces/DHKey;
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    goto :goto_87

    .line 96
    .end local v1    # "pubk":Ljavax/crypto/interfaces/DHKey;
    :cond_86
    :goto_86
    nop

    .line 102
    :goto_87
    return v0
.end method
