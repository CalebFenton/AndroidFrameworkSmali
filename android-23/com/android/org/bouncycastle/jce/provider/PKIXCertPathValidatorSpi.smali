.class public Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;
    }
.end annotation


# instance fields
.field private final helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    #@3
    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@a
    .line 44
    return-void
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 52
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    move-object/from16 v0, p2

    #@2
    instance-of v4, v0, Ljava/security/cert/CertPathParameters;

    #@4
    if-nez v4, :cond_0

    #@6
    .line 61
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    #@8
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v7, "Parameters must be a "

    #@10
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    const-class v7, Ljava/security/cert/PKIXParameters;

    #@16
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@19
    move-result-object v7

    #@1a
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    .line 62
    const-string/jumbo v7, " instance."

    #@21
    .line 61
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v4

    #@2d
    .line 66
    :cond_0
    move-object/from16 v0, p2

    #@2f
    instance-of v4, v0, Ljava/security/cert/PKIXParameters;

    #@31
    if-eqz v4, :cond_2

    #@33
    .line 68
    new-instance v44, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@35
    move-object/from16 v4, p2

    #@37
    check-cast v4, Ljava/security/cert/PKIXParameters;

    #@39
    move-object/from16 v0, v44

    #@3b
    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    #@3e
    .line 70
    .local v44, "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v0, p2

    #@40
    instance-of v4, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    #@42
    if-eqz v4, :cond_1

    #@44
    move-object/from16 v36, p2

    #@46
    .line 72
    check-cast v36, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    #@48
    .line 74
    .local v36, "extPKIX":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual/range {v36 .. v36}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    #@4b
    move-result v4

    #@4c
    move-object/from16 v0, v44

    #@4e
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setUseDeltasEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@51
    .line 75
    invoke-virtual/range {v36 .. v36}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    #@54
    move-result v4

    #@55
    move-object/from16 v0, v44

    #@57
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@5a
    .line 78
    .end local v36    # "extPKIX":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_1
    invoke-virtual/range {v44 .. v44}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@5d
    move-result-object v21

    #@5e
    .line 97
    .end local v44    # "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local p2    # "params":Ljava/security/cert/CertPathParameters;
    .local v21, "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :goto_0
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    #@61
    move-result-object v4

    #@62
    if-nez v4, :cond_5

    #@64
    .line 99
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    #@66
    .line 100
    const-string/jumbo v5, "trustAnchors is null, this is not allowed for certification path validation."

    #@69
    .line 99
    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v4

    #@6d
    .line 80
    .end local v21    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p2    # "params":Ljava/security/cert/CertPathParameters;
    :cond_2
    move-object/from16 v0, p2

    #@6f
    instance-of v4, v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    #@71
    if-eqz v4, :cond_3

    #@73
    .line 82
    check-cast p2, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    #@75
    .end local p2    # "params":Ljava/security/cert/CertPathParameters;
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@78
    move-result-object v21

    #@79
    .restart local v21    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_0

    #@7a
    .line 86
    .end local v21    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p2    # "params":Ljava/security/cert/CertPathParameters;
    :cond_3
    move-object/from16 v0, p2

    #@7c
    instance-of v4, v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@7e
    if-eqz v4, :cond_4

    #@80
    move-object/from16 v21, p2

    #@82
    .line 89
    check-cast v21, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@84
    .restart local v21    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_0

    #@85
    .line 93
    .end local v21    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_4
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    #@87
    const-string/jumbo v5, "Expecting PKIX algorithm parameters"

    #@8a
    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v4

    #@8e
    .line 110
    .end local p2    # "params":Ljava/security/cert/CertPathParameters;
    .restart local v21    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@91
    move-result-object v29

    #@92
    .line 111
    .local v29, "certs":Ljava/util/List;
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    #@95
    move-result v42

    #@96
    .line 113
    .local v42, "n":I
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    #@99
    move-result v4

    #@9a
    if-eqz v4, :cond_6

    #@9c
    .line 115
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@9e
    const-string/jumbo v5, "Certification path is empty."

    #@a1
    const/4 v7, 0x0

    #@a2
    const/4 v8, 0x0

    #@a3
    move-object/from16 v0, p1

    #@a5
    invoke-direct {v4, v5, v7, v0, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@a8
    throw v4

    #@a9
    .line 119
    :cond_6
    const/4 v4, 0x0

    #@aa
    move-object/from16 v0, v29

    #@ac
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@af
    move-result-object v27

    #@b0
    check-cast v27, Ljava/security/cert/X509Certificate;

    #@b2
    .line 121
    .local v27, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v27, :cond_7

    #@b4
    .line 122
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@b7
    move-result-object v47

    #@b8
    .line 123
    .local v47, "serial":Ljava/math/BigInteger;
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->-get0()Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    #@bb
    move-result-object v4

    #@bc
    move-object/from16 v0, v47

    #@be
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->isSerialNumberBlackListed(Ljava/math/BigInteger;)Z

    #@c1
    move-result v4

    #@c2
    if-eqz v4, :cond_7

    #@c4
    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    const-string/jumbo v5, "Certificate revocation of serial 0x"

    #@cc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v4

    #@d0
    const/16 v5, 0x10

    #@d2
    move-object/from16 v0, v47

    #@d4
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@d7
    move-result-object v5

    #@d8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v4

    #@dc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v41

    #@e0
    .line 126
    .local v41, "message":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@e2
    move-object/from16 v0, v41

    #@e4
    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e7
    .line 127
    new-instance v32, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@e9
    move-object/from16 v0, v32

    #@eb
    move-object/from16 v1, v41

    #@ed
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@f0
    .line 128
    .local v32, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@f2
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    #@f5
    move-result-object v5

    #@f6
    const/4 v7, 0x0

    #@f7
    move-object/from16 v0, v32

    #@f9
    move-object/from16 v1, p1

    #@fb
    invoke-direct {v4, v5, v0, v1, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@fe
    throw v4

    #@ff
    .line 142
    .end local v32    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v41    # "message":Ljava/lang/String;
    .end local v47    # "serial":Ljava/math/BigInteger;
    :cond_7
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getInitialPolicies()Ljava/util/Set;

    #@102
    move-result-object v22

    #@103
    .line 150
    .local v22, "userInitialPolicySet":Ljava/util/Set;
    :try_start_0
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    #@106
    move-result v4

    #@107
    add-int/lit8 v4, v4, -0x1

    #@109
    move-object/from16 v0, v29

    #@10b
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10e
    move-result-object v4

    #@10f
    check-cast v4, Ljava/security/cert/X509Certificate;

    #@111
    .line 151
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    #@114
    move-result-object v5

    #@115
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    #@118
    move-result-object v7

    #@119
    .line 150
    invoke-static {v4, v5, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    #@11c
    move-result-object v48

    #@11d
    .line 158
    .local v48, "trust":Ljava/security/cert/TrustAnchor;
    if-nez v48, :cond_8

    #@11f
    .line 160
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@121
    const-string/jumbo v5, "Trust anchor for certification path not found."

    #@124
    const/4 v7, 0x0

    #@125
    const/4 v8, -0x1

    #@126
    move-object/from16 v0, p1

    #@128
    invoke-direct {v4, v5, v7, v0, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@12b
    throw v4

    #@12c
    .line 154
    .end local v48    # "trust":Ljava/security/cert/TrustAnchor;
    :catch_0
    move-exception v32

    #@12d
    .line 155
    .restart local v32    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@12f
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    #@132
    move-result-object v5

    #@133
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    #@136
    move-result v7

    #@137
    add-int/lit8 v7, v7, -0x1

    #@139
    move-object/from16 v0, v32

    #@13b
    move-object/from16 v1, p1

    #@13d
    invoke-direct {v4, v5, v0, v1, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@140
    throw v4

    #@141
    .line 164
    .end local v32    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v48    # "trust":Ljava/security/cert/TrustAnchor;
    :cond_8
    new-instance v4, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@143
    move-object/from16 v0, v21

    #@145
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    #@148
    move-object/from16 v0, v48

    #@14a
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@14d
    move-result-object v4

    #@14e
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@151
    move-result-object v21

    #@152
    .line 170
    const/4 v9, 0x0

    #@153
    .line 181
    .local v9, "index":I
    add-int/lit8 v4, v42, 0x1

    #@155
    new-array v0, v4, [Ljava/util/ArrayList;

    #@157
    move-object/from16 v18, v0

    #@159
    .line 182
    .local v18, "policyNodes":[Ljava/util/List;
    const/16 v39, 0x0

    #@15b
    .local v39, "j":I
    :goto_1
    move-object/from16 v0, v18

    #@15d
    array-length v4, v0

    #@15e
    move/from16 v0, v39

    #@160
    if-ge v0, v4, :cond_9

    #@162
    .line 184
    new-instance v4, Ljava/util/ArrayList;

    #@164
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@167
    aput-object v4, v18, v39

    #@169
    .line 182
    add-int/lit8 v39, v39, 0x1

    #@16b
    goto :goto_1

    #@16c
    .line 187
    :cond_9
    new-instance v6, Ljava/util/HashSet;

    #@16e
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@171
    .line 189
    .local v6, "policySet":Ljava/util/Set;
    const-string/jumbo v4, "2.5.29.32.0"

    #@174
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@177
    .line 191
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@179
    new-instance v4, Ljava/util/ArrayList;

    #@17b
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@17e
    new-instance v8, Ljava/util/HashSet;

    #@180
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    #@183
    .line 192
    const-string/jumbo v9, "2.5.29.32.0"

    #@186
    .line 191
    .end local v9    # "index":I
    const/4 v5, 0x0

    #@187
    const/4 v7, 0x0

    #@188
    .line 192
    const/4 v10, 0x0

    #@189
    .line 191
    invoke-direct/range {v3 .. v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    #@18c
    .line 194
    .local v3, "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const/4 v4, 0x0

    #@18d
    aget-object v4, v18, v4

    #@18f
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@192
    .line 199
    new-instance v43, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    #@194
    invoke-direct/range {v43 .. v43}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    #@197
    .line 204
    .local v43, "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    new-instance v16, Ljava/util/HashSet;

    #@199
    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    #@19c
    .line 206
    .local v16, "acceptablePolicies":Ljava/util/Set;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    #@19f
    move-result v4

    #@1a0
    if-eqz v4, :cond_b

    #@1a2
    .line 208
    const/16 v35, 0x0

    #@1a4
    .line 220
    .local v35, "explicitPolicy":I
    :goto_2
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isAnyPolicyInhibited()Z

    #@1a7
    move-result v4

    #@1a8
    if-eqz v4, :cond_c

    #@1aa
    .line 222
    const/16 v19, 0x0

    #@1ac
    .line 234
    .local v19, "inhibitAnyPolicy":I
    :goto_3
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isPolicyMappingInhibited()Z

    #@1af
    move-result v4

    #@1b0
    if-eqz v4, :cond_d

    #@1b2
    .line 236
    const/16 v46, 0x0

    #@1b4
    .line 249
    .local v46, "policyMapping":I
    :goto_4
    invoke-virtual/range {v48 .. v48}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@1b7
    move-result-object v13

    #@1b8
    .line 252
    .local v13, "sign":Ljava/security/cert/X509Certificate;
    if-eqz v13, :cond_e

    #@1ba
    .line 254
    :try_start_1
    invoke-static {v13}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@1bd
    move-result-object v12

    #@1be
    .line 255
    .local v12, "workingIssuerName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@1c1
    move-result-object v10

    #@1c2
    .line 269
    .local v10, "workingPublicKey":Ljava/security/PublicKey;
    :goto_5
    const/16 v49, 0x0

    #@1c4
    .line 272
    .local v49, "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_2
    invoke-static {v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    #@1c7
    move-result-object v49

    #@1c8
    .line 279
    .local v49, "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual/range {v49 .. v49}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1cb
    move-result-object v50

    #@1cc
    .line 280
    .local v50, "workingPublicKeyAlgorithm":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual/range {v49 .. v49}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1cf
    move-result-object v51

    #@1d0
    .line 285
    .local v51, "workingPublicKeyParameters":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    move/from16 v40, v42

    #@1d2
    .line 291
    .local v40, "maxPathLength":I
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@1d5
    move-result-object v4

    #@1d6
    if-eqz v4, :cond_a

    #@1d8
    .line 292
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@1db
    move-result-object v5

    #@1dc
    const/4 v4, 0x0

    #@1dd
    move-object/from16 v0, v29

    #@1df
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e2
    move-result-object v4

    #@1e3
    check-cast v4, Ljava/security/cert/X509Certificate;

    #@1e5
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    #@1e8
    move-result v4

    #@1e9
    if-eqz v4, :cond_f

    #@1eb
    .line 301
    :cond_a
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertPathCheckers()Ljava/util/List;

    #@1ee
    move-result-object v45

    #@1ef
    .line 302
    .local v45, "pathCheckers":Ljava/util/List;
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1f2
    move-result-object v28

    #@1f3
    .line 303
    .local v28, "certIter":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    #@1f6
    move-result v4

    #@1f7
    if-eqz v4, :cond_10

    #@1f9
    .line 305
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1fc
    move-result-object v4

    #@1fd
    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    #@1ff
    const/4 v5, 0x0

    #@200
    invoke-virtual {v4, v5}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    #@203
    goto :goto_6

    #@204
    .line 212
    .end local v10    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v12    # "workingIssuerName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .end local v13    # "sign":Ljava/security/cert/X509Certificate;
    .end local v19    # "inhibitAnyPolicy":I
    .end local v28    # "certIter":Ljava/util/Iterator;
    .end local v35    # "explicitPolicy":I
    .end local v40    # "maxPathLength":I
    .end local v45    # "pathCheckers":Ljava/util/List;
    .end local v46    # "policyMapping":I
    .end local v49    # "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v50    # "workingPublicKeyAlgorithm":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v51    # "workingPublicKeyParameters":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_b
    add-int/lit8 v35, v42, 0x1

    #@206
    .restart local v35    # "explicitPolicy":I
    goto :goto_2

    #@207
    .line 226
    :cond_c
    add-int/lit8 v19, v42, 0x1

    #@209
    .restart local v19    # "inhibitAnyPolicy":I
    goto :goto_3

    #@20a
    .line 240
    :cond_d
    add-int/lit8 v46, v42, 0x1

    #@20c
    .restart local v46    # "policyMapping":I
    goto :goto_4

    #@20d
    .line 259
    .restart local v13    # "sign":Ljava/security/cert/X509Certificate;
    :cond_e
    :try_start_3
    invoke-static/range {v48 .. v48}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getCA(Ljava/security/cert/TrustAnchor;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@210
    move-result-object v12

    #@211
    .line 260
    .restart local v12    # "workingIssuerName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual/range {v48 .. v48}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    #@214
    move-result-object v10

    #@215
    .restart local v10    # "workingPublicKey":Ljava/security/PublicKey;
    goto :goto_5

    #@216
    .line 264
    .end local v10    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v12    # "workingIssuerName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :catch_1
    move-exception v34

    #@217
    .line 265
    .local v34, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@219
    const-string/jumbo v5, "Subject of trust anchor could not be (re)encoded."

    #@21c
    .line 266
    const/4 v7, -0x1

    #@21d
    .line 265
    move-object/from16 v0, v34

    #@21f
    move-object/from16 v1, p1

    #@221
    invoke-direct {v4, v5, v0, v1, v7}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@224
    throw v4

    #@225
    .line 275
    .end local v34    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "workingPublicKey":Ljava/security/PublicKey;
    .restart local v12    # "workingIssuerName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .local v49, "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :catch_2
    move-exception v33

    #@226
    .line 276
    .local v33, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@228
    .line 277
    const-string/jumbo v5, "Algorithm identifier of public key of trust anchor could not be read."

    #@22b
    const/4 v7, -0x1

    #@22c
    .line 276
    move-object/from16 v0, v33

    #@22e
    move-object/from16 v1, p1

    #@230
    invoke-direct {v4, v5, v0, v1, v7}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@233
    throw v4

    #@234
    .line 294
    .end local v33    # "e":Ljava/security/cert/CertPathValidatorException;
    .restart local v40    # "maxPathLength":I
    .local v49, "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v50    # "workingPublicKeyAlgorithm":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v51    # "workingPublicKeyParameters":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_f
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@236
    .line 295
    const-string/jumbo v5, "Target certificate in certification path does not match targetConstraints."

    #@239
    const/4 v7, 0x0

    #@23a
    const/4 v8, 0x0

    #@23b
    .line 294
    move-object/from16 v0, p1

    #@23d
    invoke-direct {v4, v5, v7, v0, v8}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@240
    throw v4

    #@241
    .line 308
    .restart local v28    # "certIter":Ljava/util/Iterator;
    .restart local v45    # "pathCheckers":Ljava/util/List;
    :cond_10
    const/16 v27, 0x0

    #@243
    .line 310
    .local v27, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    #@246
    move-result v4

    #@247
    add-int/lit8 v9, v4, -0x1

    #@249
    .end local v27    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v9    # "index":I
    :goto_7
    if-ltz v9, :cond_16

    #@24b
    .line 313
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->-get0()Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    #@24e
    move-result-object v4

    #@24f
    invoke-virtual {v4, v10}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->isPublicKeyBlackListed(Ljava/security/PublicKey;)Z

    #@252
    move-result v4

    #@253
    if-eqz v4, :cond_11

    #@255
    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    #@257
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25a
    const-string/jumbo v5, "Certificate revocation of public key "

    #@25d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@260
    move-result-object v4

    #@261
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v4

    #@265
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@268
    move-result-object v41

    #@269
    .line 316
    .restart local v41    # "message":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@26b
    move-object/from16 v0, v41

    #@26d
    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@270
    .line 317
    new-instance v32, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@272
    move-object/from16 v0, v32

    #@274
    move-object/from16 v1, v41

    #@276
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@279
    .line 318
    .restart local v32    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@27b
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    #@27e
    move-result-object v5

    #@27f
    move-object/from16 v0, v32

    #@281
    move-object/from16 v1, p1

    #@283
    invoke-direct {v4, v5, v0, v1, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@286
    throw v4

    #@287
    .line 326
    .end local v32    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v41    # "message":Ljava/lang/String;
    :cond_11
    sub-int v37, v42, v9

    #@289
    .line 334
    .local v37, "i":I
    move-object/from16 v0, v29

    #@28b
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@28e
    move-result-object v27

    #@28f
    check-cast v27, Ljava/security/cert/X509Certificate;

    #@291
    .line 335
    .local v27, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    #@294
    move-result v4

    #@295
    add-int/lit8 v4, v4, -0x1

    #@297
    if-ne v9, v4, :cond_12

    #@299
    const/4 v11, 0x1

    #@29a
    .line 342
    .local v11, "verificationAlreadyPerformed":Z
    :goto_8
    move-object/from16 v0, p0

    #@29c
    iget-object v14, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@29e
    move-object/from16 v7, p1

    #@2a0
    move-object/from16 v8, v21

    #@2a2
    .line 341
    invoke-static/range {v7 .. v14}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;ILjava/security/PublicKey;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    #@2a5
    .line 344
    move-object/from16 v0, p1

    #@2a7
    move-object/from16 v1, v43

    #@2a9
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    #@2ac
    move-object/from16 v14, p1

    #@2ae
    move v15, v9

    #@2af
    move-object/from16 v17, v3

    #@2b1
    .line 346
    invoke-static/range {v14 .. v19}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@2b4
    move-result-object v3

    #@2b5
    .line 349
    move-object/from16 v0, p1

    #@2b7
    invoke-static {v0, v9, v3}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@2ba
    move-result-object v3

    #@2bb
    .line 351
    move-object/from16 v0, p1

    #@2bd
    move/from16 v1, v35

    #@2bf
    invoke-static {v0, v9, v3, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    #@2c2
    .line 357
    move/from16 v0, v37

    #@2c4
    move/from16 v1, v42

    #@2c6
    if-eq v0, v1, :cond_14

    #@2c8
    .line 359
    if-eqz v27, :cond_13

    #@2ca
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getVersion()I

    #@2cd
    move-result v4

    #@2ce
    const/4 v5, 0x1

    #@2cf
    if-ne v4, v5, :cond_13

    #@2d1
    .line 361
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@2d3
    const-string/jumbo v5, "Version 1 certificates can\'t be used as CA ones."

    #@2d6
    const/4 v7, 0x0

    #@2d7
    move-object/from16 v0, p1

    #@2d9
    invoke-direct {v4, v5, v7, v0, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@2dc
    throw v4

    #@2dd
    .line 335
    .end local v11    # "verificationAlreadyPerformed":Z
    :cond_12
    const/4 v11, 0x0

    #@2de
    .restart local v11    # "verificationAlreadyPerformed":Z
    goto :goto_8

    #@2df
    .line 365
    :cond_13
    move-object/from16 v0, p1

    #@2e1
    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    #@2e4
    .line 367
    move-object/from16 v0, p1

    #@2e6
    move-object/from16 v1, v18

    #@2e8
    move/from16 v2, v46

    #@2ea
    invoke-static {v0, v9, v1, v3, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@2ed
    move-result-object v3

    #@2ee
    .line 370
    move-object/from16 v0, p1

    #@2f0
    move-object/from16 v1, v43

    #@2f2
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    #@2f5
    .line 373
    move-object/from16 v0, p1

    #@2f7
    move/from16 v1, v35

    #@2f9
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    #@2fc
    move-result v35

    #@2fd
    .line 374
    move-object/from16 v0, p1

    #@2ff
    move/from16 v1, v46

    #@301
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    #@304
    move-result v46

    #@305
    .line 375
    move-object/from16 v0, p1

    #@307
    move/from16 v1, v19

    #@309
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    #@30c
    move-result v19

    #@30d
    .line 380
    move-object/from16 v0, p1

    #@30f
    move/from16 v1, v35

    #@311
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    #@314
    move-result v35

    #@315
    .line 381
    move-object/from16 v0, p1

    #@317
    move/from16 v1, v46

    #@319
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    #@31c
    move-result v46

    #@31d
    .line 384
    move-object/from16 v0, p1

    #@31f
    move/from16 v1, v19

    #@321
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    #@324
    move-result v19

    #@325
    .line 387
    move-object/from16 v0, p1

    #@327
    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    #@32a
    .line 390
    move-object/from16 v0, p1

    #@32c
    move/from16 v1, v40

    #@32e
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    #@331
    move-result v40

    #@332
    .line 393
    move-object/from16 v0, p1

    #@334
    move/from16 v1, v40

    #@336
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    #@339
    move-result v40

    #@33a
    .line 396
    move-object/from16 v0, p1

    #@33c
    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    #@33f
    .line 398
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@342
    move-result-object v30

    #@343
    .line 399
    .local v30, "criticalExtensions":Ljava/util/Set;
    if-eqz v30, :cond_15

    #@345
    .line 401
    new-instance v31, Ljava/util/HashSet;

    #@347
    move-object/from16 v0, v31

    #@349
    move-object/from16 v1, v30

    #@34b
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@34e
    .line 404
    .end local v30    # "criticalExtensions":Ljava/util/Set;
    .local v31, "criticalExtensions":Ljava/util/Set;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    #@350
    move-object/from16 v0, v31

    #@352
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@355
    .line 405
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    #@357
    move-object/from16 v0, v31

    #@359
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@35c
    .line 406
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    #@35e
    move-object/from16 v0, v31

    #@360
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@363
    .line 407
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    #@365
    move-object/from16 v0, v31

    #@367
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@36a
    .line 408
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    #@36c
    move-object/from16 v0, v31

    #@36e
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@371
    .line 409
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    #@373
    move-object/from16 v0, v31

    #@375
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@378
    .line 410
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    #@37a
    move-object/from16 v0, v31

    #@37c
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@37f
    .line 411
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    #@381
    move-object/from16 v0, v31

    #@383
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@386
    .line 412
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    #@388
    move-object/from16 v0, v31

    #@38a
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@38d
    .line 413
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    #@38f
    move-object/from16 v0, v31

    #@391
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@394
    move-object/from16 v30, v31

    #@396
    .line 421
    .end local v31    # "criticalExtensions":Ljava/util/Set;
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    :goto_9
    move-object/from16 v0, p1

    #@398
    move-object/from16 v1, v30

    #@39a
    move-object/from16 v2, v45

    #@39c
    invoke-static {v0, v9, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    #@39f
    .line 424
    move-object/from16 v13, v27

    #@3a1
    .line 427
    invoke-static {v13}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@3a4
    move-result-object v12

    #@3a5
    .line 432
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3a8
    move-result-object v4

    #@3a9
    move-object/from16 v0, p0

    #@3ab
    iget-object v5, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@3ad
    invoke-static {v4, v9, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_3

    #@3b0
    move-result-object v10

    #@3b1
    .line 439
    invoke-static {v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3b4
    move-result-object v49

    #@3b5
    .line 441
    invoke-virtual/range {v49 .. v49}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3b8
    move-result-object v50

    #@3b9
    .line 443
    invoke-virtual/range {v49 .. v49}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3bc
    move-result-object v51

    #@3bd
    .line 310
    .end local v30    # "criticalExtensions":Ljava/util/Set;
    :cond_14
    add-int/lit8 v9, v9, -0x1

    #@3bf
    goto/16 :goto_7

    #@3c1
    .line 417
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    :cond_15
    new-instance v30, Ljava/util/HashSet;

    #@3c3
    .end local v30    # "criticalExtensions":Ljava/util/Set;
    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    #@3c6
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    goto :goto_9

    #@3c7
    .line 435
    :catch_3
    move-exception v33

    #@3c8
    .line 436
    .restart local v33    # "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@3ca
    const-string/jumbo v5, "Next working key could not be retrieved."

    #@3cd
    move-object/from16 v0, v33

    #@3cf
    move-object/from16 v1, p1

    #@3d1
    invoke-direct {v4, v5, v0, v1, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@3d4
    throw v4

    #@3d5
    .line 451
    .end local v11    # "verificationAlreadyPerformed":Z
    .end local v27    # "cert":Ljava/security/cert/X509Certificate;
    .end local v30    # "criticalExtensions":Ljava/util/Set;
    .end local v33    # "e":Ljava/security/cert/CertPathValidatorException;
    .end local v37    # "i":I
    :cond_16
    move/from16 v0, v35

    #@3d7
    move-object/from16 v1, v27

    #@3d9
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    #@3dc
    move-result v35

    #@3dd
    .line 453
    add-int/lit8 v4, v9, 0x1

    #@3df
    move-object/from16 v0, p1

    #@3e1
    move/from16 v1, v35

    #@3e3
    invoke-static {v0, v4, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    #@3e6
    move-result v35

    #@3e7
    .line 462
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@3ea
    move-result-object v30

    #@3eb
    .line 464
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    if-eqz v30, :cond_18

    #@3ed
    .line 466
    new-instance v31, Ljava/util/HashSet;

    #@3ef
    move-object/from16 v0, v31

    #@3f1
    move-object/from16 v1, v30

    #@3f3
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@3f6
    .line 468
    .end local v30    # "criticalExtensions":Ljava/util/Set;
    .restart local v31    # "criticalExtensions":Ljava/util/Set;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    #@3f8
    move-object/from16 v0, v31

    #@3fa
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@3fd
    .line 469
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    #@3ff
    move-object/from16 v0, v31

    #@401
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@404
    .line 470
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    #@406
    move-object/from16 v0, v31

    #@408
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@40b
    .line 471
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    #@40d
    move-object/from16 v0, v31

    #@40f
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@412
    .line 472
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    #@414
    move-object/from16 v0, v31

    #@416
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@419
    .line 473
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    #@41b
    move-object/from16 v0, v31

    #@41d
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@420
    .line 474
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    #@422
    move-object/from16 v0, v31

    #@424
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@427
    .line 475
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    #@429
    move-object/from16 v0, v31

    #@42b
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@42e
    .line 476
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    #@430
    move-object/from16 v0, v31

    #@432
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@435
    .line 477
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    #@437
    move-object/from16 v0, v31

    #@439
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@43c
    .line 478
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    #@43e
    move-object/from16 v0, v31

    #@440
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@443
    move-object/from16 v30, v31

    #@445
    .line 485
    .end local v31    # "criticalExtensions":Ljava/util/Set;
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    :goto_a
    add-int/lit8 v4, v9, 0x1

    #@447
    move-object/from16 v0, p1

    #@449
    move-object/from16 v1, v45

    #@44b
    move-object/from16 v2, v30

    #@44d
    invoke-static {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    #@450
    .line 488
    add-int/lit8 v23, v9, 0x1

    #@452
    move-object/from16 v20, p1

    #@454
    move-object/from16 v24, v18

    #@456
    move-object/from16 v25, v3

    #@458
    move-object/from16 v26, v16

    #@45a
    .line 487
    invoke-static/range {v20 .. v26}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@45d
    move-result-object v38

    #@45e
    .line 490
    .local v38, "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-gtz v35, :cond_17

    #@460
    if-eqz v38, :cond_19

    #@462
    .line 492
    :cond_17
    new-instance v4, Ljava/security/cert/PKIXCertPathValidatorResult;

    #@464
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@467
    move-result-object v5

    #@468
    move-object/from16 v0, v48

    #@46a
    move-object/from16 v1, v38

    #@46c
    invoke-direct {v4, v0, v1, v5}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    #@46f
    return-object v4

    #@470
    .line 482
    .end local v38    # "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_18
    new-instance v30, Ljava/util/HashSet;

    #@472
    .end local v30    # "criticalExtensions":Ljava/util/Set;
    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    #@475
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    goto :goto_a

    #@476
    .line 495
    .restart local v38    # "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_19
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@478
    const-string/jumbo v5, "Path processing failed on policy."

    #@47b
    const/4 v7, 0x0

    #@47c
    move-object/from16 v0, p1

    #@47e
    invoke-direct {v4, v5, v7, v0, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@481
    throw v4
.end method
