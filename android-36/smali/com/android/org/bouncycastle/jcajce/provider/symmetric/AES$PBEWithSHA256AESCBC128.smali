.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256AESCBC128;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 8

    .line 383
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->newInstance()Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;)Lcom/android/org/bouncycastle/crypto/modes/CBCModeCipher;

    move-result-object v2

    const/16 v5, 0x80

    const/16 v6, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;IIII)V

    return-void
.end method
