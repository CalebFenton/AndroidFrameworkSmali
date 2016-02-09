.class public final Lorg/apache/harmony/security/asn1/DerInputStream;
.super Lorg/apache/harmony/security/asn1/BerInputStream;
.source "DerInputStream.java"


# static fields
.field private static final UNUSED_BITS_MASK:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [B

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Lorg/apache/harmony/security/asn1/DerInputStream;->UNUSED_BITS_MASK:[B

    #@8
    .line 33
    return-void

    #@9
    .line 36
    nop

    #@a
    :array_0
    .array-data 1
        0x1t
        0x3t
        0x7t
        0xft
        0x1ft
        0x3ft
        0x7ft
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 47
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([BII)V

    #@5
    .line 39
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .param p1, "encoded"    # [B
    .param p2, "offset"    # I
    .param p3, "encodingLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([BII)V

    #@3
    .line 43
    return-void
.end method


# virtual methods
.method public next()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    #@3
    move-result v0

    #@4
    .line 54
    .local v0, "tag":I
    iget v1, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->length:I

    #@6
    const/4 v2, -0x1

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 55
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@b
    const-string/jumbo v2, "DER: only definite length encoding MUST be used"

    #@e
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 60
    :cond_0
    return v0
.end method

.method public readBitString()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    #@2
    const/16 v1, 0x23

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 65
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "ASN.1 bitstring: constructed identifier at ["

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 66
    const-string/jumbo v2, "]. Not valid for DER."

    #@1d
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 69
    :cond_0
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readBitString()V

    #@2c
    .line 72
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->length:I

    #@2e
    const/4 v1, 0x1

    #@2f
    if-le v0, v1, :cond_1

    #@31
    .line 73
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->buffer:[B

    #@33
    iget v1, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    #@35
    aget-byte v0, v0, v1

    #@37
    if-eqz v0, :cond_1

    #@39
    .line 74
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->buffer:[B

    #@3b
    iget v1, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->offset:I

    #@3d
    add-int/lit8 v1, v1, -0x1

    #@3f
    aget-byte v0, v0, v1

    #@41
    sget-object v1, Lorg/apache/harmony/security/asn1/DerInputStream;->UNUSED_BITS_MASK:[B

    #@43
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->buffer:[B

    #@45
    iget v3, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    #@47
    aget-byte v2, v2, v3

    #@49
    add-int/lit8 v2, v2, -0x1

    #@4b
    aget-byte v1, v1, v2

    #@4d
    and-int/2addr v0, v1

    #@4e
    if-eqz v0, :cond_1

    #@50
    .line 75
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@52
    new-instance v1, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v2, "ASN.1 bitstring: wrong content at ["

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    .line 76
    const-string/jumbo v2, "]. DER requires zero unused bits in final octet."

    #@67
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@72
    throw v0

    #@73
    .line 63
    :cond_1
    return-void
.end method

.method public readBoolean()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readBoolean()V

    #@3
    .line 84
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->buffer:[B

    #@5
    iget v1, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    #@7
    aget-byte v0, v0, v1

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->buffer:[B

    #@d
    iget v1, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    #@f
    aget-byte v0, v0, v1

    #@11
    const/4 v1, -0x1

    #@12
    if-eq v0, v1, :cond_0

    #@14
    .line 85
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "ASN.1 boolean: wrong content at ["

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 86
    const-string/jumbo v2, "]. DER allows only 0x00 or 0xFF values"

    #@2b
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    .line 80
    :cond_0
    return-void
.end method

.method public readGeneralizedTime()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    #@2
    const/16 v1, 0x38

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 145
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "ASN.1 GeneralizedTime: constructed identifier at ["

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 146
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    #@16
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 146
    const-string/jumbo v2, "]. Not valid for DER."

    #@1d
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 149
    :cond_0
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readGeneralizedTime()V

    #@2c
    .line 142
    return-void
.end method

.method public readOctetString()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    #@2
    const/16 v1, 0x24

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 92
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "ASN.1 octetstring: constructed identifier at ["

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 93
    const-string/jumbo v2, "]. Not valid for DER."

    #@1d
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 95
    :cond_0
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readOctetString()V

    #@2c
    .line 90
    return-void
.end method

.method public readSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V

    #@3
    .line 98
    return-void
.end method

.method public readSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 0
    .param p1, "setOf"    # Lorg/apache/harmony/security/asn1/ASN1SetOf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V

    #@3
    .line 108
    return-void
.end method

.method public readString(Lorg/apache/harmony/security/asn1/ASN1StringType;)V
    .locals 3
    .param p1, "type"    # Lorg/apache/harmony/security/asn1/ASN1StringType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    #@2
    iget v1, p1, Lorg/apache/harmony/security/asn1/ASN1StringType;->constrId:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 120
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "ASN.1 string: constructed identifier at ["

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 121
    const-string/jumbo v2, "]. Not valid for DER."

    #@1d
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 123
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readString(Lorg/apache/harmony/security/asn1/ASN1StringType;)V

    #@2c
    .line 118
    return-void
.end method

.method public readUTCTime()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    #@2
    const/16 v1, 0x37

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 129
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "ASN.1 UTCTime: constructed identifier at ["

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 130
    const-string/jumbo v2, "]. Not valid for DER."

    #@1d
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 134
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->length:I

    #@2b
    const/16 v1, 0xd

    #@2d
    if-eq v0, v1, :cond_1

    #@2f
    .line 135
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@31
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v2, "ASN.1 UTCTime: wrong format for DER, identifier at ["

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 136
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    #@3f
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 136
    const-string/jumbo v2, "]"

    #@46
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@51
    throw v0

    #@52
    .line 139
    :cond_1
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readUTCTime()V

    #@55
    .line 126
    return-void
.end method
