.class public abstract Lorg/apache/harmony/security/asn1/ASN1Primitive;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Primitive.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "tagNumber"    # I

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    #@3
    .line 33
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 1
    .param p1, "identifier"    # I

    #@0
    .prologue
    .line 45
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Primitive;->id:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 49
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Primitive;->id:I

    #@2
    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    #@5
    .line 50
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Primitive;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@8
    .line 48
    return-void
.end method
