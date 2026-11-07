.class public Lcom/android/org/bouncycastle/asn1/DLBitString;
.super Lcom/android/org/bouncycastle/asn1/ASN1BitString;
.source "DLBitString.java"


# direct methods
.method constructor blacklist <init>([BZ)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    return-void
.end method

.method static blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;ZB[BII)V
    .registers 13

    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 78
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZIB[BII)V

    return-void
.end method

.method static blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V
    .registers 11

    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[BII)V

    return-void
.end method

.method static blacklist encodedLength(ZI)I
    .registers 2

    .line 67
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/4 v0, 0x3

    .line 57
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist encodedLength(Z)I
    .registers 2

    .line 52
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    return-object p0
.end method
