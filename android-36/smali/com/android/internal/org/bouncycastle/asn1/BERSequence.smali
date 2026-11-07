.class public Lcom/android/internal/org/bouncycastle/asn1/BERSequence;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
.source "BERSequence.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    .line 23
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 2
    .param p1, "element"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 30
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 2
    .param p1, "elementVector"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 2
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 47
    return-void
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/16 v0, 0x30

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingIL(ZI[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 65
    return-void
.end method

.method blacklist encodedLength(Z)I
    .registers 7
    .param p1, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    if-eqz p1, :cond_4

    const/4 v0, 0x4

    goto :goto_5

    :cond_4
    const/4 v0, 0x3

    .line 53
    .local v0, "totalLength":I
    :goto_5
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v2, v2

    .local v2, "count":I
    :goto_9
    if-ge v1, v2, :cond_1c

    .line 55
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 56
    .local v3, "p":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v4

    add-int/2addr v0, v4

    .line 53
    .end local v3    # "p":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 59
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_1c
    return v0
.end method

.method blacklist toASN1BitString()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 3

    .line 69
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;->getConstructedBitStrings()[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)V

    return-object v0
.end method

.method blacklist toASN1External()Lcom/android/internal/org/bouncycastle/asn1/ASN1External;
    .registers 2

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toASN1External()Lcom/android/internal/org/bouncycastle/asn1/ASN1External;

    move-result-object v0

    return-object v0
.end method

.method blacklist toASN1OctetString()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 3

    .line 80
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;->getConstructedOctetStrings()[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0
.end method

.method blacklist toASN1Set()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 4

    .line 85
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERSet;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;->toArrayInternal()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/BERSet;-><init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
