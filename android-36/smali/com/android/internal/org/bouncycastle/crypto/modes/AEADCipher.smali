.class public interface abstract Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;
.super Ljava/lang/Object;
.source "AEADCipher.java"


# virtual methods
.method public abstract blacklist doFinal([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method

.method public abstract blacklist getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract blacklist getMac()[B
.end method

.method public abstract blacklist getOutputSize(I)I
.end method

.method public abstract blacklist getUpdateOutputSize(I)I
.end method

.method public abstract blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist processAADByte(B)V
.end method

.method public abstract blacklist processAADBytes([BII)V
.end method

.method public abstract blacklist processByte(B[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
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
