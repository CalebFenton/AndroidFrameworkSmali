.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;
.source "AlgorithmParametersSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PSS"
.end annotation


# instance fields
.field blacklist currentSpec:Ljava/security/spec/PSSParameterSpec;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 177
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    .line 189
    .local v0, "pssSpec":Ljava/security/spec/PSSParameterSpec;
    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/DigestFactory;->getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 192
    .local v1, "digOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_23

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_23

    .line 198
    :cond_1b
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v2, v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .local v2, "hashAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    goto :goto_28

    .line 194
    .end local v2    # "hashAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_23
    :goto_23
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 201
    .restart local v2    # "hashAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :goto_28
    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    check-cast v3, Ljava/security/spec/MGF1ParameterSpec;

    .line 202
    .local v3, "mgfSpec":Ljava/security/spec/MGF1ParameterSpec;
    const-string v4, "DER"

    if-eqz v3, :cond_66

    .line 204
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 206
    invoke-virtual {v3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/DigestFactory;->getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 207
    .local v5, "maskGenAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v8, v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v6, v2, v5, v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    .line 209
    .local v6, "pssP":Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    invoke-virtual {v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    return-object v4

    .line 213
    .end local v5    # "maskGenAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v6    # "pssP":Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    :cond_66
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 214
    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SHAKE128"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_79

    :cond_77
    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    :goto_79
    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 215
    .restart local v5    # "maskGenAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v8, v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v6, v2, v5, v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    .line 217
    .restart local v6    # "pssP":Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    invoke-virtual {v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    return-object v4
.end method

.method protected whitelist test-api engineGetEncoded(Ljava/lang/String;)[B
    .registers 3
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 226
    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 231
    :cond_11
    const/4 v0, 0x0

    return-object v0

    .line 228
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->engineGetEncoded()[B

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

    .line 250
    instance-of v0, p1, Ljava/security/spec/PSSParameterSpec;

    if-eqz v0, :cond_a

    .line 255
    move-object v0, p1

    check-cast v0, Ljava/security/spec/PSSParameterSpec;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    .line 256
    return-void

    .line 252
    :cond_a
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "PSSParameterSpec required to initialise an PSS algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 12
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    const-string v1, "Not a valid PSS Parameter encoding."

    :try_start_2
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    .line 266
    .local v0, "pssP":Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getMaskGenAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 267
    .local v2, "mgfOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 269
    new-instance v4, Ljava/security/spec/PSSParameterSpec;

    .line 270
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getHashAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/util/MessageDigestUtils;->getDigestName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v5

    sget-object v3, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    .line 271
    invoke-virtual {v3}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/security/spec/MGF1ParameterSpec;

    .line 272
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getMaskGenAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/util/MessageDigestUtils;->getDigestName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getSaltLength()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    .line 274
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getTrailerField()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    goto :goto_bd

    .line 276
    :cond_59
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_8c

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_6a

    goto :goto_8c

    .line 287
    :cond_6a
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown mask generation function: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getMaskGenAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;
    .end local p1    # "params":[B
    throw v3

    .line 278
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;
    .restart local p1    # "params":[B
    :cond_8c
    :goto_8c
    new-instance v3, Ljava/security/spec/PSSParameterSpec;

    .line 279
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getHashAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/jcajce/util/MessageDigestUtils;->getDigestName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v4

    .line 280
    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_a5

    const-string v5, "SHAKE128"

    goto :goto_a7

    :cond_a5
    const-string v5, "SHAKE256"

    .line 282
    :goto_a7
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getSaltLength()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    .line 283
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getTrailerField()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;
    :try_end_bd
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_bd} :catch_c6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_bd} :catch_bf

    .line 297
    .end local v0    # "pssP":Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    .end local v2    # "mgfOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_bd
    nop

    .line 298
    return-void

    .line 294
    :catch_bf
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 290
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_c6
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

    .line 305
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_28

    .line 311
    :cond_f
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

    .line 307
    :cond_28
    :goto_28
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->engineInit([B)V

    .line 313
    return-void
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 2

    .line 317
    const-string v0, "PSS Parameters"

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

    .line 238
    const-class v0, Ljava/security/spec/PSSParameterSpec;

    if-eq p1, v0, :cond_12

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_9

    goto :goto_12

    .line 243
    :cond_9
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "unknown parameter spec passed to PSS parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    return-object v0
.end method
