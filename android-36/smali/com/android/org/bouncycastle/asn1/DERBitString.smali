.class public Lcom/android/org/bouncycastle/asn1/DERBitString;
.super Lcom/android/org/bouncycastle/asn1/ASN1BitString;
.source "DERBitString.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    .line 43
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    return-void
.end method

.method public constructor greylist <init>([B)V
    .registers 3

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    return-void
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 10

    .line 63
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 p0, 0x0

    aget-byte p0, v3, p0

    const/16 v0, 0xff

    and-int/2addr p0, v0

    .line 64
    array-length v1, v3

    add-int/lit8 v5, v1, -0x1

    .line 67
    aget-byte v1, v3, v5

    shl-int p0, v0, p0

    and-int/2addr p0, v1

    int-to-byte v6, p0

    if-ne v1, v6, :cond_18

    const/4 p0, 0x3

    .line 72
    invoke-virtual {p1, p2, p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    return-void

    :cond_18
    const/4 v2, 0x3

    const/4 v4, 0x0

    move-object v0, p1

    move v1, p2

    .line 76
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[BIIB)V

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

    .line 58
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    return-object p0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    return-object p0
.end method
