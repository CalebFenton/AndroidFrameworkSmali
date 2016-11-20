.class public Lcom/android/org/bouncycastle/crypto/digests/NullDigest;
.super Ljava/lang/Object;
.source "NullDigest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Digest;


# instance fields
.field private bOut:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 11
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@5
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    #@a
    .line 8
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    #@0
    .prologue
    .line 35
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@5
    move-result-object v0

    #@6
    .line 37
    .local v0, "res":[B
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b
    .line 39
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;->reset()V

    #@e
    .line 41
    array-length v1, v0

    #@f
    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 15
    const-string/jumbo v0, "NULL"

    #@3
    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    #@0
    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@5
    .line 44
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B

    #@0
    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@5
    .line 23
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@5
    .line 28
    return-void
.end method
