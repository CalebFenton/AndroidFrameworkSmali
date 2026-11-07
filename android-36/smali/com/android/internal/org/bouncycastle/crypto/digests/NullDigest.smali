.class public Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;
.super Ljava/lang/Object;
.source "NullDigest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Digest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private blacklist bOut:Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest-IA;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 40
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->size()I

    move-result v0

    .line 42
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->copy([BI)V

    .line 44
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;->reset()V

    .line 46
    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 20
    const-string v0, "NULL"

    return-object v0
.end method

.method public blacklist getDigestSize()I
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->reset()V

    .line 52
    return-void
.end method

.method public blacklist update(B)V
    .registers 3
    .param p1, "in"    # B

    .line 30
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->write(I)V

    .line 31
    return-void
.end method

.method public blacklist update([BII)V
    .registers 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 35
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->write([BII)V

    .line 36
    return-void
.end method
