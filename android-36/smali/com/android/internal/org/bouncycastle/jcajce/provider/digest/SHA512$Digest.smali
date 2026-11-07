.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA512$Digest;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.source "SHA512.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA512;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA512$Digest;

    .line 43
    .local v0, "d":Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA512$Digest;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA512$Digest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;)V

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA512$Digest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 45
    return-object v0
.end method
