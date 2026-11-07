.class public Lcom/android/internal/org/bouncycastle/asn1/DLExternal;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1External;
.source "DLExternal.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3
    .param p1, "vector"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 27
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DLSequence;)V

    .line 28
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 6
    .param p1, "directReference"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "indirectReference"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .param p3, "dataValueDescriptor"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .param p4, "encoding"    # I
    .param p5, "externalData"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;)V
    .registers 5
    .param p1, "directReference"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "indirectReference"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .param p3, "dataValueDescriptor"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .param p4, "externalData"    # Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;)V

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/DLSequence;)V
    .registers 2
    .param p1, "sequence"    # Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 45
    return-void
.end method


# virtual methods
.method blacklist buildSequence()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 6

    .line 78
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 79
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_f

    .line 81
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 83
    :cond_f
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_18

    .line 85
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 87
    :cond_18
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_25

    .line 89
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 92
    :cond_25
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;->encoding:I

    if-nez v2, :cond_2d

    const/4 v2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;->encoding:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 94
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 99
    return-object p0
.end method
