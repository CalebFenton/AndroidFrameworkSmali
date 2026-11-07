.class public interface abstract Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;
.super Ljava/lang/Object;
.source "MultiBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;


# virtual methods
.method public abstract blacklist getMultiBlockSize()I
.end method

.method public abstract blacklist processBlocks([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
