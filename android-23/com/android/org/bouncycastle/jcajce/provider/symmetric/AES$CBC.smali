.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$CBC;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CBC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 93
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/AESFastEngine;

    #@4
    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    #@7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@a
    const/16 v1, 0x80

    #@c
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    #@f
    .line 91
    return-void
.end method
