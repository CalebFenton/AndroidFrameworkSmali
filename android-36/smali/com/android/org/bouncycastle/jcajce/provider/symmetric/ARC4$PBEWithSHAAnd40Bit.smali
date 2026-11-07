.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$PBEWithSHAAnd40Bit;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;
.source "ARC4.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 97
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;-><init>()V

    const/16 v1, 0x28

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lcom/android/org/bouncycastle/crypto/StreamCipher;III)V

    return-void
.end method
