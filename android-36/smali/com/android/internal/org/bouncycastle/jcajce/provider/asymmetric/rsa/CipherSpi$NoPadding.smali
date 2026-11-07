.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi$NoPadding;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
.source "CipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 585
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    .line 586
    return-void
.end method
