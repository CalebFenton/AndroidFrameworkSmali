.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$CBC;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 109
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->newInstance()Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;)Lcom/android/org/bouncycastle/crypto/modes/CBCModeCipher;

    move-result-object v0

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    return-void
.end method
