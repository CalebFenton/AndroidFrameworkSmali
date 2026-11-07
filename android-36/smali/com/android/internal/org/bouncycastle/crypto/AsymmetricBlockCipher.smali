.class public interface abstract Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
.super Ljava/lang/Object;
.source "AsymmetricBlockCipher.java"


# virtual methods
.method public abstract blacklist getInputBlockSize()I
.end method

.method public abstract blacklist getOutputBlockSize()I
.end method

.method public abstract blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
.end method

.method public abstract blacklist processBlock([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method
