.class public interface abstract Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;
.super Ljava/lang/Object;
.source "AEADCipher.java"


# virtual methods
.method public abstract blacklist doFinal([BI)I
.end method

.method public abstract blacklist getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract blacklist getMac()[B
.end method

.method public abstract blacklist getOutputSize(I)I
.end method

.method public abstract blacklist getUpdateOutputSize(I)I
.end method

.method public abstract blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
.end method

.method public abstract blacklist processAADBytes([BII)V
.end method

.method public abstract blacklist processBytes([BII[BI)I
.end method
