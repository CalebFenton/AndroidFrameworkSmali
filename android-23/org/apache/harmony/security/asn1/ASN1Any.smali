.class public final Lorg/apache/harmony/security/asn1/ASN1Any;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Any.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Any;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Any;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Any;-><init>()V

    #@5
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Any;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Any;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    #@4
    .line 46
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;
    .locals 1

    #@0
    .prologue
    .line 59
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Any;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Any;

    #@2
    return-object v0
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 1
    .param p1, "identifier"    # I

    #@0
    .prologue
    .line 69
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    #@3
    .line 76
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 77
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Any;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 97
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeANY()V

    #@3
    .line 96
    return-void
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 101
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeANY()V

    #@3
    .line 100
    return-void
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@2
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@4
    sub-int/2addr v1, v2

    #@5
    new-array v0, v1, [B

    #@7
    .line 91
    .local v0, "bytesEncoded":[B
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@9
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@b
    .line 92
    array-length v3, v0

    #@c
    .line 91
    const/4 v4, 0x0

    #@d
    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@10
    .line 93
    return-object v0
.end method

.method public getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 109
    iget v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@2
    return v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 105
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, [B

    #@4
    array-length v0, v0

    #@5
    iput v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@7
    .line 104
    return-void
.end method
