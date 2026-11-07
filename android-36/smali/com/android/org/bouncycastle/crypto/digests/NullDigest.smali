.class public Lcom/android/org/bouncycastle/crypto/digests/NullDigest;
.super Ljava/lang/Object;
.source "NullDigest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Digest;


# instance fields
.field private blacklist bOut:Lcom/android/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;-><init>(Lcom/android/org/bouncycastle/crypto/digests/NullDigest-IA;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 5

    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->copy([BI)V

    .line 44
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;->reset()V

    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 20
    const-string p0, "NULL"

    return-object p0
.end method

.method public blacklist getDigestSize()I
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    return p0
.end method

.method public blacklist reset()V
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->reset()V

    return-void
.end method

.method public blacklist update(B)V
    .registers 2

    .line 30
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public blacklist update([BII)V
    .registers 4

    .line 35
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method
