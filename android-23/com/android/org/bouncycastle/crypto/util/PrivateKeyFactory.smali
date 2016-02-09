.class public Lcom/android/org/bouncycastle/crypto/util/PrivateKeyFactory;
.super Ljava/lang/Object;
.source "PrivateKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 24
    .param p0, "keyInfo"    # Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3
    move-result-object v10

    #@4
    .line 83
    .local v10, "algId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    move-result-object v3

    #@8
    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@13
    move-result-object v3

    #@14
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    #@17
    move-result-object v16

    #@18
    .line 87
    .local v16, "keyStructure":Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    #@1a
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@1d
    move-result-object v2

    #@1e
    .line 88
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    #@21
    move-result-object v3

    #@22
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@25
    move-result-object v4

    #@26
    .line 89
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    #@2d
    move-result-object v6

    #@2e
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    #@31
    move-result-object v7

    #@32
    .line 90
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    #@35
    move-result-object v8

    #@36
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    #@39
    move-result-object v9

    #@3a
    .line 87
    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@3d
    return-object v1

    #@3e
    .line 94
    .end local v16    # "keyStructure":Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    :cond_0
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@41
    move-result-object v3

    #@42
    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@44
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v3

    #@48
    if-eqz v3, :cond_2

    #@4a
    .line 96
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4d
    move-result-object v3

    #@4e
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    #@51
    move-result-object v20

    #@52
    .line 97
    .local v20, "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@55
    move-result-object v13

    #@56
    check-cast v13, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@58
    .line 99
    .local v13, "derX":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    #@5b
    move-result-object v18

    #@5c
    .line 100
    .local v18, "lVal":Ljava/math/BigInteger;
    if-nez v18, :cond_1

    #@5e
    const/16 v17, 0x0

    #@60
    .line 101
    .local v17, "l":I
    :goto_0
    new-instance v14, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@62
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    #@65
    move-result-object v3

    #@66
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    #@69
    move-result-object v4

    #@6a
    const/4 v5, 0x0

    #@6b
    move/from16 v0, v17

    #@6d
    invoke-direct {v14, v3, v4, v5, v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@70
    .line 103
    .local v14, "dhParams":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    #@72
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@75
    move-result-object v4

    #@76
    invoke-direct {v3, v4, v14}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    #@79
    return-object v3

    #@7a
    .line 100
    .end local v14    # "dhParams":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .end local v17    # "l":I
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->intValue()I

    #@7d
    move-result v17

    #@7e
    .restart local v17    # "l":I
    goto :goto_0

    #@7f
    .line 115
    .end local v13    # "derX":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .end local v17    # "l":I
    .end local v18    # "lVal":Ljava/math/BigInteger;
    .end local v20    # "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :cond_2
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@82
    move-result-object v3

    #@83
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@85
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v3

    #@89
    if-eqz v3, :cond_4

    #@8b
    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8e
    move-result-object v13

    #@8f
    check-cast v13, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@91
    .line 118
    .restart local v13    # "derX":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@94
    move-result-object v12

    #@95
    .line 120
    .local v12, "de":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/16 v19, 0x0

    #@97
    .line 121
    .local v19, "parameters":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    if-eqz v12, :cond_3

    #@99
    .line 123
    invoke-interface {v12}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9c
    move-result-object v3

    #@9d
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    #@a0
    move-result-object v21

    #@a1
    .line 124
    .local v21, "params":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    new-instance v19, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@a3
    .end local v19    # "parameters":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    #@a6
    move-result-object v3

    #@a7
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    #@aa
    move-result-object v4

    #@ab
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    #@ae
    move-result-object v5

    #@af
    move-object/from16 v0, v19

    #@b1
    invoke-direct {v0, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@b4
    .line 127
    .end local v21    # "params":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    :cond_3
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    #@b6
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@b9
    move-result-object v4

    #@ba
    move-object/from16 v0, v19

    #@bc
    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    #@bf
    return-object v3

    #@c0
    .line 129
    .end local v12    # "de":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v13    # "derX":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :cond_4
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c3
    move-result-object v3

    #@c4
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c6
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@c9
    move-result v3

    #@ca
    if-eqz v3, :cond_7

    #@cc
    .line 131
    new-instance v22, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@ce
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@d1
    move-result-object v3

    #@d2
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@d4
    move-object/from16 v0, v22

    #@d6
    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@d9
    .line 136
    .local v22, "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    #@dc
    move-result v3

    #@dd
    if-eqz v3, :cond_6

    #@df
    .line 138
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@e2
    move-result-object v2

    #@e3
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e5
    .line 140
    .local v2, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@e8
    move-result-object v23

    #@e9
    .line 141
    .local v23, "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v23, :cond_5

    #@eb
    .line 143
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@ee
    move-result-object v23

    #@ef
    .line 145
    :cond_5
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ECNamedDomainParameters;

    #@f1
    .line 146
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@f4
    move-result-object v3

    #@f5
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@f8
    move-result-object v4

    #@f9
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@fc
    move-result-object v5

    #@fd
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@100
    move-result-object v6

    #@101
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@104
    move-result-object v7

    #@105
    .line 145
    invoke-direct/range {v1 .. v7}, Lcom/android/org/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@108
    .line 155
    .end local v2    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v1, "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10b
    move-result-object v3

    #@10c
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;

    #@10f
    move-result-object v15

    #@110
    .line 156
    .local v15, "ec":Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;->getKey()Ljava/math/BigInteger;

    #@113
    move-result-object v11

    #@114
    .line 158
    .local v11, "d":Ljava/math/BigInteger;
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@116
    invoke-direct {v3, v11, v1}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@119
    return-object v3

    #@11a
    .line 150
    .end local v1    # "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v11    # "d":Ljava/math/BigInteger;
    .end local v15    # "ec":Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;
    .end local v23    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_6
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@11d
    move-result-object v3

    #@11e
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@121
    move-result-object v23

    #@122
    .line 151
    .restart local v23    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@124
    .line 152
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@127
    move-result-object v4

    #@128
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@12b
    move-result-object v5

    #@12c
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@12f
    move-result-object v6

    #@130
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@133
    move-result-object v7

    #@134
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@137
    move-result-object v8

    #@138
    move-object v3, v1

    #@139
    .line 151
    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@13c
    .restart local v1    # "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_1

    #@13d
    .line 162
    .end local v1    # "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v22    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .end local v23    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    #@13f
    const-string/jumbo v4, "algorithm identifier in key not recognised"

    #@142
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@145
    throw v3
.end method

.method public static createKey(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "inStr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PrivateKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static createKey([B)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "privateKeyInfoData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PrivateKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
