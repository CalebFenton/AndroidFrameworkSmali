.class public Lcom/android/org/bouncycastle/asn1/DLSet;
.super Lcom/android/org/bouncycastle/asn1/ASN1Set;
.source "DLSet.java"


# instance fields
.field private blacklist contentsLength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>()V

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->contentsLength:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    const/4 p1, -0x1

    .line 58
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->contentsLength:I

    return-void
.end method

.method constructor blacklist <init>(Z[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Z[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, -0x1

    .line 58
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->contentsLength:I

    return-void
.end method

.method constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, -0x1

    .line 58
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->contentsLength:I

    return-void
.end method

.method private blacklist getContentsLength()I
    .registers 6

    .line 103
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->contentsLength:I

    if-gez v0, :cond_22

    .line 105
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_20

    .line 110
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    const/4 v4, 0x1

    .line 111
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 114
    :cond_20
    iput v2, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->contentsLength:I

    .line 117
    :cond_22
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->contentsLength:I

    return p0
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 10

    const/16 v0, 0x31

    .line 135
    invoke-virtual {p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 137
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getDLSubStream()Lcom/android/org/bouncycastle/asn1/DLOutputStream;

    move-result-object p2

    .line 139
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 140
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->contentsLength:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_42

    const/16 v1, 0x10

    if-le v0, v1, :cond_17

    goto :goto_42

    .line 153
    :cond_17
    new-array v1, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move v4, v2

    move v5, v4

    :goto_1b
    if-ge v4, v0, :cond_33

    .line 156
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v4

    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 157
    aput-object v6, v1, v4

    .line 158
    invoke-virtual {v6, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 161
    :cond_33
    iput v5, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->contentsLength:I

    .line 162
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    :goto_38
    if-ge v2, v0, :cond_59

    .line 166
    aget-object p0, v1, v2

    invoke-virtual {p2, p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 142
    :cond_42
    :goto_42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DLSet;->getContentsLength()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    :goto_49
    if-ge v2, v0, :cond_59

    .line 146
    iget-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

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

    .line 122
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DLSet;->getContentsLength()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    return-object p0
.end method
