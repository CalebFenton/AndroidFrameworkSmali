.class public Lcom/android/internal/org/bouncycastle/crypto/util/PrivateKeyFactory;
.super Ljava/lang/Object;
.source "PrivateKeyFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createKey(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 13
    .param p0, "keyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    if-eqz p0, :cond_12c

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 114
    .local v0, "algId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 116
    .local v1, "algOID":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_fe

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 117
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_fe

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 118
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto/16 :goto_fe

    .line 129
    :cond_24
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 131
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;

    move-result-object v2

    .line 132
    .local v2, "params":Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 134
    .local v3, "derX":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v4

    .line 135
    .local v4, "lVal":Ljava/math/BigInteger;
    if-nez v4, :cond_42

    const/4 v5, 0x0

    goto :goto_46

    :cond_42
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 136
    .local v5, "l":I
    :goto_46
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 138
    .local v6, "dhParams":Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    return-object v7

    .line 152
    .end local v2    # "params":Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;
    .end local v3    # "derX":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .end local v4    # "lVal":Ljava/math/BigInteger;
    .end local v5    # "l":I
    .end local v6    # "dhParams":Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    :cond_5e
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 155
    .local v2, "derX":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 157
    .local v3, "algParameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v4, 0x0

    .line 158
    .local v4, "parameters":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    if-eqz v3, :cond_8d

    .line 160
    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v5

    .line 161
    .local v5, "params":Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v4, v6

    .line 164
    .end local v5    # "params":Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;
    :cond_8d
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V

    return-object v5

    .line 166
    .end local v2    # "derX":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .end local v3    # "algParameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v4    # "parameters":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    :cond_97
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 168
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v2

    .line 173
    .local v2, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 175
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 177
    .local v3, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v4

    .line 178
    .local v4, "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v4, :cond_bd

    .line 180
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v4

    .line 182
    :cond_bd
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-direct {v5, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)V

    .line 183
    .end local v3    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v5, "dParams":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_e4

    .line 186
    .end local v4    # "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v5    # "dParams":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    :cond_c3
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v4

    .line 187
    .restart local v4    # "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 188
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 191
    .restart local v5    # "dParams":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    :goto_e4
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    move-result-object v3

    .line 192
    .local v3, "ec":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getKey()Ljava/math/BigInteger;

    move-result-object v6

    .line 194
    .local v6, "d":Ljava/math/BigInteger;
    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-direct {v7, v6, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v7

    .line 321
    .end local v2    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    .end local v3    # "ec":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    .end local v4    # "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v5    # "dParams":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v6    # "d":Ljava/math/BigInteger;
    :cond_f6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "algorithm identifier in private key not recognised"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_fe
    :goto_fe
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    move-result-object v2

    .line 122
    .local v2, "keyStructure":Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    .line 123
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v6

    .line 124
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    move-result-object v9

    .line 125
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 122
    return-object v3

    .line 110
    .end local v0    # "algId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v1    # "algOID":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v2    # "keyStructure":Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    :cond_12c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyInfo argument null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createKey(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 2
    .param p0, "inStr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/util/PrivateKeyFactory;->createKey(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createKey([B)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 3
    .param p0, "privateKeyInfoData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    if-eqz p0, :cond_1b

    .line 77
    array-length v0, p0

    if-eqz v0, :cond_12

    .line 81
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/util/PrivateKeyFactory;->createKey(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0

    .line 79
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "privateKeyInfoData array empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "privateKeyInfoData array null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getRawKey(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)[B
    .registers 2
    .param p0, "keyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method
