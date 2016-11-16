.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;
.super Ljava/security/AlgorithmParametersSpi;
.source "AlgorithmParametersSpi.java"


# instance fields
.field private curveName:Ljava/lang/String;

.field private ecParameterSpec:Ljava/security/spec/ECParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    const-string/jumbo v0, "ASN.1"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->engineGetEncoded(Ljava/lang/String;)[B

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 8
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_2

    #@6
    .line 135
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 137
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@e
    invoke-direct {v7, v1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Null;)V

    #@11
    .line 156
    .local v7, "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    :goto_0
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 139
    .end local v7    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 141
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@1c
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    #@1e
    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v7, v1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@25
    .restart local v7    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_0

    #@26
    .line 145
    .end local v7    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    #@28
    const/4 v2, 0x0

    #@29
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@2c
    move-result-object v6

    #@2d
    .line 146
    .local v6, "ecSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@2f
    .line 147
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@32
    move-result-object v1

    #@33
    .line 148
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@36
    move-result-object v2

    #@37
    .line 149
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    #@3a
    move-result-object v3

    #@3b
    .line 150
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    #@3e
    move-result-object v4

    #@3f
    .line 151
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    #@42
    move-result-object v5

    #@43
    .line 146
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@46
    .line 153
    .local v0, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@48
    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;)V

    #@4b
    .restart local v7    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_0

    #@4c
    .line 159
    .end local v0    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v6    # "ecSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .end local v7    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    #@4e
    new-instance v2, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v3, "Unknown parameters format in AlgorithmParameters object: "

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@65
    throw v1
.end method

.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    .local p1, "paramSpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v1, Ljava/security/spec/ECParameterSpec;

    #@2
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    const-class v1, Ljava/security/spec/AlgorithmParameterSpec;

    #@a
    if-ne p1, v1, :cond_1

    #@c
    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    #@e
    return-object v1

    #@f
    .line 95
    :cond_1
    const-class v1, Ljava/security/spec/ECGenParameterSpec;

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_4

    #@17
    .line 97
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    #@19
    if-eqz v1, :cond_3

    #@1b
    .line 99
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    #@1d
    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    move-result-object v0

    #@21
    .line 101
    .local v0, "namedCurveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v0, :cond_2

    #@23
    .line 103
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    #@25
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    #@2c
    return-object v1

    #@2d
    .line 105
    :cond_2
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    #@2f
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    #@31
    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    #@34
    return-object v1

    #@35
    .line 109
    .end local v0    # "namedCurveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    #@37
    const/4 v2, 0x0

    #@38
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@3b
    move-result-object v1

    #@3c
    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3f
    move-result-object v0

    #@40
    .line 111
    .restart local v0    # "namedCurveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v0, :cond_4

    #@42
    .line 113
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    #@44
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    #@4b
    return-object v1

    #@4c
    .line 117
    .end local v0    # "namedCurveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_4
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    #@4e
    new-instance v2, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v3, "EC AlgorithmParameters cannot convert to "

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v2

    #@66
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@69
    throw v1
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 5
    .param p1, "algorithmParameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 34
    instance-of v2, p1, Ljava/security/spec/ECGenParameterSpec;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 36
    nop

    #@7
    nop

    #@8
    .line 37
    .local v0, "ecGenParameterSpec":Ljava/security/spec/ECGenParameterSpec;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->getDomainParametersFromGenSpec(Ljava/security/spec/ECGenParameterSpec;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@b
    move-result-object v1

    #@c
    .line 39
    .local v1, "params":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v1, :cond_0

    #@e
    .line 41
    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "EC curve name not recognized: "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v2

    #@2c
    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    #@32
    .line 44
    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertToSpec(Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;

    #@35
    move-result-object v2

    #@36
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    #@38
    .line 32
    .end local v0    # "ecGenParameterSpec":Ljava/security/spec/ECGenParameterSpec;
    .end local v1    # "params":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local p1    # "algorithmParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_0
    return-void

    #@39
    .line 46
    .restart local p1    # "algorithmParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    instance-of v2, p1, Ljava/security/spec/ECParameterSpec;

    #@3b
    if-eqz v2, :cond_2

    #@3d
    .line 48
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    #@3f
    .line 49
    nop

    #@40
    nop

    #@41
    .end local p1    # "algorithmParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    #@43
    goto :goto_0

    #@44
    .line 53
    .restart local p1    # "algorithmParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_2
    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    #@46
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v4, "AlgorithmParameterSpec class not recognized: "

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@65
    throw v2
.end method

.method protected engineInit([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    const-string/jumbo v0, "ASN.1"

    #@3
    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->engineInit([BLjava/lang/String;)V

    #@6
    .line 59
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 70
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@9
    move-result-object v1

    #@a
    .line 72
    .local v1, "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@c
    invoke-static {v2, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->getCurve(Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@f
    move-result-object v0

    #@10
    .line 74
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 76
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    #@24
    .line 79
    :cond_0
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertToSpec(Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;Lcom/android/org/bouncycastle/math/ec/ECCurve;)Ljava/security/spec/ECParameterSpec;

    #@27
    move-result-object v2

    #@28
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    #@2a
    .line 66
    return-void

    #@2b
    .line 83
    .end local v0    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v1    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "Unknown encoded parameters format in AlgorithmParameters object: "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v2
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 165
    const-string/jumbo v0, "EC AlgorithmParameters "

    #@3
    return-object v0
.end method

.method protected isASN1FormatString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 27
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "ASN.1"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method
