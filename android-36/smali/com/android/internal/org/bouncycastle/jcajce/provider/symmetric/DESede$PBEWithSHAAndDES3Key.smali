.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$PBEWithSHAAndDES3Key;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAndDES3Key"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 7

    .line 244
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    const/16 v4, 0xc0

    const/16 v5, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;IIII)V

    .line 245
    return-void
.end method
