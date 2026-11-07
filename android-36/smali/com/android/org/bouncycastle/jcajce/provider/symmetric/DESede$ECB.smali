.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$ECB;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "DESede.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 61
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method
