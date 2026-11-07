.class public Lcom/android/org/bouncycastle/asn1/DEROutputStream;
.super Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
.source "DEROutputStream.java"


# direct methods
.method public constructor greylist-max-r <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method blacklist getDERSubStream()Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    .registers 1

    .line 0
    return-object p0
.end method

.method blacklist writeElements([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6

    .line 30
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_15

    .line 32
    aget-object v2, p1, v1

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return-void
.end method

.method blacklist writePrimitive(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;Z)V
    .registers 3

    .line 38
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    return-void
.end method

.method blacklist writePrimitives([Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 6

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    .line 47
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return-void
.end method
