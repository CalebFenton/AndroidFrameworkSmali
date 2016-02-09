.class public Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "RSAKeyParameters.java"


# instance fields
.field private exponent:Ljava/math/BigInteger;

.field private modulus:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "modulus"    # Ljava/math/BigInteger;
    .param p3, "exponent"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    #@3
    .line 18
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->modulus:Ljava/math/BigInteger;

    #@5
    .line 19
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->exponent:Ljava/math/BigInteger;

    #@7
    .line 14
    return-void
.end method


# virtual methods
.method public getExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->exponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->modulus:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
