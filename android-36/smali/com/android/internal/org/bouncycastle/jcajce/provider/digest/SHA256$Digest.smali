.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA256$Digest;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.source "SHA256.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA256;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lcom/android/internal/org/bouncycastle/crypto/SavableDigest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 34
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA256$Digest;

    .line 40
    .local v0, "d":Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA256$Digest;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA256$Digest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->newInstance(Lcom/android/internal/org/bouncycastle/crypto/Digest;)Lcom/android/internal/org/bouncycastle/crypto/SavableDigest;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA256$Digest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 42
    return-object v0
.end method
