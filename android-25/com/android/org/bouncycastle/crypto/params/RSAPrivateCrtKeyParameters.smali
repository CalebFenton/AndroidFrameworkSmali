.class public Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;
.source "RSAPrivateCrtKeyParameters.java"


# instance fields
.field private dP:Ljava/math/BigInteger;

.field private dQ:Ljava/math/BigInteger;

.field private e:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private qInv:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "privateExponent"    # Ljava/math/BigInteger;
    .param p4, "p"    # Ljava/math/BigInteger;
    .param p5, "q"    # Ljava/math/BigInteger;
    .param p6, "dP"    # Ljava/math/BigInteger;
    .param p7, "dQ"    # Ljava/math/BigInteger;
    .param p8, "qInv"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 28
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p3}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    #@4
    .line 30
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->e:Ljava/math/BigInteger;

    #@6
    .line 31
    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->p:Ljava/math/BigInteger;

    #@8
    .line 32
    iput-object p5, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->q:Ljava/math/BigInteger;

    #@a
    .line 33
    iput-object p6, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->dP:Ljava/math/BigInteger;

    #@c
    .line 34
    iput-object p7, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->dQ:Ljava/math/BigInteger;

    #@e
    .line 35
    iput-object p8, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->qInv:Ljava/math/BigInteger;

    #@10
    .line 26
    return-void
.end method


# virtual methods
.method public getDP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->dP:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getDQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->dQ:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->p:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->e:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->q:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getQInv()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->qInv:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
