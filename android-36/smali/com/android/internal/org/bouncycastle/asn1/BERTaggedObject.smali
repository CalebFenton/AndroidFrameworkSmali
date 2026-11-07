.class public Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
.source "BERTaggedObject.java"


# direct methods
.method constructor blacklist <init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5
    .param p1, "explicitness"    # I
    .param p2, "tagClass"    # I
    .param p3, "tagNo"    # I
    .param p4, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(IILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 27
    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "tagNo"    # I
    .param p2, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(ZIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5
    .param p1, "explicit"    # Z
    .param p2, "tagClass"    # I
    .param p3, "tagNo"    # I
    .param p4, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 37
    return-void
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 8
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 76
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->isExplicit()Z

    move-result v1

    .line 78
    .local v1, "explicit":Z
    const/4 v2, 0x1

    if-eqz p2, :cond_1e

    .line 80
    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->tagClass:I

    .line 81
    .local v3, "flags":I
    if-nez v1, :cond_17

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 83
    :cond_17
    or-int/lit8 v3, v3, 0x20

    .line 86
    :cond_19
    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZII)V

    .line 89
    .end local v3    # "flags":I
    :cond_1e
    const/4 v3, 0x0

    if-eqz v1, :cond_30

    .line 91
    const/16 v4, 0x80

    invoke-virtual {p1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 92
    invoke-virtual {v0, p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 93
    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 94
    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_33

    .line 98
    :cond_30
    invoke-virtual {v0, p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 100
    :goto_33
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->isExplicit()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 6
    .param p1, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 57
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->isExplicit()Z

    move-result v1

    .line 59
    .local v1, "explicit":Z
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v2

    .line 61
    .local v2, "length":I
    if-eqz v1, :cond_12

    .line 63
    add-int/lit8 v2, v2, 0x3

    .line 66
    :cond_12
    if-eqz p1, :cond_1b

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfIdentifier(I)I

    move-result v3

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    add-int/2addr v2, v3

    .line 68
    return v2
.end method

.method blacklist rebuildConstructed(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 3
    .param p1, "primitive"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 104
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method blacklist replaceTag(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 6
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I

    .line 109
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->explicitness:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
