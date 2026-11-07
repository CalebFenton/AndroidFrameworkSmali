.class public interface abstract Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;
.super Ljava/lang/Object;
.source "DSAKCalculator.java"


# virtual methods
.method public abstract blacklist init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
.end method

.method public abstract blacklist init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
.end method

.method public abstract blacklist isDeterministic()Z
.end method

.method public abstract blacklist nextK()Ljava/math/BigInteger;
.end method
