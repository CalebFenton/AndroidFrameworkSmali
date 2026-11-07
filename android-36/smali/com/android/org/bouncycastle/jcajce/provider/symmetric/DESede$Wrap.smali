.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$Wrap;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "DESede.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 152
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lcom/android/org/bouncycastle/crypto/Wrapper;)V

    return-void
.end method
