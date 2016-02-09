.class public abstract Lorg/apache/harmony/security/asn1/ASN1Constructed;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Constructed.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "tagNumber"    # I

    #@0
    .prologue
    .line 34
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(II)V

    #@4
    .line 33
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0
    .param p1, "tagClass"    # I
    .param p2, "tagNumber"    # I

    #@0
    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(II)V

    #@3
    .line 37
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 1
    .param p1, "identifier"    # I

    #@0
    .prologue
    .line 49
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Constructed;->constrId:I

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
    .line 53
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Constructed;->constrId:I

    #@2
    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    #@5
    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Constructed;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@8
    .line 52
    return-void
.end method
