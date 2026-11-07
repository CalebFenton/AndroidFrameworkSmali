.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$ECB;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "DES.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method
