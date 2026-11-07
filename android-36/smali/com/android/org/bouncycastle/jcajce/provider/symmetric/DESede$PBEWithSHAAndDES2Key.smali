.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$PBEWithSHAAndDES2Key;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "DESede.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 7

    .line 257
    new-instance v1, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    const/16 v4, 0x80

    const/16 v5, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;IIII)V

    return-void
.end method
