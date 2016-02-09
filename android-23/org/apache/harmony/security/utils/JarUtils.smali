.class public Lorg/apache/harmony/security/utils/JarUtils;
.super Ljava/lang/Object;
.source "JarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/utils/JarUtils$VerbatimX509Certificate;
    }
.end annotation


# static fields
.field private static final MESSAGE_DIGEST_OID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 55
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [I

    #@3
    fill-array-data v0, :array_0

    #@6
    .line 54
    sput-object v0, Lorg/apache/harmony/security/utils/JarUtils;->MESSAGE_DIGEST_OID:[I

    #@8
    .line 50
    return-void

    #@9
    .line 55
    nop

    #@a
    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static createChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 6
    .param p0, "signer"    # Ljava/security/cert/X509Certificate;
    .param p1, "candidates"    # [Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 233
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@4
    move-result-object v2

    #@5
    .line 236
    .local v2, "issuer":Ljava/security/Principal;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@8
    move-result-object v4

    #@9
    invoke-interface {v4, v2}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 237
    const/4 v4, 0x1

    #@10
    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    #@12
    aput-object p0, v4, v5

    #@14
    return-object v4

    #@15
    .line 240
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@17
    array-length v4, p1

    #@18
    add-int/lit8 v4, v4, 0x1

    #@1a
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@1d
    .line 241
    .local v0, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v0, v5, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@20
    .line 244
    const/4 v1, 0x1

    #@21
    .line 246
    .local v1, "count":I
    :cond_1
    invoke-static {v2, p1}, Lorg/apache/harmony/security/utils/JarUtils;->findCert(Ljava/security/Principal;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    #@24
    move-result-object v3

    #@25
    .line 247
    .local v3, "issuerCert":Ljava/security/cert/X509Certificate;
    if-nez v3, :cond_3

    #@27
    .line 261
    :cond_2
    :goto_0
    new-array v4, v1, [Ljava/security/cert/X509Certificate;

    #@29
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, [Ljava/security/cert/X509Certificate;

    #@2f
    return-object v4

    #@30
    .line 250
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33
    .line 251
    add-int/lit8 v1, v1, 0x1

    #@35
    .line 253
    array-length v4, p1

    #@36
    if-gt v1, v4, :cond_2

    #@38
    .line 256
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@3b
    move-result-object v2

    #@3c
    .line 257
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@3f
    move-result-object v4

    #@40
    invoke-interface {v4, v2}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v4

    #@44
    if-eqz v4, :cond_1

    #@46
    goto :goto_0
.end method

.method private static findCert(Ljava/security/Principal;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "issuer"    # Ljava/security/Principal;
    .param p1, "candidates"    # [Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 265
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@2
    if-ge v0, v1, :cond_1

    #@4
    .line 266
    aget-object v1, p1, v0

    #@6
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@9
    move-result-object v1

    #@a
    invoke-interface {p0, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 267
    aget-object v1, p1, v0

    #@12
    return-object v1

    #@13
    .line 265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 270
    :cond_1
    const/4 v1, 0x0

    #@17
    return-object v1
.end method

.method public static verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;)[Ljava/security/cert/Certificate;
    .locals 37
    .param p0, "signature"    # Ljava/io/InputStream;
    .param p1, "signatureBlock"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    new-instance v7, Lorg/apache/harmony/security/asn1/BerInputStream;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v7, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    #@7
    .line 72
    .local v7, "bis":Lorg/apache/harmony/security/asn1/BerInputStream;
    sget-object v35, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@9
    move-object/from16 v0, v35

    #@b
    invoke-virtual {v0, v7}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@e
    move-result-object v24

    #@f
    check-cast v24, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@11
    .line 73
    .local v24, "info":Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    #@14
    move-result-object v33

    #@15
    .line 74
    .local v33, "signedData":Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v33, :cond_0

    #@17
    .line 75
    new-instance v35, Ljava/io/IOException;

    #@19
    const-string/jumbo v36, "No SignedData found"

    #@1c
    invoke-direct/range {v35 .. v36}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v35

    #@20
    .line 78
    :cond_0
    invoke-virtual/range {v33 .. v33}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    #@23
    move-result-object v18

    #@24
    .line 79
    .local v18, "encCerts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/harmony/security/x509/Certificate;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->isEmpty()Z

    #@27
    move-result v35

    #@28
    if-eqz v35, :cond_1

    #@2a
    .line 80
    const/16 v35, 0x0

    #@2c
    return-object v35

    #@2d
    .line 82
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    #@30
    move-result v35

    #@31
    move/from16 v0, v35

    #@33
    new-array v8, v0, [Ljava/security/cert/X509Certificate;

    #@35
    .line 83
    .local v8, "certs":[Ljava/security/cert/X509Certificate;
    const-string/jumbo v35, "X.509"

    #@38
    invoke-static/range {v35 .. v35}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@3b
    move-result-object v9

    #@3c
    .line 84
    .local v9, "cf":Ljava/security/cert/CertificateFactory;
    const/16 v22, 0x0

    #@3e
    .line 85
    .local v22, "i":I
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@41
    move-result-object v17

    #@42
    .local v17, "encCert$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@45
    move-result v35

    #@46
    if-eqz v35, :cond_2

    #@48
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4b
    move-result-object v16

    #@4c
    check-cast v16, Lorg/apache/harmony/security/x509/Certificate;

    #@4e
    .line 86
    .local v16, "encCert":Lorg/apache/harmony/security/x509/Certificate;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/security/x509/Certificate;->getEncoded()[B

    #@51
    move-result-object v19

    #@52
    .line 87
    .local v19, "encoded":[B
    new-instance v25, Ljava/io/ByteArrayInputStream;

    #@54
    move-object/from16 v0, v25

    #@56
    move-object/from16 v1, v19

    #@58
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5b
    .line 88
    .local v25, "is":Ljava/io/InputStream;
    add-int/lit8 v23, v22, 0x1

    #@5d
    .end local v22    # "i":I
    .local v23, "i":I
    new-instance v36, Lorg/apache/harmony/security/utils/JarUtils$VerbatimX509Certificate;

    #@5f
    move-object/from16 v0, v25

    #@61
    invoke-virtual {v9, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@64
    move-result-object v35

    #@65
    check-cast v35, Ljava/security/cert/X509Certificate;

    #@67
    move-object/from16 v0, v36

    #@69
    move-object/from16 v1, v35

    #@6b
    move-object/from16 v2, v19

    #@6d
    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/security/utils/JarUtils$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@70
    aput-object v36, v8, v22

    #@72
    move/from16 v22, v23

    #@74
    .end local v23    # "i":I
    .restart local v22    # "i":I
    goto :goto_0

    #@75
    .line 92
    .end local v16    # "encCert":Lorg/apache/harmony/security/x509/Certificate;
    .end local v19    # "encoded":[B
    .end local v25    # "is":Ljava/io/InputStream;
    :cond_2
    invoke-virtual/range {v33 .. v33}, Lorg/apache/harmony/security/pkcs7/SignedData;->getSignerInfos()Ljava/util/List;

    #@78
    move-result-object v32

    #@79
    .line 94
    .local v32, "sigInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    #@7c
    move-result v35

    #@7d
    if-nez v35, :cond_4

    #@7f
    .line 95
    const/16 v35, 0x0

    #@81
    move-object/from16 v0, v32

    #@83
    move/from16 v1, v35

    #@85
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@88
    move-result-object v31

    #@89
    check-cast v31, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    #@8b
    .line 101
    .local v31, "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    invoke-virtual/range {v31 .. v31}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    #@8e
    move-result-object v26

    #@8f
    .line 104
    .local v26, "issuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {v31 .. v31}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getSerialNumber()Ljava/math/BigInteger;

    #@92
    move-result-object v34

    #@93
    .line 107
    .local v34, "snum":Ljava/math/BigInteger;
    const/16 v27, 0x0

    #@95
    .line 108
    .local v27, "issuerSertIndex":I
    const/16 v22, 0x0

    #@97
    :goto_1
    array-length v0, v8

    #@98
    move/from16 v35, v0

    #@9a
    move/from16 v0, v22

    #@9c
    move/from16 v1, v35

    #@9e
    if-ge v0, v1, :cond_3

    #@a0
    .line 109
    aget-object v35, v8, v22

    #@a2
    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@a5
    move-result-object v35

    #@a6
    move-object/from16 v0, v26

    #@a8
    move-object/from16 v1, v35

    #@aa
    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@ad
    move-result v35

    #@ae
    if-eqz v35, :cond_5

    #@b0
    .line 110
    aget-object v35, v8, v22

    #@b2
    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@b5
    move-result-object v35

    #@b6
    invoke-virtual/range {v34 .. v35}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result v35

    #@ba
    .line 109
    if-eqz v35, :cond_5

    #@bc
    .line 111
    move/from16 v27, v22

    #@be
    .line 115
    :cond_3
    array-length v0, v8

    #@bf
    move/from16 v35, v0

    #@c1
    move/from16 v0, v22

    #@c3
    move/from16 v1, v35

    #@c5
    if-ne v0, v1, :cond_6

    #@c7
    .line 116
    const/16 v35, 0x0

    #@c9
    return-object v35

    #@ca
    .line 97
    .end local v26    # "issuer":Ljavax/security/auth/x500/X500Principal;
    .end local v27    # "issuerSertIndex":I
    .end local v31    # "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .end local v34    # "snum":Ljava/math/BigInteger;
    :cond_4
    const/16 v35, 0x0

    #@cc
    return-object v35

    #@cd
    .line 108
    .restart local v26    # "issuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v27    # "issuerSertIndex":I
    .restart local v31    # "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .restart local v34    # "snum":Ljava/math/BigInteger;
    :cond_5
    add-int/lit8 v22, v22, 0x1

    #@cf
    goto :goto_1

    #@d0
    .line 119
    :cond_6
    aget-object v35, v8, v27

    #@d2
    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    #@d5
    move-result v35

    #@d6
    if-eqz v35, :cond_7

    #@d8
    .line 120
    new-instance v35, Ljava/lang/SecurityException;

    #@da
    const-string/jumbo v36, "Can not recognize a critical extension"

    #@dd
    invoke-direct/range {v35 .. v36}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@e0
    throw v35

    #@e1
    .line 124
    :cond_7
    invoke-virtual/range {v31 .. v31}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    #@e4
    move-result-object v12

    #@e5
    .line 125
    .local v12, "daOid":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithmName()Ljava/lang/String;

    #@e8
    move-result-object v11

    #@e9
    .line 126
    .local v11, "daName":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithm()Ljava/lang/String;

    #@ec
    move-result-object v14

    #@ed
    .line 127
    .local v14, "deaOid":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithmName()Ljava/lang/String;

    #@f0
    move-result-object v13

    #@f1
    .line 129
    .local v13, "deaName":Ljava/lang/String;
    const/4 v5, 0x0

    #@f2
    .line 130
    .local v5, "alg":Ljava/lang/String;
    const/16 v30, 0x0

    #@f4
    .line 132
    .local v30, "sig":Ljava/security/Signature;
    if-eqz v12, :cond_8

    #@f6
    if-eqz v14, :cond_8

    #@f8
    .line 133
    new-instance v35, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    move-object/from16 v0, v35

    #@ff
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v35

    #@103
    const-string/jumbo v36, "with"

    #@106
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v35

    #@10a
    move-object/from16 v0, v35

    #@10c
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v35

    #@110
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@113
    move-result-object v5

    #@114
    .line 135
    .local v5, "alg":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@117
    move-result-object v30

    #@118
    .line 140
    .end local v30    # "sig":Ljava/security/Signature;
    :goto_2
    if-nez v30, :cond_8

    #@11a
    if-eqz v11, :cond_8

    #@11c
    if-eqz v13, :cond_8

    #@11e
    .line 141
    new-instance v35, Ljava/lang/StringBuilder;

    #@120
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    move-object/from16 v0, v35

    #@125
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v35

    #@129
    const-string/jumbo v36, "with"

    #@12c
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v35

    #@130
    move-object/from16 v0, v35

    #@132
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v35

    #@136
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v5

    #@13a
    .line 143
    :try_start_1
    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    #@13d
    move-result-object v30

    #@13e
    .line 149
    .end local v5    # "alg":Ljava/lang/String;
    :cond_8
    :goto_3
    if-nez v30, :cond_9

    #@140
    if-eqz v14, :cond_9

    #@142
    .line 150
    move-object v5, v14

    #@143
    .line 152
    .restart local v5    # "alg":Ljava/lang/String;
    :try_start_2
    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    #@146
    move-result-object v30

    #@147
    .line 156
    :goto_4
    if-nez v30, :cond_9

    #@149
    .line 157
    move-object v5, v13

    #@14a
    .line 159
    :try_start_3
    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3

    #@14d
    move-result-object v30

    #@14e
    .line 166
    .end local v5    # "alg":Ljava/lang/String;
    :cond_9
    :goto_5
    if-nez v30, :cond_a

    #@150
    .line 167
    const/16 v35, 0x0

    #@152
    return-object v35

    #@153
    .line 136
    .restart local v5    # "alg":Ljava/lang/String;
    .restart local v30    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v15

    #@154
    .local v15, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_2

    #@155
    .line 144
    .end local v15    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v30    # "sig":Ljava/security/Signature;
    :catch_1
    move-exception v15

    #@156
    .restart local v15    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_3

    #@157
    .line 153
    .end local v15    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v15

    #@158
    .restart local v15    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_4

    #@159
    .line 160
    .end local v15    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v15

    #@15a
    .restart local v15    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_5

    #@15b
    .line 170
    .end local v5    # "alg":Ljava/lang/String;
    .end local v15    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_a
    aget-object v35, v8, v27

    #@15d
    move-object/from16 v0, v30

    #@15f
    move-object/from16 v1, v35

    #@161
    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    #@164
    .line 175
    invoke-virtual/range {v31 .. v31}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getAuthenticatedAttributes()Ljava/util/List;

    #@167
    move-result-object v6

    #@168
    .line 177
    .local v6, "atr":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    #@16b
    move-result v35

    #@16c
    move/from16 v0, v35

    #@16e
    new-array v0, v0, [B

    #@170
    move-object/from16 v29, v0

    #@172
    .line 178
    .local v29, "sfBytes":[B
    move-object/from16 v0, p0

    #@174
    move-object/from16 v1, v29

    #@176
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    #@179
    .line 180
    if-nez v6, :cond_c

    #@17b
    .line 181
    move-object/from16 v0, v30

    #@17d
    move-object/from16 v1, v29

    #@17f
    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    #@182
    .line 224
    :cond_b
    invoke-virtual/range {v31 .. v31}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncryptedDigest()[B

    #@185
    move-result-object v35

    #@186
    move-object/from16 v0, v30

    #@188
    move-object/from16 v1, v35

    #@18a
    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    #@18d
    move-result v35

    #@18e
    if-nez v35, :cond_15

    #@190
    .line 225
    new-instance v35, Ljava/lang/SecurityException;

    #@192
    const-string/jumbo v36, "Incorrect signature"

    #@195
    invoke-direct/range {v35 .. v36}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@198
    throw v35

    #@199
    .line 183
    :cond_c
    invoke-virtual/range {v31 .. v31}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncodedAuthenticatedAttributes()[B

    #@19c
    move-result-object v35

    #@19d
    move-object/from16 v0, v30

    #@19f
    move-object/from16 v1, v35

    #@1a1
    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    #@1a4
    .line 187
    const/16 v21, 0x0

    #@1a6
    .line 188
    .local v21, "existingDigest":[B
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a9
    move-result-object v4

    #@1aa
    .end local v21    # "existingDigest":[B
    .local v4, "a$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1ad
    move-result v35

    #@1ae
    if-eqz v35, :cond_10

    #@1b0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b3
    move-result-object v3

    #@1b4
    check-cast v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    #@1b6
    .line 189
    .local v3, "a":Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@1b9
    move-result-object v35

    #@1ba
    invoke-virtual/range {v35 .. v35}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    #@1bd
    move-result-object v35

    #@1be
    sget-object v36, Lorg/apache/harmony/security/utils/JarUtils;->MESSAGE_DIGEST_OID:[I

    #@1c0
    invoke-static/range {v35 .. v36}, Ljava/util/Arrays;->equals([I[I)Z

    #@1c3
    move-result v35

    #@1c4
    if-eqz v35, :cond_d

    #@1c6
    .line 190
    if-eqz v21, :cond_e

    #@1c8
    .line 191
    new-instance v35, Ljava/lang/SecurityException;

    #@1ca
    const-string/jumbo v36, "Too many MessageDigest attributes"

    #@1cd
    invoke-direct/range {v35 .. v36}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1d0
    throw v35

    #@1d1
    .line 193
    :cond_e
    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getValue()Lorg/apache/harmony/security/x501/AttributeValue;

    #@1d4
    move-result-object v35

    #@1d5
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@1d8
    move-result-object v36

    #@1d9
    invoke-virtual/range {v35 .. v36}, Lorg/apache/harmony/security/x501/AttributeValue;->getValues(Lorg/apache/harmony/security/asn1/ASN1Type;)Ljava/util/Collection;

    #@1dc
    move-result-object v20

    #@1dd
    .line 194
    .local v20, "entries":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    #@1e0
    move-result v35

    #@1e1
    const/16 v36, 0x1

    #@1e3
    move/from16 v0, v35

    #@1e5
    move/from16 v1, v36

    #@1e7
    if-eq v0, v1, :cond_f

    #@1e9
    .line 195
    new-instance v35, Ljava/lang/SecurityException;

    #@1eb
    const-string/jumbo v36, "Too many values for MessageDigest attribute"

    #@1ee
    invoke-direct/range {v35 .. v36}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1f1
    throw v35

    #@1f2
    .line 197
    :cond_f
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@1f5
    move-result-object v35

    #@1f6
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f9
    move-result-object v21

    #@1fa
    check-cast v21, [B

    #@1fc
    .local v21, "existingDigest":[B
    goto :goto_6

    #@1fd
    .line 203
    .end local v3    # "a":Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    .end local v20    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v21    # "existingDigest":[B
    :cond_10
    if-nez v21, :cond_11

    #@1ff
    .line 204
    new-instance v35, Ljava/lang/SecurityException;

    #@201
    const-string/jumbo v36, "Missing MessageDigest in Authenticated Attributes"

    #@204
    invoke-direct/range {v35 .. v36}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@207
    throw v35

    #@208
    .line 207
    :cond_11
    const/16 v28, 0x0

    #@20a
    .line 208
    .local v28, "md":Ljava/security/MessageDigest;
    if-eqz v12, :cond_12

    #@20c
    .line 209
    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@20f
    move-result-object v28

    #@210
    .line 211
    .end local v28    # "md":Ljava/security/MessageDigest;
    :cond_12
    if-nez v28, :cond_13

    #@212
    if-eqz v11, :cond_13

    #@214
    .line 212
    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@217
    move-result-object v28

    #@218
    .line 214
    :cond_13
    if-nez v28, :cond_14

    #@21a
    .line 215
    const/16 v35, 0x0

    #@21c
    return-object v35

    #@21d
    .line 218
    :cond_14
    invoke-virtual/range {v28 .. v29}, Ljava/security/MessageDigest;->digest([B)[B

    #@220
    move-result-object v10

    #@221
    .line 219
    .local v10, "computedDigest":[B
    move-object/from16 v0, v21

    #@223
    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([B[B)Z

    #@226
    move-result v35

    #@227
    if-nez v35, :cond_b

    #@229
    .line 220
    new-instance v35, Ljava/lang/SecurityException;

    #@22b
    const-string/jumbo v36, "Incorrect MD"

    #@22e
    invoke-direct/range {v35 .. v36}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@231
    throw v35

    #@232
    .line 228
    .end local v4    # "a$iterator":Ljava/util/Iterator;
    .end local v10    # "computedDigest":[B
    :cond_15
    aget-object v35, v8, v27

    #@234
    move-object/from16 v0, v35

    #@236
    invoke-static {v0, v8}, Lorg/apache/harmony/security/utils/JarUtils;->createChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    #@239
    move-result-object v35

    #@23a
    return-object v35
.end method
