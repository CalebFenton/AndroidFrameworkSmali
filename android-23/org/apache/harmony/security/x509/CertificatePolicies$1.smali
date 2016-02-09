.class final Lorg/apache/harmony/security/x509/CertificatePolicies$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "CertificatePolicies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/CertificatePolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .param p1, "$anonymous0"    # Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 107
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    .line 109
    new-instance v1, Lorg/apache/harmony/security/x509/CertificatePolicies;

    #@2
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@4
    check-cast v0, Ljava/util/List;

    #@6
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    invoke-direct {v1, v0, v2, v3}, Lorg/apache/harmony/security/x509/CertificatePolicies;-><init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/CertificatePolicies;)V

    #@e
    return-object v1
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 113
    check-cast v0, Lorg/apache/harmony/security/x509/CertificatePolicies;

    #@3
    .line 114
    .local v0, "cps":Lorg/apache/harmony/security/x509/CertificatePolicies;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/CertificatePolicies;->-get0(Lorg/apache/harmony/security/x509/CertificatePolicies;)Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    return-object v1
.end method
