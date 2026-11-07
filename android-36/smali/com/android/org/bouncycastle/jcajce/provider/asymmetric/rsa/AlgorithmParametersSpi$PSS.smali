.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;
.source "AlgorithmParametersSpi.java"


# instance fields
.field blacklist currentSpec:Ljava/security/spec/PSSParameterSpec;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 177
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .registers 9

    .line 188
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    .line 189
    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 192
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_23

    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_23

    .line 198
    :cond_1b
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v2, v0, v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_28

    .line 194
    :cond_23
    :goto_23
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 201
    :goto_28
    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    .line 202
    const-string v3, "DER"

    if-eqz v0, :cond_66

    .line 204
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 206
    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v5, v0, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 207
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result p0

    int-to-long v6, p0

    invoke-direct {v5, v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    .line 209
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 213
    :cond_66
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 214
    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SHAKE128"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    goto :goto_77

    :cond_75
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    :goto_77
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 215
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result p0

    int-to-long v6, p0

    invoke-direct {v5, v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    .line 217
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method protected whitelist test-api engineGetEncoded(Ljava/lang/String;)[B
    .registers 3

    .line 225
    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "ASN.1"

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return-object p0

    .line 228
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->engineGetEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3

    .line 250
    instance-of v0, p1, Ljava/security/spec/PSSParameterSpec;

    if-eqz v0, :cond_9

    .line 255
    check-cast p1, Ljava/security/spec/PSSParameterSpec;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    return-void

    .line 252
    :cond_9
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "PSSParameterSpec required to initialise an PSS algorithm parameters object"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 11

    .line 264
    const-string v0, "Not a valid PSS Parameter encoding."

    :try_start_2
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getMaskGenAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 267
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 269
    new-instance v3, Ljava/security/spec/PSSParameterSpec;

    .line 270
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getHashAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/util/MessageDigestUtils;->getDigestName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    .line 271
    invoke-virtual {v1}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/security/spec/MGF1ParameterSpec;

    .line 272
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getMaskGenAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/util/MessageDigestUtils;->getDigestName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getSaltLength()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    .line 274
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getTrailerField()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    invoke-direct/range {v3 .. v8}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    return-void

    .line 276
    :cond_59
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_69

    sget-object v3, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_6b

    :cond_69
    move-object v3, v1

    goto :goto_8a

    .line 287
    :cond_6b
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown mask generation function: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getMaskGenAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 278
    :goto_8a
    new-instance v1, Ljava/security/spec/PSSParameterSpec;

    .line 279
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getHashAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/jcajce/util/MessageDigestUtils;->getDigestName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const-string v2, "SHAKE128"

    :goto_a0
    move-object v3, v2

    goto :goto_a5

    :cond_a2
    const-string v2, "SHAKE256"

    goto :goto_a0

    .line 282
    :goto_a5
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getSaltLength()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 283
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getTrailerField()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    move-object v2, v4

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;
    :try_end_bc
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_bc} :catch_c3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_bc} :catch_bd

    return-void

    .line 296
    :catch_bd
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :catch_c3
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineInit([BLjava/lang/String;)V
    .registers 4

    .line 305
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_26

    .line 311
    :cond_f
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown parameter format "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 307
    :cond_26
    :goto_26
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->engineInit([B)V

    return-void
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 1

    .line 317
    const-string p0, "PSS Parameters"

    return-object p0
.end method

.method protected blacklist localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3

    .line 238
    const-class v0, Ljava/security/spec/PSSParameterSpec;

    if-eq p1, v0, :cond_11

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 243
    :cond_9
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "unknown parameter spec passed to PSS parameters object."

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 240
    :cond_11
    :goto_11
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    return-object p0
.end method
