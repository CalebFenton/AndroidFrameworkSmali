.class public Ljava/security/spec/RSAPrivateCrtKeySpec;
.super Ljava/security/spec/RSAPrivateKeySpec;
.source "RSAPrivateCrtKeySpec.java"


# instance fields
.field private final greylist-max-o crtCoefficient:Ljava/math/BigInteger;

.field private final greylist-max-o primeExponentP:Ljava/math/BigInteger;

.field private final greylist-max-o primeExponentQ:Ljava/math/BigInteger;

.field private final greylist-max-o primeP:Ljava/math/BigInteger;

.field private final greylist-max-o primeQ:Ljava/math/BigInteger;

.field private final greylist-max-o publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 19
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "privateExponent"    # Ljava/math/BigInteger;
    .param p4, "primeP"    # Ljava/math/BigInteger;
    .param p5, "primeQ"    # Ljava/math/BigInteger;
    .param p6, "primeExponentP"    # Ljava/math/BigInteger;
    .param p7, "primeExponentQ"    # Ljava/math/BigInteger;
    .param p8, "crtCoefficient"    # Ljava/math/BigInteger;

    .line 77
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 79
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 10
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "privateExponent"    # Ljava/math/BigInteger;
    .param p4, "primeP"    # Ljava/math/BigInteger;
    .param p5, "primeQ"    # Ljava/math/BigInteger;
    .param p6, "primeExponentP"    # Ljava/math/BigInteger;
    .param p7, "primeExponentQ"    # Ljava/math/BigInteger;
    .param p8, "crtCoefficient"    # Ljava/math/BigInteger;
    .param p9, "keyParams"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 106
    invoke-direct {p0, p1, p3, p9}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 107
    iput-object p2, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    .line 108
    iput-object p4, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    .line 109
    iput-object p5, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    .line 110
    iput-object p6, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    .line 111
    iput-object p7, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    .line 112
    iput-object p8, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    .line 113
    return-void
.end method


# virtual methods
.method public whitelist test-api getCrtCoefficient()Ljava/math/BigInteger;
    .registers 2

    .line 166
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPrimeExponentP()Ljava/math/BigInteger;
    .registers 2

    .line 148
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPrimeExponentQ()Ljava/math/BigInteger;
    .registers 2

    .line 157
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPrimeP()Ljava/math/BigInteger;
    .registers 2

    .line 130
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPrimeQ()Ljava/math/BigInteger;
    .registers 2

    .line 139
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .line 121
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
