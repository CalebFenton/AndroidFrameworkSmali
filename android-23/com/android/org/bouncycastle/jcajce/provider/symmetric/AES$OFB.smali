.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$OFB;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OFB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x80

    #@2
    .line 111
    new-instance v0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    #@4
    new-instance v1, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;

    #@6
    new-instance v2, Lcom/android/org/bouncycastle/crypto/engines/AESFastEngine;

    #@8
    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    #@b
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    #@e
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@11
    invoke-direct {p0, v0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;I)V

    #@14
    .line 109
    return-void
.end method
