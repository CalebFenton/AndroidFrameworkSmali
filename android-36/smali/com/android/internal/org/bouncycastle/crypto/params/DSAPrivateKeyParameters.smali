.class public Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;
.source "DSAPrivateKeyParameters.java"


# instance fields
.field private blacklist x:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V
    .registers 4
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;-><init>(ZLcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V

    .line 20
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;->x:Ljava/math/BigInteger;

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist getX()Ljava/math/BigInteger;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-object v0
.end method
