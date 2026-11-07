.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$CFB;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 121
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->newInstance()Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)Lcom/android/org/bouncycastle/crypto/modes/CFBModeCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;I)V

    return-void
.end method
