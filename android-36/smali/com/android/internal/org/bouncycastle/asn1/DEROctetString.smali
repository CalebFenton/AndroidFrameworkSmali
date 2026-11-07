.class public Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
.source "DEROctetString.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 34
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 2
    .param p1, "string"    # [B

    .line 21
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 22
    return-void
.end method

.method static blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V
    .registers 11
    .param p0, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p1, "withTag"    # Z
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const/4 v2, 0x4

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p0    # "out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .end local p1    # "withTag":Z
    .end local p2    # "buf":[B
    .end local p3    # "off":I
    .end local p4    # "len":I
    .local v0, "out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .local v1, "withTag":Z
    .local v3, "buf":[B
    .local v4, "off":I
    .local v5, "len":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[BII)V

    .line 64
    return-void
.end method

.method static blacklist encodedLength(ZI)I
    .registers 3
    .param p0, "withTag"    # Z
    .param p1, "contentsLength"    # I

    .line 68
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
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

    .line 48
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->string:[B

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    .line 49
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 3
    .param p1, "withTag"    # Z

    .line 43
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->string:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 53
    return-object p0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 58
    return-object p0
.end method
