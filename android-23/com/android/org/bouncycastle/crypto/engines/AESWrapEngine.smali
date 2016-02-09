.class public Lcom/android/org/bouncycastle/crypto/engines/AESWrapEngine;
.super Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;
.source "AESWrapEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;-><init>()V

    #@5
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@8
    .line 15
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "useReverseDirection"    # Z

    #@0
    .prologue
    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Z)V

    #@8
    .line 25
    return-void
.end method
