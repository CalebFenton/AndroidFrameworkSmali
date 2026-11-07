.class public Lcom/android/org/bouncycastle/asn1/BERSequence;
.super Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.source "BERSequence.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/16 v0, 0x30

    .line 64
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingIL(ZI[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method blacklist encodedLength(Z)I
    .registers 6

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_5

    :cond_4
    const/4 p1, 0x3

    .line 53
    :goto_5
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1c

    .line 55
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    const/4 v3, 0x1

    .line 56
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1c
    return p1
.end method

.method blacklist toASN1BitString()Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 2

    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERBitString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getConstructedBitStrings()[Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BERBitString;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1BitString;)V

    return-object v0
.end method

.method blacklist toASN1External()Lcom/android/org/bouncycastle/asn1/ASN1External;
    .registers 1

    .line 75
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toASN1External()Lcom/android/org/bouncycastle/asn1/ASN1External;

    move-result-object p0

    return-object p0
.end method

.method blacklist toASN1OctetString()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .line 80
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getConstructedOctetStrings()[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0
.end method

.method blacklist toASN1Set()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 3

    .line 85
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSet;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toArrayInternal()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/asn1/BERSet;-><init>(Z[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
