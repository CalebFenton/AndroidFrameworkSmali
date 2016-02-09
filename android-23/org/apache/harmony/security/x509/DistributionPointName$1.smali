.class final Lorg/apache/harmony/security/x509/DistributionPointName$1;
.super Lorg/apache/harmony/security/asn1/ASN1Choice;
.source "DistributionPointName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/DistributionPointName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 97
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 99
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    const/4 v0, 0x0

    #@1
    .line 108
    .local v0, "result":Lorg/apache/harmony/security/x509/DistributionPointName;
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    #@3
    if-nez v1, :cond_0

    #@5
    .line 109
    new-instance v0, Lorg/apache/harmony/security/x509/DistributionPointName;

    #@7
    .end local v0    # "result":Lorg/apache/harmony/security/x509/DistributionPointName;
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@9
    check-cast v1, Lorg/apache/harmony/security/x509/GeneralNames;

    #@b
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/DistributionPointName;-><init>(Lorg/apache/harmony/security/x509/GeneralNames;)V

    #@e
    .line 115
    .local v0, "result":Lorg/apache/harmony/security/x509/DistributionPointName;
    :goto_0
    return-object v0

    #@f
    .line 113
    .local v0, "result":Lorg/apache/harmony/security/x509/DistributionPointName;
    :cond_0
    new-instance v0, Lorg/apache/harmony/security/x509/DistributionPointName;

    #@11
    .end local v0    # "result":Lorg/apache/harmony/security/x509/DistributionPointName;
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@13
    check-cast v1, Lorg/apache/harmony/security/x501/Name;

    #@15
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/DistributionPointName;-><init>(Lorg/apache/harmony/security/x501/Name;)V

    #@18
    .local v0, "result":Lorg/apache/harmony/security/x509/DistributionPointName;
    goto :goto_0
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 102
    check-cast v0, Lorg/apache/harmony/security/x509/DistributionPointName;

    #@3
    .line 103
    .local v0, "dpn":Lorg/apache/harmony/security/x509/DistributionPointName;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPointName;->-get0(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x509/GeneralNames;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method public getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 119
    check-cast v0, Lorg/apache/harmony/security/x509/DistributionPointName;

    #@3
    .line 120
    .local v0, "dpn":Lorg/apache/harmony/security/x509/DistributionPointName;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPointName;->-get0(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x509/GeneralNames;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 121
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPointName;->-get1(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x501/Name;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 123
    :cond_0
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPointName;->-get0(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x509/GeneralNames;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method
