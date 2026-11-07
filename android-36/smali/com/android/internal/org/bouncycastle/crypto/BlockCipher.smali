.class public interface abstract Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
.super Ljava/lang/Object;
.source "BlockCipher.java"


# virtual methods
.method public abstract blacklist getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract blacklist getBlockSize()I
.end method

.method public abstract blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist processBlock([BI[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract blacklist reset()V
.end method
