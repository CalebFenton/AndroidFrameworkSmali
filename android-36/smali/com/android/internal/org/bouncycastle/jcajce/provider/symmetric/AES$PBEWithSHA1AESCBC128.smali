.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA1AESCBC128;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHA1AESCBC128"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 8

    .line 346
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->newInstance()Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;

    move-result-object v2

    const/16 v5, 0x80

    const/16 v6, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;IIII)V

    .line 347
    return-void
.end method
