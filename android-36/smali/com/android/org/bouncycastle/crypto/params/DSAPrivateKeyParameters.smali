.class public Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;
.source "DSAPrivateKeyParameters.java"


# instance fields
.field private blacklist x:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V
    .registers 4

    const/4 v0, 0x1

    .line 18
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;-><init>(ZLcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    .line 20
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public blacklist getX()Ljava/math/BigInteger;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-object p0
.end method
