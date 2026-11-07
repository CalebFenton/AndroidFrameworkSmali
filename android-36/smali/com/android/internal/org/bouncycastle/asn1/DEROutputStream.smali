.class public Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
.source "DEROutputStream.java"


# direct methods
.method public constructor blacklist <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 18
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 19
    return-void
.end method


# virtual methods
.method blacklist getDERSubStream()Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;
    .registers 1

    .line 23
    return-object p0
.end method

.method blacklist writeElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "count":I
    :goto_2
    if-ge v0, v1, :cond_15

    .line 31
    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 33
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_15
    return-void
.end method

.method blacklist writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V
    .registers 4
    .param p1, "primitive"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 38
    return-void
.end method

.method blacklist writePrimitives([Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 6
    .param p1, "primitives"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    array-length v0, p1

    .line 44
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_11

    .line 46
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 48
    .end local v1    # "i":I
    :cond_11
    return-void
.end method
