.class public Lcom/android/org/bouncycastle/asn1/BERSet;
.super Lcom/android/org/bouncycastle/asn1/ASN1Set;
.source "BERSet.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    return-void
.end method

.method constructor blacklist <init>(Z[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Z[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/16 v0, 0x31

    .line 79
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

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

    .line 68
    :goto_5
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1c

    .line 70
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    const/4 v3, 0x1

    .line 71
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1c
    return p1
.end method
