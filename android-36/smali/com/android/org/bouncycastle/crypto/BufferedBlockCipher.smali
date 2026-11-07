.class public abstract Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;
.super Ljava/lang/Object;
.source "BufferedBlockCipher.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist doFinal([BI)I
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
