.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$CBC;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CBC"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 73
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V

    .line 74
    return-void
.end method
