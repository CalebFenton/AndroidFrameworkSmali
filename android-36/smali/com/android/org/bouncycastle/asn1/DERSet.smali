.class public Lcom/android/org/bouncycastle/asn1/DERSet;
.super Lcom/android/org/bouncycastle/asn1/ASN1Set;
.source "DERSet.java"


# instance fields
.field private blacklist contentsLength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->contentsLength:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->contentsLength:I

    return-void
.end method

.method public constructor greylist-max-r <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3

    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->contentsLength:I

    return-void
.end method

.method constructor blacklist <init>(Z[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    .line 64
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERSet;->checkSorted(Z)Z

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Z[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->contentsLength:I

    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    const/4 v0, 0x1

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->contentsLength:I

    return-void
.end method

.method private static blacklist checkSorted(Z)Z
    .registers 2

    if-eqz p0, :cond_3

    return p0

    .line 152
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "DERSet elements should always be in sorted order"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getContentsLength()I
    .registers 6

    .line 69
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->contentsLength:I

    if-gez v0, :cond_22

    .line 71
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_20

    .line 76
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    const/4 v4, 0x1

    .line 77
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 80
    :cond_20
    iput v2, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->contentsLength:I

    .line 83
    :cond_22
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->contentsLength:I

    return p0
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 10

    const/16 v0, 0x31

    .line 101
    invoke-virtual {p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 103
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getDERSubStream()Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    move-result-object p2

    .line 105
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 106
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->contentsLength:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_42

    const/16 v1, 0x10

    if-le v0, v1, :cond_17

    goto :goto_42

    .line 120
    :cond_17
    new-array v1, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move v4, v2

    move v5, v4

    :goto_1b
    if-ge v4, v0, :cond_33

    .line 123
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v4

    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 124
    aput-object v6, v1, v4

    .line 125
    invoke-virtual {v6, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 128
    :cond_33
    iput v5, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->contentsLength:I

    .line 129
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    :goto_38
    if-ge v2, v0, :cond_5d

    .line 133
    aget-object p0, v1, v2

    invoke-virtual {p0, p2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 108
    :cond_42
    :goto_42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;->getContentsLength()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    :goto_49
    if-ge v2, v0, :cond_5d

    .line 112
    iget-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object p1, p1, v2

    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    .line 113
    invoke-virtual {p1, p2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_5d
    return-void
.end method

.method blacklist encodedLength(Z)I
    .registers 2

    .line 88
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;->getContentsLength()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    return-object p0
.end method
