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
    .locals 2

    #@0
    .prologue
    .line 421
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;

    #@4
    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;-><init>()V

    #@7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@d
    .line 419
    return-void
.end method
