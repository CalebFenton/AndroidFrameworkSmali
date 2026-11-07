.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Wrap;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "AES.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 289
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/AESWrapEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/AESWrapEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lcom/android/org/bouncycastle/crypto/Wrapper;)V

    return-void
.end method
