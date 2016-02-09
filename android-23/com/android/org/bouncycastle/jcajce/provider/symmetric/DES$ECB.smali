.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$ECB;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 59
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;-><init>()V

    #@5
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@8
    .line 57
    return-void
.end method
