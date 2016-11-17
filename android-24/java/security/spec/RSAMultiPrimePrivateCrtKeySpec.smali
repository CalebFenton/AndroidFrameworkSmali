.class public Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;
.super Ljava/security/spec/RSAPrivateKeySpec;
.source "RSAMultiPrimePrivateCrtKeySpec.java"


# instance fields
.field private final crtCoefficient:Ljava/math/BigInteger;

.field private final otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

.field private final primeExponentP:Ljava/math/BigInteger;

.field private final primeExponentQ:Ljava/math/BigInteger;

.field private final primeP:Ljava/math/BigInteger;

.field private final primeQ:Ljava/math/BigInteger;

.field private final publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/security/spec/RSAOtherPrimeInfo;)V
    .locals 2
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "privateExponent"    # Ljava/math/BigInteger;
    .param p4, "primeP"    # Ljava/math/BigInteger;
    .param p5, "primeQ"    # Ljava/math/BigInteger;
    .param p6, "primeExponentP"    # Ljava/math/BigInteger;
    .param p7, "primeExponentQ"    # Ljava/math/BigInteger;
    .param p8, "crtCoefficient"    # Ljava/math/BigInteger;
    .param p9, "otherPrimeInfo"    # [Ljava/security/spec/RSAOtherPrimeInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 98
    invoke-direct {p0, p1, p3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@4
    .line 99
    if-nez p1, :cond_0

    #@6
    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "the modulus parameter must be non-null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 103
    :cond_0
    if-nez p2, :cond_1

    #@11
    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v1, "the publicExponent parameter must be non-null"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 107
    :cond_1
    if-nez p3, :cond_2

    #@1c
    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    #@1e
    const-string/jumbo v1, "the privateExponent parameter must be non-null"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 111
    :cond_2
    if-nez p4, :cond_3

    #@27
    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    #@29
    const-string/jumbo v1, "the primeP parameter must be non-null"

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 115
    :cond_3
    if-nez p5, :cond_4

    #@32
    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    #@34
    const-string/jumbo v1, "the primeQ parameter must be non-null"

    #@37
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 119
    :cond_4
    if-nez p6, :cond_5

    #@3d
    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    #@3f
    const-string/jumbo v1, "the primeExponentP parameter must be non-null"

    #@42
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0

    #@46
    .line 123
    :cond_5
    if-nez p7, :cond_6

    #@48
    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    #@4a
    const-string/jumbo v1, "the primeExponentQ parameter must be non-null"

    #@4d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@50
    throw v0

    #@51
    .line 127
    :cond_6
    if-nez p8, :cond_7

    #@53
    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    #@55
    const-string/jumbo v1, "the crtCoefficient parameter must be non-null"

    #@58
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v0

    #@5c
    .line 131
    :cond_7
    iput-object p2, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    #@5e
    .line 132
    iput-object p4, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    #@60
    .line 133
    iput-object p5, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    #@62
    .line 134
    iput-object p6, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    #@64
    .line 135
    iput-object p7, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    #@66
    .line 136
    iput-object p8, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    #@68
    .line 137
    if-nez p9, :cond_8

    #@6a
    .line 138
    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    #@6c
    .line 97
    :goto_0
    return-void

    #@6d
    .line 139
    :cond_8
    array-length v0, p9

    #@6e
    if-nez v0, :cond_9

    #@70
    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@72
    const-string/jumbo v1, "the otherPrimeInfo parameter must not be empty"

    #@75
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@78
    throw v0

    #@79
    .line 143
    :cond_9
    invoke-virtual {p9}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7c
    move-result-object v0

    #@7d
    check-cast v0, [Ljava/security/spec/RSAOtherPrimeInfo;

    #@7f
    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    #@81
    goto :goto_0
.end method


# virtual methods
.method public getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getOtherPrimeInfo()[Ljava/security/spec/RSAOtherPrimeInfo;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 209
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    return-object v1

    #@6
    .line 210
    :cond_0
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [Ljava/security/spec/RSAOtherPrimeInfo;

    #@e
    return-object v0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
