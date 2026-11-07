.class public Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;
.super Ljava/security/spec/RSAPrivateKeySpec;
.source "RSAMultiPrimePrivateCrtKeySpec.java"


# instance fields
.field private final greylist-max-o crtCoefficient:Ljava/math/BigInteger;

.field private final greylist-max-o otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

.field private final greylist-max-o primeExponentP:Ljava/math/BigInteger;

.field private final greylist-max-o primeExponentQ:Ljava/math/BigInteger;

.field private final greylist-max-o primeP:Ljava/math/BigInteger;

.field private final greylist-max-o primeQ:Ljava/math/BigInteger;

.field private final greylist-max-o publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/security/spec/RSAOtherPrimeInfo;)V
    .registers 21
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "privateExponent"    # Ljava/math/BigInteger;
    .param p4, "primeP"    # Ljava/math/BigInteger;
    .param p5, "primeQ"    # Ljava/math/BigInteger;
    .param p6, "primeExponentP"    # Ljava/math/BigInteger;
    .param p7, "primeExponentQ"    # Ljava/math/BigInteger;
    .param p8, "crtCoefficient"    # Ljava/math/BigInteger;
    .param p9, "otherPrimeInfo"    # [Ljava/security/spec/RSAOtherPrimeInfo;

    .line 94
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/security/spec/RSAOtherPrimeInfo;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 97
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/security/spec/RSAOtherPrimeInfo;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 13
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "privateExponent"    # Ljava/math/BigInteger;
    .param p4, "primeP"    # Ljava/math/BigInteger;
    .param p5, "primeQ"    # Ljava/math/BigInteger;
    .param p6, "primeExponentP"    # Ljava/math/BigInteger;
    .param p7, "primeExponentQ"    # Ljava/math/BigInteger;
    .param p8, "crtCoefficient"    # Ljava/math/BigInteger;
    .param p9, "otherPrimeInfo"    # [Ljava/security/spec/RSAOtherPrimeInfo;
    .param p10, "keyParams"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 137
    invoke-direct {p0, p1, p3, p10}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 138
    const-string v0, "the modulus parameter must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    const-string v0, "the privateExponent parameter must be non-null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    const-string v0, "the publicExponent parameter must be non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    .line 144
    const-string v0, "the primeP parameter must be non-null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    .line 146
    const-string v0, "the primeQ parameter must be non-null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    .line 148
    const-string v0, "the primeExponentP parameter must be non-null"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    .line 150
    const-string v0, "the primeExponentQ parameter must be non-null"

    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    .line 152
    const-string v0, "the crtCoefficient parameter must be non-null"

    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    .line 155
    if-nez p9, :cond_4f

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    goto :goto_5a

    .line 157
    :cond_4f
    array-length v0, p9

    if-eqz v0, :cond_5b

    .line 161
    invoke-virtual {p9}, [Ljava/security/spec/RSAOtherPrimeInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/spec/RSAOtherPrimeInfo;

    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    .line 163
    :goto_5a
    return-void

    .line 158
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the otherPrimeInfo parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getCrtCoefficient()Ljava/math/BigInteger;
    .registers 2

    .line 216
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getOtherPrimeInfo()[Ljava/security/spec/RSAOtherPrimeInfo;
    .registers 2

    .line 227
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 228
    :cond_6
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    invoke-virtual {v0}, [Ljava/security/spec/RSAOtherPrimeInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/spec/RSAOtherPrimeInfo;

    return-object v0
.end method

.method public whitelist test-api getPrimeExponentP()Ljava/math/BigInteger;
    .registers 2

    .line 198
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPrimeExponentQ()Ljava/math/BigInteger;
    .registers 2

    .line 207
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPrimeP()Ljava/math/BigInteger;
    .registers 2

    .line 180
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPrimeQ()Ljava/math/BigInteger;
    .registers 2

    .line 189
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .line 171
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
