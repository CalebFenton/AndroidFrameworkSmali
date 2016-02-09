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
    .locals 3
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
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 84
    invoke-direct {p0, p1, p3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@5
    .line 87
    if-nez p1, :cond_0

    #@7
    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v1, "modulus == null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 90
    :cond_0
    if-nez p3, :cond_1

    #@12
    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    #@14
    const-string/jumbo v1, "privateExponent == null"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 93
    :cond_1
    if-nez p2, :cond_2

    #@1d
    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    #@1f
    const-string/jumbo v1, "publicExponent == null"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 96
    :cond_2
    if-nez p4, :cond_3

    #@28
    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    #@2a
    const-string/jumbo v1, "primeP == null"

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 99
    :cond_3
    if-nez p5, :cond_4

    #@33
    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    #@35
    const-string/jumbo v1, "primeQ == null"

    #@38
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 102
    :cond_4
    if-nez p6, :cond_5

    #@3e
    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    #@40
    const-string/jumbo v1, "primeExponentP == null"

    #@43
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0

    #@47
    .line 105
    :cond_5
    if-nez p7, :cond_6

    #@49
    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    #@4b
    const-string/jumbo v1, "primeExponentQ == null"

    #@4e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@51
    throw v0

    #@52
    .line 108
    :cond_6
    if-nez p8, :cond_7

    #@54
    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    #@56
    const-string/jumbo v1, "crtCoefficient == null"

    #@59
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v0

    #@5d
    .line 112
    :cond_7
    if-eqz p9, :cond_9

    #@5f
    .line 113
    array-length v0, p9

    #@60
    if-nez v0, :cond_8

    #@62
    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@64
    const-string/jumbo v1, "otherPrimeInfo.length == 0"

    #@67
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v0

    #@6b
    .line 117
    :cond_8
    array-length v0, p9

    #@6c
    new-array v0, v0, [Ljava/security/spec/RSAOtherPrimeInfo;

    #@6e
    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    #@70
    .line 119
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    #@72
    iget-object v1, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    #@74
    array-length v1, v1

    #@75
    .line 118
    invoke-static {p9, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@78
    .line 123
    :goto_0
    iput-object p2, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    #@7a
    .line 124
    iput-object p4, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    #@7c
    .line 125
    iput-object p5, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    #@7e
    .line 126
    iput-object p6, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    #@80
    .line 127
    iput-object p7, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    #@82
    .line 128
    iput-object p8, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    #@84
    .line 82
    return-void

    #@85
    .line 121
    :cond_9
    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    #@87
    goto :goto_0
.end method


# virtual methods
.method public getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getOtherPrimeInfo()[Ljava/security/spec/RSAOtherPrimeInfo;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 148
    iget-object v1, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 149
    return-object v2

    #@7
    .line 152
    :cond_0
    iget-object v1, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    #@9
    array-length v1, v1

    #@a
    new-array v0, v1, [Ljava/security/spec/RSAOtherPrimeInfo;

    #@c
    .line 153
    .local v0, "ret":[Ljava/security/spec/RSAOtherPrimeInfo;
    iget-object v1, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    #@e
    array-length v2, v0

    #@f
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@12
    .line 154
    return-object v0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
