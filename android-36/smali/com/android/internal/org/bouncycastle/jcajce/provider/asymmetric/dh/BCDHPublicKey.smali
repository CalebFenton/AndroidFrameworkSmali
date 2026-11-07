.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;
.super Ljava/lang/Object;
.source "BCDHPublicKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/DHPublicKey;


# static fields
.field static final whitelist serialVersionUID:J = -0x301d7d6f0dc1b04L


# instance fields
.field private transient blacklist dhPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

.field private transient blacklist dhSpec:Ljavax/crypto/spec/DHParameterSpec;

.field private transient blacklist info:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private blacklist y:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 20
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 112
    move-object/from16 v1, p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 113
    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->info:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 118
    :try_start_9
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_13c

    .line 123
    .local v0, "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    nop

    .line 125
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    .line 127
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 128
    .local v3, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    .line 131
    .local v4, "id":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-nez v5, :cond_cc

    invoke-direct {v1, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->isPKCSParam(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v5

    if-eqz v5, :cond_3c

    move-object/from16 v17, v0

    goto/16 :goto_ce

    .line 147
    :cond_3c
    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 149
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;

    move-result-object v5

    .line 151
    .local v5, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getValidationParams()Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;

    move-result-object v6

    .line 152
    .local v6, "validationParams":Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;
    if-eqz v6, :cond_80

    .line 154
    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    iget-object v8, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v9, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getP()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getG()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v13

    new-instance v14, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    .line 155
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->getSeed()[B

    move-result-object v15

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->getPgenCounter()Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v17, v0

    .end local v0    # "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .local v17, "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {v14, v15, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v7, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    goto :goto_a1

    .line 159
    .end local v17    # "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .restart local v0    # "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    :cond_80
    move-object/from16 v17, v0

    .end local v0    # "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .restart local v17    # "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    iget-object v7, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v8, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getG()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V

    invoke-direct {v0, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 161
    :goto_a1
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    iget-object v7, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 162
    .end local v5    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;
    .end local v6    # "validationParams":Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;
    goto/16 :goto_13b

    .line 165
    .end local v17    # "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .restart local v0    # "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    :cond_b0
    move-object/from16 v17, v0

    .end local v0    # "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .restart local v17    # "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown algorithm type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    .end local v17    # "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .restart local v0    # "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    :cond_cc
    move-object/from16 v17, v0

    .line 133
    .end local v0    # "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .restart local v17    # "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    :goto_ce
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;

    move-result-object v0

    .line 135
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v5

    if-eqz v5, :cond_111

    .line 137
    new-instance v5, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 138
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    iget-object v8, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v8}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v9}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v9

    iget-object v10, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v10}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v11, v10}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    goto :goto_13a

    .line 142
    :cond_111
    new-instance v5, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 143
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    iget-object v8, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v8}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v9}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 146
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;
    :goto_13a
    nop

    .line 167
    :goto_13b
    return-void

    .line 120
    .end local v3    # "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "id":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v17    # "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    :catch_13c
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "invalid info structure in DH public key"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;)V
    .registers 4
    .param p1, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    .line 89
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 90
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 91
    return-void
.end method

.method constructor blacklist <init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V
    .registers 7
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "dhSpec"    # Ljavax/crypto/spec/DHParameterSpec;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    .line 98
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 100
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    if-eqz v0, :cond_1a

    .line 102
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->getDomainParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    goto :goto_2e

    .line 106
    :cond_1a
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 108
    :goto_2e
    return-void
.end method

.method constructor blacklist <init>(Ljavax/crypto/interfaces/DHPublicKey;)V
    .registers 7
    .param p1, "key"    # Ljavax/crypto/interfaces/DHPublicKey;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    .line 73
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 74
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    if-eqz v0, :cond_27

    .line 76
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    .line 77
    .local v0, "dhSp":Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->getDomainParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 78
    .end local v0    # "dhSp":Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;
    goto :goto_41

    .line 81
    :cond_27
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 83
    :goto_41
    return-void
.end method

.method constructor blacklist <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .registers 7
    .param p1, "spec"    # Ljavax/crypto/spec/DHPublicKeySpec;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    .line 48
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHExtendedPublicKeySpec;

    if-eqz v0, :cond_17

    .line 50
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHExtendedPublicKeySpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHExtendedPublicKeySpec;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    goto :goto_26

    .line 54
    :cond_17
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 58
    :goto_26
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    if-eqz v0, :cond_3e

    .line 60
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    .line 61
    .local v0, "dhSp":Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->getDomainParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 62
    .end local v0    # "dhSp":Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;
    goto :goto_54

    .line 65
    :cond_3e
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 67
    :goto_54
    return-void
.end method

.method private blacklist isPKCSParam(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Z
    .registers 9
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 222
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    .line 224
    return v1

    .line 227
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-le v0, v3, :cond_12

    .line 229
    return v4

    .line 232
    :cond_12
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    .line 233
    .local v0, "l":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {p1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    .line 235
    .local v2, "p":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_3a

    .line 237
    return v4

    .line 240
    :cond_3a
    return v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 269
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 271
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->info:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 273
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 281
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 284
    return-void
.end method


# virtual methods
.method public blacklist engineGetKeyParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 252
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 254
    return v1

    .line 257
    :cond_6
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 259
    .local v0, "other":Ljavax/crypto/interfaces/DHPublicKey;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v2

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v3

    if-ne v2, v3, :cond_57

    const/4 v1, 0x1

    goto :goto_58

    :cond_57
    nop

    .line 259
    :goto_58
    return v1
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 171
    const-string v0, "DH"

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 11

    .line 181
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->info:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_b

    .line 183
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->info:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0

    return-object v0

    .line 186
    :cond_b
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 188
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->getDomainParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    .line 189
    .local v0, "params":Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getValidationParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    move-result-object v1

    .line 190
    .local v1, "validationParameters":Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;
    const/4 v2, 0x0

    .line 191
    .local v2, "vParams":Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;
    if-eqz v1, :cond_3a

    .line 193
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;->getSeed()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;->getCounter()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;-><init>([BI)V

    move-object v2, v3

    move-object v8, v2

    goto :goto_3b

    .line 191
    :cond_3a
    move-object v8, v2

    .line 195
    .end local v2    # "vParams":Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;
    .local v8, "vParams":Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;
    :goto_3b
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-direct {v2, v9, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v2

    return-object v2

    .line 197
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    .end local v1    # "validationParameters":Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;
    .end local v8    # "vParams":Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;
    :cond_67
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 176
    const-string v0, "X.509"

    return-object v0
.end method

.method public whitelist test-api getParams()Ljavax/crypto/spec/DHParameterSpec;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getY()Ljava/math/BigInteger;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v1

    xor-int/2addr v0, v1

    .line 245
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v2, "DH"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/DHUtil;->publicKeyToString(Ljava/lang/String;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
