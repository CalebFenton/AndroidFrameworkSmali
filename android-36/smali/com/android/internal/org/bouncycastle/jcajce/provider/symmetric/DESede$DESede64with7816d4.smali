.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$DESede64with7816d4;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESede64with7816d4"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 115
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    const/16 v3, 0x40

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;ILcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Mac;)V

    .line 116
    return-void
.end method
