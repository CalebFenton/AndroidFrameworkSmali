.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA256$HashMac;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "SHA256.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA256;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashMac"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 54
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lcom/android/internal/org/bouncycastle/crypto/SavableDigest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Mac;)V

    .line 55
    return-void
.end method
