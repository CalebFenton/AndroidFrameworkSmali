.class public Lorg/apache/harmony/security/asn1/ASN1BitString;
.super Lorg/apache/harmony/security/asn1/ASN1StringType;
.source "ASN1BitString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;
    }
.end annotation


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1BitString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1BitString;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1BitString;-><init>()V

    #@5
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1BitString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1BitString;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1StringType;-><init>(I)V

    #@4
    .line 46
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;
    .locals 1

    #@0
    .prologue
    .line 60
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1BitString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1BitString;

    #@2
    return-object v0
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
    .line 64
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readBitString()V

    #@3
    .line 66
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 67
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

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
    .line 86
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeBitString()V

    #@3
    .line 85
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
    .line 79
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@2
    add-int/lit8 v1, v1, -0x1

    #@4
    new-array v0, v1, [B

    #@6
    .line 80
    .local v0, "bytes":[B
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@8
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@a
    add-int/lit8 v2, v2, 0x1

    #@c
    .line 81
    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@e
    add-int/lit8 v3, v3, -0x1

    #@10
    .line 80
    const/4 v4, 0x0

    #@11
    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14
    .line 82
    new-instance v1, Lorg/apache/harmony/security/asn1/BitString;

    #@16
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@18
    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@1a
    aget-byte v2, v2, v3

    #@1c
    invoke-direct {v1, v0, v2}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    #@1f
    return-object v1
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 90
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, Lorg/apache/harmony/security/asn1/BitString;

    #@4
    iget-object v0, v0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    #@6
    array-length v0, v0

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iput v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@b
    .line 89
    return-void
.end method
