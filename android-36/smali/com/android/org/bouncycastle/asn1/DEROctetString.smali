.class public Lcom/android/org/bouncycastle/asn1/DEROctetString;
.super Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
.source "DEROctetString.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    return-void
.end method

.method public constructor greylist-max-r <init>([B)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    return-void
.end method

.method static blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V
    .registers 11

    const/4 v2, 0x4

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[BII)V

    return-void
.end method

.method static blacklist encodedLength(ZI)I
    .registers 2

    .line 69
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/4 v0, 0x4

    .line 49
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

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

    .line 44
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

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
