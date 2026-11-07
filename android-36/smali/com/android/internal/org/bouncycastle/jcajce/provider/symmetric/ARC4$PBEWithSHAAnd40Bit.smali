.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/ARC4$PBEWithSHAAnd40Bit;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;
.source "ARC4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/ARC4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAnd40Bit"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 97
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;-><init>()V

    const/16 v1, 0x28

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;III)V

    .line 98
    return-void
.end method
