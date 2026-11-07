.class public Lcom/android/org/bouncycastle/asn1/BERTaggedObject;
.super Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
.source "BERTaggedObject.java"


# direct methods
.method constructor blacklist <init>(IIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(IIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor blacklist <init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 7

    .line 75
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz p2, :cond_1e

    .line 80
    iget p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    if-nez v1, :cond_17

    .line 81
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_17
    or-int/lit8 p2, p2, 0x20

    .line 86
    :cond_19
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-virtual {p1, v2, p2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZII)V

    :cond_1e
    const/4 p0, 0x0

    if-eqz v1, :cond_30

    const/16 p2, 0x80

    .line 91
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 92
    invoke-virtual {v0, p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 93
    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 94
    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    return-void

    .line 98
    :cond_30
    invoke-virtual {v0, p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method blacklist encodedLength(Z)I
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v0

    if-eqz v1, :cond_12

    add-int/lit8 v0, v0, 0x3

    :cond_12
    if-eqz p1, :cond_1b

    .line 66
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfIdentifier(I)I

    move-result p0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    add-int/2addr v0, p0

    return v0
.end method

.method blacklist rebuildConstructed(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .line 104
    new-instance p0, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0
.end method

.method blacklist replaceTag(II)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 5

    .line 109
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(IIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
