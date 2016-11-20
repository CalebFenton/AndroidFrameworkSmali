.class public Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;
.source "ECPrivateKeyParameters.java"


# instance fields
.field d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V
    .locals 1
    .param p1, "d"    # Ljava/math/BigInteger;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@0
    .prologue
    .line 14
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;-><init>(ZLcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@4
    .line 15
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->d:Ljava/math/BigInteger;

    #@6
    .line 12
    return-void
.end method


# virtual methods
.method public getD()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->d:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
