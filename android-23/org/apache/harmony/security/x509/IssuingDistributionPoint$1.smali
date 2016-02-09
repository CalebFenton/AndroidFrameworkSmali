.class final Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "IssuingDistributionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 127
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 138
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setOptional(I)V

    #@7
    .line 139
    const/4 v0, 0x3

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setOptional(I)V

    #@b
    .line 140
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    #@11
    .line 141
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@13
    const/4 v1, 0x2

    #@14
    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    #@17
    .line 142
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@19
    const/4 v1, 0x4

    #@1a
    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    #@1d
    .line 143
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@1f
    const/4 v1, 0x5

    #@20
    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    #@23
    .line 136
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    const/4 v7, 0x5

    #@1
    const/4 v6, 0x4

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    .line 147
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@6
    check-cast v1, [Ljava/lang/Object;

    #@8
    .line 148
    .local v1, "values":[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    #@a
    .line 149
    const/4 v2, 0x0

    #@b
    aget-object v2, v1, v2

    #@d
    check-cast v2, Lorg/apache/harmony/security/x509/DistributionPointName;

    #@f
    const/4 v3, 0x3

    #@10
    aget-object v3, v1, v3

    #@12
    check-cast v3, Lorg/apache/harmony/security/x509/ReasonFlags;

    #@14
    .line 148
    invoke-direct {v0, v2, v3}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;-><init>(Lorg/apache/harmony/security/x509/DistributionPointName;Lorg/apache/harmony/security/x509/ReasonFlags;)V

    #@17
    .line 150
    .local v0, "idp":Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@1a
    move-result-object v2

    #@1b
    iput-object v2, v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->encoding:[B

    #@1d
    .line 151
    aget-object v2, v1, v4

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 152
    aget-object v2, v1, v4

    #@23
    check-cast v2, Ljava/lang/Boolean;

    #@25
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@28
    move-result v2

    #@29
    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setOnlyContainsUserCerts(Z)V

    #@2c
    .line 154
    :cond_0
    aget-object v2, v1, v5

    #@2e
    if-eqz v2, :cond_1

    #@30
    .line 155
    aget-object v2, v1, v5

    #@32
    check-cast v2, Ljava/lang/Boolean;

    #@34
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@37
    move-result v2

    #@38
    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setOnlyContainsCACerts(Z)V

    #@3b
    .line 157
    :cond_1
    aget-object v2, v1, v6

    #@3d
    if-eqz v2, :cond_2

    #@3f
    .line 158
    aget-object v2, v1, v6

    #@41
    check-cast v2, Ljava/lang/Boolean;

    #@43
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@46
    move-result v2

    #@47
    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setIndirectCRL(Z)V

    #@4a
    .line 160
    :cond_2
    aget-object v2, v1, v7

    #@4c
    if-eqz v2, :cond_3

    #@4e
    .line 161
    aget-object v2, v1, v7

    #@50
    check-cast v2, Ljava/lang/Boolean;

    #@52
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@55
    move-result v2

    #@56
    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setOnlyContainsAttributeCerts(Z)V

    #@59
    .line 163
    :cond_3
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    move-object v0, p1

    #@2
    .line 167
    check-cast v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    #@4
    .line 168
    .local v0, "idp":Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->-get0(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/DistributionPointName;

    #@7
    move-result-object v1

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v1, p2, v3

    #@b
    .line 169
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->-get4(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@13
    :goto_0
    const/4 v3, 0x1

    #@14
    aput-object v1, p2, v3

    #@16
    .line 170
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->-get3(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_2

    #@1c
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@1e
    :goto_1
    const/4 v3, 0x2

    #@1f
    aput-object v1, p2, v3

    #@21
    .line 171
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->-get5(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/ReasonFlags;

    #@24
    move-result-object v1

    #@25
    const/4 v3, 0x3

    #@26
    aput-object v1, p2, v3

    #@28
    .line 172
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->-get1(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_3

    #@2e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@30
    :goto_2
    const/4 v3, 0x4

    #@31
    aput-object v1, p2, v3

    #@33
    .line 173
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->-get2(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_0

    #@39
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@3b
    :cond_0
    const/4 v1, 0x5

    #@3c
    aput-object v2, p2, v1

    #@3e
    .line 166
    return-void

    #@3f
    :cond_1
    move-object v1, v2

    #@40
    .line 169
    goto :goto_0

    #@41
    :cond_2
    move-object v1, v2

    #@42
    .line 170
    goto :goto_1

    #@43
    :cond_3
    move-object v1, v2

    #@44
    .line 172
    goto :goto_2
.end method
