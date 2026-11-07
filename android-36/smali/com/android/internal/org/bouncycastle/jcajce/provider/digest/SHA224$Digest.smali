.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA224$Digest;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.source "SHA224.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA224;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 33
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

    .line 38
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA224$Digest;

    .line 39
    .local v0, "d":Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA224$Digest;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA224$Digest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;)V

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA224$Digest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 41
    return-object v0
.end method
