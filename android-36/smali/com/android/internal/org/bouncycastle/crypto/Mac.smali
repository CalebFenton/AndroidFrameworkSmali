.class public interface abstract Lcom/android/internal/org/bouncycastle/crypto/Mac;
.super Ljava/lang/Object;
.source "Mac.java"


# virtual methods
.method public abstract blacklist doFinal([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract blacklist getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract blacklist getMacSize()I
.end method

.method public abstract blacklist init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist reset()V
.end method

.method public abstract blacklist update(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract blacklist update([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
