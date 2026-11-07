.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;
.source "AlgorithmParametersSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAEP"
.end annotation


# instance fields
.field blacklist currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .registers 10

    .line 66
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    .line 67
    invoke-virtual {v1}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/DigestFactory;->getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 69
    .local v0, "hashAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljava/security/spec/MGF1ParameterSpec;

    .line 70
    .local v1, "mgfSpec":Ljava/security/spec/MGF1ParameterSpec;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 72
    invoke-virtual {v1}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/DigestFactory;->getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 73
    .local v2, "maskGenAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v3

    check-cast v3, Ljavax/crypto/spec/PSource$PSpecified;

    .line 74
    .local v3, "pSource":Ljavax/crypto/spec/PSource$PSpecified;
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_pSpecified:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    .line 75
    invoke-virtual {v3}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 76
    .local v4, "pSourceAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    invoke-direct {v5, v0, v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 80
    .local v5, "oaepP":Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    :try_start_4c
    const-string v6, "DER"

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_52} :catch_53

    return-object v6

    .line 82
    :catch_53
    move-exception v6

    .line 84
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Error encoding OAEPParameters"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected whitelist test-api engineGetEncoded(Ljava/lang/String;)[B
    .registers 3
    .param p1, "format"    # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    .line 96
    :cond_f
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_11
    :goto_11
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->engineGetEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 115
    instance-of v0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_a

    .line 120
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/OAEPParameterSpec;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    .line 121
    return-void

    .line 117
    :cond_a
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "OAEPParameterSpec required to initialise an OAEP algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 10
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const-string v0, "Not a valid OAEP Parameter encoding."

    :try_start_2
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    move-result-object v1

    .line 131
    .local v1, "oaepP":Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getMaskGenAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 136
    new-instance v2, Ljavax/crypto/spec/OAEPParameterSpec;

    .line 137
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getHashAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/util/MessageDigestUtils;->getDigestName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    .line 138
    invoke-virtual {v4}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    .line 139
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getMaskGenAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/jcajce/util/MessageDigestUtils;->getDigestName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljavax/crypto/spec/PSource$PSpecified;

    .line 140
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getPSourceAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    invoke-direct {v2, v3, v4, v5, v6}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    .line 149
    .end local v1    # "oaepP":Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    nop

    .line 150
    return-void

    .line 133
    .restart local v1    # "oaepP":Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    :cond_5f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown mask generation function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getMaskGenAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;
    .end local p1    # "params":[B
    throw v2
    :try_end_81
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_81} :catch_88
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_81} :catch_81

    .line 146
    .end local v1    # "oaepP":Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;
    .restart local p1    # "params":[B
    :catch_81
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_88
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected whitelist test-api engineInit([BLjava/lang/String;)V
    .registers 6
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 158
    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2a

    .line 164
    :cond_11
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown parameter format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_2a
    :goto_2a
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->engineInit([B)V

    .line 166
    return-void
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 2

    .line 170
    const-string v0, "OAEP Parameters"

    return-object v0
.end method

.method protected blacklist localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 4
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 103
    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eq p1, v0, :cond_12

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_9

    goto :goto_12

    .line 108
    :cond_9
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "unknown parameter spec passed to OAEP parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    return-object v0
.end method
