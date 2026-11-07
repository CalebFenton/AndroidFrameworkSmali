.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$Wrap;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrap"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 152
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Wrapper;)V

    .line 153
    return-void
.end method
