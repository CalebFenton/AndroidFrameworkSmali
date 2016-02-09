.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$CBCMAC;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CBCMAC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 115
    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;

    #@4
    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;-><init>()V

    #@7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lcom/android/org/bouncycastle/crypto/Mac;)V

    #@d
    .line 113
    return-void
.end method
