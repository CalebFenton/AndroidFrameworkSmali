.class public interface abstract Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;
.super Ljava/lang/Object;
.source "StreamCipher.java"


# virtual methods
.method public abstract blacklist getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist processBytes([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation
.end method

.method public abstract blacklist reset()V
.end method

.method public abstract blacklist returnByte(B)B
.end method
