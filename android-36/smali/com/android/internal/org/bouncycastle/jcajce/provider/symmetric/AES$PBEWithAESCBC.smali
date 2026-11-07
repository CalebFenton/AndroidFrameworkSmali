.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithAESCBC;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithAESCBC"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 333
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->newInstance()Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    .line 334
    return-void
.end method
