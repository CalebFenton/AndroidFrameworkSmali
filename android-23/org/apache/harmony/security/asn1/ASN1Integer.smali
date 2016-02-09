.class public final Lorg/apache/harmony/security/asn1/ASN1Integer;
.super Lorg/apache/harmony/security/asn1/ASN1Primitive;
.source "ASN1Integer.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Integer;-><init>()V

    #@5
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Integer;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Primitive;-><init>(I)V

    #@4
    .line 46
    return-void
.end method

.method public static fromIntValue(I)Ljava/lang/Object;
    .locals 2
    .param p0, "value"    # I

    #@0
    .prologue
    .line 120
    int-to-long v0, p0

    #@1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 59
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Integer;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public static toBigIntegerValue(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "decoded"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 110
    new-instance v0, Ljava/math/BigInteger;

    #@2
    check-cast p0, [B

    #@4
    .end local p0    # "decoded":Ljava/lang/Object;
    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    #@7
    return-object v0
.end method

.method public static toIntValue(Ljava/lang/Object;)I
    .locals 1
    .param p0, "decoded"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 100
    new-instance v0, Ljava/math/BigInteger;

    #@2
    check-cast p0, [B

    #@4
    .end local p0    # "decoded":Ljava/lang/Object;
    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    #@7
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    #@a
    move-result v0

    #@b
    return v0
.end method


# virtual methods
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
    .line 63
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readInteger()V

    #@3
    .line 65
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 66
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 84
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeInteger()V

    #@3
    .line 83
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
    .line 77
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@2
    new-array v0, v1, [B

    #@4
    .line 78
    .local v0, "bytesEncoded":[B
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@6
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@8
    .line 79
    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@a
    .line 78
    const/4 v4, 0x0

    #@b
    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 80
    return-object v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 88
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, [B

    #@4
    array-length v0, v0

    #@5
    iput v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@7
    .line 87
    return-void
.end method
