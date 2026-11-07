.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithAESCBC;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 333
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->newInstance()Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;)Lcom/android/org/bouncycastle/crypto/modes/CBCModeCipher;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method
