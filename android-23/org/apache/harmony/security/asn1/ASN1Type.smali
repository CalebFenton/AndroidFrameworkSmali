.class public abstract Lorg/apache/harmony/security/asn1/ASN1Type;
.super Ljava/lang/Object;
.source "ASN1Type.java"

# interfaces
.implements Lorg/apache/harmony/security/asn1/ASN1Constants;


# instance fields
.field public final constrId:I

.field public final id:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "tagNumber"    # I

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(II)V

    #@4
    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "tagClass"    # I
    .param p2, "tagNumber"    # I

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    if-gez p2, :cond_0

    #@5
    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "tagNumber < 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 65
    :cond_0
    if-eqz p1, :cond_1

    #@10
    const/16 v0, 0x40

    #@12
    if-eq p1, v0, :cond_1

    #@14
    .line 66
    const/16 v0, 0x80

    #@16
    if-eq p1, v0, :cond_1

    #@18
    .line 67
    const/16 v0, 0xc0

    #@1a
    if-eq p1, v0, :cond_1

    #@1c
    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v1, "invalid tagClass"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 71
    :cond_1
    const/16 v0, 0x1f

    #@27
    if-ge p2, v0, :cond_2

    #@29
    .line 73
    add-int v0, p1, p2

    #@2b
    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    #@2d
    .line 78
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    #@2f
    add-int/lit8 v0, v0, 0x20

    #@31
    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    #@33
    .line 60
    return-void

    #@34
    .line 76
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@36
    const-string/jumbo v1, "tag long form not implemented"

    #@39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0
.end method


# virtual methods
.method public abstract checkTag(I)Z
.end method

.method public final decode(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    #@2
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public abstract decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final decode([B)Ljava/lang/Object;
    .locals 1
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    #@2
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    #@5
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final decode([BII)Ljava/lang/Object;
    .locals 1
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
    .line 87
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([BII)V

    #@5
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final encode(Ljava/lang/Object;)[B
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 107
    new-instance v0, Lorg/apache/harmony/security/asn1/DerOutputStream;

    #@2
    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;Ljava/lang/Object;)V

    #@5
    .line 108
    .local v0, "out":Lorg/apache/harmony/security/asn1/DerOutputStream;
    iget-object v1, v0, Lorg/apache/harmony/security/asn1/DerOutputStream;->encoded:[B

    #@7
    return-object v1
.end method

.method public abstract encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
.end method

.method public abstract encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
.end method

.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I
    .locals 4
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 153
    const/4 v1, 0x2

    #@1
    .line 154
    .local v1, "len":I
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@3
    const/16 v3, 0x7f

    #@5
    if-le v2, v3, :cond_0

    #@7
    .line 156
    add-int/lit8 v1, v1, 0x1

    #@9
    .line 157
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@b
    shr-int/lit8 v0, v2, 0x8

    #@d
    .local v0, "cur":I
    :goto_0
    if-lez v0, :cond_0

    #@f
    .line 158
    shr-int/lit8 v0, v0, 0x8

    #@11
    .line 157
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 161
    .end local v0    # "cur":I
    :cond_0
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@16
    add-int/2addr v1, v2

    #@17
    .line 163
    return v1
.end method

.method public abstract setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "(tag: 0x"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget v1, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    #@1a
    and-int/lit16 v1, v1, 0xff

    #@1c
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    const-string/jumbo v1, ")"

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method

.method public final verify(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    #@2
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    .line 102
    .local v0, "decoder":Lorg/apache/harmony/security/asn1/DerInputStream;
    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/DerInputStream;->setVerify()V

    #@8
    .line 103
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@b
    .line 100
    return-void
.end method

.method public final verify([B)V
    .locals 1
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    #@2
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    #@5
    .line 96
    .local v0, "decoder":Lorg/apache/harmony/security/asn1/DerInputStream;
    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/DerInputStream;->setVerify()V

    #@8
    .line 97
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@b
    .line 94
    return-void
.end method
