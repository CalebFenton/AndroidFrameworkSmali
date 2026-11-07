.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa256;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.source "DSASigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dsa256"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 241
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/DSAExt;)V

    .line 242
    return-void
.end method
