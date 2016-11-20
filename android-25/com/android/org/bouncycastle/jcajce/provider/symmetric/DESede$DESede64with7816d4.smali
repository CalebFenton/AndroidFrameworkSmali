.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$DESede64with7816d4;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESede64with7816d4"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 105
    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;

    #@4
    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    #@7
    new-instance v2, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;

    #@9
    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    #@c
    const/16 v3, 0x40

    #@e
    invoke-direct {v0, v1, v3, v2}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ILcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    #@11
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lcom/android/org/bouncycastle/crypto/Mac;)V

    #@14
    .line 103
    return-void
.end method
