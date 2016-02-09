.class final Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "PKIStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
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
    .line 94
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 99
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;->setOptional(I)V

    #@7
    .line 100
    const/4 v0, 0x2

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;->setOptional(I)V

    #@b
    .line 97
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    .line 120
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@3
    check-cast v3, [Ljava/lang/Object;

    #@5
    .line 122
    .local v3, "values":[Ljava/lang/Object;
    const/4 v1, -0x1

    #@6
    .line 123
    .local v1, "failInfoValue":I
    aget-object v4, v3, v5

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 124
    aget-object v4, v3, v5

    #@c
    check-cast v4, Lorg/apache/harmony/security/asn1/BitString;

    #@e
    invoke-virtual {v4}, Lorg/apache/harmony/security/asn1/BitString;->toBooleanArray()[Z

    #@11
    move-result-object v0

    #@12
    .line 125
    .local v0, "failInfoBoolArray":[Z
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    :goto_0
    array-length v4, v0

    #@14
    if-ge v2, v4, :cond_0

    #@16
    .line 126
    aget-boolean v4, v0, v2

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 127
    move v1, v2

    #@1b
    .line 132
    .end local v0    # "failInfoBoolArray":[Z
    .end local v2    # "i":I
    :cond_0
    new-instance v5, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    #@1d
    .line 133
    const/4 v4, 0x0

    #@1e
    aget-object v4, v3, v4

    #@20
    invoke-static {v4}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    #@23
    move-result v4

    #@24
    invoke-static {v4}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->getInstance(I)Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@27
    move-result-object v6

    #@28
    .line 134
    const/4 v4, 0x1

    #@29
    aget-object v4, v3, v4

    #@2b
    check-cast v4, Ljava/util/List;

    #@2d
    .line 135
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->getInstance(I)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@30
    move-result-object v7

    #@31
    .line 132
    invoke-direct {v5, v6, v4, v7}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;-><init>(Lorg/apache/harmony/security/x509/tsp/PKIStatus;Ljava/util/List;Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;)V

    #@34
    return-object v5

    #@35
    .line 125
    .restart local v0    # "failInfoBoolArray":[Z
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    move-object v1, p1

    #@4
    .line 104
    check-cast v1, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    #@6
    .line 105
    .local v1, "psi":Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->-get1(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->getStatus()I

    #@d
    move-result v2

    #@e
    int-to-long v2, v2

    #@f
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    #@16
    move-result-object v2

    #@17
    const/4 v3, 0x0

    #@18
    aput-object v2, p2, v3

    #@1a
    .line 107
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->-get2(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Ljava/util/List;

    #@1d
    move-result-object v2

    #@1e
    aput-object v2, p2, v4

    #@20
    .line 108
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->-get0(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@23
    move-result-object v2

    #@24
    if-eqz v2, :cond_0

    #@26
    .line 110
    invoke-static {}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->getMaxValue()I

    #@29
    move-result v2

    #@2a
    new-array v0, v2, [Z

    #@2c
    .line 112
    .local v0, "failInfoBoolArray":[Z
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->-get0(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->getValue()I

    #@33
    move-result v2

    #@34
    aput-boolean v4, v0, v2

    #@36
    .line 113
    new-instance v2, Lorg/apache/harmony/security/asn1/BitString;

    #@38
    invoke-direct {v2, v0}, Lorg/apache/harmony/security/asn1/BitString;-><init>([Z)V

    #@3b
    aput-object v2, p2, v5

    #@3d
    .line 103
    .end local v0    # "failInfoBoolArray":[Z
    :goto_0
    return-void

    #@3e
    .line 115
    :cond_0
    aput-object v6, p2, v5

    #@40
    goto :goto_0
.end method
