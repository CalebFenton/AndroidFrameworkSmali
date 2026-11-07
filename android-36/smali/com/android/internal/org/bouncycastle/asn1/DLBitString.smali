.class public Lcom/android/internal/org/bouncycastle/asn1/DLBitString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
.source "DLBitString.java"


# direct methods
.method public constructor blacklist <init>(BI)V
    .registers 3
    .param p1, "data"    # B
    .param p2, "padBits"    # I

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>(BI)V

    .line 21
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "value"    # I

    .line 31
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->getPadBits(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 32
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

    .line 37
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;-><init>([BI)V

    .line 16
    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 26
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3
    .param p1, "contents"    # [B
    .param p2, "check"    # Z

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    .line 43
    return-void
.end method

.method static blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;ZB[BII)V
    .registers 13
    .param p0, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p1, "withTag"    # Z
    .param p2, "pad"    # B
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .end local p0    # "out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .end local p1    # "withTag":Z
    .end local p2    # "pad":B
    .end local p3    # "buf":[B
    .end local p4    # "off":I
    .end local p5    # "len":I
    .local v0, "out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .local v1, "withTag":Z
    .local v3, "pad":B
    .local v4, "buf":[B
    .local v5, "off":I
    .local v6, "len":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZIB[BII)V

    .line 79
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

    .line 72
    const/4 v2, 0x3

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

    .line 73
    return-void
.end method

.method static blacklist encodedLength(ZI)I
    .registers 3
    .param p0, "withTag"    # Z
    .param p1, "contentsLength"    # I

    .line 67
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

    .line 57
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->contents:[B

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    .line 58
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 3
    .param p1, "withTag"    # Z

    .line 52
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 62
    return-object p0
.end method
