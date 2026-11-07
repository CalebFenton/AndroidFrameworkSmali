.class public Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SequenceOfOctetString.java"


# instance fields
.field private blacklist octetStrings:[[B


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 25
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;->toByteArrays(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)[[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;->octetStrings:[[B

    .line 27
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 31
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    if-eqz v0, :cond_8

    .line 33
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    return-object v0

    .line 35
    :cond_8
    if-eqz p0, :cond_14

    .line 37
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 40
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist toByteArrays(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)[[B
    .registers 4
    .param p0, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [[B

    .line 63
    .local v0, "octetStrings":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_1e

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 68
    .end local v1    # "i":I
    :cond_1e
    return-object v0
.end method


# virtual methods
.method public blacklist size()I
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;->octetStrings:[[B

    array-length v0, v0

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 50
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 52
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;->octetStrings:[[B

    array-length v2, v2

    if-eq v1, v2, :cond_1e

    .line 54
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;->octetStrings:[[B

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 57
    .end local v1    # "i":I
    :cond_1e
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
