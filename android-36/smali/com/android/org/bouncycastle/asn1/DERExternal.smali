.class public Lcom/android/org/bouncycastle/asn1/DERExternal;
.super Lcom/android/org/bouncycastle/asn1/ASN1External;
.source "DERExternal.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 6

    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/android/org/bouncycastle/asn1/ASN1External;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/DERSequence;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1External;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method


# virtual methods
.method blacklist buildSequence()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 5

    .line 78
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 79
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_d

    .line 81
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 83
    :cond_d
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_14

    .line 85
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 87
    :cond_14
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_1f

    .line 89
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 92
    :cond_1f
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->encoding:I

    if-nez v2, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    invoke-direct {v1, v3, v2, p0}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 94
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    return-object p0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    return-object p0
.end method
