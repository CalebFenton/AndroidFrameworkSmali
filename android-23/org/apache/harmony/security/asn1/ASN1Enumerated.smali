.class public final Lorg/apache/harmony/security/asn1/ASN1Enumerated;
.super Lorg/apache/harmony/security/asn1/ASN1Primitive;
.source "ASN1Enumerated.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Enumerated;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 37
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Enumerated;-><init>()V

    #@5
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    #@7
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Primitive;-><init>(I)V

    #@5
    .line 47
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1Enumerated;
    .locals 1

    #@0
    .prologue
    .line 60
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Enumerated;

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
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readEnumerated()V

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
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

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
    .line 82
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeInteger()V

    #@3
    .line 81
    return-void
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@2
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@4
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@6
    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@8
    add-int/2addr v2, v3

    #@9
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 86
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, [B

    #@4
    array-length v0, v0

    #@5
    iput v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@7
    .line 85
    return-void
.end method
