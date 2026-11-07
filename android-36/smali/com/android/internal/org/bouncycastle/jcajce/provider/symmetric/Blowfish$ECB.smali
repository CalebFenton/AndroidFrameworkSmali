.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/Blowfish$ECB;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "Blowfish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/Blowfish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/BlowfishEngine;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/BlowfishEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    .line 36
    return-void
.end method
