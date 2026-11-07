.class public Lcom/android/internal/org/bouncycastle/crypto/engines/AESWrapEngine;
.super Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;
.source "AESWrapEngine.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 19
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->newInstance()Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    .line 20
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "useReverseDirection"    # Z

    .line 29
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->newInstance()Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Z)V

    .line 30
    return-void
.end method
