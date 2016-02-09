.class public Ljava/security/spec/RSAPrivateCrtKeySpec;
.super Ljava/security/spec/RSAPrivateKeySpec;
.source "RSAPrivateCrtKeySpec.java"


# instance fields
.field private final crtCoefficient:Ljava/math/BigInteger;

.field private final primeExponentP:Ljava/math/BigInteger;

.field private final primeExponentQ:Ljava/math/BigInteger;

.field private final primeP:Ljava/math/BigInteger;

.field private final primeQ:Ljava/math/BigInteger;

.field private final publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "privateExponent"    # Ljava/math/BigInteger;
    .param p4, "primeP"    # Ljava/math/BigInteger;
    .param p5, "primeQ"    # Ljava/math/BigInteger;
    .param p6, "primeExponentP"    # Ljava/math/BigInteger;
    .param p7, "primeExponentQ"    # Ljava/math/BigInteger;
    .param p8, "crtCoefficient"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 75
    invoke-direct {p0, p1, p3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@3
    .line 77
    iput-object p2, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    #@5
    .line 78
    iput-object p4, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    #@7
    .line 79
    iput-object p5, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    #@9
    .line 80
    iput-object p6, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    #@b
    .line 81
    iput-object p7, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    #@d
    .line 82
    iput-object p8, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    #@f
    .line 73
    return-void
.end method


# virtual methods
.method public getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
