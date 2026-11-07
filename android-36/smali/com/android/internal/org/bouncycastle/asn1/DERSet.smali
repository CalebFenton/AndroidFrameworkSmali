.class public Lcom/android/internal/org/bouncycastle/asn1/DERSet;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
.source "DERSet.java"


# instance fields
.field private blacklist contentsLength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->contentsLength:I

    .line 32
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "element"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->contentsLength:I

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3
    .param p1, "elementVector"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->contentsLength:I

    .line 50
    return-void
.end method

.method constructor blacklist <init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "isSorted"    # Z
    .param p2, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 63
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->checkSorted(Z)Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->contentsLength:I

    .line 64
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Z)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->contentsLength:I

    .line 59
    return-void
.end method

.method private static blacklist checkSorted(Z)Z
    .registers 3
    .param p0, "isSorted"    # Z

    .line 149
    if-eqz p0, :cond_3

    .line 153
    return p0

    .line 151
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DERSet elements should always be in sorted order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist convert(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/asn1/DERSet;
    .registers 2
    .param p0, "set"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 22
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    return-object v0
.end method

.method private blacklist getContentsLength()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->contentsLength:I

    if-gez v0, :cond_22

    .line 70
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 71
    .local v0, "count":I
    const/4 v1, 0x0

    .line 73
    .local v1, "totalLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_20

    .line 75
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 76
    .local v3, "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 73
    .end local v3    # "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 79
    .end local v2    # "i":I
    :cond_20
    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->contentsLength:I

    .line 82
    .end local v0    # "count":I
    .end local v1    # "totalLength":I
    :cond_22
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->contentsLength:I

    return v0
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 11
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const/16 v0, 0x31

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 102
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getDERSubStream()Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    move-result-object v0

    .line 104
    .local v0, "derOut":Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v1, v1

    .line 105
    .local v1, "count":I
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->contentsLength:I

    const/4 v3, 0x1

    if-gez v2, :cond_42

    const/16 v2, 0x10

    if-le v1, v2, :cond_16

    goto :goto_42

    .line 117
    :cond_16
    const/4 v2, 0x0

    .line 119
    .local v2, "totalLength":I
    new-array v4, v1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 120
    .local v4, "derObjects":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1a
    if-ge v5, v1, :cond_32

    .line 122
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 123
    .local v6, "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    aput-object v6, v4, v5

    .line 124
    invoke-virtual {v6, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v7

    add-int/2addr v2, v7

    .line 120
    .end local v6    # "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 127
    .end local v5    # "i":I
    :cond_32
    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->contentsLength:I

    .line 128
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 130
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_38
    if-ge v5, v1, :cond_5e

    .line 132
    aget-object v6, v4, v5

    invoke-virtual {v6, v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 130
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 107
    .end local v2    # "totalLength":I
    .end local v4    # "derObjects":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v5    # "i":I
    :cond_42
    :goto_42
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->getContentsLength()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 109
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4a
    if-ge v2, v1, :cond_5e

    .line 111
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    .line 112
    .local v4, "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v4, v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 109
    .end local v4    # "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 135
    .end local v2    # "i":I
    :cond_5e
    return-void
.end method

.method blacklist encodedLength(Z)I
    .registers 3
    .param p1, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->getContentsLength()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_6

    move-object v0, p0

    goto :goto_a

    :cond_6
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 144
    return-object p0
.end method
