.class public Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
.source "DLTaggedObject.java"


# direct methods
.method constructor blacklist <init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5
    .param p1, "explicitness"    # I
    .param p2, "tagClass"    # I
    .param p3, "tagNo"    # I
    .param p4, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(IILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "encodable"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 23
    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "tagNo"    # I
    .param p2, "encodable"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 18
    return-void
.end method

.method public constructor blacklist <init>(ZIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5
    .param p1, "explicit"    # Z
    .param p2, "tagClass"    # I
    .param p3, "tagNo"    # I
    .param p4, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 33
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

    .line 71
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 72
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v1

    .line 74
    .local v1, "explicit":Z
    const/4 v2, 0x1

    if-eqz p2, :cond_22

    .line 76
    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->tagClass:I

    .line 77
    .local v3, "flags":I
    if-nez v1, :cond_1b

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 79
    :cond_1b
    or-int/lit8 v3, v3, 0x20

    .line 82
    :cond_1d
    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZII)V

    .line 85
    .end local v3    # "flags":I
    :cond_22
    if-eqz v1, :cond_2b

    .line 87
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 90
    :cond_2b
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getDLSubStream()Lcom/android/internal/org/bouncycastle/asn1/DLOutputStream;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 91
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
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

    .line 52
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 53
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v1

    .line 55
    .local v1, "explicit":Z
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v2

    .line 57
    .local v2, "length":I
    if-eqz v1, :cond_19

    .line 59
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfDL(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 62
    :cond_19
    if-eqz p1, :cond_22

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfIdentifier(I)I

    move-result v3

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    add-int/2addr v2, v3

    .line 64
    return v2
.end method

.method blacklist rebuildConstructed(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 3
    .param p1, "primitive"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 95
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method blacklist replaceTag(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 6
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I

    .line 100
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->explicitness:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 105
    return-object p0
.end method
