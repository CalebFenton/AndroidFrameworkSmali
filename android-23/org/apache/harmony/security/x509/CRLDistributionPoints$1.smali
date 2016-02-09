.class final Lorg/apache/harmony/security/x509/CRLDistributionPoints$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "CRLDistributionPoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/CRLDistributionPoints;
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
    .line 103
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
    .line 105
    new-instance v1, Lorg/apache/harmony/security/x509/CRLDistributionPoints;

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
    invoke-direct {v1, v0, v2, v3}, Lorg/apache/harmony/security/x509/CRLDistributionPoints;-><init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/CRLDistributionPoints;)V

    #@e
    return-object v1
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 109
    check-cast v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;

    #@3
    .line 110
    .local v0, "dps":Lorg/apache/harmony/security/x509/CRLDistributionPoints;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->-get0(Lorg/apache/harmony/security/x509/CRLDistributionPoints;)Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    return-object v1
.end method
