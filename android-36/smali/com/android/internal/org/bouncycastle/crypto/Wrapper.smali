.class public interface abstract Lcom/android/internal/org/bouncycastle/crypto/Wrapper;
.super Ljava/lang/Object;
.source "Wrapper.java"


# virtual methods
.method public abstract blacklist getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
.end method

.method public abstract blacklist unwrap([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method

.method public abstract blacklist wrap([BII)[B
.end method
