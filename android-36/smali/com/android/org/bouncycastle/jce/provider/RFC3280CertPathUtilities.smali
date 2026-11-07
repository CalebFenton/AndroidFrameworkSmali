.class abstract Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3280CertPathUtilities.java"


# static fields
.field public static final blacklist AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field public static final blacklist BASIC_CONSTRAINTS:Ljava/lang/String;

.field public static final blacklist CERTIFICATE_POLICIES:Ljava/lang/String;

.field public static final blacklist CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field public static final blacklist CRL_NUMBER:Ljava/lang/String;

.field public static final blacklist DELTA_CRL_INDICATOR:Ljava/lang/String;

.field public static final blacklist FRESHEST_CRL:Ljava/lang/String;

.field public static final blacklist INHIBIT_ANY_POLICY:Ljava/lang/String;

.field public static final blacklist ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field public static final blacklist KEY_USAGE:Ljava/lang/String;

.field public static final blacklist NAME_CONSTRAINTS:Ljava/lang/String;

.field public static final blacklist POLICY_CONSTRAINTS:Ljava/lang/String;

.field public static final blacklist POLICY_MAPPINGS:Ljava/lang/String;

.field public static final blacklist SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final blacklist crlReasons:[Ljava/lang/String;

.field private static final blacklist revChkClass:Ljava/lang/Class;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 68
    const-class v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;

    const-string v1, "java.security.cert.PKIXRevocationChecker"

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->revChkClass:Ljava/lang/Class;

    .line 389
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 391
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 393
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 395
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 397
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 399
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 401
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 403
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 405
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 407
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 409
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 411
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 413
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 415
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 2235
    const-string v10, "privilegeWithdrawn"

    const-string v11, "aACompromise"

    const-string v1, "unspecified"

    const-string v2, "keyCompromise"

    const-string v3, "cACompromise"

    const-string v4, "affiliationChanged"

    const-string v5, "superseded"

    const-string v6, "cessationOfOperation"

    const-string v7, "certificateHold"

    const-string v8, "unknown"

    const-string v9, "removeFromCRL"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method private static blacklist checkCRL(Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .registers 31

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p4

    move-object/from16 v3, p5

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 1682
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v0, v4, v7

    if-gtz v0, :cond_121

    move-object/from16 v0, p0

    .line 1695
    invoke-static {v0, v1, v3, v6, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v0

    .line 1698
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v0, 0x0

    move v14, v0

    const/4 v0, 0x0

    .line 1700
    :goto_25
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11d

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v15, 0xb

    if-ne v2, v15, :cond_11d

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_11d

    .line 1704
    :try_start_39
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 1707
    invoke-static {v2, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v4

    .line 1715
    invoke-virtual {v4, v11}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Z

    move-result v5
    :try_end_47
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_39 .. :try_end_47} :catch_76

    if-nez v5, :cond_4a

    goto :goto_25

    :cond_4a
    move-object/from16 v5, p7

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object v13, v4

    move-object/from16 v4, p6

    .line 1721
    :try_start_53
    invoke-static/range {v2 .. v8}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    move-result-object v15
    :try_end_57
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_53 .. :try_end_57} :catch_74

    .line 1724
    :try_start_57
    invoke-static {v2, v15}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v4

    .line 1728
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 1731
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v7
    :try_end_69
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_57 .. :try_end_69} :catch_76

    move-object/from16 v8, p11

    :try_start_6b
    invoke-static {v9, v2, v5, v7, v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    move-result-object v5

    .line 1734
    invoke-static {v5, v4}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v4

    goto :goto_7d

    :catch_74
    move-exception v0

    goto :goto_25

    :catch_76
    move-exception v0

    move-object/from16 v8, p11

    goto :goto_25

    :cond_7a
    move-object/from16 v8, p11

    const/4 v4, 0x0

    .line 1750
    :goto_7d
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_a1

    .line 1757
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    cmp-long v5, v15, v17

    if-ltz v5, :cond_99

    goto :goto_a1

    .line 1759
    :cond_99
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "No valid CRL for current time found."

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1763
    :cond_a1
    :goto_a1
    invoke-static {v1, v3, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1766
    invoke-static {v1, v3, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1769
    invoke-static {v4, v2, v6}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 1772
    invoke-static {v9, v4, v3, v10, v6}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 1775
    invoke-static {v9, v2, v3, v10}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    .line 1778
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v15, 0x8

    if-ne v5, v15, :cond_bd

    const/16 v5, 0xb

    .line 1780
    invoke-virtual {v10, v5}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1784
    :cond_bd
    invoke-virtual {v11, v13}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)V

    .line 1786
    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_ec

    .line 1789
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1790
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1791
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1793
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e4

    goto :goto_ec

    .line 1795
    :cond_e4
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "CRL contains unsupported critical extensions."

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ec
    :goto_ec
    if-eqz v4, :cond_11a

    .line 1801
    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_11a

    .line 1804
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1805
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1806
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1807
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_112

    goto :goto_11a

    .line 1809
    :cond_112
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Delta CRL contains unsupported critical extension."

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11a
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_6b .. :try_end_11a} :catch_74

    :cond_11a
    :goto_11a
    move v14, v7

    goto/16 :goto_25

    :cond_11d
    if-eqz v14, :cond_120

    return-void

    .line 1823
    :cond_120
    throw v0

    .line 1684
    :cond_121
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v1, "Validation time is in future."

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist checkCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .registers 28

    .line 1864
    :try_start_0
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_179

    .line 1872
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v13, p1

    invoke-direct {v1, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 1876
    :try_start_13
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v5, p3

    move-object/from16 v12, p8

    .line 1875
    invoke-static {v0, v2, v5, v12}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;Ljava/util/Date;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/List;

    move-result-object v2

    .line 1877
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v14, 0x0

    if-eqz v3, :cond_35

    .line 1879
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-virtual {v1, v14}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_34
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_13 .. :try_end_34} :catch_170

    goto :goto_23

    .line 1887
    :cond_35
    new-instance v9, Lcom/android/org/bouncycastle/jce/provider/CertStatus;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;-><init>()V

    .line 1888
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v10}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    .line 1889
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-eqz v0, :cond_94

    .line 1898
    :try_start_48
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v4
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4c} :catch_97

    if-eqz v4, :cond_94

    move v7, v1

    move/from16 v16, v7

    move-object v0, v14

    .line 1906
    :goto_52
    array-length v8, v4

    if-ge v7, v8, :cond_91

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v8

    if-ne v8, v2, :cond_91

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v8

    if-nez v8, :cond_91

    move v8, v2

    .line 1910
    :try_start_62
    aget-object v2, v4, v7
    :try_end_64
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_62 .. :try_end_64} :catch_7c

    move-object/from16 v11, p7

    move v15, v1

    move-object/from16 v17, v4

    move/from16 v18, v7

    move v14, v8

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    :try_start_74
    invoke-static/range {v1 .. v12}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_77
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_74 .. :try_end_77} :catch_7a

    const/16 v16, 0x1

    goto :goto_83

    :catch_7a
    move-exception v0

    goto :goto_83

    :catch_7c
    move-exception v0

    move v15, v1

    move-object/from16 v17, v4

    move/from16 v18, v7

    move v14, v8

    :goto_83
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v12, p8

    move v2, v14

    move v1, v15

    move-object/from16 v4, v17

    const/4 v14, 0x0

    goto :goto_52

    :cond_91
    move v15, v1

    move v14, v2

    goto :goto_a3

    :cond_94
    move v15, v1

    move v14, v2

    goto :goto_a0

    :catch_97
    move-exception v0

    .line 1902
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Distribution points could not be read."

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_a0
    move/from16 v16, v15

    const/4 v0, 0x0

    .line 1928
    :goto_a3
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v1

    if-ne v1, v14, :cond_f0

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v1

    if-nez v1, :cond_f0

    .line 1940
    :try_start_af
    invoke-static/range {p4 .. p4}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1
    :try_end_b3
    .catch Ljava/lang/RuntimeException; {:try_start_af .. :try_end_b3} :catch_e7
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_af .. :try_end_b3} :catch_e5

    .line 1946
    :try_start_b3
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    invoke-direct {v3, v15, v4}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    invoke-direct {v2, v3, v1, v1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    .line 1948
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    .line 1949
    invoke-static/range {v1 .. v12}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    const/4 v15, 0x1

    goto :goto_f2

    :catch_e5
    move-exception v0

    goto :goto_f0

    :catch_e7
    move-exception v0

    .line 1944
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_f0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_b3 .. :try_end_f0} :catch_e5

    :cond_f0
    :goto_f0
    move/from16 v15, v16

    :goto_f2
    if-nez v15, :cond_ff

    if-eqz v0, :cond_f7

    .line 1963
    throw v0

    .line 1966
    :cond_f7
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "No valid CRL found."

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1968
    :cond_ff
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v14, :cond_125

    .line 1976
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    const/16 v1, 0xc

    if-nez v0, :cond_116

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v14, :cond_116

    .line 1978
    invoke-virtual {v9, v1}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1980
    :cond_116
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-eq v0, v1, :cond_11d

    return-void

    .line 1982
    :cond_11d
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v1, "Certificate status could not be determined."

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1970
    :cond_125
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1971
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate revocation after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reason: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1974
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_170
    move-exception v0

    .line 1884
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_179
    move-exception v0

    .line 1869
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "CRL distribution point extension could not be read."

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 21

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v0, p2

    .line 792
    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    .line 793
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 794
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v7, v3, v2

    .line 802
    :try_start_16
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_20
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_16 .. :try_end_20} :catch_1a8

    if-eqz v3, :cond_1a7

    .line 814
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 815
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v14, 0x0

    move v6, v14

    .line 817
    :goto_2e
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    if-ge v6, v8, :cond_70

    .line 819
    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 820
    invoke-virtual {v8, v14}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    .line 821
    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    .line 824
    invoke-interface {v13, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_64

    .line 826
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 827
    invoke-interface {v10, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 828
    invoke-interface {v13, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 833
    :cond_64
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 834
    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 838
    :cond_70
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v15, p3

    .line 839
    :cond_76
    :goto_76
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a6

    .line 841
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/lang/String;

    if-lez p4, :cond_155

    .line 849
    aget-object v5, v0, v7

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 850
    :cond_8b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 852
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 853
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 856
    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    iput-object v5, v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    goto :goto_76

    .line 863
    :cond_aa
    aget-object v5, v0, v7

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 864
    :cond_b0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 866
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 867
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    const-string v9, "2.5.29.32.0"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b0

    .line 873
    :try_start_c8
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_d0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_c8 .. :try_end_d0} :catch_14c

    .line 881
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 882
    :cond_d4
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_10c

    .line 887
    :try_start_da
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v8
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e2} :catch_103

    .line 894
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d4

    .line 899
    :try_start_f0
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v5
    :try_end_f8
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_f0 .. :try_end_f8} :catch_fa

    :goto_f8
    move-object v10, v5

    goto :goto_10e

    :catch_fa
    move-exception v0

    .line 904
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Policy qualifier info set could not be decoded."

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_103
    move-exception v0

    .line 891
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Policy information could not be decoded."

    invoke-direct {v3, v4, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_10c
    const/4 v5, 0x0

    goto :goto_f8

    .line 912
    :goto_10e
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_120

    .line 914
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v5

    sget-object v8, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    move v12, v5

    goto :goto_121

    :cond_120
    move v12, v14

    .line 918
    :goto_121
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 919
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    move-object v9, v5

    .line 921
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 922
    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-direct/range {v5 .. v12}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 923
    invoke-virtual {v9, v5}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 924
    aget-object v6, v0, v7

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_76

    :catch_14c
    move-exception v0

    .line 878
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Certificate policies extension could not be decoded."

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_155
    if-gtz p4, :cond_76

    .line 937
    aget-object v5, v0, v7

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 938
    :cond_15d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 940
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 941
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15d

    .line 943
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 944
    invoke-virtual {v8, v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 945
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v6, v7, -0x1

    :goto_181
    if-ltz v6, :cond_15d

    .line 948
    aget-object v8, v0, v6

    move v9, v14

    .line 949
    :goto_186
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1a3

    .line 951
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 952
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v12

    if-nez v12, :cond_1a0

    .line 954
    invoke-static {v15, v0, v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v10

    move-object v15, v10

    if-nez v10, :cond_1a0

    goto :goto_1a3

    :cond_1a0
    add-int/lit8 v9, v9, 0x1

    goto :goto_186

    :cond_1a3
    :goto_1a3
    add-int/lit8 v6, v6, -0x1

    goto :goto_181

    :cond_1a6
    return-object v15

    :cond_1a7
    return-object p3

    :catch_1a8
    move-exception v0

    .line 807
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Policy mappings extension could not be decoded."

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
.end method

.method protected static blacklist prepareNextCertA(Ljava/security/cert/CertPath;I)V
    .registers 9

    .line 976
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 977
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 985
    :try_start_a
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_14
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_14} :catch_6b

    if-eqz v0, :cond_6a

    const/4 v1, 0x0

    move v2, v1

    .line 997
    :goto_18
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_6a

    .line 1003
    :try_start_1e
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 1005
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    const/4 v5, 0x1

    .line 1006
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_37} :catch_61

    .line 1014
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2.5.29.32.0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_59

    .line 1020
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1023
    :cond_51
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "SubjectDomainPolicy is anyPolicy"

    invoke-direct {v0, v1, v6, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1017
    :cond_59
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "IssuerDomainPolicy is anyPolicy"

    invoke-direct {v0, v1, v6, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_61
    move-exception v0

    .line 1010
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Policy mappings extension contents could not be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    :cond_6a
    return-void

    :catch_6b
    move-exception v0

    .line 990
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Policy mappings extension could not be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method protected static blacklist prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .registers 6

    .line 1576
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1577
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1584
    :try_start_a
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1588
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1b

    goto :goto_1e

    :catch_1b
    move-exception p2

    goto :goto_4f

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_4e

    .line 1602
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 1607
    :try_start_26
    invoke-virtual {p2, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_33

    :catch_2a
    move-exception p2

    .line 1611
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Permitted subtrees cannot be build from name constraints extension."

    invoke-direct {v0, v1, p2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1619
    :cond_33
    :goto_33
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    if-eqz v0, :cond_4e

    const/4 v1, 0x0

    .line 1622
    :goto_3a
    array-length v2, v0

    if-eq v1, v2, :cond_4e

    .line 1625
    :try_start_3d
    aget-object v2, v0, v1

    invoke-virtual {p2, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_45

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :catch_45
    move-exception p2

    .line 1629
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Excluded subtrees cannot be build from name constraints extension."

    invoke-direct {v0, v1, p2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_4e
    return-void

    .line 1593
    :goto_4f
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Name constraints extension could not be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
.end method

.method protected static blacklist prepareNextCertH1(Ljava/security/cert/CertPath;II)I
    .registers 3

    .line 2171
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p0

    .line 2172
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 2176
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result p0

    if-nez p0, :cond_14

    if-eqz p2, :cond_14

    add-int/lit8 p2, p2, -0x1

    :cond_14
    return p2
.end method

.method protected static blacklist prepareNextCertH2(Ljava/security/cert/CertPath;II)I
    .registers 3

    .line 2194
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p0

    .line 2195
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 2199
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result p0

    if-nez p0, :cond_14

    if-eqz p2, :cond_14

    add-int/lit8 p2, p2, -0x1

    :cond_14
    return p2
.end method

.method protected static blacklist prepareNextCertH3(Ljava/security/cert/CertPath;II)I
    .registers 3

    .line 2217
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p0

    .line 2218
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 2222
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result p0

    if-nez p0, :cond_14

    if-eqz p2, :cond_14

    add-int/lit8 p2, p2, -0x1

    :cond_14
    return p2
.end method

.method protected static blacklist prepareNextCertI1(Ljava/security/cert/CertPath;II)I
    .registers 6

    .line 1468
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1469
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1476
    :try_start_a
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_44

    if-eqz v0, :cond_43

    .line 1489
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 1491
    :cond_1a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1495
    :try_start_20
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 1496
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-nez v2, :cond_1a

    const/4 v0, 0x0

    .line 1498
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result p0
    :try_end_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_37} :catch_3a

    if-ge p0, p2, :cond_43

    return p0

    :catch_3a
    move-exception p2

    .line 1508
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_43
    return p2

    :catch_44
    move-exception p2

    .line 1481
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy constraints extension cannot be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
.end method

.method protected static blacklist prepareNextCertI2(Ljava/security/cert/CertPath;II)I
    .registers 7

    .line 1522
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1523
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1530
    :try_start_a
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_45

    if-eqz v0, :cond_44

    .line 1543
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 1545
    :cond_1a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1549
    :try_start_20
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 1550
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    const/4 v0, 0x0

    .line 1552
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result p0
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_38} :catch_3b

    if-ge p0, p2, :cond_44

    return p0

    :catch_3b
    move-exception p2

    .line 1562
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_44
    return p2

    :catch_45
    move-exception p2

    .line 1535
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy constraints extension cannot be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
.end method

.method protected static blacklist prepareNextCertJ(Ljava/security/cert/CertPath;II)I
    .registers 5

    .line 1992
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1993
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2000
    :try_start_a
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_1e

    if-eqz p0, :cond_1d

    .line 2011
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result p0

    if-ge p0, p2, :cond_1d

    return p0

    :cond_1d
    return p2

    :catch_1e
    move-exception p2

    .line 2005
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Inhibit any-policy extension cannot be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
.end method

.method protected static blacklist prepareNextCertK(Ljava/security/cert/CertPath;I)V
    .registers 5

    .line 2026
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2027
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2034
    :try_start_a
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_2e

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 2044
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    .line 2046
    :cond_1e
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Not a CA certificate"

    invoke-direct {v0, v2, v1, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2051
    :cond_26
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v0, v2, v1, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_2e
    move-exception v0

    .line 2039
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Basic constraints extension cannot be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method protected static blacklist prepareNextCertL(Ljava/security/cert/CertPath;II)I
    .registers 5

    .line 2061
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2062
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2066
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_1e

    if-lez p2, :cond_15

    add-int/lit8 p2, p2, -0x1

    return p2

    .line 2070
    :cond_15
    new-instance p2, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v0, "Max path length not greater than zero"

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p2

    :cond_1e
    return p2
.end method

.method protected static blacklist prepareNextCertM(Ljava/security/cert/CertPath;II)I
    .registers 5

    .line 2084
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2085
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2093
    :try_start_a
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_2c

    if-eqz p0, :cond_2b

    .line 2101
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 2103
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraintInteger()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 2106
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intPositiveValueExact()I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2b
    return p2

    :catch_2c
    move-exception p2

    .line 2098
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Basic constraints extension cannot be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
.end method

.method protected static blacklist prepareNextCertN(Ljava/security/cert/CertPath;I)V
    .registers 5

    .line 2117
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2118
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2123
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2125
    array-length v1, v0

    const/4 v2, 0x5

    if-le v1, v2, :cond_19

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_19

    goto :goto_22

    .line 2127
    :cond_19
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Issuer certificate keyusage extension is critical and does not permit key signing."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_22
    :goto_22
    return-void
.end method

.method protected static blacklist prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
    .registers 6

    .line 2140
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2141
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2147
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 2148
    :goto_e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2152
    :try_start_14
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v1, v0, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_e

    :catch_1e
    move-exception p2

    .line 2156
    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {p2}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p3, v0, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    .line 2159
    :cond_2d
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_34

    return-void

    .line 2161
    :cond_34
    new-instance p3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate has unsupported critical extension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p3, p2, v0, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3
.end method

.method protected static blacklist processCRLB1(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .registers 8

    .line 290
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    .line 294
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    .line 303
    :goto_17
    :try_start_17
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v3
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_90

    .line 311
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    if-eqz v4, :cond_75

    .line 313
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object p0

    move p1, v2

    .line 314
    :goto_2e
    array-length p2, p0

    if-ge v2, p2, :cond_5c

    .line 316
    aget-object p2, p0, v2

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result p2

    const/4 v4, 0x4

    if-ne p2, v4, :cond_59

    .line 320
    :try_start_3a
    aget-object p2, p0, v2

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p2

    invoke-static {p2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p2
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_4c} :catch_50

    if-eqz p2, :cond_59

    move p1, v1

    goto :goto_59

    :catch_50
    move-exception p0

    .line 327
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_59
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_5c
    if-eqz p1, :cond_69

    if-eqz v0, :cond_61

    goto :goto_69

    .line 334
    :cond_61
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    :goto_69
    if-eqz p1, :cond_6d

    move v1, p1

    goto :goto_85

    .line 338
    :cond_6d
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 343
    :cond_75
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    .line 344
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_84

    goto :goto_85

    :cond_84
    move v1, v2

    :goto_85
    if-eqz v1, :cond_88

    return-void

    .line 351
    :cond_88
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Cannot find matching CRL issuer for certificate."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_90
    move-exception p0

    .line 307
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception encoding CRL issuer: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static blacklist processCRLB2(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .registers 11

    .line 110
    :try_start_0
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_1b4

    if-eqz v0, :cond_1b3

    .line 121
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v1

    if-eqz v1, :cond_15c

    .line 124
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v1

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3e

    .line 129
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    move v5, v4

    .line 130
    :goto_33
    array-length v6, v3

    if-ge v5, v6, :cond_3e

    .line 132
    aget-object v6, v3, v5

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 135
    :cond_3e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_88

    .line 137
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 140
    :try_start_4a
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p2

    invoke-static {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p2

    .line 141
    :goto_56
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_66

    .line 143
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_65} :catch_7f

    goto :goto_56

    .line 150
    :cond_66
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 151
    new-instance p2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_88

    :catch_7f
    move-exception p0

    .line 148
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Could not read CRL issuer."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 156
    :cond_88
    :goto_88
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object p2

    const-string v1, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    if-eqz p2, :cond_131

    .line 158
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object p2

    .line 160
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v3

    if-nez v3, :cond_a7

    .line 162
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    goto :goto_a8

    :cond_a7
    const/4 v3, 0x0

    .line 164
    :goto_a8
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v6

    if-ne v6, v5, :cond_11a

    .line 166
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    if-eqz v3, :cond_be

    .line 168
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object p0

    :goto_bc
    move-object v3, p0

    goto :goto_cc

    .line 172
    :cond_be
    new-array p0, v5, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    .line 175
    :try_start_c0
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    aput-object v3, p0, v4
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_cb} :catch_111

    goto :goto_bc

    :goto_cc
    move p0, v4

    .line 182
    :goto_cd
    array-length v5, v3

    if-ge p0, v5, :cond_11a

    .line 184
    aget-object v5, v3, p0

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 185
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 186
    :goto_e7
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_f7

    .line 188
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_e7

    .line 190
    :cond_f7
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 191
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v6}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    aput-object v5, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_cd

    :catch_111
    move-exception p0

    .line 179
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Could not read certificate issuer."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_11a
    if-eqz v3, :cond_12b

    .line 196
    :goto_11c
    array-length p0, v3

    if-ge v4, p0, :cond_12b

    .line 198
    aget-object p0, v3, v4

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_128

    goto :goto_15c

    :cond_128
    add-int/lit8 v4, v4, 0x1

    goto :goto_11c

    .line 207
    :cond_12b
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_131
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p2

    if-eqz p2, :cond_154

    .line 221
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object p0

    .line 222
    :goto_13f
    array-length p2, p0

    if-ge v4, p2, :cond_14e

    .line 224
    aget-object p2, p0, v4

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14b

    goto :goto_15c

    :cond_14b
    add-int/lit8 v4, v4, 0x1

    goto :goto_13f

    .line 232
    :cond_14e
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 218
    :cond_154
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 240
    :cond_15c
    :goto_15c
    :try_start_15c
    move-object p0, p1

    check-cast p0, Ljava/security/cert/X509Extension;

    sget-object p2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object p0
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_169} :catch_1aa

    .line 248
    instance-of p1, p1, Ljava/security/cert/X509Certificate;

    if-eqz p1, :cond_19b

    .line 251
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result p1

    if-eqz p1, :cond_184

    if-eqz p0, :cond_184

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result p1

    if-nez p1, :cond_17c

    goto :goto_184

    .line 253
    :cond_17c
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "CA Cert CRL only contains user certificates."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 257
    :cond_184
    :goto_184
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result p1

    if-eqz p1, :cond_19b

    if-eqz p0, :cond_193

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result p0

    if-eqz p0, :cond_193

    goto :goto_19b

    .line 259
    :cond_193
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "End CRL only contains CA certificates."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 264
    :cond_19b
    :goto_19b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result p0

    if-nez p0, :cond_1a2

    goto :goto_1b3

    .line 266
    :cond_1a2
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1aa
    move-exception p0

    .line 245
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Basic constraints extension could not be decoded."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1b3
    :goto_1b3
    return-void

    :catch_1b4
    move-exception p0

    .line 115
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Issuing distribution point extension could not be decoded."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static blacklist processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .registers 6

    if-nez p0, :cond_4

    goto/16 :goto_93

    .line 656
    :cond_4
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->hasUnsupportedCriticalExtension()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 664
    :try_start_a
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_94

    .line 672
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result p2

    if-eqz p2, :cond_93

    .line 675
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p2

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8b

    .line 684
    :try_start_28
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p2

    invoke-static {p2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object p2
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_82

    if-nez v1, :cond_35

    if-nez p2, :cond_7a

    goto :goto_3b

    .line 703
    :cond_35
    invoke-virtual {v1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7a

    .line 718
    :goto_3b
    :try_start_3b
    sget-object p2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1
    :try_end_41
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3b .. :try_end_41} :catch_71

    .line 730
    :try_start_41
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_45
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_41 .. :try_end_45} :catch_68

    if-eqz p1, :cond_60

    if-eqz p0, :cond_58

    .line 749
    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_50

    goto :goto_93

    .line 751
    :cond_50
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 746
    :cond_58
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Delta CRL authority key identifier is null."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 741
    :cond_60
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "CRL authority key identifier is null."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_68
    move-exception p0

    .line 735
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Authority key identifier extension could not be extracted from delta CRL."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_71
    move-exception p0

    .line 723
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Authority key identifier extension could not be extracted from complete CRL."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 710
    :cond_7a
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_82
    move-exception p0

    .line 689
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Issuing distribution point extension from delta CRL could not be decoded."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 677
    :cond_8b
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Complete CRL issuer does not match delta CRL issuer."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_93
    :goto_93
    return-void

    :catch_94
    move-exception p0

    .line 669
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Issuing distribution point extension could not be decoded."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 658
    :cond_9d
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "delta CRL has unsupported critical extensions"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static blacklist processCRLD(Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .registers 3

    .line 363
    :try_start_0
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_67

    if-eqz p0, :cond_2f

    .line 371
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 373
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object p0

    return-object p0

    :cond_2f
    if-eqz p0, :cond_37

    .line 376
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_40

    :cond_37
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_40

    .line 378
    sget-object p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    return-object p0

    .line 381
    :cond_40
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_49

    .line 382
    sget-object p1, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_53

    .line 383
    :cond_49
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    move-object p1, v0

    :goto_53
    if-nez p0, :cond_58

    .line 384
    sget-object p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_62

    .line 385
    :cond_58
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    move-object p0, v0

    .line 383
    :goto_62
    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object p0

    return-object p0

    :catch_67
    move-exception p0

    .line 368
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v0, "Issuing distribution point extension could not be decoded."

    invoke-direct {p1, v0, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static blacklist processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;
    .registers 15

    .line 458
    new-instance p1, Ljava/security/cert/X509CertSelector;

    invoke-direct {p1}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 461
    :try_start_5
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    .line 462
    invoke-virtual {p1, p0}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_11c

    .line 470
    new-instance p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object p0

    .line 473
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 476
    :try_start_1e
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V

    .line 477
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    :try_end_2c
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1e .. :try_end_2c} :catch_113

    .line 484
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 488
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    :goto_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c5

    .line 493
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 499
    invoke-virtual {v1, p2}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 501
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 511
    :cond_57
    :try_start_57
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;-><init>(Z)V

    .line 512
    new-instance v5, Ljava/security/cert/X509CertSelector;

    invoke-direct {v5}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 513
    invoke-virtual {v5, v1}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 515
    new-instance v6, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v6, p4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    new-instance v7, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v7, v5}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    .line 516
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTargetConstraints(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v5

    .line 527
    invoke-interface {p5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 529
    invoke-virtual {v5, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V

    goto :goto_84

    .line 533
    :cond_81
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V

    .line 536
    :goto_84
    new-instance v4, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object v4

    .line 538
    invoke-virtual {v3, v4}, Ljava/security/cert/CertPathBuilderSpi;->engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    .line 539
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-static {v3, v2, p6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a7
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_57 .. :try_end_a7} :catch_bc
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_57 .. :try_end_a7} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_a7} :catch_a8

    goto :goto_3d

    :catch_a8
    move-exception p0

    .line 552
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_b3
    move-exception p0

    .line 548
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Public key of issuer certificate of CRL could not be retrieved."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_bc
    move-exception p0

    .line 544
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "CertPath for CRL signer failed to validate."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 556
    :cond_c5
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/4 p2, 0x0

    .line 559
    :goto_cb
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_f7

    .line 561
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    .line 562
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p3

    if-eqz p3, :cond_ed

    .line 564
    array-length p4, p3

    const/4 p5, 0x6

    if-le p4, p5, :cond_e5

    aget-boolean p3, p3, p5

    if-nez p3, :cond_ed

    .line 566
    :cond_e5
    new-instance p2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p3, "Issuer certificate key usage extension does not permit CRL signing."

    invoke-direct {p2, p3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    goto :goto_f4

    .line 571
    :cond_ed
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_f4
    add-int/lit8 v2, v2, 0x1

    goto :goto_cb

    .line 575
    :cond_f7
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_108

    if-eqz p2, :cond_100

    goto :goto_108

    .line 577
    :cond_100
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Cannot find a valid issuer certificate."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 579
    :cond_108
    :goto_108
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_112

    if-nez p2, :cond_111

    goto :goto_112

    .line 581
    :cond_111
    throw p2

    :cond_112
    :goto_112
    return-object p0

    :catch_113
    move-exception p0

    .line 481
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Issuer certificate for CRL cannot be searched."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_11c
    move-exception p0

    .line 466
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static blacklist processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .registers 4

    .line 593
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 595
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    .line 598
    :try_start_11
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    goto :goto_5

    .line 606
    :cond_17
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Cannot verify CRL."

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method protected static blacklist processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .registers 5

    .line 616
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 618
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRL;

    .line 621
    :try_start_12
    invoke-virtual {v1, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    return-object v1

    :catch_16
    move-exception v1

    goto :goto_6

    :cond_18
    if-nez v1, :cond_1b

    return-object v0

    .line 632
    :cond_1b
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Cannot verify delta CRL."

    invoke-direct {p0, p1, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method protected static blacklist processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .registers 5

    .line 765
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result p4

    if-eqz p4, :cond_b

    if-eqz p1, :cond_b

    .line 767
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    :cond_b
    return-void
.end method

.method protected static blacklist processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V
    .registers 6

    .line 778
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_b

    .line 780
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    :cond_b
    return-void
.end method

.method protected static blacklist processCertA(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationChecker;ILjava/security/PublicKey;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;)V
    .registers 18

    move-object/from16 v7, p7

    .line 1394
    const-string v1, "Could not validate certificate: "

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1395
    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/security/cert/X509Certificate;

    if-nez p6, :cond_22

    .line 1406
    :try_start_11
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    .line 1405
    invoke-static {v8, p5, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/security/GeneralSecurityException; {:try_start_11 .. :try_end_18} :catch_19

    goto :goto_22

    :catch_19
    move-exception v0

    .line 1410
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate certificate signature."

    invoke-direct {v1, v2, v0, p0, p4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1418
    :cond_22
    :goto_22
    :try_start_22
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    move-result v0

    .line 1417
    invoke-static {p2, v0, p0, p4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Ljava/util/Date;ILjava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v2
    :try_end_2a
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_22 .. :try_end_2a} :catch_a4

    .line 1429
    :try_start_2a
    invoke-virtual {v8, v2}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_2d
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_2a .. :try_end_2d} :catch_8a
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_2a .. :try_end_2d} :catch_70

    if-eqz p3, :cond_40

    .line 1445
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    move-object v3, p0

    move-object v1, p1

    move v4, p4

    move-object v6, p5

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/security/cert/CertPath;ILjava/security/cert/X509Certificate;Ljava/security/PublicKey;)V

    invoke-interface {p3, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationChecker;->initialize(Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;)V

    .line 1448
    invoke-interface {p3, v8}, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationChecker;->check(Ljava/security/cert/Certificate;)V

    .line 1454
    :cond_40
    invoke-static {v8}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    .line 1455
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    return-void

    .line 1457
    :cond_4b
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IssuerName("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") does not match SubjectName("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") of signing certificate."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0, p4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    :catch_70
    move-exception v0

    .line 1437
    new-instance v2, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, p0, p4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_8a
    move-exception v0

    .line 1433
    new-instance v2, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, p0, p4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_a4
    move-exception v0

    .line 1422
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate time of certificate."

    invoke-direct {v1, v2, v0, p0, p4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method protected static blacklist processCertBC(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;Z)V
    .registers 10

    .line 1082
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1083
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1084
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v2, v0, p1

    .line 1095
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1a

    if-lt v2, v0, :cond_91

    if-nez p3, :cond_91

    .line 1097
    :cond_1a
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p3

    .line 1102
    :try_start_1e
    invoke-static {p3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_a4

    .line 1112
    :try_start_22
    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 1113
    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_28
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_22 .. :try_end_28} :catch_9b

    .line 1124
    :try_start_28
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_32} :catch_92

    .line 1132
    invoke-static {p3}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p3

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p3, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object p3

    const/4 v1, 0x0

    move v2, v1

    .line 1133
    :goto_3e
    array-length v3, p3

    if-eq v2, v3, :cond_69

    .line 1136
    aget-object v3, p3, v2

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v3

    .line 1137
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 1140
    :try_start_57
    invoke-virtual {p2, v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 1141
    invoke-virtual {p2, v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_5d
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_57 .. :try_end_5d} :catch_60

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :catch_60
    move-exception p2

    .line 1145
    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "Subtree check for certificate subject alternative email failed."

    invoke-direct {p3, v0, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    :cond_69
    if-eqz v0, :cond_91

    .line 1154
    :try_start_6b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object p3
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6f} :catch_88

    .line 1161
    :goto_6f
    array-length v0, p3

    if-ge v1, v0, :cond_91

    .line 1166
    :try_start_72
    aget-object v0, p3, v1

    invoke-virtual {p2, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 1167
    aget-object v0, p3, v1

    invoke-virtual {p2, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_7c
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_72 .. :try_end_7c} :catch_7f

    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    :catch_7f
    move-exception p2

    .line 1171
    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "Subtree check for certificate subject alternative name failed."

    invoke-direct {p3, v0, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    :catch_88
    move-exception p2

    .line 1158
    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "Subject alternative name contents could not be decoded."

    invoke-direct {p3, v0, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    :cond_91
    return-void

    :catch_92
    move-exception p2

    .line 1129
    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "Subject alternative name extension could not be decoded."

    invoke-direct {p3, v0, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    :catch_9b
    move-exception p2

    .line 1117
    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "Subtree check for certificate subject failed."

    invoke-direct {p3, v0, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    :catch_a4
    move-exception p2

    .line 1106
    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "Exception extracting subject name when checking subtrees."

    invoke-direct {p3, v0, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3
.end method

.method protected static blacklist processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;IZ)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 19

    move-object/from16 v1, p4

    .line 1189
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 1190
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 1191
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v6, v2, p1

    .line 1201
    :try_start_12
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4
    :try_end_1c
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_12 .. :try_end_1c} :catch_194

    if-eqz v4, :cond_192

    if-eqz p3, :cond_192

    .line 1214
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 1215
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1217
    :cond_29
    :goto_29
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    const-string v9, "2.5.29.32.0"

    if-eqz v8, :cond_69

    .line 1219
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v8

    .line 1220
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    .line 1222
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1224
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_29

    .line 1229
    :try_start_4e
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v8
    :try_end_56
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4e .. :try_end_56} :catch_60

    .line 1237
    invoke-static {v6, v1, v10, v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1i(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v9

    if-nez v9, :cond_29

    .line 1241
    invoke-static {v6, v1, v10, v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1ii(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V

    goto :goto_29

    :catch_60
    move-exception v0

    .line 1233
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Policy qualifier info set could not be build."

    invoke-direct {v1, v2, v0, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1246
    :cond_69
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9a

    invoke-interface {p2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_76

    goto :goto_9a

    .line 1253
    :cond_76
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1254
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1256
    :cond_7f
    :goto_7f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93

    .line 1258
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1260
    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 1262
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 1265
    :cond_93
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 1266
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_a0

    .line 1248
    :cond_9a
    :goto_9a
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 1249
    invoke-interface {p2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_a0
    const/4 p0, 0x0

    if-gtz p5, :cond_ad

    if-lt v6, v2, :cond_a7

    if-eqz p6, :cond_14a

    .line 1272
    :cond_a7
    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_14a

    .line 1274
    :cond_ad
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 1276
    :cond_b1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 1278
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0

    .line 1280
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 1282
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v9

    add-int/lit8 p1, v6, -0x1

    .line 1283
    aget-object p1, v1, p1

    move v0, p0

    .line 1285
    :goto_da
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_14a

    .line 1287
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1289
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1290
    :cond_ef
    :goto_ef
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_147

    .line 1292
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1295
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_101

    .line 1297
    check-cast v4, Ljava/lang/String;

    :goto_ff
    move-object v10, v4

    goto :goto_10c

    .line 1299
    :cond_101
    instance-of v5, v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v5, :cond_ef

    .line 1301
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_ff

    .line 1309
    :goto_10c
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v4

    move v5, p0

    .line 1311
    :cond_111
    :goto_111
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_129

    .line 1313
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1315
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_111

    const/4 v5, 0x1

    goto :goto_111

    :cond_129
    if-nez v5, :cond_ef

    .line 1323
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1324
    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1326
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1328
    invoke-virtual {v8, v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1329
    aget-object v5, v1, v6

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ef

    :cond_147
    add-int/lit8 v0, v0, 0x1

    goto :goto_da

    :cond_14a
    add-int/lit8 p1, v6, -0x1

    move-object v0, p3

    :goto_14d
    if-ltz p1, :cond_171

    .line 1344
    aget-object v2, v1, p1

    move v4, p0

    .line 1346
    :goto_152
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_16e

    .line 1348
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1349
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v7

    if-nez v7, :cond_16b

    .line 1351
    invoke-static {v0, v1, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    if-nez v0, :cond_16b

    goto :goto_16e

    :cond_16b
    add-int/lit8 v4, v4, 0x1

    goto :goto_152

    :cond_16e
    :goto_16e
    add-int/lit8 p1, p1, -0x1

    goto :goto_14d

    .line 1364
    :cond_171
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_191

    .line 1368
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 1370
    aget-object v1, v1, v6

    .line 1371
    :goto_17f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_191

    .line 1373
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1374
    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_17f

    :cond_191
    return-object v0

    :cond_192
    const/4 p0, 0x0

    return-object p0

    :catch_194
    move-exception v0

    .line 1206
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not read certificate policies extension from certificate."

    invoke-direct {v1, v2, v0, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method protected static blacklist processCertE(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 5

    .line 1052
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1053
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1060
    :try_start_a
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0
    :try_end_14
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_14} :catch_19

    if-nez p0, :cond_18

    const/4 p0, 0x0

    return-object p0

    :cond_18
    return-object p2

    :catch_19
    move-exception p2

    .line 1065
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Could not read certificate policies extension from certificate."

    invoke-direct {v0, v1, p2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
.end method

.method protected static blacklist processCertF(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V
    .registers 5

    if-gtz p3, :cond_e

    if-eqz p2, :cond_5

    goto :goto_e

    .line 1041
    :cond_5
    new-instance p2, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string p3, "No valid policy tree found when one expected."

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p2

    :cond_e
    :goto_e
    return-void
.end method

.method protected static blacklist wrapupCertA(ILjava/security/cert/X509Certificate;)I
    .registers 2

    .line 2256
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-nez p1, :cond_a

    if-eqz p0, :cond_a

    add-int/lit8 p0, p0, -0x1

    :cond_a
    return p0
.end method

.method protected static blacklist wrapupCertB(Ljava/security/cert/CertPath;II)I
    .registers 6

    .line 2269
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2270
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2278
    :try_start_a
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_14
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_14} :catch_43

    if-eqz v0, :cond_42

    .line 2287
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 2289
    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2291
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 2292
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_1a

    :cond_2d
    const/4 v2, 0x0

    .line 2297
    :try_start_2e
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_36} :catch_39

    if-nez v1, :cond_1a

    return v2

    :catch_39
    move-exception p2

    .line 2301
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy constraints requireExplicitPolicy field could not be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_42
    return p2

    :catch_43
    move-exception p2

    .line 2283
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy constraints could not be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
.end method

.method protected static blacklist wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .registers 6

    .line 2323
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2324
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2326
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 2327
    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2331
    :try_start_14
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v1, v0, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_14 .. :try_end_1d} :catch_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_e

    :catch_1e
    move-exception p2

    goto :goto_22

    :catch_20
    move-exception p2

    goto :goto_2a

    .line 2339
    :goto_22
    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "Additional certificate path checker failed."

    invoke-direct {p3, v0, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    .line 2335
    :goto_2a
    new-instance p3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {p2}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    .line 2343
    :cond_34
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3b

    return-void

    .line 2345
    :cond_3b
    new-instance p2, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate has unsupported critical extension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p2
.end method

.method protected static blacklist wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 13

    .line 2360
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2369
    const-string v1, "Explicit policy requested but none available."

    const/4 v2, 0x0

    if-nez p5, :cond_1a

    .line 2371
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result p1

    if-nez p1, :cond_14

    return-object v2

    .line 2373
    :cond_14
    new-instance p1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {p1, v1, v2, p0, p3}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p1

    .line 2378
    :cond_1a
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v3

    const-string v4, "2.5.29.32.0"

    const/4 v5, 0x0

    if-eqz v3, :cond_ac

    .line 2381
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result p1

    if-eqz p1, :cond_ab

    .line 2383
    invoke-interface {p6}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a5

    .line 2390
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    move p1, v5

    .line 2392
    :goto_35
    array-length p2, p4

    if-ge p1, p2, :cond_69

    .line 2394
    aget-object p2, p4, p1

    move p3, v5

    .line 2396
    :goto_3b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_66

    .line 2398
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2400
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 2402
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v1

    .line 2403
    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 2405
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_63
    add-int/lit8 p3, p3, 0x1

    goto :goto_3b

    :cond_66
    add-int/lit8 p1, p1, 0x1

    goto :goto_35

    .line 2411
    :cond_69
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2412
    :goto_6d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_81

    .line 2414
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2415
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object p1

    .line 2417
    invoke-interface {p6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    goto :goto_6d

    :cond_81
    add-int/lit8 v0, v0, -0x1

    :goto_83
    if-ltz v0, :cond_a4

    .line 2428
    aget-object p0, p4, v0

    move p1, v5

    .line 2430
    :goto_88
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_a1

    .line 2432
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2433
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result p3

    if-nez p3, :cond_9e

    .line 2435
    invoke-static {p5, p4, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    :cond_9e
    add-int/lit8 p1, p1, 0x1

    goto :goto_88

    :cond_a1
    add-int/lit8 v0, v0, -0x1

    goto :goto_83

    :cond_a4
    return-object p5

    .line 2385
    :cond_a5
    new-instance p1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {p1, v1, v2, p0, p3}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p1

    :cond_ab
    return-object p5

    .line 2461
    :cond_ac
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    move p1, v5

    .line 2463
    :goto_b2
    array-length p3, p4

    if-ge p1, p3, :cond_f2

    .line 2465
    aget-object p3, p4, p1

    move p6, v5

    .line 2467
    :goto_b8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge p6, v1, :cond_ef

    .line 2469
    invoke-interface {p3, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2471
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 2473
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v1

    .line 2474
    :cond_d2
    :goto_d2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 2476
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2477
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d2

    .line 2479
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    :cond_ec
    add-int/lit8 p6, p6, 0x1

    goto :goto_b8

    :cond_ef
    add-int/lit8 p1, p1, 0x1

    goto :goto_b2

    .line 2489
    :cond_f2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2490
    :cond_f6
    :goto_f6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_112

    .line 2492
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2493
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object p3

    .line 2495
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_f6

    .line 2497
    invoke-static {p5, p4, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p1

    move-object p5, p1

    goto :goto_f6

    :cond_112
    if-eqz p5, :cond_137

    add-int/lit8 v0, v0, -0x1

    :goto_116
    if-ltz v0, :cond_137

    .line 2508
    aget-object p0, p4, v0

    move p1, v5

    .line 2510
    :goto_11b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_134

    .line 2512
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2513
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result p3

    if-nez p3, :cond_131

    .line 2515
    invoke-static {p5, p4, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    :cond_131
    add-int/lit8 p1, p1, 0x1

    goto :goto_11b

    :cond_134
    add-int/lit8 v0, v0, -0x1

    goto :goto_116

    :cond_137
    return-object p5
.end method
