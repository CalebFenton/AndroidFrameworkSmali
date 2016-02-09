.class public final Lorg/apache/harmony/security/asn1/ASN1Boolean;
.super Lorg/apache/harmony/security/asn1/ASN1Primitive;
.source "ASN1Boolean.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Boolean;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Boolean;-><init>()V

    #@5
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Boolean;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Boolean;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Primitive;-><init>(I)V

    #@4
    .line 46
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;
    .locals 1

    #@0
    .prologue
    .line 59
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Boolean;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Boolean;

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
    .line 63
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readBoolean()V

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
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

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
    .line 85
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeBoolean()V

    #@3
    .line 84
    return-void
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
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
    aget-byte v0, v0, v1

    #@6
    if-nez v0, :cond_0

    #@8
    .line 79
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@a
    return-object v0

    #@b
    .line 81
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@d
    return-object v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 89
    const/4 v0, 0x1

    #@1
    iput v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@3
    .line 88
    return-void
.end method
