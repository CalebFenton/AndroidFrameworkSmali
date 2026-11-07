.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA1$HashMac;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "SHA1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashMac"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Mac;)V

    .line 57
    return-void
.end method
