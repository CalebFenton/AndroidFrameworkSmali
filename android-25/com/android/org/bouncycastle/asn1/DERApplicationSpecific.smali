.class public Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;
.super Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;
.source "DERApplicationSpecific.java"


# direct methods
.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "object"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4
    .line 43
    return-void
.end method

.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 2
    .param p1, "tagNo"    # I
    .param p2, "vec"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@0
    .prologue
    .line 90
    invoke-static {p2}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getEncodedVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)[B

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, v1, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(ZI[B)V

    #@8
    .line 88
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "octets"    # [B

    #@0
    .prologue
    .line 31
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    #@4
    .line 29
    return-void
.end method

.method public constructor <init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "constructed"    # Z
    .param p2, "tag"    # I
    .param p3, "object"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    if-nez p1, :cond_0

    #@2
    invoke-interface {p3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    #@9
    move-result v0

    #@a
    :goto_0
    invoke-static {p1, p3}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getEncoding(ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    #@d
    move-result-object v1

    #@e
    invoke-direct {p0, v0, p2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(ZI[B)V

    #@11
    .line 59
    return-void

    #@12
    .line 61
    :cond_0
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method constructor <init>(ZI[B)V
    .locals 0
    .param p1, "isConstructed"    # Z
    .param p2, "tag"    # I
    .param p3, "octets"    # [B

    #@0
    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(ZI[B)V

    #@3
    .line 15
    return-void
.end method

.method private static getEncodedVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)[B
    .locals 6
    .param p0, "vec"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@0
    .prologue
    .line 95
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 97
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    #@9
    move-result v3

    #@a
    if-eq v2, v3, :cond_0

    #@c
    .line 101
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Object;

    #@12
    const-string/jumbo v4, "DER"

    #@15
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 97
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 104
    :catch_0
    move-exception v1

    #@20
    .line 105
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "malformed object: "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@39
    throw v3

    #@3a
    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@3d
    move-result-object v3

    #@3e
    return-object v3
.end method

.method private static getEncoding(ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 5
    .param p0, "explicit"    # Z
    .param p1, "object"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v3

    #@4
    const-string/jumbo v4, "DER"

    #@7
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    #@a
    move-result-object v0

    #@b
    .line 69
    .local v0, "data":[B
    if-eqz p0, :cond_0

    #@d
    .line 71
    return-object v0

    #@e
    .line 75
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getLengthOfHeader([B)I

    #@11
    move-result v1

    #@12
    .line 76
    .local v1, "lenBytes":I
    array-length v3, v0

    #@13
    sub-int/2addr v3, v1

    #@14
    new-array v2, v3, [B

    #@16
    .line 77
    .local v2, "tmp":[B
    array-length v3, v2

    #@17
    const/4 v4, 0x0

    #@18
    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1b
    .line 78
    return-object v2
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 3
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    const/16 v0, 0x40

    #@2
    .line 117
    .local v0, "classBits":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 119
    const/16 v0, 0x60

    #@8
    .line 122
    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    #@a
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    #@c
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    #@f
    .line 114
    return-void
.end method
