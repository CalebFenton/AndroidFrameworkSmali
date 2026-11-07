.class public Lcom/android/org/bouncycastle/asn1/DLSequence;
.super Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.source "DLSequence.java"


# instance fields
.field private blacklist contentsLength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    return-void
.end method

.method constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    return-void
.end method

.method private blacklist getContentsLength()I
    .registers 6

    .line 56
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    if-gez v0, :cond_22

    .line 58
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_20

    .line 63
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    const/4 v4, 0x1

    .line 64
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 67
    :cond_20
    iput v2, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 70
    :cond_22
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    return p0
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 10

    const/16 v0, 0x30

    .line 88
    invoke-virtual {p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 90
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getDLSubStream()Lcom/android/org/bouncycastle/asn1/DLOutputStream;

    move-result-object p2

    .line 92
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 93
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_42

    const/16 v1, 0x10

    if-le v0, v1, :cond_17

    goto :goto_42

    .line 106
    :cond_17
    new-array v1, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move v4, v2

    move v5, v4

    :goto_1b
    if-ge v4, v0, :cond_33

    .line 109
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v4

    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 110
    aput-object v6, v1, v4

    .line 111
    invoke-virtual {v6, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 114
    :cond_33
    iput v5, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 115
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    :goto_38
    if-ge v2, v0, :cond_59

    .line 119
    aget-object p0, v1, v2

    invoke-virtual {p2, p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 95
    :cond_42
    :goto_42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DLSequence;->getContentsLength()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    :goto_49
    if-ge v2, v0, :cond_59

    .line 99
    iget-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object p1, p1, v2

    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_59
    return-void
.end method

.method blacklist encodedLength(Z)I
    .registers 2

    .line 75
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DLSequence;->getContentsLength()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method blacklist toASN1BitString()Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 3

    .line 126
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLBitString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getConstructedBitStrings()[Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/BERBitString;->flattenBitStrings([Lcom/android/org/bouncycastle/asn1/ASN1BitString;)[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/DLBitString;-><init>([BZ)V

    return-object v0
.end method

.method blacklist toASN1External()Lcom/android/org/bouncycastle/asn1/ASN1External;
    .registers 2

    .line 131
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLExternal;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DLExternal;-><init>(Lcom/android/org/bouncycastle/asn1/DLSequence;)V

    return-object v0
.end method

.method blacklist toASN1OctetString()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .line 137
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getConstructedOctetStrings()[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->flattenOctetStrings([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method blacklist toASN1Set()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 3

    .line 142
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSet;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toArrayInternal()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>(Z[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    return-object p0
.end method
