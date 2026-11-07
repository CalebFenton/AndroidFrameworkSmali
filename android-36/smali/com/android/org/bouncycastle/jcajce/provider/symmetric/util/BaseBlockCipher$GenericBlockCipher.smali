.class interface abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;
.super Ljava/lang/Object;
.source "BaseBlockCipher.java"


# virtual methods
.method public abstract blacklist doFinal([BI)I
.end method

.method public abstract blacklist getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract blacklist getOutputSize(I)I
.end method

.method public abstract blacklist getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
.end method

.method public abstract blacklist getUpdateOutputSize(I)I
.end method

.method public abstract blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
.end method

.method public abstract blacklist processBytes([BII[BI)I
.end method

.method public abstract blacklist updateAAD([BII)V
.end method

.method public abstract blacklist wrapOnNoPadding()Z
.end method
