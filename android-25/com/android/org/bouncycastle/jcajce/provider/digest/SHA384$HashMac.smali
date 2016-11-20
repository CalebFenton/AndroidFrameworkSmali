.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA384$HashMac;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "SHA384.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA384;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashMac"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;

    #@4
    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    #@7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lcom/android/org/bouncycastle/crypto/Mac;)V

    #@d
    .line 44
    return-void
.end method
