.class final Lorg/apache/harmony/security/x509/ReasonFlags$1;
.super Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;
.source "ReasonFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/ReasonFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "$anonymous0"    # I

    #@0
    .prologue
    .line 95
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;-><init>(I)V

    #@3
    return-void
.end method


# virtual methods
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
    .line 97
    new-instance v1, Lorg/apache/harmony/security/x509/ReasonFlags;

    #@2
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Z

    #@8
    invoke-direct {v1, v0}, Lorg/apache/harmony/security/x509/ReasonFlags;-><init>([Z)V

    #@b
    return-object v1
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 101
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, Lorg/apache/harmony/security/x509/ReasonFlags;

    #@4
    invoke-static {v0}, Lorg/apache/harmony/security/x509/ReasonFlags;->-get0(Lorg/apache/harmony/security/x509/ReasonFlags;)[Z

    #@7
    move-result-object v0

    #@8
    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@a
    .line 102
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@d
    .line 100
    return-void
.end method
