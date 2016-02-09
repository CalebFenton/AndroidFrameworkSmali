.class public abstract Lorg/apache/harmony/security/asn1/ASN1StringType;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1StringType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/asn1/ASN1StringType$ASN1StringUTF8Type;,
        Lorg/apache/harmony/security/asn1/ASN1StringType$1;,
        Lorg/apache/harmony/security/asn1/ASN1StringType$2;,
        Lorg/apache/harmony/security/asn1/ASN1StringType$3;,
        Lorg/apache/harmony/security/asn1/ASN1StringType$4;,
        Lorg/apache/harmony/security/asn1/ASN1StringType$5;,
        Lorg/apache/harmony/security/asn1/ASN1StringType$6;,
        Lorg/apache/harmony/security/asn1/ASN1StringType$7;
    }
.end annotation


# static fields
.field public static final BMPSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final TELETEXSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final UNIVERSALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 55
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$1;

    #@2
    const/16 v1, 0x1e

    #@4
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$1;-><init>(I)V

    #@7
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->BMPSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@9
    .line 57
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$2;

    #@b
    const/16 v1, 0x16

    #@d
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$2;-><init>(I)V

    #@10
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@12
    .line 59
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$3;

    #@14
    const/16 v1, 0x1b

    #@16
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$3;-><init>(I)V

    #@19
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@1b
    .line 61
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$4;

    #@1d
    const/16 v1, 0x13

    #@1f
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$4;-><init>(I)V

    #@22
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@24
    .line 63
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$5;

    #@26
    const/16 v1, 0x14

    #@28
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$5;-><init>(I)V

    #@2b
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->TELETEXSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@2d
    .line 65
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$6;

    #@2f
    const/16 v1, 0x1c

    #@31
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$6;-><init>(I)V

    #@34
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->UNIVERSALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@36
    .line 67
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$7;

    #@38
    const/16 v1, 0xc

    #@3a
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$7;-><init>(I)V

    #@3d
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@3f
    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "tagNumber"    # I

    #@0
    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    #@3
    .line 69
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 2
    .param p1, "identifier"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 81
    iget v1, p0, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    #@3
    if-eq v1, p1, :cond_0

    #@5
    iget v1, p0, Lorg/apache/harmony/security/asn1/ASN1StringType;->constrId:I

    #@7
    if-ne v1, p1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
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
    .line 85
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readString(Lorg/apache/harmony/security/asn1/ASN1StringType;)V

    #@3
    .line 87
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 88
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1StringType;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 103
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    #@2
    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    #@5
    .line 104
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@8
    .line 102
    return-void
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 108
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeString()V

    #@3
    .line 107
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
    .line 99
    new-instance v0, Ljava/lang/String;

    #@2
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@4
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@6
    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@8
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@a
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@d
    return-object v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 112
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v1, Ljava/lang/String;

    #@4
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@6
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@9
    move-result-object v0

    #@a
    .line 113
    .local v0, "bytes":[B
    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@c
    .line 114
    array-length v1, v0

    #@d
    iput v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@f
    .line 111
    return-void
.end method
