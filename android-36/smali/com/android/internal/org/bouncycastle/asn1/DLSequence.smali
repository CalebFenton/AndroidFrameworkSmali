.class public Lcom/android/internal/org/bouncycastle/asn1/DLSequence;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
.source "DLSequence.java"


# instance fields
.field private blacklist contentsLength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 20
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "element"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3
    .param p1, "elementVector"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 38
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 47
    return-void
.end method

.method constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Z)V
    .registers 4
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .param p2, "clone"    # Z

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Z)V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 52
    return-void
.end method

.method private blacklist getContentsLength()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    if-gez v0, :cond_22

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 59
    .local v0, "count":I
    const/4 v1, 0x0

    .line 61
    .local v1, "totalLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_20

    .line 63
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 64
    .local v3, "dlObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 61
    .end local v3    # "dlObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 67
    .end local v2    # "i":I
    :cond_20
    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 70
    .end local v0    # "count":I
    .end local v1    # "totalLength":I
    :cond_22
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

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

    .line 88
    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getDLSubStream()Lcom/android/internal/org/bouncycastle/asn1/DLOutputStream;

    move-result-object v0

    .line 92
    .local v0, "dlOut":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v1, v1

    .line 93
    .local v1, "count":I
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    const/4 v3, 0x1

    if-gez v2, :cond_42

    const/16 v2, 0x10

    if-le v1, v2, :cond_16

    goto :goto_42

    .line 104
    :cond_16
    const/4 v2, 0x0

    .line 106
    .local v2, "totalLength":I
    new-array v4, v1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 107
    .local v4, "dlObjects":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1a
    if-ge v5, v1, :cond_32

    .line 109
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 110
    .local v6, "dlObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    aput-object v6, v4, v5

    .line 111
    invoke-virtual {v6, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v7

    add-int/2addr v2, v7

    .line 107
    .end local v6    # "dlObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 114
    .end local v5    # "i":I
    :cond_32
    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 115
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 117
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_38
    if-ge v5, v1, :cond_5a

    .line 119
    aget-object v6, v4, v5

    invoke-virtual {v0, v6, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 117
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 95
    .end local v2    # "totalLength":I
    .end local v4    # "dlObjects":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v5    # "i":I
    :cond_42
    :goto_42
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->getContentsLength()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 97
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4a
    if-ge v2, v1, :cond_5a

    .line 99
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 122
    .end local v2    # "i":I
    :cond_5a
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

    .line 75
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->getContentsLength()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method blacklist toASN1BitString()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 4

    .line 126
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->getConstructedBitStrings()[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->flattenBitStrings([Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;-><init>([BZ)V

    return-object v0
.end method

.method blacklist toASN1External()Lcom/android/internal/org/bouncycastle/asn1/ASN1External;
    .registers 2

    .line 131
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DLSequence;)V

    return-object v0
.end method

.method blacklist toASN1OctetString()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 3

    .line 137
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->getConstructedOctetStrings()[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->flattenOctetStrings([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method blacklist toASN1Set()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 4

    .line 142
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->toArrayInternal()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 147
    return-object p0
.end method
