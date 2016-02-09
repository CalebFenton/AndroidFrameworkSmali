.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;
.source "AlgorithmParametersSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAEP"
.end annotation


# instance fields
.field currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 11

    #@0
    .prologue
    .line 56
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    .line 57
    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    #@4
    invoke-virtual {v7}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    #@7
    move-result-object v7

    #@8
    invoke-static {v7}, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b
    move-result-object v7

    #@c
    .line 58
    sget-object v8, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@e
    .line 56
    invoke-direct {v1, v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@11
    .line 59
    .local v1, "hashAlgorithm":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    #@13
    invoke-virtual {v7}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Ljava/security/spec/MGF1ParameterSpec;

    #@19
    .line 60
    .local v3, "mgfSpec":Ljava/security/spec/MGF1ParameterSpec;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1b
    .line 61
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d
    .line 62
    new-instance v8, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1f
    invoke-virtual {v3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    #@22
    move-result-object v9

    #@23
    invoke-static {v9}, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26
    move-result-object v9

    #@27
    sget-object v10, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@29
    invoke-direct {v8, v9, v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2c
    .line 60
    invoke-direct {v2, v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2f
    .line 63
    .local v2, "maskGenAlgorithm":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    #@31
    invoke-virtual {v7}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    #@34
    move-result-object v5

    #@35
    check-cast v5, Ljavax/crypto/spec/PSource$PSpecified;

    #@37
    .line 64
    .local v5, "pSource":Ljavax/crypto/spec/PSource$PSpecified;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@39
    .line 65
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_pSpecified:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3b
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@3d
    invoke-virtual {v5}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    #@40
    move-result-object v9

    #@41
    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@44
    .line 64
    invoke-direct {v6, v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@47
    .line 66
    .local v6, "pSourceAlgorithm":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    #@49
    invoke-direct {v4, v1, v2, v6}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    #@4c
    .line 70
    .local v4, "oaepP":Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    :try_start_0
    const-string/jumbo v7, "DER"

    #@4f
    invoke-virtual {v4, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    move-result-object v7

    #@53
    return-object v7

    #@54
    .line 73
    :catch_0
    move-exception v0

    #@55
    .line 74
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    #@57
    const-string/jumbo v8, "Error encoding OAEPParameters"

    #@5a
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v7
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->isASN1FormatString(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    const-string/jumbo v0, "X.509"

    #@9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->engineGetEncoded()[B

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 86
    :cond_1
    const/4 v0, 0x0

    #@15
    return-object v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    instance-of v0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 107
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    #@6
    const-string/jumbo v1, "OAEPParameterSpec required to initialise an OAEP algorithm parameters object"

    #@9
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 110
    :cond_0
    check-cast p1, Ljavax/crypto/spec/OAEPParameterSpec;

    #@f
    .end local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    #@11
    .line 103
    return-void
.end method

.method protected engineInit([B)V
    .locals 9
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    #@3
    move-result-object v2

    #@4
    .line 121
    .local v2, "oaepP":Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    new-instance v3, Ljavax/crypto/spec/OAEPParameterSpec;

    #@6
    .line 122
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getHashAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    .line 123
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getMaskGenAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    .line 124
    new-instance v6, Ljava/security/spec/MGF1ParameterSpec;

    #@20
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getMaskGenAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@27
    move-result-object v7

    #@28
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    invoke-direct {v6, v7}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    #@37
    .line 125
    new-instance v7, Ljavax/crypto/spec/PSource$PSpecified;

    #@39
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getPSourceAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3c
    move-result-object v8

    #@3d
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@40
    move-result-object v8

    #@41
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@44
    move-result-object v8

    #@45
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@48
    move-result-object v8

    #@49
    invoke-direct {v7, v8}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    #@4c
    .line 121
    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    #@4f
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    .line 115
    return-void

    #@52
    .line 132
    .end local v2    # "oaepP":Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    :catch_0
    move-exception v0

    #@53
    .line 133
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/io/IOException;

    #@55
    const-string/jumbo v4, "Not a valid OAEP Parameter encoding."

    #@58
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v3

    #@5c
    .line 128
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    #@5d
    .line 129
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/io/IOException;

    #@5f
    const-string/jumbo v4, "Not a valid OAEP Parameter encoding."

    #@62
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@65
    throw v3
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 3
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    const-string/jumbo v0, "X.509"

    #@3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 143
    const-string/jumbo v0, "ASN.1"

    #@c
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 142
    if-eqz v0, :cond_1

    #@12
    .line 145
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->engineInit([B)V

    #@15
    .line 140
    return-void

    #@16
    .line 149
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "Unknown parameter format "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 155
    const-string/jumbo v0, "OAEP Parameters"

    #@3
    return-object v0
.end method

.method protected localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 95
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    #@a
    return-object v0

    #@b
    .line 98
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    #@d
    const-string/jumbo v1, "unknown parameter spec passed to OAEP parameters object."

    #@10
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
.end method
