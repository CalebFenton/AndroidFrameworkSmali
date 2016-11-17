.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$PBEWithSHA1;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHA1"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    .line 433
    new-instance v1, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@2
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;

    #@4
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;-><init>()V

    #@7
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@a
    const/4 v2, 0x0

    #@b
    const/4 v3, 0x1

    #@c
    const/16 v4, 0x40

    #@e
    const/16 v5, 0x8

    #@10
    move-object v0, p0

    #@11
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;IIII)V

    #@14
    .line 431
    return-void
.end method
