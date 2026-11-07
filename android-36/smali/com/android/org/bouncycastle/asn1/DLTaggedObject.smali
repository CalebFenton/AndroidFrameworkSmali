.class public Lcom/android/org/bouncycastle/asn1/DLTaggedObject;
.super Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
.source "DLTaggedObject.java"


# direct methods
.method constructor blacklist <init>(IIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(IIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor blacklist <init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 7

    .line 71
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz p2, :cond_22

    .line 76
    iget p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    if-nez v1, :cond_1b

    .line 77
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v3

    if-eqz v3, :cond_1d

    :cond_1b
    or-int/lit8 p2, p2, 0x20

    .line 82
    :cond_1d
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-virtual {p1, v2, p2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZII)V

    :cond_22
    if-eqz v1, :cond_2b

    .line 87
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 90
    :cond_2b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getDLSubStream()Lcom/android/org/bouncycastle/asn1/DLOutputStream;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 47
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method blacklist encodedLength(Z)I
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v0

    if-eqz v1, :cond_19

    .line 59
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfDL(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    if-eqz p1, :cond_22

    .line 62
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfIdentifier(I)I

    move-result p0

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    add-int/2addr v0, p0

    return v0
.end method

.method blacklist rebuildConstructed(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .line 95
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DLSequence;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0
.end method

.method blacklist replaceTag(II)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 5

    .line 100
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;-><init>(IIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    return-object p0
.end method
