.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;
.super Ljava/lang/Object;
.source "ECUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getDomainParametersFromGenSpec(Ljava/security/spec/ECGenParameterSpec;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1
    .param p0, "genSpec"    # Ljava/security/spec/ECGenParameterSpec;

    #@0
    .prologue
    .line 13
    invoke-virtual {p0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->getDomainParametersFromName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static getDomainParametersFromName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 5
    .param p0, "curveName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 21
    const/4 v3, 0x0

    #@1
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@4
    move-result v3

    #@5
    const/16 v4, 0x30

    #@7
    if-lt v3, v4, :cond_0

    #@9
    const/4 v3, 0x0

    #@a
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v3

    #@e
    const/16 v4, 0x32

    #@10
    if-gt v3, v4, :cond_0

    #@12
    .line 23
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    invoke-direct {v2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@17
    .line 24
    .local v2, "oidID":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@1a
    move-result-object v0

    #@1b
    .line 43
    .end local v2    # "oidID":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v0, "domainParameters":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :goto_0
    return-object v0

    #@1c
    .line 28
    .end local v0    # "domainParameters":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_0
    const/16 v3, 0x20

    #@1e
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@21
    move-result v3

    #@22
    if-lez v3, :cond_1

    #@24
    .line 30
    const/16 v3, 0x20

    #@26
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@29
    move-result v3

    #@2a
    add-int/lit8 v3, v3, 0x1

    #@2c
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2f
    move-result-object p0

    #@30
    .line 31
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@33
    move-result-object v0

    #@34
    .restart local v0    # "domainParameters":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    goto :goto_0

    #@35
    .line 35
    .end local v0    # "domainParameters":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_1
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    move-result-object v0

    #@39
    .restart local v0    # "domainParameters":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    goto :goto_0

    #@3a
    .line 40
    .end local v0    # "domainParameters":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :catch_0
    move-exception v1

    #@3b
    .line 41
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@3e
    move-result-object v0

    #@3f
    .restart local v0    # "domainParameters":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    goto :goto_0
.end method
