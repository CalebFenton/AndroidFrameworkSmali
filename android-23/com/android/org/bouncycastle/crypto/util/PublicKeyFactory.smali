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
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;->getY()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@4e
    move-result-object v35

    #@4f
    .line 103
    .local v35, "y":Ljava/math/BigInteger;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@52
    move-result-object v2

    #@53
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    #@56
    move-result-object v20

    #@57
    .line 105
    .local v20, "dhParams":Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getP()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@5e
    move-result-object v3

    #@5f
    .line 106
    .local v3, "p":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getG()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@66
    move-result-object v4

    #@67
    .line 107
    .local v4, "g":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getQ()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@6e
    move-result-object v5

    #@6f
    .line 109
    .local v5, "q":Ljava/math/BigInteger;
    const/4 v6, 0x0

    #@70
    .line 110
    .local v6, "j":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getJ()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@73
    move-result-object v2

    #@74
    if-eqz v2, :cond_2

    #@76
    .line 112
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getJ()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@7d
    move-result-object v6

    #@7e
    .line 115
    .end local v6    # "j":Ljava/math/BigInteger;
    :cond_2
    const/4 v7, 0x0

    #@7f
    .line 116
    .local v7, "validation":Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getValidationParms()Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    #@82
    move-result-object v23

    #@83
    .line 117
    .local v23, "dhValidationParms":Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;
    if-eqz v23, :cond_3

    #@85
    .line 119
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->getSeed()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@8c
    move-result-object v33

    #@8d
    .line 120
    .local v33, "seed":[B
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->getPgenCounter()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@94
    move-result-object v31

    #@95
    .line 124
    .local v31, "pgenCounter":Ljava/math/BigInteger;
    new-instance v7, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    #@97
    .end local v7    # "validation":Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->intValue()I

    #@9a
    move-result v2

    #@9b
    move-object/from16 v0, v33

    #@9d
    invoke-direct {v7, v0, v2}, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    #@a0
    .line 127
    .end local v31    # "pgenCounter":Ljava/math/BigInteger;
    .end local v33    # "seed":[B
    :cond_3
    new-instance v10, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    #@a2
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@a4
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    #@a7
    move-object/from16 v0, v35

    #@a9
    invoke-direct {v10, v0, v2}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    #@ac
    return-object v10

    #@ad
    .line 129
    .end local v3    # "p":Ljava/math/BigInteger;
    .end local v4    # "g":Ljava/math/BigInteger;
    .end local v5    # "q":Ljava/math/BigInteger;
    .end local v20    # "dhParams":Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
    .end local v22    # "dhPublicKey":Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;
    .end local v23    # "dhValidationParms":Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;
    .end local v35    # "y":Ljava/math/BigInteger;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b0
    move-result-object v2

    #@b1
    sget-object v10, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b3
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@b6
    move-result v2

    #@b7
    if-eqz v2, :cond_6

    #@b9
    .line 131
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@bc
    move-result-object v2

    #@bd
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    #@c0
    move-result-object v28

    #@c1
    .line 132
    .local v28, "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@c4
    move-result-object v19

    #@c5
    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c7
    .line 134
    .local v19, "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    #@ca
    move-result-object v26

    #@cb
    .line 135
    .local v26, "lVal":Ljava/math/BigInteger;
    if-nez v26, :cond_5

    #@cd
    const/16 v25, 0x0

    #@cf
    .line 136
    .local v25, "l":I
    :goto_0
    new-instance v21, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@d1
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    #@d4
    move-result-object v2

    #@d5
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    #@d8
    move-result-object v10

    #@d9
    const/4 v11, 0x0

    #@da
    move-object/from16 v0, v21

    #@dc
    move/from16 v1, v25

    #@de
    invoke-direct {v0, v2, v10, v11, v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@e1
    .line 138
    .local v21, "dhParams":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    #@e3
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@e6
    move-result-object v10

    #@e7
    move-object/from16 v0, v21

    #@e9
    invoke-direct {v2, v10, v0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    #@ec
    return-object v2

    #@ed
    .line 135
    .end local v21    # "dhParams":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .end local v25    # "l":I
    :cond_5
    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->intValue()I

    #@f0
    move-result v25

    #@f1
    .restart local v25    # "l":I
    goto :goto_0

    #@f2
    .line 150
    .end local v19    # "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .end local v25    # "l":I
    .end local v26    # "lVal":Ljava/math/BigInteger;
    .end local v28    # "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f5
    move-result-object v2

    #@f6
    sget-object v10, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f8
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@fb
    move-result v2

    #@fc
    if-nez v2, :cond_7

    #@fe
    .line 151
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@101
    move-result-object v2

    #@102
    sget-object v10, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@104
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@107
    move-result v2

    #@108
    .line 150
    if-eqz v2, :cond_9

    #@10a
    .line 153
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@10d
    move-result-object v19

    #@10e
    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@110
    .line 154
    .restart local v19    # "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@113
    move-result-object v17

    #@114
    .line 156
    .local v17, "de":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/16 v27, 0x0

    #@116
    .line 157
    .local v27, "parameters":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    if-eqz v17, :cond_8

    #@118
    .line 159
    invoke-interface/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@11b
    move-result-object v2

    #@11c
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    #@11f
    move-result-object v29

    #@120
    .line 160
    .local v29, "params":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    new-instance v27, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@122
    .end local v27    # "parameters":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    #@125
    move-result-object v2

    #@126
    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    #@129
    move-result-object v10

    #@12a
    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    #@12d
    move-result-object v11

    #@12e
    move-object/from16 v0, v27

    #@130
    invoke-direct {v0, v2, v10, v11}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@133
    .line 163
    .end local v29    # "params":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    :cond_8
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    #@135
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@138
    move-result-object v10

    #@139
    move-object/from16 v0, v27

    #@13b
    invoke-direct {v2, v10, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    #@13e
    return-object v2

    #@13f
    .line 165
    .end local v17    # "de":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v19    # "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@142
    move-result-object v2

    #@143
    sget-object v10, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@145
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@148
    move-result v2

    #@149
    if-eqz v2, :cond_c

    #@14b
    .line 167
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@14e
    move-result-object v2

    #@14f
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@152
    move-result-object v30

    #@153
    .line 172
    .local v30, "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    #@156
    move-result v2

    #@157
    if-eqz v2, :cond_b

    #@159
    .line 174
    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@15c
    move-result-object v9

    #@15d
    check-cast v9, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15f
    .line 176
    .local v9, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v9}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@162
    move-result-object v34

    #@163
    .line 177
    .local v34, "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v34, :cond_a

    #@165
    .line 179
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@168
    move-result-object v34

    #@169
    .line 181
    :cond_a
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ECNamedDomainParameters;

    #@16b
    .line 182
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@16e
    move-result-object v10

    #@16f
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@172
    move-result-object v11

    #@173
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@176
    move-result-object v12

    #@177
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@17a
    move-result-object v13

    #@17b
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@17e
    move-result-object v14

    #@17f
    .line 181
    invoke-direct/range {v8 .. v14}, Lcom/android/org/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@182
    .line 191
    .end local v9    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v8, "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    :goto_1
    new-instance v24, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@184
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@187
    move-result-object v2

    #@188
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@18b
    move-result-object v2

    #@18c
    move-object/from16 v0, v24

    #@18e
    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@191
    .line 192
    .local v24, "key":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v18, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    #@193
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@196
    move-result-object v2

    #@197
    move-object/from16 v0, v18

    #@199
    move-object/from16 v1, v24

    #@19b
    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@19e
    .line 194
    .local v18, "derQ":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@1a0
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1a3
    move-result-object v10

    #@1a4
    invoke-direct {v2, v10, v8}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@1a7
    return-object v2

    #@1a8
    .line 186
    .end local v8    # "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v18    # "derQ":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    .end local v24    # "key":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v34    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_b
    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1ab
    move-result-object v2

    #@1ac
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@1af
    move-result-object v34

    #@1b0
    .line 187
    .restart local v34    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@1b2
    .line 188
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@1b5
    move-result-object v11

    #@1b6
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1b9
    move-result-object v12

    #@1ba
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@1bd
    move-result-object v13

    #@1be
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@1c1
    move-result-object v14

    #@1c2
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@1c5
    move-result-object v15

    #@1c6
    move-object v10, v8

    #@1c7
    .line 187
    invoke-direct/range {v10 .. v15}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@1ca
    .restart local v8    # "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_1

    #@1cb
    .line 198
    .end local v8    # "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v30    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .end local v34    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_c
    new-instance v2, Ljava/lang/RuntimeException;

    #@1cd
    const-string/jumbo v10, "algorithm identifier in key not recognised"

    #@1d0
    invoke-direct {v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1d3
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
