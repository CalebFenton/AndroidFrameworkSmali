.class public Lcom/android/org/bouncycastle/asn1/DERSequence;
.super Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.source "DERSequence.java"


# instance fields
.field private blacklist contentsLength:I


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->contentsLength:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->contentsLength:I

    return-void
.end method

.method public constructor greylist <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->contentsLength:I

    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->contentsLength:I

    return-void
.end method

.method constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->contentsLength:I

    return-void
.end method

.method public static blacklist convert(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/DERSequence;
    .registers 1

    .line 18
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    return-object p0
.end method

.method private blacklist getContentsLength()I
    .registers 6

    .line 66
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->contentsLength:I

    if-gez v0, :cond_22

    .line 68
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_20

    .line 73
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    const/4 v4, 0x1

    .line 74
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 77
    :cond_20
    iput v2, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->contentsLength:I

    .line 80
    :cond_22
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->contentsLength:I

    return p0
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 10

    const/16 v0, 0x30

    .line 98
    invoke-virtual {p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 100
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getDERSubStream()Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    move-result-object p2

    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 103
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->contentsLength:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_42

    const/16 v1, 0x10

    if-le v0, v1, :cond_17

    goto :goto_42

    .line 117
    :cond_17
    new-array v1, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move v4, v2

    move v5, v4

    :goto_1b
    if-ge v4, v0, :cond_33

    .line 120
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v4

    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 121
    aput-object v6, v1, v4

    .line 122
    invoke-virtual {v6, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 125
    :cond_33
    iput v5, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->contentsLength:I

    .line 126
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    :goto_38
    if-ge v2, v0, :cond_5d

    .line 130
    aget-object p0, v1, v2

    invoke-virtual {p0, p2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 105
    :cond_42
    :goto_42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getContentsLength()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    :goto_49
    if-ge v2, v0, :cond_5d

    .line 109
    iget-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object p1, p1, v2

    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    .line 110
    invoke-virtual {p1, p2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_5d
    return-void
.end method

.method blacklist encodedLength(Z)I
    .registers 2

    .line 85
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getContentsLength()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method blacklist toASN1BitString()Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 3

    .line 137
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getConstructedBitStrings()[Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/BERBitString;->flattenBitStrings([Lcom/android/org/bouncycastle/asn1/ASN1BitString;)[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BZ)V

    return-object v0
.end method

.method blacklist toASN1External()Lcom/android/org/bouncycastle/asn1/ASN1External;
    .registers 2

    .line 142
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERExternal;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/org/bouncycastle/asn1/DERSequence;)V

    return-object v0
.end method

.method blacklist toASN1OctetString()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .line 147
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

    .line 153
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSet;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toArrayInternal()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>(Z[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
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
