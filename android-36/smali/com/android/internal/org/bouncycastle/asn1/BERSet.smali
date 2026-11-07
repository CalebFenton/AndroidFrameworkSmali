.class public Lcom/android/internal/org/bouncycastle/asn1/BERSet;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
.source "BERSet.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>()V

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 2
    .param p1, "element"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3
    .param p1, "elementVector"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    .line 48
    return-void
.end method

.method constructor blacklist <init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "isSorted"    # Z
    .param p2, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Z)V

    .line 57
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

    .line 79
    const/16 v0, 0x31

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingIL(ZI[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 80
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

    .line 66
    if-eqz p1, :cond_4

    const/4 v0, 0x4

    goto :goto_5

    :cond_4
    const/4 v0, 0x3

    .line 68
    .local v0, "totalLength":I
    :goto_5
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v2, v2

    .local v2, "count":I
    :goto_9
    if-ge v1, v2, :cond_1c

    .line 70
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 71
    .local v3, "p":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v4

    add-int/2addr v0, v4

    .line 68
    .end local v3    # "p":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 74
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_1c
    return v0
.end method
