.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$CBCMAC;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CBCMAC"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 135
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Mac;)V

    .line 136
    return-void
.end method
