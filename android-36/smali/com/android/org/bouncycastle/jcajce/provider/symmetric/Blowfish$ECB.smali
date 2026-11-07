.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/Blowfish$ECB;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "Blowfish.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/BlowfishEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/BlowfishEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method
