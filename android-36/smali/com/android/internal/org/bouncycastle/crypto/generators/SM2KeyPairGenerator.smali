.class public Lcom/android/internal/org/bouncycastle/crypto/generators/SM2KeyPairGenerator;
.super Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;
.source "SM2KeyPairGenerator.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    const-string v0, "SM2KeyGen"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected blacklist isOutOfRangeD(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .registers 4
    .param p1, "d"    # Ljava/math/BigInteger;
    .param p2, "n"    # Ljava/math/BigInteger;

    .line 38
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/SM2KeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_17

    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method
