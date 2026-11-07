.class public Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
.source "DERBitString.java"


# direct methods
.method public constructor blacklist <init>(BI)V
    .registers 3
    .param p1, "data"    # B
    .param p2, "padBits"    # I

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>(BI)V

    .line 26
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "value"    # I

    .line 36
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getPadBits(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 21
    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 31
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3
    .param p1, "contents"    # [B
    .param p2, "check"    # Z

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    .line 48
    return-void
.end method

.method public static blacklist convert(Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .registers 2
    .param p0, "bitString"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 15
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method static blacklist fromOctetString(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .registers 4
    .param p0, "octetString"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 91
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BZ)V

    return-object v0
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 14
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 63
    .local v0, "padBits":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->contents:[B

    array-length v2, v2

    .line 64
    .local v2, "length":I
    add-int/lit8 v8, v2, -0x1

    .line 66
    .local v8, "last":I
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->contents:[B

    aget-byte v10, v3, v8

    .line 67
    .local v10, "lastOctet":B
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->contents:[B

    aget-byte v3, v3, v8

    shl-int/2addr v1, v0

    and-int/2addr v1, v3

    int-to-byte v9, v1

    .line 69
    .local v9, "lastOctetDER":B
    if-ne v10, v9, :cond_23

    .line 71
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->contents:[B

    invoke-virtual {p1, p2, v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    move-object v3, p1

    move v4, p2

    goto :goto_2c

    .line 75
    :cond_23
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->contents:[B

    const/4 v7, 0x0

    const/4 v5, 0x3

    move-object v3, p1

    move v4, p2

    .end local p1    # "out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .end local p2    # "withTag":Z
    .local v3, "out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .local v4, "withTag":Z
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[BIIB)V

    .line 77
    :goto_2c
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 3
    .param p1, "withTag"    # Z

    .line 57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 81
    return-object p0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 86
    return-object p0
.end method
