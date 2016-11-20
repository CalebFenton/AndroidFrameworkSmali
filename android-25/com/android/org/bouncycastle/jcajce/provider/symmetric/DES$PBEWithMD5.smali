.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$PBEWithMD5;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithMD5"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 421
    new-instance v1, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@3
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;-><init>()V

    #@8
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@b
    const/16 v4, 0x40

    #@d
    const/16 v5, 0x8

    #@f
    move-object v0, p0

    #@10
    move v3, v2

    #@11
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;IIII)V

    #@14
    .line 419
    return-void
.end method
