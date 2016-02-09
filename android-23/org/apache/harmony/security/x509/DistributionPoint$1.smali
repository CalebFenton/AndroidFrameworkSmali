.class final Lorg/apache/harmony/security/x509/DistributionPoint$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "DistributionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/DistributionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 105
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 111
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/DistributionPoint$1;->setOptional(I)V

    #@7
    .line 112
    const/4 v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/DistributionPoint$1;->setOptional(I)V

    #@b
    .line 113
    const/4 v0, 0x2

    #@c
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/DistributionPoint$1;->setOptional(I)V

    #@f
    .line 109
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, [Ljava/lang/Object;

    #@4
    .line 118
    .local v0, "values":[Ljava/lang/Object;
    new-instance v4, Lorg/apache/harmony/security/x509/DistributionPoint;

    #@6
    const/4 v1, 0x0

    #@7
    aget-object v1, v0, v1

    #@9
    check-cast v1, Lorg/apache/harmony/security/x509/DistributionPointName;

    #@b
    .line 119
    const/4 v2, 0x1

    #@c
    aget-object v2, v0, v2

    #@e
    check-cast v2, Lorg/apache/harmony/security/x509/ReasonFlags;

    #@10
    const/4 v3, 0x2

    #@11
    aget-object v3, v0, v3

    #@13
    check-cast v3, Lorg/apache/harmony/security/x509/GeneralNames;

    #@15
    .line 118
    invoke-direct {v4, v1, v2, v3}, Lorg/apache/harmony/security/x509/DistributionPoint;-><init>(Lorg/apache/harmony/security/x509/DistributionPointName;Lorg/apache/harmony/security/x509/ReasonFlags;Lorg/apache/harmony/security/x509/GeneralNames;)V

    #@18
    return-object v4
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 123
    check-cast v0, Lorg/apache/harmony/security/x509/DistributionPoint;

    #@3
    .line 124
    .local v0, "dp":Lorg/apache/harmony/security/x509/DistributionPoint;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPoint;->-get1(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/DistributionPointName;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, p2, v2

    #@a
    .line 125
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPoint;->-get2(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/ReasonFlags;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, p2, v2

    #@11
    .line 126
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPoint;->-get0(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/GeneralNames;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, p2, v2

    #@18
    .line 122
    return-void
.end method
