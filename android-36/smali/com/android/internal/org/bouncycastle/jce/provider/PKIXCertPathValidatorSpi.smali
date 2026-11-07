.class public Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi.java"


# instance fields
.field private final blacklist helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private final blacklist isForCRLCheck:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;-><init>(Z)V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "isForCRLCheck"    # Z

    .line 57
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    .line 48
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 58
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    .line 59
    return-void
.end method

.method static blacklist checkCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 527
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    :try_end_7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_7} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_9

    .line 536
    nop

    .line 537
    return-void

    .line 533
    :catch_9
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 529
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_14
    move-exception v0

    .line 531
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "unable to process TBSCertificate"

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .registers 43
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 68
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    instance-of v0, v11, Ljava/security/cert/PKIXParameters;

    if-eqz v0, :cond_2d

    .line 70
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object v3, v11

    check-cast v3, Ljava/security/cert/PKIXParameters;

    invoke-direct {v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 72
    .local v0, "paramsPKIXBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    instance-of v3, v11, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v3, :cond_27

    .line 74
    move-object v3, v11

    check-cast v3, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    .line 76
    .local v3, "extPKIX":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setUseDeltasEnabled(Z)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 77
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 80
    .end local v3    # "extPKIX":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_27
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    .line 81
    .local v0, "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object v3, v0

    goto :goto_42

    .line 82
    .end local v0    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_2d
    instance-of v0, v11, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v0, :cond_3a

    .line 84
    move-object v0, v11

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    move-object v3, v0

    .restart local v0    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_42

    .line 86
    .end local v0    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_3a
    instance-of v0, v11, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    if-eqz v0, :cond_4a1

    .line 88
    move-object v0, v11

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-object v3, v0

    .line 95
    .local v3, "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :goto_42
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_498

    .line 108
    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v12

    .line 109
    .local v12, "certs":Ljava/util/List;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 111
    .local v13, "n":I
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, -0x1

    if-nez v0, :cond_48e

    .line 119
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    move-object v15, v0

    .line 120
    .local v15, "currentDate":Ljava/util/Date;
    move v5, v4

    invoke-static {v3, v15}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidityDate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    .line 125
    .local v4, "validityDate":Ljava/util/Date;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v16

    .line 133
    .local v16, "userInitialPolicySet":Ljava/util/Set;
    const/4 v6, 0x1

    :try_start_67
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 134
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v8

    .line 133
    invoke-static {v0, v7, v8}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    move-object v7, v0

    .line 136
    .local v7, "trust":Ljava/security/cert/TrustAnchor;
    if-eqz v7, :cond_459

    .line 141
    invoke-virtual {v7}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_88
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_67 .. :try_end_88} :catch_46f

    .line 146
    nop

    .line 149
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v0, v7}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    .line 155
    const/4 v8, 0x0

    .line 166
    .local v8, "index":I
    add-int/lit8 v0, v13, 0x1

    new-array v9, v0, [Ljava/util/ArrayList;

    .line 167
    .local v9, "policyNodes":[Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_9c
    array-length v10, v9

    if-ge v0, v10, :cond_a9

    .line 169
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    aput-object v10, v9, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    .line 172
    .end local v0    # "j":I
    :cond_a9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v10, v0

    .line 174
    .local v10, "policySet":Ljava/util/Set;
    const-string v0, "2.5.29.32.0"

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v17, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    const-string v23, "2.5.29.32.0"

    const/16 v24, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v10

    .end local v10    # "policySet":Ljava/util/Set;
    .local v20, "policySet":Ljava/util/Set;
    invoke-direct/range {v17 .. v24}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    move-object/from16 v10, v17

    .line 179
    .local v10, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const/4 v0, 0x0

    move/from16 v17, v6

    aget-object v6, v9, v0

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v6}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    .line 189
    .local v6, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 191
    .local v18, "acceptablePolicies":Ljava/util/Set;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v19

    if-eqz v19, :cond_ea

    .line 193
    const/16 v19, 0x0

    .local v19, "explicitPolicy":I
    goto :goto_ec

    .line 197
    .end local v19    # "explicitPolicy":I
    :cond_ea
    add-int/lit8 v19, v13, 0x1

    .line 205
    .restart local v19    # "explicitPolicy":I
    :goto_ec
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isAnyPolicyInhibited()Z

    move-result v21

    if-eqz v21, :cond_f5

    .line 207
    const/16 v21, 0x0

    .local v21, "inhibitAnyPolicy":I
    goto :goto_f7

    .line 211
    .end local v21    # "inhibitAnyPolicy":I
    :cond_f5
    add-int/lit8 v21, v13, 0x1

    .line 219
    .restart local v21    # "inhibitAnyPolicy":I
    :goto_f7
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isPolicyMappingInhibited()Z

    move-result v22

    if-eqz v22, :cond_100

    .line 221
    const/16 v22, 0x0

    .local v22, "policyMapping":I
    goto :goto_102

    .line 225
    .end local v22    # "policyMapping":I
    :cond_100
    add-int/lit8 v22, v13, 0x1

    .line 234
    .restart local v22    # "policyMapping":I
    :goto_102
    invoke-virtual {v7}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v23

    .line 237
    .local v23, "sign":Ljava/security/cert/X509Certificate;
    if-eqz v23, :cond_121

    .line 239
    :try_start_108
    invoke-static/range {v23 .. v23}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v24

    .line 240
    .local v24, "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v25
    :try_end_110
    .catch Ljava/lang/RuntimeException; {:try_start_108 .. :try_end_110} :catch_111

    .local v25, "workingPublicKey":Ljava/security/PublicKey;
    goto :goto_129

    .line 248
    .end local v24    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local v25    # "workingPublicKey":Ljava/security/PublicKey;
    :catch_111
    move-exception v0

    move-object/from16 v32, v4

    move-object v14, v6

    move-object v6, v9

    move-object/from16 v34, v12

    move-object/from16 v28, v15

    move-object/from16 v4, v16

    move-object/from16 v17, v18

    move-object v15, v7

    goto/16 :goto_451

    .line 244
    :cond_121
    :try_start_121
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getCA(Ljava/security/cert/TrustAnchor;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v24

    .line 245
    .restart local v24    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v7}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v25
    :try_end_129
    .catch Ljava/lang/RuntimeException; {:try_start_121 .. :try_end_129} :catch_443

    .line 252
    .restart local v25    # "workingPublicKey":Ljava/security/PublicKey;
    :goto_129
    nop

    .line 254
    const/16 v26, 0x0

    .line 257
    .local v26, "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_12c
    invoke-static/range {v25 .. v25}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5
    :try_end_130
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_12c .. :try_end_130} :catch_42d

    .line 263
    .end local v26    # "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v5, "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    nop

    .line 264
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v26

    .line 265
    .local v26, "workingPublicKeyAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v27

    .line 270
    .local v27, "workingPublicKeyParameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    move/from16 v28, v13

    .line 276
    .local v28, "maxPathLength":I
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v29

    if-eqz v29, :cond_166

    .line 277
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v14

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v14, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    if-eqz v0, :cond_158

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    goto :goto_16a

    .line 279
    :cond_158
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v14, "Target certificate in certification path does not match targetConstraints."

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    .end local v3    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v4    # "validityDate":Ljava/util/Date;
    .local v30, "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v32, "validityDate":Ljava/util/Date;
    invoke-direct {v0, v14, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 276
    .end local v30    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v32    # "validityDate":Ljava/util/Date;
    .restart local v3    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v4    # "validityDate":Ljava/util/Date;
    :cond_166
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    .line 286
    .end local v3    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v4    # "validityDate":Ljava/util/Date;
    .restart local v30    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v32    # "validityDate":Ljava/util/Date;
    :goto_16a
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v14

    .line 287
    .local v14, "pathCheckers":Ljava/util/List;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .line 288
    .local v33, "certIter":Ljava/util/Iterator;
    :goto_172
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_183

    .line 290
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    goto :goto_172

    .line 297
    :cond_183
    const/4 v3, 0x0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_193

    .line 299
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    move-object v4, v0

    .local v0, "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    goto :goto_195

    .line 303
    .end local v0    # "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    :cond_193
    const/4 v0, 0x0

    move-object v4, v0

    .line 306
    .local v4, "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    :goto_195
    const/4 v0, 0x0

    .line 308
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move/from16 v8, v19

    move-object/from16 v19, v5

    move v5, v8

    move/from16 v8, v22

    move/from16 v11, v28

    move/from16 v22, v21

    move-object/from16 v21, v10

    move-object/from16 v10, v23

    move-object/from16 v23, v6

    move/from16 v6, v31

    .end local v28    # "maxPathLength":I
    .local v5, "explicitPolicy":I
    .local v6, "index":I
    .local v8, "policyMapping":I
    .local v10, "sign":Ljava/security/cert/X509Certificate;
    .local v11, "maxPathLength":I
    .local v19, "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v21, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v22, "inhibitAnyPolicy":I
    .local v23, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    :goto_1af
    if-ltz v6, :cond_37d

    .line 315
    move-object/from16 v28, v15

    .end local v15    # "currentDate":Ljava/util/Date;
    .local v28, "currentDate":Ljava/util/Date;
    sub-int v15, v13, v6

    .line 323
    .local v15, "i":I
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v34, v12

    .end local v12    # "certs":Ljava/util/List;
    .local v34, "certs":Ljava/util/List;
    move-object/from16 v12, v31

    check-cast v12, Ljava/security/cert/X509Certificate;

    .line 324
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .local v12, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_1ca

    move/from16 v0, v17

    goto :goto_1cb

    :cond_1ca
    move v0, v3

    :goto_1cb
    move/from16 v31, v0

    .line 328
    .local v31, "verificationAlreadyPerformed":Z
    :try_start_1cd
    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_1d0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1cd .. :try_end_1d0} :catch_34d

    .line 333
    nop

    .line 339
    move/from16 v35, v17

    move-object/from16 v17, v9

    move-object/from16 v9, v24

    move-object/from16 v24, v12

    move/from16 v12, v35

    move-object/from16 v35, v7

    move/from16 v36, v8

    move-object/from16 v7, v25

    move/from16 v8, v31

    move/from16 v31, v3

    move-object/from16 v3, v30

    move-object/from16 v30, v14

    move-object/from16 v14, v23

    move/from16 v23, v11

    move v11, v5

    move-object v5, v4

    move-object/from16 v4, v32

    .end local v12    # "cert":Ljava/security/cert/X509Certificate;
    .end local v25    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v31    # "verificationAlreadyPerformed":Z
    .end local v32    # "validityDate":Ljava/util/Date;
    .restart local v3    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v4, "validityDate":Ljava/util/Date;
    .local v5, "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .local v7, "workingPublicKey":Ljava/security/PublicKey;
    .local v8, "verificationAlreadyPerformed":Z
    .local v9, "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .local v11, "explicitPolicy":I
    .local v14, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v17, "policyNodes":[Ljava/util/List;
    .local v23, "maxPathLength":I
    .local v24, "cert":Ljava/security/cert/X509Certificate;
    .local v30, "pathCheckers":Ljava/util/List;
    .local v35, "trust":Ljava/security/cert/TrustAnchor;
    .local v36, "policyMapping":I
    invoke-static/range {v2 .. v10}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationChecker;ILjava/security/PublicKey;ZLcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;)V

    .line 342
    move-object/from16 v39, v5

    move-object/from16 v38, v7

    move-object/from16 v37, v9

    move-object/from16 v25, v10

    move-object v9, v3

    move v3, v6

    move v10, v8

    .end local v4    # "validityDate":Ljava/util/Date;
    .end local v5    # "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .end local v6    # "index":I
    .end local v7    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v8    # "verificationAlreadyPerformed":Z
    .local v3, "index":I
    .local v9, "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v10, "verificationAlreadyPerformed":Z
    .local v25, "sign":Ljava/security/cert/X509Certificate;
    .restart local v32    # "validityDate":Ljava/util/Date;
    .local v37, "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .local v38, "workingPublicKey":Ljava/security/PublicKey;
    .local v39, "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    iget-boolean v0, v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    invoke-static {v2, v3, v14, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;Z)V

    .line 344
    iget-boolean v8, v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    move-object/from16 v6, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v21

    move/from16 v7, v22

    .end local v17    # "policyNodes":[Ljava/util/List;
    .end local v18    # "acceptablePolicies":Ljava/util/Set;
    .end local v21    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v22    # "inhibitAnyPolicy":I
    .local v4, "acceptablePolicies":Ljava/util/Set;
    .local v5, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v6, "policyNodes":[Ljava/util/List;
    .local v7, "inhibitAnyPolicy":I
    invoke-static/range {v2 .. v8}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;IZ)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    .line 347
    move v5, v7

    .end local v7    # "inhibitAnyPolicy":I
    .local v0, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v5, "inhibitAnyPolicy":I
    invoke-static {v2, v3, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    .line 349
    invoke-static {v2, v3, v0, v11}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    .line 354
    if-eq v15, v13, :cond_313

    .line 356
    if-eqz v24, :cond_24d

    invoke-virtual/range {v24 .. v24}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v7

    if-ne v7, v12, :cond_24d

    .line 359
    if-ne v15, v12, :cond_240

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    move-object/from16 v8, v24

    .end local v24    # "cert":Ljava/security/cert/X509Certificate;
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_242

    .line 361
    move-object/from16 v17, v4

    move-object/from16 v22, v9

    move/from16 v18, v12

    move/from16 v12, v23

    move-object/from16 v9, v30

    move/from16 v4, v36

    goto/16 :goto_321

    .line 359
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v24    # "cert":Ljava/security/cert/X509Certificate;
    :cond_240
    move-object/from16 v8, v24

    .line 363
    .end local v24    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v8    # "cert":Ljava/security/cert/X509Certificate;
    :cond_242
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    const-string v12, "Version 1 certificates can\'t be used as CA ones."

    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "acceptablePolicies":Ljava/util/Set;
    .local v17, "acceptablePolicies":Ljava/util/Set;
    invoke-direct {v7, v12, v4, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 356
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .end local v17    # "acceptablePolicies":Ljava/util/Set;
    .restart local v4    # "acceptablePolicies":Ljava/util/Set;
    .restart local v24    # "cert":Ljava/security/cert/X509Certificate;
    :cond_24d
    move-object/from16 v17, v4

    move-object/from16 v8, v24

    .line 367
    .end local v4    # "acceptablePolicies":Ljava/util/Set;
    .end local v24    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v8    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v17    # "acceptablePolicies":Ljava/util/Set;
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    .line 369
    move/from16 v4, v36

    .end local v36    # "policyMapping":I
    .local v4, "policyMapping":I
    invoke-static {v2, v3, v6, v0, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v7

    .line 372
    .end local v0    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v7, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-static {v2, v3, v14}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    .line 375
    invoke-static {v2, v3, v11}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v0

    .line 376
    .end local v11    # "explicitPolicy":I
    .local v0, "explicitPolicy":I
    invoke-static {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v4

    .line 377
    invoke-static {v2, v3, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v5

    .line 382
    invoke-static {v2, v3, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v11

    .line 383
    .end local v0    # "explicitPolicy":I
    .restart local v11    # "explicitPolicy":I
    invoke-static {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v4

    .line 386
    invoke-static {v2, v3, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v5

    .line 389
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    .line 392
    move/from16 v18, v12

    move/from16 v12, v23

    .end local v23    # "maxPathLength":I
    .local v12, "maxPathLength":I
    invoke-static {v2, v3, v12}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v0

    .line 395
    .end local v12    # "maxPathLength":I
    .local v0, "maxPathLength":I
    invoke-static {v2, v3, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v12

    .line 398
    .end local v0    # "maxPathLength":I
    .restart local v12    # "maxPathLength":I
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    .line 400
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 401
    .local v0, "criticalExtensions":Ljava/util/Set;
    if-eqz v0, :cond_2c7

    .line 403
    move/from16 v21, v4

    .end local v4    # "policyMapping":I
    .local v21, "policyMapping":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 406
    .end local v0    # "criticalExtensions":Ljava/util/Set;
    .local v4, "criticalExtensions":Ljava/util/Set;
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 412
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2ce

    .line 419
    .end local v21    # "policyMapping":I
    .restart local v0    # "criticalExtensions":Ljava/util/Set;
    .local v4, "policyMapping":I
    :cond_2c7
    move/from16 v21, v4

    .end local v4    # "policyMapping":I
    .restart local v21    # "policyMapping":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 423
    .end local v0    # "criticalExtensions":Ljava/util/Set;
    .local v4, "criticalExtensions":Ljava/util/Set;
    :goto_2ce
    move-object/from16 v22, v9

    move-object/from16 v9, v30

    .end local v30    # "pathCheckers":Ljava/util/List;
    .local v9, "pathCheckers":Ljava/util/List;
    .local v22, "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    invoke-static {v2, v3, v4, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    .line 426
    move-object/from16 v23, v8

    .line 429
    .end local v25    # "sign":Ljava/security/cert/X509Certificate;
    .local v23, "sign":Ljava/security/cert/X509Certificate;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v24

    .line 434
    .end local v37    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .local v24, "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :try_start_2db
    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0
    :try_end_2df
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2db .. :try_end_2df} :catch_308

    move-object/from16 v30, v4

    .end local v4    # "criticalExtensions":Ljava/util/Set;
    .local v30, "criticalExtensions":Ljava/util/Set;
    :try_start_2e1
    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-static {v0, v3, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_2e7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2e1 .. :try_end_2e7} :catch_306

    .line 439
    .end local v38    # "workingPublicKey":Ljava/security/PublicKey;
    .local v0, "workingPublicKey":Ljava/security/PublicKey;
    nop

    .line 441
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 443
    .end local v19    # "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v4, "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v19

    .line 445
    .end local v26    # "workingPublicKeyAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v19, "workingPublicKeyAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v25

    move-object/from16 v26, v19

    move-object/from16 v10, v23

    move-object/from16 v27, v25

    move-object/from16 v25, v0

    move-object/from16 v19, v4

    move/from16 v4, v21

    move-object/from16 v21, v7

    move v0, v5

    move v5, v11

    move v11, v12

    .end local v27    # "workingPublicKeyParameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .local v25, "workingPublicKeyParameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    goto :goto_32c

    .line 436
    .end local v0    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v4    # "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v25    # "workingPublicKeyParameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .local v19, "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v26    # "workingPublicKeyAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v27    # "workingPublicKeyParameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .restart local v38    # "workingPublicKey":Ljava/security/PublicKey;
    :catch_306
    move-exception v0

    goto :goto_30b

    .end local v30    # "criticalExtensions":Ljava/util/Set;
    .local v4, "criticalExtensions":Ljava/util/Set;
    :catch_308
    move-exception v0

    move-object/from16 v30, v4

    .line 438
    .end local v4    # "criticalExtensions":Ljava/util/Set;
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    :goto_30b
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Next working key could not be retrieved."

    invoke-direct {v4, v1, v0, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 354
    .end local v7    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .end local v12    # "maxPathLength":I
    .end local v17    # "acceptablePolicies":Ljava/util/Set;
    .end local v21    # "policyMapping":I
    .end local v22    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v0, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v4, "acceptablePolicies":Ljava/util/Set;
    .local v9, "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v23, "maxPathLength":I
    .local v24, "cert":Ljava/security/cert/X509Certificate;
    .local v25, "sign":Ljava/security/cert/X509Certificate;
    .local v30, "pathCheckers":Ljava/util/List;
    .restart local v36    # "policyMapping":I
    .restart local v37    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :cond_313
    move-object/from16 v17, v4

    move-object/from16 v22, v9

    move/from16 v18, v12

    move/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v9, v30

    move/from16 v4, v36

    .line 308
    .end local v10    # "verificationAlreadyPerformed":Z
    .end local v23    # "maxPathLength":I
    .end local v24    # "cert":Ljava/security/cert/X509Certificate;
    .end local v30    # "pathCheckers":Ljava/util/List;
    .end local v36    # "policyMapping":I
    .local v4, "policyMapping":I
    .restart local v8    # "cert":Ljava/security/cert/X509Certificate;
    .local v9, "pathCheckers":Ljava/util/List;
    .restart local v12    # "maxPathLength":I
    .restart local v17    # "acceptablePolicies":Ljava/util/Set;
    .restart local v22    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :goto_321
    move-object/from16 v21, v0

    move-object/from16 v10, v25

    move-object/from16 v24, v37

    move-object/from16 v25, v38

    move v0, v5

    move v5, v11

    move v11, v12

    .end local v12    # "maxPathLength":I
    .end local v37    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local v38    # "workingPublicKey":Ljava/security/PublicKey;
    .local v0, "inhibitAnyPolicy":I
    .local v5, "explicitPolicy":I
    .local v10, "sign":Ljava/security/cert/X509Certificate;
    .local v11, "maxPathLength":I
    .local v21, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v24, "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .local v25, "workingPublicKey":Ljava/security/PublicKey;
    :goto_32c
    add-int/lit8 v1, v3, -0x1

    move/from16 v3, v18

    move-object/from16 v18, v17

    move/from16 v17, v3

    move-object/from16 v23, v14

    move-object/from16 v30, v22

    move-object/from16 v15, v28

    move/from16 v3, v31

    move-object/from16 v12, v34

    move-object/from16 v7, v35

    move/from16 v22, v0

    move-object v0, v8

    move-object v14, v9

    move v8, v4

    move-object v9, v6

    move-object/from16 v4, v39

    move v6, v1

    move-object/from16 v1, p0

    .end local v3    # "index":I
    .local v1, "index":I
    goto/16 :goto_1af

    .line 330
    .end local v0    # "inhibitAnyPolicy":I
    .end local v1    # "index":I
    .end local v17    # "acceptablePolicies":Ljava/util/Set;
    .end local v35    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v39    # "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .local v4, "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .local v6, "index":I
    .local v7, "trust":Ljava/security/cert/TrustAnchor;
    .local v8, "policyMapping":I
    .local v9, "policyNodes":[Ljava/util/List;
    .local v12, "cert":Ljava/security/cert/X509Certificate;
    .local v14, "pathCheckers":Ljava/util/List;
    .restart local v18    # "acceptablePolicies":Ljava/util/Set;
    .local v22, "inhibitAnyPolicy":I
    .local v23, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v30, "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v31    # "verificationAlreadyPerformed":Z
    :catch_34d
    move-exception v0

    move-object/from16 v39, v4

    move v3, v6

    move-object/from16 v35, v7

    move v4, v8

    move-object v6, v9

    move-object v8, v12

    move-object v9, v14

    move-object/from16 v17, v18

    move-object/from16 v7, v21

    move-object/from16 v14, v23

    move-object/from16 v37, v24

    move-object/from16 v38, v25

    move-object/from16 v25, v10

    move v12, v11

    move/from16 v10, v31

    move v11, v5

    move/from16 v5, v22

    move-object/from16 v22, v30

    .line 332
    .end local v18    # "acceptablePolicies":Ljava/util/Set;
    .end local v21    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v23    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v24    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local v30    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v31    # "verificationAlreadyPerformed":Z
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v3    # "index":I
    .local v4, "policyMapping":I
    .local v5, "inhibitAnyPolicy":I
    .local v6, "policyNodes":[Ljava/util/List;
    .local v7, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    .local v9, "pathCheckers":Ljava/util/List;
    .local v10, "verificationAlreadyPerformed":Z
    .local v11, "explicitPolicy":I
    .local v12, "maxPathLength":I
    .local v14, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v17    # "acceptablePolicies":Ljava/util/Set;
    .local v22, "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v25, "sign":Ljava/security/cert/X509Certificate;
    .restart local v35    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v37    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .restart local v38    # "workingPublicKey":Ljava/security/PublicKey;
    .restart local v39    # "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v18, v0

    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v18, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move/from16 v36, v4

    .end local v4    # "policyMapping":I
    .restart local v36    # "policyMapping":I
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v1, v0, v4, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 453
    .end local v3    # "index":I
    .end local v17    # "acceptablePolicies":Ljava/util/Set;
    .end local v28    # "currentDate":Ljava/util/Date;
    .end local v34    # "certs":Ljava/util/List;
    .end local v35    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v36    # "policyMapping":I
    .end local v37    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local v38    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v39    # "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    .local v4, "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .local v5, "explicitPolicy":I
    .local v6, "index":I
    .local v7, "trust":Ljava/security/cert/TrustAnchor;
    .local v8, "policyMapping":I
    .local v9, "policyNodes":[Ljava/util/List;
    .local v10, "sign":Ljava/security/cert/X509Certificate;
    .local v11, "maxPathLength":I
    .local v12, "certs":Ljava/util/List;
    .local v14, "pathCheckers":Ljava/util/List;
    .local v15, "currentDate":Ljava/util/Date;
    .local v18, "acceptablePolicies":Ljava/util/Set;
    .restart local v21    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v22, "inhibitAnyPolicy":I
    .restart local v23    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v24    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .local v25, "workingPublicKey":Ljava/security/PublicKey;
    .restart local v30    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_37d
    move-object/from16 v39, v4

    move v3, v6

    move-object/from16 v35, v7

    move/from16 v36, v8

    move-object v6, v9

    move-object/from16 v34, v12

    move-object v9, v14

    move-object/from16 v28, v15

    move-object/from16 v17, v18

    move-object/from16 v7, v21

    move-object/from16 v14, v23

    move-object/from16 v37, v24

    move-object/from16 v38, v25

    move-object/from16 v25, v10

    move v12, v11

    move v11, v5

    move/from16 v5, v22

    move-object/from16 v22, v30

    .end local v4    # "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .end local v8    # "policyMapping":I
    .end local v10    # "sign":Ljava/security/cert/X509Certificate;
    .end local v15    # "currentDate":Ljava/util/Date;
    .end local v18    # "acceptablePolicies":Ljava/util/Set;
    .end local v21    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v23    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v24    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local v30    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v3    # "index":I
    .local v5, "inhibitAnyPolicy":I
    .local v6, "policyNodes":[Ljava/util/List;
    .local v7, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v9, "pathCheckers":Ljava/util/List;
    .local v11, "explicitPolicy":I
    .local v12, "maxPathLength":I
    .local v14, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v17    # "acceptablePolicies":Ljava/util/Set;
    .local v22, "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v25, "sign":Ljava/security/cert/X509Certificate;
    .restart local v28    # "currentDate":Ljava/util/Date;
    .restart local v34    # "certs":Ljava/util/List;
    .restart local v35    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v36    # "policyMapping":I
    .restart local v37    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .restart local v38    # "workingPublicKey":Ljava/security/PublicKey;
    .restart local v39    # "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    invoke-static {v11, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v1

    .line 455
    .end local v11    # "explicitPolicy":I
    .local v1, "explicitPolicy":I
    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v1

    .line 464
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v4

    .line 466
    .local v4, "criticalExtensions":Ljava/util/Set;
    if-eqz v4, :cond_3f3

    .line 468
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 470
    .end local v4    # "criticalExtensions":Ljava/util/Set;
    .local v8, "criticalExtensions":Ljava/util/Set;
    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 471
    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 472
    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 473
    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 474
    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 475
    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 476
    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 477
    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 478
    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 479
    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 480
    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 481
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v10, v8

    goto :goto_3f9

    .line 485
    .end local v8    # "criticalExtensions":Ljava/util/Set;
    .restart local v4    # "criticalExtensions":Ljava/util/Set;
    :cond_3f3
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-object v10, v8

    .line 488
    .end local v4    # "criticalExtensions":Ljava/util/Set;
    .local v10, "criticalExtensions":Ljava/util/Set;
    :goto_3f9
    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4, v9, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    .line 490
    move/from16 v21, v5

    .end local v5    # "inhibitAnyPolicy":I
    .local v21, "inhibitAnyPolicy":I
    add-int/lit8 v5, v3, 0x1

    move v11, v3

    move-object/from16 v4, v16

    move-object/from16 v8, v17

    move-object/from16 v3, v22

    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .end local v17    # "acceptablePolicies":Ljava/util/Set;
    .end local v22    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v3, "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v4, "userInitialPolicySet":Ljava/util/Set;
    .local v8, "acceptablePolicies":Ljava/util/Set;
    .local v11, "index":I
    invoke-static/range {v2 .. v8}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 493
    .end local v8    # "acceptablePolicies":Ljava/util/Set;
    .local v5, "intersection":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v17    # "acceptablePolicies":Ljava/util/Set;
    if-gtz v1, :cond_41f

    if-eqz v5, :cond_414

    move-object/from16 v16, v0

    goto :goto_421

    .line 498
    :cond_414
    new-instance v8, Ljava/security/cert/CertPathValidatorException;

    const-string v15, "Path processing failed on policy."

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .local v16, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {v8, v15, v0, v2, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v8

    .line 493
    .end local v16    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_41f
    move-object/from16 v16, v0

    .line 495
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v16    # "cert":Ljava/security/cert/X509Certificate;
    :goto_421
    new-instance v0, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    move-object/from16 v15, v35

    .end local v35    # "trust":Ljava/security/cert/TrustAnchor;
    .local v15, "trust":Ljava/security/cert/TrustAnchor;
    invoke-direct {v0, v15, v5, v8}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v0

    .line 259
    .end local v1    # "explicitPolicy":I
    .end local v5    # "intersection":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v11    # "index":I
    .end local v14    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v17    # "acceptablePolicies":Ljava/util/Set;
    .end local v27    # "workingPublicKeyParameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v28    # "currentDate":Ljava/util/Date;
    .end local v32    # "validityDate":Ljava/util/Date;
    .end local v33    # "certIter":Ljava/util/Iterator;
    .end local v34    # "certs":Ljava/util/List;
    .end local v36    # "policyMapping":I
    .end local v37    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local v38    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v39    # "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .local v4, "validityDate":Ljava/util/Date;
    .local v6, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v7, "trust":Ljava/security/cert/TrustAnchor;
    .local v8, "index":I
    .local v9, "policyNodes":[Ljava/util/List;
    .local v10, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v12, "certs":Ljava/util/List;
    .local v15, "currentDate":Ljava/util/Date;
    .local v16, "userInitialPolicySet":Ljava/util/Set;
    .restart local v18    # "acceptablePolicies":Ljava/util/Set;
    .local v19, "explicitPolicy":I
    .local v22, "policyMapping":I
    .local v23, "sign":Ljava/security/cert/X509Certificate;
    .restart local v24    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .local v25, "workingPublicKey":Ljava/security/PublicKey;
    .local v26, "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :catch_42d
    move-exception v0

    move-object/from16 v32, v4

    move-object v14, v6

    move-object v6, v9

    move-object/from16 v34, v12

    move-object/from16 v28, v15

    move-object/from16 v4, v16

    move-object/from16 v17, v18

    move-object v15, v7

    .line 261
    .end local v7    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v9    # "policyNodes":[Ljava/util/List;
    .end local v12    # "certs":Ljava/util/List;
    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .end local v18    # "acceptablePolicies":Ljava/util/Set;
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    .local v4, "userInitialPolicySet":Ljava/util/Set;
    .local v6, "policyNodes":[Ljava/util/List;
    .restart local v14    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v15, "trust":Ljava/security/cert/TrustAnchor;
    .restart local v17    # "acceptablePolicies":Ljava/util/Set;
    .restart local v28    # "currentDate":Ljava/util/Date;
    .restart local v32    # "validityDate":Ljava/util/Date;
    .restart local v34    # "certs":Ljava/util/List;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Algorithm identifier of public key of trust anchor could not be read."

    invoke-direct {v1, v7, v0, v2, v5}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 248
    .end local v0    # "e":Ljava/security/cert/CertPathValidatorException;
    .end local v14    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v17    # "acceptablePolicies":Ljava/util/Set;
    .end local v24    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local v25    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v26    # "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v28    # "currentDate":Ljava/util/Date;
    .end local v32    # "validityDate":Ljava/util/Date;
    .end local v34    # "certs":Ljava/util/List;
    .local v4, "validityDate":Ljava/util/Date;
    .local v6, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v7    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v9    # "policyNodes":[Ljava/util/List;
    .restart local v12    # "certs":Ljava/util/List;
    .local v15, "currentDate":Ljava/util/Date;
    .restart local v16    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v18    # "acceptablePolicies":Ljava/util/Set;
    :catch_443
    move-exception v0

    move-object/from16 v32, v4

    move-object v14, v6

    move-object v6, v9

    move-object/from16 v34, v12

    move-object/from16 v28, v15

    move-object/from16 v4, v16

    move-object/from16 v17, v18

    move-object v15, v7

    .line 250
    .end local v7    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v9    # "policyNodes":[Ljava/util/List;
    .end local v12    # "certs":Ljava/util/List;
    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .end local v18    # "acceptablePolicies":Ljava/util/Set;
    .local v0, "ex":Ljava/lang/RuntimeException;
    .local v4, "userInitialPolicySet":Ljava/util/Set;
    .local v6, "policyNodes":[Ljava/util/List;
    .restart local v14    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v15, "trust":Ljava/security/cert/TrustAnchor;
    .restart local v17    # "acceptablePolicies":Ljava/util/Set;
    .restart local v28    # "currentDate":Ljava/util/Date;
    .restart local v32    # "validityDate":Ljava/util/Date;
    .restart local v34    # "certs":Ljava/util/List;
    :goto_451
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Subject of trust anchor could not be (re)encoded."

    invoke-direct {v1, v7, v0, v2, v5}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 138
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v6    # "policyNodes":[Ljava/util/List;
    .end local v8    # "index":I
    .end local v10    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v14    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v17    # "acceptablePolicies":Ljava/util/Set;
    .end local v19    # "explicitPolicy":I
    .end local v20    # "policySet":Ljava/util/Set;
    .end local v21    # "inhibitAnyPolicy":I
    .end local v22    # "policyMapping":I
    .end local v23    # "sign":Ljava/security/cert/X509Certificate;
    .end local v28    # "currentDate":Ljava/util/Date;
    .end local v32    # "validityDate":Ljava/util/Date;
    .end local v34    # "certs":Ljava/util/List;
    .local v4, "validityDate":Ljava/util/Date;
    .restart local v7    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v12    # "certs":Ljava/util/List;
    .local v15, "currentDate":Ljava/util/Date;
    .restart local v16    # "userInitialPolicySet":Ljava/util/Set;
    :cond_459
    move-object/from16 v32, v4

    move/from16 v18, v6

    move-object/from16 v34, v12

    move-object/from16 v28, v15

    move-object/from16 v4, v16

    move-object v15, v7

    .end local v7    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v12    # "certs":Ljava/util/List;
    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .local v4, "userInitialPolicySet":Ljava/util/Set;
    .local v15, "trust":Ljava/security/cert/TrustAnchor;
    .restart local v28    # "currentDate":Ljava/util/Date;
    .restart local v32    # "validityDate":Ljava/util/Date;
    .restart local v34    # "certs":Ljava/util/List;
    :try_start_464
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Trust anchor for certification path not found."

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6, v2, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v4    # "userInitialPolicySet":Ljava/util/Set;
    .end local v13    # "n":I
    .end local v28    # "currentDate":Ljava/util/Date;
    .end local v32    # "validityDate":Ljava/util/Date;
    .end local v34    # "certs":Ljava/util/List;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    .end local p1    # "certPath":Ljava/security/cert/CertPath;
    .end local p2    # "params":Ljava/security/cert/CertPathParameters;
    throw v0
    :try_end_46d
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_464 .. :try_end_46d} :catch_46d

    .line 143
    .end local v15    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v3    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v4    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v13    # "n":I
    .restart local v28    # "currentDate":Ljava/util/Date;
    .restart local v32    # "validityDate":Ljava/util/Date;
    .restart local v34    # "certs":Ljava/util/List;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    .restart local p1    # "certPath":Ljava/security/cert/CertPath;
    .restart local p2    # "params":Ljava/security/cert/CertPathParameters;
    :catch_46d
    move-exception v0

    goto :goto_47a

    .end local v28    # "currentDate":Ljava/util/Date;
    .end local v32    # "validityDate":Ljava/util/Date;
    .end local v34    # "certs":Ljava/util/List;
    .local v4, "validityDate":Ljava/util/Date;
    .restart local v12    # "certs":Ljava/util/List;
    .local v15, "currentDate":Ljava/util/Date;
    .restart local v16    # "userInitialPolicySet":Ljava/util/Set;
    :catch_46f
    move-exception v0

    move-object/from16 v32, v4

    move/from16 v18, v6

    move-object/from16 v34, v12

    move-object/from16 v28, v15

    move-object/from16 v4, v16

    .line 145
    .end local v12    # "certs":Ljava/util/List;
    .end local v15    # "currentDate":Ljava/util/Date;
    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v4, "userInitialPolicySet":Ljava/util/Set;
    .restart local v28    # "currentDate":Ljava/util/Date;
    .restart local v32    # "validityDate":Ljava/util/Date;
    .restart local v34    # "certs":Ljava/util/List;
    :goto_47a
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v6

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v1, v5, v6, v2, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 113
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v4    # "userInitialPolicySet":Ljava/util/Set;
    .end local v28    # "currentDate":Ljava/util/Date;
    .end local v32    # "validityDate":Ljava/util/Date;
    .end local v34    # "certs":Ljava/util/List;
    .restart local v12    # "certs":Ljava/util/List;
    :cond_48e
    move v5, v4

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Certification path is empty."

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 97
    .end local v12    # "certs":Ljava/util/List;
    .end local v13    # "n":I
    :cond_498
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    .end local v3    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_4a1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameters must be a "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v3, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " instance."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
