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
    .line 45
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    #@3
    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@a
    .line 45
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
    .line 61
    move-object/from16 v0, p2

    #@2
    instance-of v4, v0, Ljava/security/cert/PKIXParameters;

    #@4
    if-eqz v4, :cond_1

    #@6
    .line 63
    new-instance v44, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@8
    move-object/from16 v4, p2

    #@a
    nop

    #@b
    nop

    #@c
    move-object/from16 v0, v44

    #@e
    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    #@11
    .line 65
    .local v44, "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v0, p2

    #@13
    instance-of v4, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    #@15
    if-eqz v4, :cond_0

    #@17
    move-object/from16 v36, p2

    #@19
    .line 67
    nop

    #@1a
    nop

    #@1b
    .line 69
    .local v36, "extPKIX":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual/range {v36 .. v36}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    #@1e
    move-result v4

    #@1f
    move-object/from16 v0, v44

    #@21
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setUseDeltasEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@24
    .line 70
    invoke-virtual/range {v36 .. v36}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    #@27
    move-result v4

    #@28
    move-object/from16 v0, v44

    #@2a
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@2d
    .line 73
    .end local v36    # "extPKIX":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_0
    invoke-virtual/range {v44 .. v44}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@30
    move-result-object v21

    #@31
    .line 88
    .end local v44    # "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local p2    # "params":Ljava/security/cert/CertPathParameters;
    .local v21, "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :goto_0
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    #@34
    move-result-object v4

    #@35
    if-nez v4, :cond_4

    #@37
    .line 90
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    #@39
    .line 91
    const-string/jumbo v5, "trustAnchors is null, this is not allowed for certification path validation."

    #@3c
    .line 90
    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v4

    #@40
    .line 75
    .end local v21    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p2    # "params":Ljava/security/cert/CertPathParameters;
    :cond_1
    move-object/from16 v0, p2

    #@42
    instance-of v4, v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    #@44
    if-eqz v4, :cond_2

    #@46
    .line 77
    nop

    #@47
    nop

    #@48
    .end local p2    # "params":Ljava/security/cert/CertPathParameters;
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@4b
    move-result-object v21

    #@4c
    .restart local v21    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_0

    #@4d
    .line 79
    .end local v21    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p2    # "params":Ljava/security/cert/CertPathParameters;
    :cond_2
    move-object/from16 v0, p2

    #@4f
    instance-of v4, v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@51
    if-eqz v4, :cond_3

    #@53
    move-object/from16 v21, p2

    #@55
    .line 81
    nop

    #@56
    nop

    #@57
    .restart local v21    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_0

    #@58
    .line 85
    .end local v21    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_3
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    #@5a
    new-instance v5, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v7, "Parameters must be a "

    #@62
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    const-class v7, Ljava/security/cert/PKIXParameters;

    #@68
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6b
    move-result-object v7

    #@6c
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    const-string/jumbo v7, " instance."

    #@73
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v5

    #@77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v5

    #@7b
    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v4

    #@7f
    .line 101
    .end local p2    # "params":Ljava/security/cert/CertPathParameters;
    .restart local v21    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@82
    move-result-object v29

    #@83
    .line 102
    .local v29, "certs":Ljava/util/List;
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    #@86
    move-result v42

    #@87
    .line 104
    .local v42, "n":I
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    #@8a
    move-result v4

    #@8b
    if-eqz v4, :cond_5

    #@8d
    .line 106
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@8f
    const-string/jumbo v5, "Certification path is empty."

    #@92
    const/4 v7, 0x0

    #@93
    const/4 v8, -0x1

    #@94
    move-object/from16 v0, p1

    #@96
    invoke-direct {v4, v5, v7, v0, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@99
    throw v4

    #@9a
    .line 110
    :cond_5
    const/4 v4, 0x0

    #@9b
    move-object/from16 v0, v29

    #@9d
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a0
    move-result-object v27

    #@a1
    check-cast v27, Ljava/security/cert/X509Certificate;

    #@a3
    .line 112
    .local v27, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v27, :cond_6

    #@a5
    .line 113
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@a8
    move-result-object v47

    #@a9
    .line 114
    .local v47, "serial":Ljava/math/BigInteger;
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->-get0()Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    #@ac
    move-result-object v4

    #@ad
    move-object/from16 v0, v47

    #@af
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->isSerialNumberBlackListed(Ljava/math/BigInteger;)Z

    #@b2
    move-result v4

    #@b3
    if-eqz v4, :cond_6

    #@b5
    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    const-string/jumbo v5, "Certificate revocation of serial 0x"

    #@bd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v4

    #@c1
    const/16 v5, 0x10

    #@c3
    move-object/from16 v0, v47

    #@c5
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@c8
    move-result-object v5

    #@c9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v4

    #@cd
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v41

    #@d1
    .line 117
    .local v41, "message":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@d3
    move-object/from16 v0, v41

    #@d5
    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d8
    .line 118
    new-instance v32, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@da
    move-object/from16 v0, v32

    #@dc
    move-object/from16 v1, v41

    #@de
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@e1
    .line 119
    .local v32, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@e3
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@e6
    move-result-object v5

    #@e7
    const/4 v7, 0x0

    #@e8
    move-object/from16 v0, v32

    #@ea
    move-object/from16 v1, p1

    #@ec
    invoke-direct {v4, v5, v0, v1, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@ef
    throw v4

    #@f0
    .line 133
    .end local v32    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v41    # "message":Ljava/lang/String;
    .end local v47    # "serial":Ljava/math/BigInteger;
    :cond_6
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getInitialPolicies()Ljava/util/Set;

    #@f3
    move-result-object v22

    #@f4
    .line 141
    .local v22, "userInitialPolicySet":Ljava/util/Set;
    :try_start_0
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    #@f7
    move-result v4

    #@f8
    add-int/lit8 v4, v4, -0x1

    #@fa
    move-object/from16 v0, v29

    #@fc
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@ff
    move-result-object v4

    #@100
    check-cast v4, Ljava/security/cert/X509Certificate;

    #@102
    .line 142
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    #@105
    move-result-object v5

    #@106
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    #@109
    move-result-object v7

    #@10a
    .line 141
    invoke-static {v4, v5, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    #@10d
    move-result-object v48

    #@10e
    .line 149
    .local v48, "trust":Ljava/security/cert/TrustAnchor;
    if-nez v48, :cond_7

    #@110
    .line 151
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@112
    const-string/jumbo v5, "Trust anchor for certification path not found."

    #@115
    const/4 v7, 0x0

    #@116
    const/4 v8, -0x1

    #@117
    move-object/from16 v0, p1

    #@119
    invoke-direct {v4, v5, v7, v0, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@11c
    throw v4

    #@11d
    .line 145
    .end local v48    # "trust":Ljava/security/cert/TrustAnchor;
    :catch_0
    move-exception v32

    #@11e
    .line 146
    .restart local v32    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@120
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@123
    move-result-object v5

    #@124
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    #@127
    move-result v7

    #@128
    add-int/lit8 v7, v7, -0x1

    #@12a
    move-object/from16 v0, v32

    #@12c
    move-object/from16 v1, p1

    #@12e
    invoke-direct {v4, v5, v0, v1, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@131
    throw v4

    #@132
    .line 155
    .end local v32    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v48    # "trust":Ljava/security/cert/TrustAnchor;
    :cond_7
    new-instance v4, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@134
    move-object/from16 v0, v21

    #@136
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    #@139
    move-object/from16 v0, v48

    #@13b
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@13e
    move-result-object v4

    #@13f
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@142
    move-result-object v21

    #@143
    .line 161
    const/4 v9, 0x0

    #@144
    .line 172
    .local v9, "index":I
    add-int/lit8 v4, v42, 0x1

    #@146
    new-array v0, v4, [Ljava/util/ArrayList;

    #@148
    move-object/from16 v18, v0

    #@14a
    .line 173
    .local v18, "policyNodes":[Ljava/util/List;
    const/16 v39, 0x0

    #@14c
    .local v39, "j":I
    :goto_1
    move-object/from16 v0, v18

    #@14e
    array-length v4, v0

    #@14f
    move/from16 v0, v39

    #@151
    if-ge v0, v4, :cond_8

    #@153
    .line 175
    new-instance v4, Ljava/util/ArrayList;

    #@155
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@158
    aput-object v4, v18, v39

    #@15a
    .line 173
    add-int/lit8 v39, v39, 0x1

    #@15c
    goto :goto_1

    #@15d
    .line 178
    :cond_8
    new-instance v6, Ljava/util/HashSet;

    #@15f
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@162
    .line 180
    .local v6, "policySet":Ljava/util/Set;
    const-string/jumbo v4, "2.5.29.32.0"

    #@165
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@168
    .line 182
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@16a
    new-instance v4, Ljava/util/ArrayList;

    #@16c
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@16f
    new-instance v8, Ljava/util/HashSet;

    #@171
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    #@174
    .line 183
    const-string/jumbo v9, "2.5.29.32.0"

    #@177
    .line 182
    .end local v9    # "index":I
    const/4 v5, 0x0

    #@178
    const/4 v7, 0x0

    #@179
    .line 183
    const/4 v10, 0x0

    #@17a
    .line 182
    invoke-direct/range {v3 .. v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    #@17d
    .line 185
    .local v3, "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const/4 v4, 0x0

    #@17e
    aget-object v4, v18, v4

    #@180
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@183
    .line 190
    new-instance v43, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    #@185
    invoke-direct/range {v43 .. v43}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    #@188
    .line 195
    .local v43, "nameConstraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    new-instance v16, Ljava/util/HashSet;

    #@18a
    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    #@18d
    .line 197
    .local v16, "acceptablePolicies":Ljava/util/Set;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    #@190
    move-result v4

    #@191
    if-eqz v4, :cond_a

    #@193
    .line 199
    const/16 v35, 0x0

    #@195
    .line 211
    .local v35, "explicitPolicy":I
    :goto_2
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isAnyPolicyInhibited()Z

    #@198
    move-result v4

    #@199
    if-eqz v4, :cond_b

    #@19b
    .line 213
    const/16 v19, 0x0

    #@19d
    .line 225
    .local v19, "inhibitAnyPolicy":I
    :goto_3
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isPolicyMappingInhibited()Z

    #@1a0
    move-result v4

    #@1a1
    if-eqz v4, :cond_c

    #@1a3
    .line 227
    const/16 v46, 0x0

    #@1a5
    .line 240
    .local v46, "policyMapping":I
    :goto_4
    invoke-virtual/range {v48 .. v48}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@1a8
    move-result-object v13

    #@1a9
    .line 243
    .local v13, "sign":Ljava/security/cert/X509Certificate;
    if-eqz v13, :cond_d

    #@1ab
    .line 245
    :try_start_1
    invoke-static {v13}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@1ae
    move-result-object v12

    #@1af
    .line 246
    .local v12, "workingIssuerName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v13}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@1b2
    move-result-object v10

    #@1b3
    .line 260
    .local v10, "workingPublicKey":Ljava/security/PublicKey;
    :goto_5
    const/16 v49, 0x0

    #@1b5
    .line 263
    .local v49, "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_2
    invoke-static {v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    #@1b8
    move-result-object v49

    #@1b9
    .line 270
    .local v49, "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual/range {v49 .. v49}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1bc
    move-result-object v50

    #@1bd
    .line 271
    .local v50, "workingPublicKeyAlgorithm":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual/range {v49 .. v49}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1c0
    move-result-object v51

    #@1c1
    .line 276
    .local v51, "workingPublicKeyParameters":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    move/from16 v40, v42

    #@1c3
    .line 282
    .local v40, "maxPathLength":I
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@1c6
    move-result-object v4

    #@1c7
    if-eqz v4, :cond_9

    #@1c9
    .line 283
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@1cc
    move-result-object v5

    #@1cd
    const/4 v4, 0x0

    #@1ce
    move-object/from16 v0, v29

    #@1d0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d3
    move-result-object v4

    #@1d4
    check-cast v4, Ljava/security/cert/X509Certificate;

    #@1d6
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    #@1d9
    move-result v4

    #@1da
    if-eqz v4, :cond_e

    #@1dc
    .line 292
    :cond_9
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertPathCheckers()Ljava/util/List;

    #@1df
    move-result-object v45

    #@1e0
    .line 293
    .local v45, "pathCheckers":Ljava/util/List;
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1e3
    move-result-object v28

    #@1e4
    .line 294
    .local v28, "certIter":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    #@1e7
    move-result v4

    #@1e8
    if-eqz v4, :cond_f

    #@1ea
    .line 296
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1ed
    move-result-object v4

    #@1ee
    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    #@1f0
    const/4 v5, 0x0

    #@1f1
    invoke-virtual {v4, v5}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    #@1f4
    goto :goto_6

    #@1f5
    .line 203
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
    :cond_a
    add-int/lit8 v35, v42, 0x1

    #@1f7
    .restart local v35    # "explicitPolicy":I
    goto :goto_2

    #@1f8
    .line 217
    :cond_b
    add-int/lit8 v19, v42, 0x1

    #@1fa
    .restart local v19    # "inhibitAnyPolicy":I
    goto :goto_3

    #@1fb
    .line 231
    :cond_c
    add-int/lit8 v46, v42, 0x1

    #@1fd
    .restart local v46    # "policyMapping":I
    goto :goto_4

    #@1fe
    .line 250
    .restart local v13    # "sign":Ljava/security/cert/X509Certificate;
    :cond_d
    :try_start_3
    invoke-static/range {v48 .. v48}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getCA(Ljava/security/cert/TrustAnchor;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@201
    move-result-object v12

    #@202
    .line 251
    .restart local v12    # "workingIssuerName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual/range {v48 .. v48}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    #@205
    move-result-object v10

    #@206
    .restart local v10    # "workingPublicKey":Ljava/security/PublicKey;
    goto :goto_5

    #@207
    .line 255
    .end local v10    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v12    # "workingIssuerName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :catch_1
    move-exception v34

    #@208
    .line 256
    .local v34, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@20a
    const-string/jumbo v5, "Subject of trust anchor could not be (re)encoded."

    #@20d
    .line 257
    const/4 v7, -0x1

    #@20e
    .line 256
    move-object/from16 v0, v34

    #@210
    move-object/from16 v1, p1

    #@212
    invoke-direct {v4, v5, v0, v1, v7}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@215
    throw v4

    #@216
    .line 266
    .end local v34    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "workingPublicKey":Ljava/security/PublicKey;
    .restart local v12    # "workingIssuerName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .local v49, "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :catch_2
    move-exception v33

    #@217
    .line 267
    .local v33, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@219
    .line 268
    const-string/jumbo v5, "Algorithm identifier of public key of trust anchor could not be read."

    #@21c
    const/4 v7, -0x1

    #@21d
    .line 267
    move-object/from16 v0, v33

    #@21f
    move-object/from16 v1, p1

    #@221
    invoke-direct {v4, v5, v0, v1, v7}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@224
    throw v4

    #@225
    .line 285
    .end local v33    # "e":Ljava/security/cert/CertPathValidatorException;
    .restart local v40    # "maxPathLength":I
    .local v49, "workingAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v50    # "workingPublicKeyAlgorithm":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v51    # "workingPublicKeyParameters":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_e
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@227
    .line 286
    const-string/jumbo v5, "Target certificate in certification path does not match targetConstraints."

    #@22a
    const/4 v7, 0x0

    #@22b
    const/4 v8, 0x0

    #@22c
    .line 285
    move-object/from16 v0, p1

    #@22e
    invoke-direct {v4, v5, v7, v0, v8}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@231
    throw v4

    #@232
    .line 299
    .restart local v28    # "certIter":Ljava/util/Iterator;
    .restart local v45    # "pathCheckers":Ljava/util/List;
    :cond_f
    const/16 v27, 0x0

    #@234
    .line 301
    .local v27, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    #@237
    move-result v4

    #@238
    add-int/lit8 v9, v4, -0x1

    #@23a
    .end local v27    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v9    # "index":I
    :goto_7
    if-ltz v9, :cond_15

    #@23c
    .line 304
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->-get0()Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    #@23f
    move-result-object v4

    #@240
    invoke-virtual {v4, v10}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->isPublicKeyBlackListed(Ljava/security/PublicKey;)Z

    #@243
    move-result v4

    #@244
    if-eqz v4, :cond_10

    #@246
    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    #@248
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24b
    const-string/jumbo v5, "Certificate revocation of public key "

    #@24e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@251
    move-result-object v4

    #@252
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v4

    #@256
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@259
    move-result-object v41

    #@25a
    .line 307
    .restart local v41    # "message":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@25c
    move-object/from16 v0, v41

    #@25e
    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@261
    .line 308
    new-instance v32, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@263
    move-object/from16 v0, v32

    #@265
    move-object/from16 v1, v41

    #@267
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@26a
    .line 309
    .restart local v32    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@26c
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@26f
    move-result-object v5

    #@270
    move-object/from16 v0, v32

    #@272
    move-object/from16 v1, p1

    #@274
    invoke-direct {v4, v5, v0, v1, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@277
    throw v4

    #@278
    .line 317
    .end local v32    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v41    # "message":Ljava/lang/String;
    :cond_10
    sub-int v37, v42, v9

    #@27a
    .line 325
    .local v37, "i":I
    move-object/from16 v0, v29

    #@27c
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@27f
    move-result-object v27

    #@280
    check-cast v27, Ljava/security/cert/X509Certificate;

    #@282
    .line 326
    .local v27, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    #@285
    move-result v4

    #@286
    add-int/lit8 v4, v4, -0x1

    #@288
    if-ne v9, v4, :cond_11

    #@28a
    const/4 v11, 0x1

    #@28b
    .line 333
    .local v11, "verificationAlreadyPerformed":Z
    :goto_8
    move-object/from16 v0, p0

    #@28d
    iget-object v14, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@28f
    move-object/from16 v7, p1

    #@291
    move-object/from16 v8, v21

    #@293
    .line 332
    invoke-static/range {v7 .. v14}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;ILjava/security/PublicKey;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    #@296
    .line 335
    move-object/from16 v0, p1

    #@298
    move-object/from16 v1, v43

    #@29a
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    #@29d
    move-object/from16 v14, p1

    #@29f
    move v15, v9

    #@2a0
    move-object/from16 v17, v3

    #@2a2
    .line 337
    invoke-static/range {v14 .. v19}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@2a5
    move-result-object v3

    #@2a6
    .line 340
    move-object/from16 v0, p1

    #@2a8
    invoke-static {v0, v9, v3}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@2ab
    move-result-object v3

    #@2ac
    .line 342
    move-object/from16 v0, p1

    #@2ae
    move/from16 v1, v35

    #@2b0
    invoke-static {v0, v9, v3, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    #@2b3
    .line 348
    move/from16 v0, v37

    #@2b5
    move/from16 v1, v42

    #@2b7
    if-eq v0, v1, :cond_13

    #@2b9
    .line 350
    if-eqz v27, :cond_12

    #@2bb
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getVersion()I

    #@2be
    move-result v4

    #@2bf
    const/4 v5, 0x1

    #@2c0
    if-ne v4, v5, :cond_12

    #@2c2
    .line 352
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@2c4
    const-string/jumbo v5, "Version 1 certificates can\'t be used as CA ones."

    #@2c7
    const/4 v7, 0x0

    #@2c8
    move-object/from16 v0, p1

    #@2ca
    invoke-direct {v4, v5, v7, v0, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@2cd
    throw v4

    #@2ce
    .line 326
    .end local v11    # "verificationAlreadyPerformed":Z
    :cond_11
    const/4 v11, 0x0

    #@2cf
    .restart local v11    # "verificationAlreadyPerformed":Z
    goto :goto_8

    #@2d0
    .line 356
    :cond_12
    move-object/from16 v0, p1

    #@2d2
    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    #@2d5
    .line 358
    move-object/from16 v0, p1

    #@2d7
    move-object/from16 v1, v18

    #@2d9
    move/from16 v2, v46

    #@2db
    invoke-static {v0, v9, v1, v3, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@2de
    move-result-object v3

    #@2df
    .line 361
    move-object/from16 v0, p1

    #@2e1
    move-object/from16 v1, v43

    #@2e3
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    #@2e6
    .line 364
    move-object/from16 v0, p1

    #@2e8
    move/from16 v1, v35

    #@2ea
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    #@2ed
    move-result v35

    #@2ee
    .line 365
    move-object/from16 v0, p1

    #@2f0
    move/from16 v1, v46

    #@2f2
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    #@2f5
    move-result v46

    #@2f6
    .line 366
    move-object/from16 v0, p1

    #@2f8
    move/from16 v1, v19

    #@2fa
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    #@2fd
    move-result v19

    #@2fe
    .line 371
    move-object/from16 v0, p1

    #@300
    move/from16 v1, v35

    #@302
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    #@305
    move-result v35

    #@306
    .line 372
    move-object/from16 v0, p1

    #@308
    move/from16 v1, v46

    #@30a
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    #@30d
    move-result v46

    #@30e
    .line 375
    move-object/from16 v0, p1

    #@310
    move/from16 v1, v19

    #@312
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    #@315
    move-result v19

    #@316
    .line 378
    move-object/from16 v0, p1

    #@318
    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    #@31b
    .line 381
    move-object/from16 v0, p1

    #@31d
    move/from16 v1, v40

    #@31f
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    #@322
    move-result v40

    #@323
    .line 384
    move-object/from16 v0, p1

    #@325
    move/from16 v1, v40

    #@327
    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    #@32a
    move-result v40

    #@32b
    .line 387
    move-object/from16 v0, p1

    #@32d
    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    #@330
    .line 389
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@333
    move-result-object v30

    #@334
    .line 390
    .local v30, "criticalExtensions":Ljava/util/Set;
    if-eqz v30, :cond_14

    #@336
    .line 392
    new-instance v31, Ljava/util/HashSet;

    #@338
    move-object/from16 v0, v31

    #@33a
    move-object/from16 v1, v30

    #@33c
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@33f
    .line 395
    .end local v30    # "criticalExtensions":Ljava/util/Set;
    .local v31, "criticalExtensions":Ljava/util/Set;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    #@341
    move-object/from16 v0, v31

    #@343
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@346
    .line 396
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    #@348
    move-object/from16 v0, v31

    #@34a
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@34d
    .line 397
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    #@34f
    move-object/from16 v0, v31

    #@351
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@354
    .line 398
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    #@356
    move-object/from16 v0, v31

    #@358
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@35b
    .line 399
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    #@35d
    move-object/from16 v0, v31

    #@35f
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@362
    .line 400
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    #@364
    move-object/from16 v0, v31

    #@366
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@369
    .line 401
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    #@36b
    move-object/from16 v0, v31

    #@36d
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@370
    .line 402
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    #@372
    move-object/from16 v0, v31

    #@374
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@377
    .line 403
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    #@379
    move-object/from16 v0, v31

    #@37b
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@37e
    .line 404
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    #@380
    move-object/from16 v0, v31

    #@382
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@385
    move-object/from16 v30, v31

    #@387
    .line 412
    .end local v31    # "criticalExtensions":Ljava/util/Set;
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    :goto_9
    move-object/from16 v0, p1

    #@389
    move-object/from16 v1, v30

    #@38b
    move-object/from16 v2, v45

    #@38d
    invoke-static {v0, v9, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    #@390
    .line 415
    move-object/from16 v13, v27

    #@392
    .line 418
    invoke-static/range {v27 .. v27}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@395
    move-result-object v12

    #@396
    .line 423
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@399
    move-result-object v4

    #@39a
    move-object/from16 v0, p0

    #@39c
    iget-object v5, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@39e
    invoke-static {v4, v9, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_3

    #@3a1
    move-result-object v10

    #@3a2
    .line 430
    invoke-static {v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3a5
    move-result-object v49

    #@3a6
    .line 432
    invoke-virtual/range {v49 .. v49}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a9
    move-result-object v50

    #@3aa
    .line 434
    invoke-virtual/range {v49 .. v49}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3ad
    move-result-object v51

    #@3ae
    .line 301
    .end local v30    # "criticalExtensions":Ljava/util/Set;
    :cond_13
    add-int/lit8 v9, v9, -0x1

    #@3b0
    goto/16 :goto_7

    #@3b2
    .line 408
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    :cond_14
    new-instance v30, Ljava/util/HashSet;

    #@3b4
    .end local v30    # "criticalExtensions":Ljava/util/Set;
    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    #@3b7
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    goto :goto_9

    #@3b8
    .line 426
    :catch_3
    move-exception v33

    #@3b9
    .line 427
    .restart local v33    # "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@3bb
    const-string/jumbo v5, "Next working key could not be retrieved."

    #@3be
    move-object/from16 v0, v33

    #@3c0
    move-object/from16 v1, p1

    #@3c2
    invoke-direct {v4, v5, v0, v1, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@3c5
    throw v4

    #@3c6
    .line 442
    .end local v11    # "verificationAlreadyPerformed":Z
    .end local v27    # "cert":Ljava/security/cert/X509Certificate;
    .end local v30    # "criticalExtensions":Ljava/util/Set;
    .end local v33    # "e":Ljava/security/cert/CertPathValidatorException;
    .end local v37    # "i":I
    :cond_15
    move/from16 v0, v35

    #@3c8
    move-object/from16 v1, v27

    #@3ca
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    #@3cd
    move-result v35

    #@3ce
    .line 444
    add-int/lit8 v4, v9, 0x1

    #@3d0
    move-object/from16 v0, p1

    #@3d2
    move/from16 v1, v35

    #@3d4
    invoke-static {v0, v4, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    #@3d7
    move-result v35

    #@3d8
    .line 453
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@3db
    move-result-object v30

    #@3dc
    .line 455
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    if-eqz v30, :cond_17

    #@3de
    .line 457
    new-instance v31, Ljava/util/HashSet;

    #@3e0
    move-object/from16 v0, v31

    #@3e2
    move-object/from16 v1, v30

    #@3e4
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@3e7
    .line 459
    .end local v30    # "criticalExtensions":Ljava/util/Set;
    .restart local v31    # "criticalExtensions":Ljava/util/Set;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    #@3e9
    move-object/from16 v0, v31

    #@3eb
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@3ee
    .line 460
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    #@3f0
    move-object/from16 v0, v31

    #@3f2
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@3f5
    .line 461
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    #@3f7
    move-object/from16 v0, v31

    #@3f9
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@3fc
    .line 462
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    #@3fe
    move-object/from16 v0, v31

    #@400
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@403
    .line 463
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    #@405
    move-object/from16 v0, v31

    #@407
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@40a
    .line 464
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    #@40c
    move-object/from16 v0, v31

    #@40e
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@411
    .line 465
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    #@413
    move-object/from16 v0, v31

    #@415
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@418
    .line 466
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    #@41a
    move-object/from16 v0, v31

    #@41c
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@41f
    .line 467
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    #@421
    move-object/from16 v0, v31

    #@423
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@426
    .line 468
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    #@428
    move-object/from16 v0, v31

    #@42a
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@42d
    .line 469
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    #@42f
    move-object/from16 v0, v31

    #@431
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@434
    .line 470
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@436
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@439
    move-result-object v4

    #@43a
    move-object/from16 v0, v31

    #@43c
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@43f
    move-object/from16 v30, v31

    #@441
    .line 477
    .end local v31    # "criticalExtensions":Ljava/util/Set;
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    :goto_a
    add-int/lit8 v4, v9, 0x1

    #@443
    move-object/from16 v0, p1

    #@445
    move-object/from16 v1, v45

    #@447
    move-object/from16 v2, v30

    #@449
    invoke-static {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    #@44c
    .line 480
    add-int/lit8 v23, v9, 0x1

    #@44e
    move-object/from16 v20, p1

    #@450
    move-object/from16 v24, v18

    #@452
    move-object/from16 v25, v3

    #@454
    move-object/from16 v26, v16

    #@456
    .line 479
    invoke-static/range {v20 .. v26}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@459
    move-result-object v38

    #@45a
    .line 482
    .local v38, "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-gtz v35, :cond_16

    #@45c
    if-eqz v38, :cond_18

    #@45e
    .line 484
    :cond_16
    new-instance v4, Ljava/security/cert/PKIXCertPathValidatorResult;

    #@460
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@463
    move-result-object v5

    #@464
    move-object/from16 v0, v48

    #@466
    move-object/from16 v1, v38

    #@468
    invoke-direct {v4, v0, v1, v5}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    #@46b
    return-object v4

    #@46c
    .line 474
    .end local v38    # "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_17
    new-instance v30, Ljava/util/HashSet;

    #@46e
    .end local v30    # "criticalExtensions":Ljava/util/Set;
    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    #@471
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    goto :goto_a

    #@472
    .line 487
    .restart local v38    # "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_18
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@474
    const-string/jumbo v5, "Path processing failed on policy."

    #@477
    const/4 v7, 0x0

    #@478
    move-object/from16 v0, p1

    #@47a
    invoke-direct {v4, v5, v7, v0, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@47d
    throw v4
.end method
