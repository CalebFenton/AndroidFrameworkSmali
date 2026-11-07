.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$ECB;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 69
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    .line 70
    return-void
.end method
