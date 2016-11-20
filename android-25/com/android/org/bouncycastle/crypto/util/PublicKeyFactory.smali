.class public Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;
.super Ljava/lang/Object;
.source "PublicKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 36
    .param p0, "keyInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3
    move-result-object v16

    #@4
    .line 90
    .local v16, "algId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    move-result-object v2

    #@8
    sget-object v10, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 91
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13
    move-result-object v2

    #@14
    sget-object v10, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    .line 90
    if-eqz v2, :cond_1

    #@1c
    .line 93
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;

    #@23
    move-result-object v32

    #@24
    .line 95
    .local v32, "pubKey":Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@26
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@29
    move-result-object v10

    #@2a
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@2d
    move-result-object v11

    #@2e
    const/4 v12, 0x0

    #@2f
    invoke-direct {v2, v12, v10, v11}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    #@32
    return-object v2

    #@33
    .line 97
    .end local v32    # "pubKey":Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@36
    move-result-object v2

    #@37
    sget-object v10, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@39
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v2

    #@3d
    if-eqz v2, :cond_4

    #@3f
    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@42
    move-result-object v2

    #@43
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;

    #@46
    move-result-object v22

    #@47
    .line 101
    .local v22, "dhPublicKey":Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;->getY()Ljava/math/BigInteger;

    #@4a
    move-result-object v35

    #@4b
    .line 103
    .local v35, "y":Ljava/math/BigInteger;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4e
    move-result-object v2

    #@4f
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;

    #@52
    move-result-object v20

    #@53
    .line 105
    .local v20, "dhParams":Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getP()Ljava/math/BigInteger;

    #@56
    move-result-object v3

    #@57
    .line 106
    .local v3, "p":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getG()Ljava/math/BigInteger;

    #@5a
    move-result-object v4

    #@5b
    .line 107
    .local v4, "g":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getQ()Ljava/math/BigInteger;

    #@5e
    move-result-object v5

    #@5f
    .line 109
    .local v5, "q":Ljava/math/BigInteger;
    const/4 v6, 0x0

    #@60
    .line 110
    .local v6, "j":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    #@63
    move-result-object v2

    #@64
    if-eqz v2, :cond_2

    #@66
    .line 112
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    #@69
    move-result-object v6

    #@6a
    .line 115
    .end local v6    # "j":Ljava/math/BigInteger;
    :cond_2
    const/4 v7, 0x0

    #@6b
    .line 116
    .local v7, "validation":Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getValidationParams()Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    #@6e
    move-result-object v23

    #@6f
    .line 117
    .local v23, "dhValidationParms":Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;
    if-eqz v23, :cond_3

    #@71
    .line 119
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->getSeed()[B

    #@74
    move-result-object v33

    #@75
    .line 120
    .local v33, "seed":[B
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->getPgenCounter()Ljava/math/BigInteger;

    #@78
    move-result-object v31

    #@79
    .line 124
    .local v31, "pgenCounter":Ljava/math/BigInteger;
    new-instance v7, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    #@7b
    .end local v7    # "validation":Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->intValue()I

    #@7e
    move-result v2

    #@7f
    move-object/from16 v0, v33

    #@81
    invoke-direct {v7, v0, v2}, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    #@84
    .line 127
    .end local v31    # "pgenCounter":Ljava/math/BigInteger;
    .end local v33    # "seed":[B
    :cond_3
    new-instance v10, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    #@86
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@88
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    #@8b
    move-object/from16 v0, v35

    #@8d
    invoke-direct {v10, v0, v2}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    #@90
    return-object v10

    #@91
    .line 129
    .end local v3    # "p":Ljava/math/BigInteger;
    .end local v4    # "g":Ljava/math/BigInteger;
    .end local v5    # "q":Ljava/math/BigInteger;
    .end local v20    # "dhParams":Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;
    .end local v22    # "dhPublicKey":Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;
    .end local v23    # "dhValidationParms":Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;
    .end local v35    # "y":Ljava/math/BigInteger;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@94
    move-result-object v2

    #@95
    sget-object v10, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@97
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v2

    #@9b
    if-eqz v2, :cond_6

    #@9d
    .line 131
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@a0
    move-result-object v2

    #@a1
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    #@a4
    move-result-object v28

    #@a5
    .line 132
    .local v28, "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@a8
    move-result-object v19

    #@a9
    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@ab
    .line 134
    .local v19, "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    #@ae
    move-result-object v26

    #@af
    .line 135
    .local v26, "lVal":Ljava/math/BigInteger;
    if-nez v26, :cond_5

    #@b1
    const/16 v25, 0x0

    #@b3
    .line 136
    .local v25, "l":I
    :goto_0
    new-instance v21, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@b5
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    #@b8
    move-result-object v2

    #@b9
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    #@bc
    move-result-object v10

    #@bd
    const/4 v11, 0x0

    #@be
    move-object/from16 v0, v21

    #@c0
    move/from16 v1, v25

    #@c2
    invoke-direct {v0, v2, v10, v11, v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@c5
    .line 138
    .local v21, "dhParams":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    #@c7
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@ca
    move-result-object v10

    #@cb
    move-object/from16 v0, v21

    #@cd
    invoke-direct {v2, v10, v0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    #@d0
    return-object v2

    #@d1
    .line 135
    .end local v21    # "dhParams":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .end local v25    # "l":I
    :cond_5
    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->intValue()I

    #@d4
    move-result v25

    #@d5
    .restart local v25    # "l":I
    goto :goto_0

    #@d6
    .line 150
    .end local v19    # "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .end local v25    # "l":I
    .end local v26    # "lVal":Ljava/math/BigInteger;
    .end local v28    # "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d9
    move-result-object v2

    #@da
    sget-object v10, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@dc
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@df
    move-result v2

    #@e0
    if-nez v2, :cond_7

    #@e2
    .line 151
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e5
    move-result-object v2

    #@e6
    sget-object v10, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e8
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@eb
    move-result v2

    #@ec
    .line 150
    if-eqz v2, :cond_9

    #@ee
    .line 153
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@f1
    move-result-object v19

    #@f2
    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@f4
    .line 154
    .restart local v19    # "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@f7
    move-result-object v17

    #@f8
    .line 156
    .local v17, "de":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/16 v27, 0x0

    #@fa
    .line 157
    .local v27, "parameters":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    if-eqz v17, :cond_8

    #@fc
    .line 159
    invoke-interface/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@ff
    move-result-object v2

    #@100
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    #@103
    move-result-object v29

    #@104
    .line 160
    .local v29, "params":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    new-instance v27, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@106
    .end local v27    # "parameters":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    #@109
    move-result-object v2

    #@10a
    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    #@10d
    move-result-object v10

    #@10e
    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    #@111
    move-result-object v11

    #@112
    move-object/from16 v0, v27

    #@114
    invoke-direct {v0, v2, v10, v11}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@117
    .line 163
    .end local v29    # "params":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    :cond_8
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    #@119
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@11c
    move-result-object v10

    #@11d
    move-object/from16 v0, v27

    #@11f
    invoke-direct {v2, v10, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    #@122
    return-object v2

    #@123
    .line 165
    .end local v17    # "de":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v19    # "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@126
    move-result-object v2

    #@127
    sget-object v10, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@129
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@12c
    move-result v2

    #@12d
    if-eqz v2, :cond_c

    #@12f
    .line 167
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@132
    move-result-object v2

    #@133
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@136
    move-result-object v30

    #@137
    .line 172
    .local v30, "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    #@13a
    move-result v2

    #@13b
    if-eqz v2, :cond_b

    #@13d
    .line 174
    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@140
    move-result-object v9

    #@141
    check-cast v9, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@143
    .line 176
    .local v9, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v9}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@146
    move-result-object v34

    #@147
    .line 177
    .local v34, "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v34, :cond_a

    #@149
    .line 179
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@14c
    move-result-object v34

    #@14d
    .line 181
    :cond_a
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ECNamedDomainParameters;

    #@14f
    .line 182
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@152
    move-result-object v10

    #@153
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@156
    move-result-object v11

    #@157
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@15a
    move-result-object v12

    #@15b
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@15e
    move-result-object v13

    #@15f
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@162
    move-result-object v14

    #@163
    .line 181
    invoke-direct/range {v8 .. v14}, Lcom/android/org/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@166
    .line 191
    .end local v9    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v8, "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    :goto_1
    new-instance v24, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@168
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@16b
    move-result-object v2

    #@16c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    #@16f
    move-result-object v2

    #@170
    move-object/from16 v0, v24

    #@172
    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@175
    .line 192
    .local v24, "key":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v18, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    #@177
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@17a
    move-result-object v2

    #@17b
    move-object/from16 v0, v18

    #@17d
    move-object/from16 v1, v24

    #@17f
    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@182
    .line 194
    .local v18, "derQ":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@184
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@187
    move-result-object v10

    #@188
    invoke-direct {v2, v10, v8}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@18b
    return-object v2

    #@18c
    .line 186
    .end local v8    # "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v18    # "derQ":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    .end local v24    # "key":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v34    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_b
    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@18f
    move-result-object v2

    #@190
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@193
    move-result-object v34

    #@194
    .line 187
    .restart local v34    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@196
    .line 188
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@199
    move-result-object v11

    #@19a
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@19d
    move-result-object v12

    #@19e
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@1a1
    move-result-object v13

    #@1a2
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@1a5
    move-result-object v14

    #@1a6
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@1a9
    move-result-object v15

    #@1aa
    move-object v10, v8

    #@1ab
    .line 187
    invoke-direct/range {v10 .. v15}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@1ae
    .restart local v8    # "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_1

    #@1af
    .line 198
    .end local v8    # "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v30    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .end local v34    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_c
    new-instance v2, Ljava/lang/RuntimeException;

    #@1b1
    const-string/jumbo v10, "algorithm identifier in key not recognised"

    #@1b4
    invoke-direct {v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b7
    throw v2
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
    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static createKey([B)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "keyInfoData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
