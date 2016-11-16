.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256AESCBC128;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHA256AESCBC128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    .line 254
    new-instance v1, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@2
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/AESFastEngine;

    #@4
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    #@7
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@a
    const/4 v2, 0x2

    #@b
    const/4 v3, 0x4

    #@c
    const/16 v4, 0x80

    #@e
    const/16 v5, 0x10

    #@10
    move-object v0, p0

    #@11
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;IIII)V

    #@14
    .line 252
    return-void
.end method
