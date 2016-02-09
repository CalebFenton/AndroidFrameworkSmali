.class Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3280CertPathUtilities.java"


# static fields
.field public static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field public static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field public static final BASIC_CONSTRAINTS:Ljava/lang/String;

.field public static final CERTIFICATE_POLICIES:Ljava/lang/String;

.field public static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field public static final CRL_NUMBER:Ljava/lang/String;

.field protected static final CRL_SIGN:I = 0x6

.field private static final CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

.field public static final DELTA_CRL_INDICATOR:Ljava/lang/String;

.field public static final FRESHEST_CRL:Ljava/lang/String;

.field public static final INHIBIT_ANY_POLICY:Ljava/lang/String;

.field public static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final KEY_CERT_SIGN:I = 0x5

.field public static final KEY_USAGE:Ljava/lang/String;

.field public static final NAME_CONSTRAINTS:Ljava/lang/String;

.field public static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field public static final POLICY_MAPPINGS:Ljava/lang/String;

.field public static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 68
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    #@7
    .line 390
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    #@f
    .line 392
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    #@17
    .line 394
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    #@1f
    .line 396
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@21
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    #@27
    .line 398
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    #@2f
    .line 400
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@31
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    #@37
    .line 402
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@39
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    #@3f
    .line 404
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@41
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    #@47
    .line 406
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@49
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    #@4f
    .line 408
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@51
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    #@57
    .line 410
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@59
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    #@5f
    .line 412
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@61
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    #@67
    .line 414
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@69
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    #@6f
    .line 416
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@71
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_NUMBER:Ljava/lang/String;

    #@77
    .line 2325
    const/16 v0, 0xb

    #@79
    new-array v0, v0, [Ljava/lang/String;

    #@7b
    .line 2326
    const-string/jumbo v1, "unspecified"

    #@7e
    const/4 v2, 0x0

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 2327
    const-string/jumbo v1, "keyCompromise"

    #@84
    const/4 v2, 0x1

    #@85
    aput-object v1, v0, v2

    #@87
    .line 2328
    const-string/jumbo v1, "cACompromise"

    #@8a
    const/4 v2, 0x2

    #@8b
    aput-object v1, v0, v2

    #@8d
    .line 2329
    const-string/jumbo v1, "affiliationChanged"

    #@90
    const/4 v2, 0x3

    #@91
    aput-object v1, v0, v2

    #@93
    .line 2330
    const-string/jumbo v1, "superseded"

    #@96
    const/4 v2, 0x4

    #@97
    aput-object v1, v0, v2

    #@99
    .line 2331
    const-string/jumbo v1, "cessationOfOperation"

    #@9c
    const/4 v2, 0x5

    #@9d
    aput-object v1, v0, v2

    #@9f
    .line 2332
    const-string/jumbo v1, "certificateHold"

    #@a2
    const/4 v2, 0x6

    #@a3
    aput-object v1, v0, v2

    #@a5
    .line 2333
    const-string/jumbo v1, "unknown"

    #@a8
    const/4 v2, 0x7

    #@a9
    aput-object v1, v0, v2

    #@ab
    .line 2334
    const-string/jumbo v1, "removeFromCRL"

    #@ae
    const/16 v2, 0x8

    #@b0
    aput-object v1, v0, v2

    #@b2
    .line 2335
    const-string/jumbo v1, "privilegeWithdrawn"

    #@b5
    const/16 v2, 0x9

    #@b7
    aput-object v1, v0, v2

    #@b9
    .line 2336
    const-string/jumbo v1, "aACompromise"

    #@bc
    const/16 v2, 0xa

    #@be
    aput-object v1, v0, v2

    #@c0
    .line 2324
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    #@c2
    .line 66
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 27
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "validDate"    # Ljava/util/Date;
    .param p4, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p5, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p6, "certStatus"    # Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .param p7, "reasonMask"    # Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .param p8, "certPathCerts"    # Ljava/util/List;
    .param p9, "helper"    # Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1768
    new-instance v17, Ljava/util/Date;

    #@2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v8

    #@6
    move-object/from16 v0, v17

    #@8
    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    #@b
    .line 1769
    .local v17, "currentDate":Ljava/util/Date;
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    #@e
    move-result-wide v8

    #@f
    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    #@12
    move-result-wide v10

    #@13
    cmp-long v7, v8, v10

    #@15
    if-lez v7, :cond_0

    #@17
    .line 1771
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@19
    const-string/jumbo v8, "Validation time is in future."

    #@1c
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v7

    #@20
    .line 1782
    :cond_0
    move-object/from16 v0, p0

    #@22
    move-object/from16 v1, p2

    #@24
    move-object/from16 v2, v17

    #@26
    move-object/from16 v3, p1

    #@28
    invoke-static {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Set;

    #@2b
    move-result-object v16

    #@2c
    .line 1783
    .local v16, "crls":Ljava/util/Set;
    const/16 v25, 0x0

    #@2e
    .line 1784
    .local v25, "validCrlFound":Z
    const/16 v24, 0x0

    #@30
    .line 1785
    .local v24, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v15

    #@34
    .line 1787
    .end local v24    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v15, "crl_iter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v7

    #@38
    if-eqz v7, :cond_2

    #@3a
    invoke-virtual/range {p6 .. p6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    #@3d
    move-result v7

    #@3e
    const/16 v8, 0xb

    #@40
    if-ne v7, v8, :cond_2

    #@42
    invoke-virtual/range {p7 .. p7}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    #@45
    move-result v7

    #@46
    if-eqz v7, :cond_3

    #@48
    .line 1915
    :cond_2
    if-nez v25, :cond_c

    #@4a
    .line 1917
    throw v24

    #@4b
    .line 1791
    :cond_3
    :try_start_0
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4e
    move-result-object v6

    #@4f
    check-cast v6, Ljava/security/cert/X509CRL;

    #@51
    .line 1794
    .local v6, "crl":Ljava/security/cert/X509CRL;
    move-object/from16 v0, p0

    #@53
    invoke-static {v6, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@56
    move-result-object v21

    #@57
    .line 1802
    .local v21, "interimReasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    move-object/from16 v0, v21

    #@59
    move-object/from16 v1, p7

    #@5b
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Z

    #@5e
    move-result v7

    #@5f
    if-eqz v7, :cond_1

    #@61
    move-object/from16 v7, p2

    #@63
    move-object/from16 v8, p4

    #@65
    move-object/from16 v9, p5

    #@67
    move-object/from16 v10, p1

    #@69
    move-object/from16 v11, p8

    #@6b
    move-object/from16 v12, p9

    #@6d
    .line 1808
    invoke-static/range {v6 .. v12}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    #@70
    move-result-object v23

    #@71
    .line 1811
    .local v23, "keys":Ljava/util/Set;
    move-object/from16 v0, v23

    #@73
    invoke-static {v6, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    #@76
    move-result-object v22

    #@77
    .line 1813
    .local v22, "key":Ljava/security/PublicKey;
    const/16 v18, 0x0

    #@79
    .line 1815
    .local v18, "deltaCRL":Ljava/security/cert/X509CRL;
    move-object/from16 v26, v17

    #@7b
    .line 1817
    .local v26, "validityDate":Ljava/util/Date;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    #@7e
    move-result-object v7

    #@7f
    if-eqz v7, :cond_4

    #@81
    .line 1819
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    #@84
    move-result-object v26

    #@85
    .line 1822
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    #@88
    move-result v7

    #@89
    if-eqz v7, :cond_5

    #@8b
    .line 1825
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    #@8e
    move-result-object v7

    #@8f
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    #@92
    move-result-object v8

    #@93
    move-object/from16 v0, v26

    #@95
    invoke-static {v0, v6, v7, v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    #@98
    move-result-object v19

    #@99
    .line 1828
    .local v19, "deltaCRLs":Ljava/util/Set;
    move-object/from16 v0, v19

    #@9b
    move-object/from16 v1, v22

    #@9d
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    #@a0
    move-result-object v18

    #@a1
    .line 1844
    .end local v18    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v19    # "deltaCRLs":Ljava/util/Set;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    #@a4
    move-result v7

    #@a5
    const/4 v8, 0x1

    #@a6
    if-eq v7, v8, :cond_6

    #@a8
    .line 1851
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    #@ab
    move-result-object v7

    #@ac
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    #@af
    move-result-wide v8

    #@b0
    invoke-virtual {v6}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    #@b3
    move-result-object v7

    #@b4
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    #@b7
    move-result-wide v10

    #@b8
    cmp-long v7, v8, v10

    #@ba
    if-gez v7, :cond_6

    #@bc
    .line 1853
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@be
    const-string/jumbo v8, "No valid CRL for current time found."

    #@c1
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@c4
    throw v7

    #@c5
    .line 1911
    .end local v6    # "crl":Ljava/security/cert/X509CRL;
    .end local v21    # "interimReasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v22    # "key":Ljava/security/PublicKey;
    .end local v23    # "keys":Ljava/util/Set;
    .end local v26    # "validityDate":Ljava/util/Date;
    :catch_0
    move-exception v20

    #@c6
    .line 1912
    .local v20, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object/from16 v24, v20

    #@c8
    .local v24, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto/16 :goto_0

    #@ca
    .line 1857
    .end local v20    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v24    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v6    # "crl":Ljava/security/cert/X509CRL;
    .restart local v21    # "interimReasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local v22    # "key":Ljava/security/PublicKey;
    .restart local v23    # "keys":Ljava/util/Set;
    .restart local v26    # "validityDate":Ljava/util/Date;
    :cond_6
    move-object/from16 v0, p0

    #@cc
    move-object/from16 v1, p2

    #@ce
    invoke-static {v0, v1, v6}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    #@d1
    .line 1860
    move-object/from16 v0, p0

    #@d3
    move-object/from16 v1, p2

    #@d5
    invoke-static {v0, v1, v6}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    #@d8
    .line 1863
    move-object/from16 v0, v18

    #@da
    move-object/from16 v1, p1

    #@dc
    invoke-static {v0, v6, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    #@df
    .line 1866
    move-object/from16 v0, p3

    #@e1
    move-object/from16 v1, v18

    #@e3
    move-object/from16 v2, p2

    #@e5
    move-object/from16 v3, p6

    #@e7
    move-object/from16 v4, p1

    #@e9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    #@ec
    .line 1869
    move-object/from16 v0, p3

    #@ee
    move-object/from16 v1, p2

    #@f0
    move-object/from16 v2, p6

    #@f2
    invoke-static {v0, v6, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    #@f5
    .line 1872
    invoke-virtual/range {p6 .. p6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    #@f8
    move-result v7

    #@f9
    const/16 v8, 0x8

    #@fb
    if-ne v7, v8, :cond_7

    #@fd
    .line 1874
    const/16 v7, 0xb

    #@ff
    move-object/from16 v0, p6

    #@101
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    #@104
    .line 1878
    :cond_7
    move-object/from16 v0, p7

    #@106
    move-object/from16 v1, v21

    #@108
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)V

    #@10b
    .line 1880
    invoke-virtual {v6}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@10e
    move-result-object v13

    #@10f
    .line 1881
    .local v13, "criticalExtensions":Ljava/util/Set;
    if-eqz v13, :cond_9

    #@111
    .line 1883
    new-instance v14, Ljava/util/HashSet;

    #@113
    invoke-direct {v14, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@116
    .line 1884
    .end local v13    # "criticalExtensions":Ljava/util/Set;
    .local v14, "criticalExtensions":Ljava/util/Set;
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@118
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@11b
    move-result-object v7

    #@11c
    invoke-interface {v14, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@11f
    .line 1885
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@121
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@124
    move-result-object v7

    #@125
    invoke-interface {v14, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@128
    .line 1887
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    #@12b
    move-result v7

    #@12c
    if-nez v7, :cond_8

    #@12e
    .line 1889
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@130
    const-string/jumbo v8, "CRL contains unsupported critical extensions."

    #@133
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@136
    throw v7

    #@137
    :cond_8
    move-object v13, v14

    #@138
    .line 1893
    .end local v14    # "criticalExtensions":Ljava/util/Set;
    .restart local v13    # "criticalExtensions":Ljava/util/Set;
    :cond_9
    if-eqz v18, :cond_b

    #@13a
    .line 1895
    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@13d
    move-result-object v13

    #@13e
    .line 1896
    if-eqz v13, :cond_b

    #@140
    .line 1898
    new-instance v14, Ljava/util/HashSet;

    #@142
    invoke-direct {v14, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@145
    .line 1899
    .end local v13    # "criticalExtensions":Ljava/util/Set;
    .restart local v14    # "criticalExtensions":Ljava/util/Set;
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@147
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@14a
    move-result-object v7

    #@14b
    invoke-interface {v14, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@14e
    .line 1900
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@150
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@153
    move-result-object v7

    #@154
    invoke-interface {v14, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@157
    .line 1901
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    #@15a
    move-result v7

    #@15b
    if-nez v7, :cond_a

    #@15d
    .line 1903
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@15f
    const-string/jumbo v8, "Delta CRL contains unsupported critical extension."

    #@162
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@165
    throw v7
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    #@166
    :cond_a
    move-object v13, v14

    #@167
    .line 1908
    .end local v14    # "criticalExtensions":Ljava/util/Set;
    .restart local v13    # "criticalExtensions":Ljava/util/Set;
    :cond_b
    const/16 v25, 0x1

    #@169
    goto/16 :goto_0

    #@16b
    .line 1766
    .end local v6    # "crl":Ljava/security/cert/X509CRL;
    .end local v13    # "criticalExtensions":Ljava/util/Set;
    .end local v21    # "interimReasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v22    # "key":Ljava/security/PublicKey;
    .end local v23    # "keys":Ljava/util/Set;
    .end local v26    # "validityDate":Ljava/util/Date;
    :cond_c
    return-void
.end method

.method protected static checkCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 33
    .param p0, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "validDate"    # Ljava/util/Date;
    .param p3, "sign"    # Ljava/security/cert/X509Certificate;
    .param p4, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p5, "certPathCerts"    # Ljava/util/List;
    .param p6, "helper"    # Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1944
    const/16 v29, 0x0

    #@2
    .line 1945
    .local v29, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/16 v20, 0x0

    #@4
    .line 1949
    .local v20, "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_0
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    #@6
    .line 1948
    move-object/from16 v0, p1

    #@8
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@b
    move-result-object v2

    #@c
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@f
    move-result-object v20

    #@10
    .line 1956
    .local v20, "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    new-instance v31, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@12
    move-object/from16 v0, v31

    #@14
    move-object/from16 v1, p0

    #@16
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    #@19
    .line 1959
    .local v31, "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    #@1c
    move-result-object v2

    #@1d
    move-object/from16 v0, v20

    #@1f
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;

    #@22
    move-result-object v25

    #@23
    .line 1960
    .local v25, "extras":Ljava/util/List;
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v28

    #@27
    .local v28, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_0

    #@2d
    .line 1962
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;

    #@33
    move-object/from16 v0, v31

    #@35
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    #@38
    goto :goto_0

    #@39
    .line 1966
    .end local v25    # "extras":Ljava/util/List;
    .end local v28    # "it":Ljava/util/Iterator;
    :catch_0
    move-exception v23

    #@3a
    .line 1967
    .local v23, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@3c
    .line 1968
    const-string/jumbo v4, "No additional CRL locations could be decoded from CRL distribution point extension."

    #@3f
    .line 1967
    move-object/from16 v0, v23

    #@41
    invoke-direct {v2, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@44
    throw v2

    #@45
    .line 1952
    .end local v23    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v31    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v20, "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_1
    move-exception v24

    #@46
    .line 1953
    .local v24, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@48
    const-string/jumbo v4, "CRL distribution point extension could not be read."

    #@4b
    move-object/from16 v0, v24

    #@4d
    invoke-direct {v2, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@50
    throw v2

    #@51
    .line 1970
    .end local v24    # "e":Ljava/lang/Exception;
    .local v20, "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v25    # "extras":Ljava/util/List;
    .restart local v28    # "it":Ljava/util/Iterator;
    .restart local v31    # "paramsBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :cond_0
    new-instance v8, Lcom/android/org/bouncycastle/jce/provider/CertStatus;

    #@53
    invoke-direct {v8}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;-><init>()V

    #@56
    .line 1971
    .local v8, "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    new-instance v9, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@58
    invoke-direct {v9}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    #@5b
    .line 1972
    .local v9, "reasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    invoke-virtual/range {v31 .. v31}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@5e
    move-result-object v3

    #@5f
    .line 1974
    .local v3, "finalParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    const/16 v32, 0x0

    #@61
    .line 1976
    .local v32, "validCrlFound":Z
    if-eqz v20, :cond_1

    #@63
    .line 1978
    const/16 v22, 0x0

    #@65
    .line 1981
    .local v22, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@68
    move-result-object v22

    #@69
    .line 1987
    .local v22, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    if-eqz v22, :cond_1

    #@6b
    .line 1989
    const/16 v26, 0x0

    #@6d
    .end local v29    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v26, "i":I
    :goto_1
    move-object/from16 v0, v22

    #@6f
    array-length v2, v0

    #@70
    move/from16 v0, v26

    #@72
    if-ge v0, v2, :cond_1

    #@74
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    #@77
    move-result v2

    #@78
    const/16 v4, 0xb

    #@7a
    if-ne v2, v4, :cond_1

    #@7c
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    #@7f
    move-result v2

    #@80
    if-eqz v2, :cond_3

    #@82
    .line 2010
    .end local v22    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v26    # "i":I
    :cond_1
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    #@85
    move-result v2

    #@86
    const/16 v4, 0xb

    #@88
    if-ne v2, v4, :cond_2

    #@8a
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    #@8d
    move-result v2

    #@8e
    if-eqz v2, :cond_4

    #@90
    .line 2042
    :cond_2
    :goto_2
    if-nez v32, :cond_6

    #@92
    .line 2044
    move-object/from16 v0, v29

    #@94
    instance-of v2, v0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@96
    if-eqz v2, :cond_5

    #@98
    .line 2046
    throw v29

    #@99
    .line 1984
    .local v22, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v29    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_2
    move-exception v24

    #@9a
    .line 1985
    .restart local v24    # "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@9c
    const-string/jumbo v4, "Distribution points could not be read."

    #@9f
    move-object/from16 v0, v24

    #@a1
    invoke-direct {v2, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a4
    throw v2

    #@a5
    .line 1993
    .end local v24    # "e":Ljava/lang/Exception;
    .end local v29    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v22, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v26    # "i":I
    :cond_3
    :try_start_3
    aget-object v2, v22, v26

    #@a7
    move-object/from16 v4, p1

    #@a9
    move-object/from16 v5, p2

    #@ab
    move-object/from16 v6, p3

    #@ad
    move-object/from16 v7, p4

    #@af
    move-object/from16 v10, p5

    #@b1
    move-object/from16 v11, p6

    #@b3
    invoke-static/range {v2 .. v11}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_3
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    #@b6
    .line 1994
    const/16 v32, 0x1

    #@b8
    .line 1989
    :goto_3
    add-int/lit8 v26, v26, 0x1

    #@ba
    goto :goto_1

    #@bb
    .line 1997
    :catch_3
    move-exception v23

    #@bc
    .line 1998
    .restart local v23    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object/from16 v29, v23

    #@be
    .local v29, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_3

    #@bf
    .line 2019
    .end local v22    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v23    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v26    # "i":I
    .end local v29    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_4
    const/16 v27, 0x0

    #@c1
    .line 2022
    .local v27, "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_4
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@c3
    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@c6
    move-result-object v4

    #@c7
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    #@ca
    move-result-object v4

    #@cb
    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@ce
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_5

    #@d1
    move-result-object v27

    #@d2
    .line 2029
    .local v27, "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_5
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;

    #@d4
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@d6
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@d8
    .line 2030
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@da
    const/4 v6, 0x4

    #@db
    move-object/from16 v0, v27

    #@dd
    invoke-direct {v5, v6, v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@e0
    .line 2029
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    #@e3
    const/4 v5, 0x0

    #@e4
    invoke-direct {v2, v5, v4}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@e7
    .line 2030
    const/4 v4, 0x0

    #@e8
    const/4 v5, 0x0

    #@e9
    .line 2029
    invoke-direct {v10, v2, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    #@ec
    .line 2031
    .local v10, "dp":Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->clone()Ljava/lang/Object;

    #@ef
    move-result-object v11

    #@f0
    check-cast v11, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@f2
    .local v11, "paramsPKIXClone":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object/from16 v12, p1

    #@f4
    move-object/from16 v13, p2

    #@f6
    move-object/from16 v14, p3

    #@f8
    move-object/from16 v15, p4

    #@fa
    move-object/from16 v16, v8

    #@fc
    move-object/from16 v17, v9

    #@fe
    move-object/from16 v18, p5

    #@100
    move-object/from16 v19, p6

    #@102
    .line 2032
    invoke-static/range {v10 .. v19}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    #@105
    .line 2034
    const/16 v32, 0x1

    #@107
    goto :goto_2

    #@108
    .line 2026
    .end local v10    # "dp":Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v11    # "paramsPKIXClone":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v27, "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :catch_4
    move-exception v24

    #@109
    .line 2027
    .restart local v24    # "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@10b
    const-string/jumbo v4, "Issuer from certificate for CRL could not be reencoded."

    #@10e
    move-object/from16 v0, v24

    #@110
    invoke-direct {v2, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@113
    throw v2
    :try_end_5
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_5

    #@114
    .line 2037
    .end local v24    # "e":Ljava/lang/Exception;
    .end local v27    # "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :catch_5
    move-exception v23

    #@115
    .line 2038
    .restart local v23    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object/from16 v29, v23

    #@117
    .restart local v29    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto/16 :goto_2

    #@119
    .line 2049
    .end local v23    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v29    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_5
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@11b
    const-string/jumbo v4, "No valid CRL found."

    #@11e
    move-object/from16 v0, v29

    #@120
    invoke-direct {v2, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@123
    throw v2

    #@124
    .line 2051
    :cond_6
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    #@127
    move-result v2

    #@128
    const/16 v4, 0xb

    #@12a
    if-eq v2, v4, :cond_7

    #@12c
    .line 2053
    new-instance v21, Ljava/text/SimpleDateFormat;

    #@12e
    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss Z"

    #@131
    move-object/from16 v0, v21

    #@133
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@136
    .line 2054
    .local v21, "df":Ljava/text/SimpleDateFormat;
    const-string/jumbo v2, "UTC"

    #@139
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@13c
    move-result-object v2

    #@13d
    move-object/from16 v0, v21

    #@13f
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@142
    .line 2055
    new-instance v2, Ljava/lang/StringBuilder;

    #@144
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    const-string/jumbo v4, "Certificate revocation after "

    #@14a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v2

    #@14e
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    #@151
    move-result-object v4

    #@152
    move-object/from16 v0, v21

    #@154
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@157
    move-result-object v4

    #@158
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v2

    #@15c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15f
    move-result-object v30

    #@160
    .line 2056
    .local v30, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@162
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@165
    move-object/from16 v0, v30

    #@167
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v2

    #@16b
    const-string/jumbo v4, ", reason: "

    #@16e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v2

    #@172
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    #@174
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    #@177
    move-result v5

    #@178
    aget-object v4, v4, v5

    #@17a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v2

    #@17e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@181
    move-result-object v30

    #@182
    .line 2057
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@184
    move-object/from16 v0, v30

    #@186
    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@189
    throw v2

    #@18a
    .line 2059
    .end local v21    # "df":Ljava/text/SimpleDateFormat;
    .end local v30    # "message":Ljava/lang/String;
    :cond_7
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    #@18d
    move-result v2

    #@18e
    if-nez v2, :cond_8

    #@190
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    #@193
    move-result v2

    #@194
    const/16 v4, 0xb

    #@196
    if-ne v2, v4, :cond_8

    #@198
    .line 2061
    const/16 v2, 0xc

    #@19a
    invoke-virtual {v8, v2}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    #@19d
    .line 2063
    :cond_8
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    #@1a0
    move-result v2

    #@1a1
    const/16 v4, 0xc

    #@1a3
    if-ne v2, v4, :cond_9

    #@1a5
    .line 2065
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@1a7
    const-string/jumbo v4, "Certificate status could not be determined."

    #@1aa
    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@1ad
    throw v2

    #@1ae
    .line 1942
    :cond_9
    return-void
.end method

.method protected static prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 38
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyNodes"    # [Ljava/util/List;
    .param p3, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p4, "policyMapping"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 896
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v13

    #@4
    .line 897
    .local v13, "certs":Ljava/util/List;
    move/from16 v0, p1

    #@6
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v12

    #@a
    check-cast v12, Ljava/security/cert/X509Certificate;

    #@c
    .line 898
    .local v12, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@f
    move-result v27

    #@10
    .line 900
    .local v27, "n":I
    sub-int v5, v27, p1

    #@12
    .line 903
    .local v5, "i":I
    const/16 v33, 0x0

    #@14
    .line 907
    .local v33, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    #@16
    .line 906
    invoke-static {v12, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@19
    move-result-object v4

    #@1a
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v33

    #@1e
    .line 914
    .local v33, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v11, p3

    #@20
    .line 915
    .local v11, "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-eqz v33, :cond_d

    #@22
    .line 917
    move-object/from16 v26, v33

    #@24
    .line 918
    .local v26, "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v24, Ljava/util/HashMap;

    #@26
    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    #@29
    .line 919
    .local v24, "m_idp":Ljava/util/Map;
    new-instance v35, Ljava/util/HashSet;

    #@2b
    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    #@2e
    .line 921
    .local v35, "s_idp":Ljava/util/Set;
    const/16 v21, 0x0

    #@30
    .local v21, "j":I
    :goto_0
    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@33
    move-result v4

    #@34
    move/from16 v0, v21

    #@36
    if-ge v0, v4, :cond_1

    #@38
    .line 923
    move-object/from16 v0, v26

    #@3a
    move/from16 v1, v21

    #@3c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3f
    move-result-object v25

    #@40
    check-cast v25, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@42
    .line 924
    .local v25, "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v4, 0x0

    #@43
    move-object/from16 v0, v25

    #@45
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@48
    move-result-object v4

    #@49
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4b
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@4e
    move-result-object v9

    #@4f
    .line 925
    .local v9, "id_p":Ljava/lang/String;
    const/4 v4, 0x1

    #@50
    move-object/from16 v0, v25

    #@52
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@55
    move-result-object v4

    #@56
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@58
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5b
    move-result-object v36

    #@5c
    .line 928
    .local v36, "sd_p":Ljava/lang/String;
    move-object/from16 v0, v24

    #@5e
    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@61
    move-result v4

    #@62
    if-nez v4, :cond_0

    #@64
    .line 930
    new-instance v37, Ljava/util/HashSet;

    #@66
    invoke-direct/range {v37 .. v37}, Ljava/util/HashSet;-><init>()V

    #@69
    .line 931
    .local v37, "tmp":Ljava/util/Set;
    move-object/from16 v0, v37

    #@6b
    move-object/from16 v1, v36

    #@6d
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@70
    .line 932
    move-object/from16 v0, v24

    #@72
    move-object/from16 v1, v37

    #@74
    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    .line 933
    move-object/from16 v0, v35

    #@79
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7c
    .line 921
    :goto_1
    add-int/lit8 v21, v21, 0x1

    #@7e
    goto :goto_0

    #@7f
    .line 910
    .end local v9    # "id_p":Ljava/lang/String;
    .end local v11    # "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v21    # "j":I
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v26    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v35    # "s_idp":Ljava/util/Set;
    .end local v36    # "sd_p":Ljava/lang/String;
    .end local v37    # "tmp":Ljava/util/Set;
    .local v33, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v16

    #@80
    .line 911
    .local v16, "ex":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@82
    const-string/jumbo v6, "Policy mappings extension could not be decoded."

    #@85
    move-object/from16 v0, v16

    #@87
    move-object/from16 v1, p0

    #@89
    move/from16 v2, p1

    #@8b
    invoke-direct {v4, v6, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@8e
    throw v4

    #@8f
    .line 937
    .end local v16    # "ex":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v9    # "id_p":Ljava/lang/String;
    .restart local v11    # "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v21    # "j":I
    .restart local v24    # "m_idp":Ljava/util/Map;
    .restart local v25    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v26    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v33, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v35    # "s_idp":Ljava/util/Set;
    .restart local v36    # "sd_p":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v24

    #@91
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    move-result-object v37

    #@95
    check-cast v37, Ljava/util/Set;

    #@97
    .line 938
    .restart local v37    # "tmp":Ljava/util/Set;
    move-object/from16 v0, v37

    #@99
    move-object/from16 v1, v36

    #@9b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@9e
    goto :goto_1

    #@9f
    .line 942
    .end local v9    # "id_p":Ljava/lang/String;
    .end local v25    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v36    # "sd_p":Ljava/lang/String;
    .end local v37    # "tmp":Ljava/util/Set;
    :cond_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a2
    move-result-object v20

    #@a3
    .line 943
    .local v20, "it_idp":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@a6
    move-result v4

    #@a7
    if-eqz v4, :cond_d

    #@a9
    .line 945
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ac
    move-result-object v9

    #@ad
    check-cast v9, Ljava/lang/String;

    #@af
    .line 950
    .restart local v9    # "id_p":Ljava/lang/String;
    if-lez p4, :cond_9

    #@b1
    .line 952
    const/16 v19, 0x0

    #@b3
    .line 953
    .local v19, "idp_found":Z
    aget-object v4, p2, v5

    #@b5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@b8
    move-result-object v31

    #@b9
    .line 954
    .local v31, "nodes_i":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    #@bc
    move-result v4

    #@bd
    if-eqz v4, :cond_4

    #@bf
    .line 956
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c2
    move-result-object v28

    #@c3
    check-cast v28, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@c5
    .line 957
    .local v28, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    #@c8
    move-result-object v4

    #@c9
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cc
    move-result v4

    #@cd
    if-eqz v4, :cond_3

    #@cf
    .line 959
    const/16 v19, 0x1

    #@d1
    .line 960
    move-object/from16 v0, v24

    #@d3
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d6
    move-result-object v4

    #@d7
    check-cast v4, Ljava/util/Set;

    #@d9
    move-object/from16 v0, v28

    #@db
    iput-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    #@dd
    .line 965
    .end local v28    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_4
    if-nez v19, :cond_2

    #@df
    .line 967
    aget-object v4, p2, v5

    #@e1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@e4
    move-result-object v31

    #@e5
    .line 968
    :cond_5
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    #@e8
    move-result v4

    #@e9
    if-eqz v4, :cond_2

    #@eb
    .line 970
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ee
    move-result-object v28

    #@ef
    check-cast v28, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@f1
    .line 971
    .restart local v28    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string/jumbo v4, "2.5.29.32.0"

    #@f4
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    #@f7
    move-result-object v6

    #@f8
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fb
    move-result v4

    #@fc
    if-eqz v4, :cond_5

    #@fe
    .line 973
    const/4 v8, 0x0

    #@ff
    .line 974
    .local v8, "pq":Ljava/util/Set;
    const/16 v34, 0x0

    #@101
    .line 978
    .local v34, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_1
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    #@103
    .line 977
    invoke-static {v12, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@106
    move-result-object v34

    #@107
    .end local v34    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    check-cast v34, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    #@109
    .line 985
    .local v34, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@10c
    move-result-object v15

    #@10d
    .line 986
    .local v15, "e":Ljava/util/Enumeration;
    :cond_6
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@110
    move-result v4

    #@111
    if-eqz v4, :cond_7

    #@113
    .line 988
    const/16 v32, 0x0

    #@115
    .line 991
    .local v32, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_2
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@118
    move-result-object v4

    #@119
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@11c
    move-result-object v32

    #@11d
    .line 998
    .local v32, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    const-string/jumbo v4, "2.5.29.32.0"

    #@120
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@123
    move-result-object v6

    #@124
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@127
    move-result-object v6

    #@128
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12b
    move-result v4

    #@12c
    if-eqz v4, :cond_6

    #@12e
    .line 1003
    :try_start_3
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@131
    move-result-object v4

    #@132
    .line 1002
    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_3

    #@135
    move-result-object v8

    #@136
    .line 1015
    .end local v8    # "pq":Ljava/util/Set;
    .end local v32    # "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_7
    const/4 v10, 0x0

    #@137
    .line 1016
    .local v10, "ci":Z
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@13a
    move-result-object v4

    #@13b
    if-eqz v4, :cond_8

    #@13d
    .line 1018
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@140
    move-result-object v4

    #@141
    .line 1019
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    #@143
    .line 1018
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@146
    move-result v10

    #@147
    .line 1022
    .end local v10    # "ci":Z
    :cond_8
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    #@14a
    move-result-object v7

    #@14b
    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@14d
    .line 1023
    .local v7, "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string/jumbo v4, "2.5.29.32.0"

    #@150
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    #@153
    move-result-object v6

    #@154
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@157
    move-result v4

    #@158
    if-eqz v4, :cond_2

    #@15a
    .line 1025
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@15c
    new-instance v4, Ljava/util/ArrayList;

    #@15e
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@161
    move-object/from16 v0, v24

    #@163
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@166
    move-result-object v6

    #@167
    check-cast v6, Ljava/util/Set;

    #@169
    invoke-direct/range {v3 .. v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    #@16c
    .line 1027
    .local v3, "c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@16f
    .line 1028
    aget-object v4, p2, v5

    #@171
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@174
    goto/16 :goto_2

    #@176
    .line 981
    .end local v3    # "c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v7    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v15    # "e":Ljava/util/Enumeration;
    .end local v34    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "pq":Ljava/util/Set;
    :catch_1
    move-exception v14

    #@177
    .line 982
    .local v14, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@179
    .line 983
    const-string/jumbo v6, "Certificate policies extension could not be decoded."

    #@17c
    .line 982
    move-object/from16 v0, p0

    #@17e
    move/from16 v1, p1

    #@180
    invoke-direct {v4, v6, v14, v0, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@183
    throw v4

    #@184
    .line 994
    .end local v14    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v15    # "e":Ljava/util/Enumeration;
    .local v32, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v34    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v17

    #@185
    .line 995
    .local v17, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@187
    .line 996
    const-string/jumbo v6, "Policy information could not be decoded."

    #@18a
    .line 995
    move-object/from16 v0, v17

    #@18c
    move-object/from16 v1, p0

    #@18e
    move/from16 v2, p1

    #@190
    invoke-direct {v4, v6, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@193
    throw v4

    #@194
    .line 1006
    .end local v17    # "ex":Ljava/lang/Exception;
    .local v32, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :catch_3
    move-exception v18

    #@195
    .line 1008
    .local v18, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@197
    .line 1009
    const-string/jumbo v6, "Policy qualifier info set could not be decoded."

    #@19a
    .line 1008
    move-object/from16 v0, v18

    #@19c
    move-object/from16 v1, p0

    #@19e
    move/from16 v2, p1

    #@1a0
    invoke-direct {v4, v6, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@1a3
    throw v4

    #@1a4
    .line 1039
    .end local v8    # "pq":Ljava/util/Set;
    .end local v15    # "e":Ljava/util/Enumeration;
    .end local v18    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v19    # "idp_found":Z
    .end local v28    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v31    # "nodes_i":Ljava/util/Iterator;
    .end local v32    # "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v34    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_9
    if-gtz p4, :cond_2

    #@1a6
    .line 1041
    aget-object v4, p2, v5

    #@1a8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1ab
    move-result-object v31

    #@1ac
    .line 1042
    .restart local v31    # "nodes_i":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    #@1af
    move-result v4

    #@1b0
    if-eqz v4, :cond_2

    #@1b2
    .line 1044
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b5
    move-result-object v28

    #@1b6
    check-cast v28, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@1b8
    .line 1045
    .restart local v28    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    #@1bb
    move-result-object v4

    #@1bc
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1bf
    move-result v4

    #@1c0
    if-eqz v4, :cond_a

    #@1c2
    .line 1047
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    #@1c5
    move-result-object v7

    #@1c6
    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@1c8
    .line 1048
    .restart local v7    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v28

    #@1ca
    invoke-virtual {v7, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@1cd
    .line 1049
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->remove()V

    #@1d0
    .line 1050
    add-int/lit8 v22, v5, -0x1

    #@1d2
    .local v22, "k":I
    :goto_3
    if-ltz v22, :cond_a

    #@1d4
    .line 1052
    aget-object v30, p2, v22

    #@1d6
    .line 1053
    .local v30, "nodes":Ljava/util/List;
    const/16 v23, 0x0

    #@1d8
    .local v23, "l":I
    :goto_4
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    #@1db
    move-result v4

    #@1dc
    move/from16 v0, v23

    #@1de
    if-ge v0, v4, :cond_b

    #@1e0
    .line 1055
    move-object/from16 v0, v30

    #@1e2
    move/from16 v1, v23

    #@1e4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e7
    move-result-object v29

    #@1e8
    check-cast v29, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@1ea
    .line 1056
    .local v29, "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    #@1ed
    move-result v4

    #@1ee
    if-nez v4, :cond_c

    #@1f0
    .line 1058
    move-object/from16 v0, p2

    #@1f2
    move-object/from16 v1, v29

    #@1f4
    invoke-static {v11, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@1f7
    move-result-object v11

    #@1f8
    .line 1060
    if-nez v11, :cond_c

    #@1fa
    .line 1050
    .end local v29    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_b
    add-int/lit8 v22, v22, -0x1

    #@1fc
    goto :goto_3

    #@1fd
    .line 1053
    .restart local v29    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_c
    add-int/lit8 v23, v23, 0x1

    #@1ff
    goto :goto_4

    #@200
    .line 1072
    .end local v7    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "id_p":Ljava/lang/String;
    .end local v20    # "it_idp":Ljava/util/Iterator;
    .end local v21    # "j":I
    .end local v22    # "k":I
    .end local v23    # "l":I
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v26    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v28    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v29    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v30    # "nodes":Ljava/util/List;
    .end local v31    # "nodes_i":Ljava/util/Iterator;
    .end local v35    # "s_idp":Ljava/util/Set;
    :cond_d
    return-object v11
.end method

.method protected static prepareNextCertA(Ljava/security/cert/CertPath;I)V
    .locals 13
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1080
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@4
    move-result-object v1

    #@5
    .line 1081
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@b
    .line 1086
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v8, 0x0

    #@c
    .line 1090
    .local v8, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    #@e
    .line 1089
    invoke-static {v0, v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@11
    move-result-object v10

    #@12
    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v8

    #@16
    .line 1097
    .local v8, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v8, :cond_2

    #@18
    .line 1099
    move-object v7, v8

    #@19
    .line 1101
    .local v7, "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    #@1a
    .local v5, "j":I
    :goto_0
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@1d
    move-result v10

    #@1e
    if-ge v5, v10, :cond_2

    #@20
    .line 1103
    const/4 v4, 0x0

    #@21
    .line 1104
    .local v4, "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v9, 0x0

    #@22
    .line 1107
    .local v9, "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_start_1
    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@25
    move-result-object v10

    #@26
    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@29
    move-result-object v6

    #@2a
    .line 1109
    .local v6, "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v10, 0x0

    #@2b
    invoke-virtual {v6, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2e
    move-result-object v10

    #@2f
    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32
    move-result-object v4

    #@33
    .line 1110
    .local v4, "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v10, 0x1

    #@34
    invoke-virtual {v6, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@37
    move-result-object v10

    #@38
    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@3b
    move-result-object v9

    #@3c
    .line 1118
    .local v9, "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const-string/jumbo v10, "2.5.29.32.0"

    #@3f
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@42
    move-result-object v11

    #@43
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v10

    #@47
    if-eqz v10, :cond_0

    #@49
    .line 1121
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    #@4b
    const-string/jumbo v11, "IssuerDomainPolicy is anyPolicy"

    #@4e
    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@51
    throw v10

    #@52
    .line 1093
    .end local v4    # "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "j":I
    .end local v6    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v7    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v8, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v3

    #@53
    .line 1094
    .local v3, "ex":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v10, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@55
    const-string/jumbo v11, "Policy mappings extension could not be decoded."

    #@58
    invoke-direct {v10, v11, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@5b
    throw v10

    #@5c
    .line 1113
    .end local v3    # "ex":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v5    # "j":I
    .restart local v7    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v8, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v9, "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :catch_1
    move-exception v2

    #@5d
    .line 1114
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@5f
    const-string/jumbo v11, "Policy mappings extension contents could not be decoded."

    #@62
    invoke-direct {v10, v11, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@65
    throw v10

    #@66
    .line 1124
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v6    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v9, "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    const-string/jumbo v10, "2.5.29.32.0"

    #@69
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@6c
    move-result-object v11

    #@6d
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v10

    #@71
    if-eqz v10, :cond_1

    #@73
    .line 1127
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    #@75
    const-string/jumbo v11, "SubjectDomainPolicy is anyPolicy,"

    #@78
    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@7b
    throw v10

    #@7c
    .line 1101
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@7e
    goto :goto_0

    #@7f
    .line 1078
    .end local v4    # "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "j":I
    .end local v6    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v7    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_2
    return-void
.end method

.method protected static prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 11
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 1677
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 1678
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@a
    .line 1682
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v6, 0x0

    #@b
    .line 1686
    .local v6, "nc":Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    :try_start_0
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    #@d
    .line 1685
    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@10
    move-result-object v9

    #@11
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@14
    move-result-object v7

    #@15
    .line 1687
    .local v7, "ncSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v7, :cond_0

    #@17
    .line 1689
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result-object v6

    #@1b
    .line 1697
    .end local v6    # "nc":Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    :cond_0
    if-eqz v6, :cond_2

    #@1d
    .line 1703
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@20
    move-result-object v8

    #@21
    .line 1704
    .local v8, "permitted":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v8, :cond_1

    #@23
    .line 1708
    :try_start_1
    invoke-virtual {p2, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@26
    .line 1720
    :cond_1
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@29
    move-result-object v4

    #@2a
    .line 1721
    .local v4, "excluded":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v4, :cond_2

    #@2c
    .line 1723
    const/4 v5, 0x0

    #@2d
    .local v5, "i":I
    :goto_0
    array-length v9, v4

    #@2e
    if-eq v5, v9, :cond_2

    #@30
    .line 1726
    :try_start_2
    aget-object v9, v4, v5

    #@32
    invoke-virtual {p2, v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@35
    .line 1723
    add-int/lit8 v5, v5, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1693
    .end local v4    # "excluded":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v5    # "i":I
    .end local v7    # "ncSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "permitted":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .restart local v6    # "nc":Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    :catch_0
    move-exception v2

    #@39
    .line 1694
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@3b
    const-string/jumbo v10, "Name constraints extension could not be decoded."

    #@3e
    invoke-direct {v9, v10, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@41
    throw v9

    #@42
    .line 1711
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "nc":Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    .restart local v7    # "ncSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "permitted":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    :catch_1
    move-exception v3

    #@43
    .line 1712
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@45
    .line 1713
    const-string/jumbo v10, "Permitted subtrees cannot be build from name constraints extension."

    #@48
    .line 1712
    invoke-direct {v9, v10, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@4b
    throw v9

    #@4c
    .line 1729
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v4    # "excluded":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .restart local v5    # "i":I
    :catch_2
    move-exception v3

    #@4d
    .line 1730
    .restart local v3    # "ex":Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@4f
    .line 1731
    const-string/jumbo v10, "Excluded subtrees cannot be build from name constraints extension."

    #@52
    .line 1730
    invoke-direct {v9, v10, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@55
    throw v9

    #@56
    .line 1675
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "excluded":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v5    # "i":I
    .end local v8    # "permitted":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    :cond_2
    return-void
.end method

.method protected static prepareNextCertH1(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I

    #@0
    .prologue
    .line 2260
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 2261
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@a
    .line 2265
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 2270
    if-eqz p2, :cond_0

    #@12
    .line 2272
    add-int/lit8 v2, p2, -0x1

    #@14
    return v2

    #@15
    .line 2275
    :cond_0
    return p2
.end method

.method protected static prepareNextCertH2(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I

    #@0
    .prologue
    .line 2283
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 2284
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@a
    .line 2288
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 2293
    if-eqz p2, :cond_0

    #@12
    .line 2295
    add-int/lit8 v2, p2, -0x1

    #@14
    return v2

    #@15
    .line 2298
    :cond_0
    return p2
.end method

.method protected static prepareNextCertH3(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I

    #@0
    .prologue
    .line 2306
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 2307
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@a
    .line 2311
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 2316
    if-eqz p2, :cond_0

    #@12
    .line 2318
    add-int/lit8 v2, p2, -0x1

    #@14
    return v2

    #@15
    .line 2321
    :cond_0
    return p2
.end method

.method protected static prepareNextCertI1(Ljava/security/cert/CertPath;II)I
    .locals 10
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 1568
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 1569
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@a
    .line 1573
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v5, 0x0

    #@b
    .line 1577
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v8, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    #@d
    .line 1576
    invoke-static {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@10
    move-result-object v8

    #@11
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v5

    #@15
    .line 1587
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v5, :cond_1

    #@17
    .line 1589
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@1a
    move-result-object v6

    #@1b
    .line 1591
    .local v6, "policyConstraints":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1e
    move-result v8

    #@1f
    if-eqz v8, :cond_1

    #@21
    .line 1596
    :try_start_1
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@24
    move-result-object v8

    #@25
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@28
    move-result-object v2

    #@29
    .line 1597
    .local v2, "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@2c
    move-result v8

    #@2d
    if-nez v8, :cond_0

    #@2f
    .line 1599
    const/4 v8, 0x0

    #@30
    invoke-static {v2, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@33
    move-result-object v8

    #@34
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@37
    move-result-object v8

    #@38
    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@3b
    move-result v7

    #@3c
    .line 1600
    .local v7, "tmpInt":I
    if-ge v7, p2, :cond_1

    #@3e
    .line 1602
    return v7

    #@3f
    .line 1580
    .end local v2    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v6    # "policyConstraints":Ljava/util/Enumeration;
    .end local v7    # "tmpInt":I
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v3

    #@40
    .line 1581
    .local v3, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@42
    const-string/jumbo v9, "Policy constraints extension cannot be decoded."

    #@45
    invoke-direct {v8, v9, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@48
    throw v8

    #@49
    .line 1608
    .end local v3    # "e":Ljava/lang/Exception;
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v6    # "policyConstraints":Ljava/util/Enumeration;
    :catch_1
    move-exception v4

    #@4a
    .line 1609
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@4c
    const-string/jumbo v9, "Policy constraints extension contents cannot be decoded."

    #@4f
    invoke-direct {v8, v9, v4, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@52
    throw v8

    #@53
    .line 1614
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "policyConstraints":Ljava/util/Enumeration;
    :cond_1
    return p2
.end method

.method protected static prepareNextCertI2(Ljava/security/cert/CertPath;II)I
    .locals 10
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 1623
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 1624
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@a
    .line 1628
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v5, 0x0

    #@b
    .line 1632
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v8, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    #@d
    .line 1631
    invoke-static {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@10
    move-result-object v8

    #@11
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v5

    #@15
    .line 1642
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v5, :cond_1

    #@17
    .line 1644
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@1a
    move-result-object v6

    #@1b
    .line 1646
    .local v6, "policyConstraints":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1e
    move-result v8

    #@1f
    if-eqz v8, :cond_1

    #@21
    .line 1650
    :try_start_1
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@24
    move-result-object v8

    #@25
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@28
    move-result-object v2

    #@29
    .line 1651
    .local v2, "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@2c
    move-result v8

    #@2d
    const/4 v9, 0x1

    #@2e
    if-ne v8, v9, :cond_0

    #@30
    .line 1653
    const/4 v8, 0x0

    #@31
    invoke-static {v2, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@34
    move-result-object v8

    #@35
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@38
    move-result-object v8

    #@39
    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@3c
    move-result v7

    #@3d
    .line 1654
    .local v7, "tmpInt":I
    if-ge v7, p2, :cond_1

    #@3f
    .line 1656
    return v7

    #@40
    .line 1635
    .end local v2    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v6    # "policyConstraints":Ljava/util/Enumeration;
    .end local v7    # "tmpInt":I
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v3

    #@41
    .line 1636
    .local v3, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@43
    const-string/jumbo v9, "Policy constraints extension cannot be decoded."

    #@46
    invoke-direct {v8, v9, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@49
    throw v8

    #@4a
    .line 1662
    .end local v3    # "e":Ljava/lang/Exception;
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v6    # "policyConstraints":Ljava/util/Enumeration;
    :catch_1
    move-exception v4

    #@4b
    .line 1663
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@4d
    const-string/jumbo v9, "Policy constraints extension contents cannot be decoded."

    #@50
    invoke-direct {v8, v9, v4, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@53
    throw v8

    #@54
    .line 1668
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "policyConstraints":Ljava/util/Enumeration;
    :cond_1
    return p2
.end method

.method protected static prepareNextCertJ(Ljava/security/cert/CertPath;II)I
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 2075
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 2076
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@a
    .line 2080
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    #@b
    .line 2084
    .local v4, "iap":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_start_0
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    #@d
    .line 2083
    invoke-static {v1, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@10
    move-result-object v5

    #@11
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v4

    #@15
    .line 2092
    .local v4, "iap":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    if-eqz v4, :cond_0

    #@17
    .line 2094
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    #@1e
    move-result v0

    #@1f
    .line 2096
    .local v0, "_inhibitAnyPolicy":I
    if-ge v0, p2, :cond_0

    #@21
    .line 2098
    return v0

    #@22
    .line 2087
    .end local v0    # "_inhibitAnyPolicy":I
    .local v4, "iap":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :catch_0
    move-exception v3

    #@23
    .line 2088
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@25
    const-string/jumbo v6, "Inhibit any-policy extension cannot be decoded."

    #@28
    invoke-direct {v5, v6, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@2b
    throw v5

    #@2c
    .line 2101
    .end local v3    # "e":Ljava/lang/Exception;
    .local v4, "iap":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :cond_0
    return p2
.end method

.method protected static prepareNextCertK(Ljava/security/cert/CertPath;I)V
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 2109
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 2110
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@a
    .line 2114
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    #@b
    .line 2118
    .local v0, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_0
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    #@d
    .line 2117
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@10
    move-result-object v4

    #@11
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v0

    #@15
    .line 2125
    .local v0, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    if-eqz v0, :cond_0

    #@17
    .line 2127
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_1

    #@1d
    .line 2129
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@1f
    const-string/jumbo v5, "Not a CA certificate"

    #@22
    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@25
    throw v4

    #@26
    .line 2121
    .local v0, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :catch_0
    move-exception v3

    #@27
    .line 2122
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@29
    const-string/jumbo v5, "Basic constraints extension cannot be decoded."

    #@2c
    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@2f
    throw v4

    #@30
    .line 2134
    .end local v3    # "e":Ljava/lang/Exception;
    .local v0, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :cond_0
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@32
    const-string/jumbo v5, "Intermediate certificate lacks BasicConstraints"

    #@35
    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@38
    throw v4

    #@39
    .line 2107
    :cond_1
    return-void
.end method

.method protected static prepareNextCertL(Ljava/security/cert/CertPath;II)I
    .locals 5
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 2144
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 2145
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@a
    .line 2149
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_1

    #@10
    .line 2151
    if-gtz p2, :cond_0

    #@12
    .line 2153
    new-instance v2, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@14
    const-string/jumbo v3, "Max path length not greater than zero"

    #@17
    const/4 v4, 0x0

    #@18
    invoke-direct {v2, v3, v4, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@1b
    throw v2

    #@1c
    .line 2156
    :cond_0
    add-int/lit8 v2, p2, -0x1

    #@1e
    return v2

    #@1f
    .line 2158
    :cond_1
    return p2
.end method

.method protected static prepareNextCertM(Ljava/security/cert/CertPath;II)I
    .locals 8
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 2167
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v4

    #@4
    .line 2168
    .local v4, "certs":Ljava/util/List;
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    check-cast v3, Ljava/security/cert/X509Certificate;

    #@a
    .line 2173
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    #@b
    .line 2177
    .local v2, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_0
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    #@d
    .line 2176
    invoke-static {v3, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@10
    move-result-object v6

    #@11
    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v2

    #@15
    .line 2184
    .local v2, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    if-eqz v2, :cond_0

    #@17
    .line 2186
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    #@1a
    move-result-object v0

    #@1b
    .line 2188
    .local v0, "_pathLengthConstraint":Ljava/math/BigInteger;
    if-eqz v0, :cond_0

    #@1d
    .line 2190
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    #@20
    move-result v1

    #@21
    .line 2192
    .local v1, "_plc":I
    if-ge v1, p2, :cond_0

    #@23
    .line 2194
    return v1

    #@24
    .line 2180
    .end local v0    # "_pathLengthConstraint":Ljava/math/BigInteger;
    .end local v1    # "_plc":I
    .local v2, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :catch_0
    move-exception v5

    #@25
    .line 2181
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@27
    const-string/jumbo v7, "Basic constraints extension cannot be decoded."

    #@2a
    invoke-direct {v6, v7, v5, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@2d
    throw v6

    #@2e
    .line 2198
    .end local v5    # "e":Ljava/lang/Exception;
    .local v2, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :cond_0
    return p2
.end method

.method protected static prepareNextCertN(Ljava/security/cert/CertPath;I)V
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2206
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@4
    move-result-object v2

    #@5
    .line 2207
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@b
    .line 2212
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    #@e
    move-result-object v0

    #@f
    .line 2214
    .local v0, "_usage":[Z
    if-eqz v0, :cond_0

    #@11
    const/4 v3, 0x5

    #@12
    aget-boolean v3, v0, v3

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 2204
    :cond_0
    return-void

    #@17
    .line 2216
    :cond_1
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@19
    .line 2217
    const-string/jumbo v4, "Issuer certificate keyusage extension is critical and does not permit key signing."

    #@1c
    .line 2216
    invoke-direct {v3, v4, v5, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@1f
    throw v3
.end method

.method protected static prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "criticalExtensions"    # Ljava/util/Set;
    .param p3, "pathCheckers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 2229
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 2230
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@a
    .line 2236
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v3

    #@e
    .line 2237
    .local v3, "tmpIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 2241
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    #@1a
    invoke-virtual {v4, v0, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    goto :goto_0

    #@1e
    .line 2244
    :catch_0
    move-exception v2

    #@1f
    .line 2245
    .local v2, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@21
    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    #@28
    move-result-object v6

    #@29
    invoke-direct {v4, v5, v6, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@2c
    throw v4

    #@2d
    .line 2248
    .end local v2    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    #@30
    move-result v4

    #@31
    if-nez v4, :cond_1

    #@33
    .line 2250
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@35
    new-instance v5, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v6, "Certificate has unsupported critical extension: "

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    const/4 v6, 0x0

    #@4a
    invoke-direct {v4, v5, v6, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@4d
    throw v4

    #@4e
    .line 2227
    :cond_1
    return-void
.end method

.method protected static processCRLA1i(Ljava/util/Date;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)Ljava/util/Set;
    .locals 6
    .param p0, "currentDate"    # Ljava/util/Date;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 641
    new-instance v3, Ljava/util/HashSet;

    #@2
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 642
    .local v3, "set":Ljava/util/Set;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_1

    #@b
    .line 644
    const/4 v2, 0x0

    #@c
    .line 648
    .local v2, "freshestCRL":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_0
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    #@e
    invoke-static {p2, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@11
    move-result-object v4

    #@12
    .line 647
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v2

    #@16
    .line 654
    .local v2, "freshestCRL":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    if-nez v2, :cond_0

    #@18
    .line 659
    :try_start_1
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    #@1a
    .line 658
    invoke-static {p3, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    #@21
    move-result-object v2

    #@22
    .line 666
    :cond_0
    if-eqz v2, :cond_1

    #@24
    .line 668
    new-instance v0, Ljava/util/ArrayList;

    #@26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@29
    .line 670
    .local v0, "crlStores":Ljava/util/List;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    #@2c
    move-result-object v4

    #@2d
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@30
    .line 674
    :try_start_2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    #@33
    move-result-object v4

    #@34
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;

    #@37
    move-result-object v4

    #@38
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    #@3b
    .line 685
    :try_start_3
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    #@3e
    move-result-object v4

    #@3f
    invoke-static {p0, p3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    #@42
    move-result-object v4

    #@43
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    #@46
    .line 693
    .end local v0    # "crlStores":Ljava/util/List;
    .end local v2    # "freshestCRL":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :cond_1
    return-object v3

    #@47
    .line 651
    .local v2, "freshestCRL":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_0
    move-exception v1

    #@48
    .line 652
    .local v1, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@4a
    const-string/jumbo v5, "Freshest CRL extension could not be decoded from certificate."

    #@4d
    invoke-direct {v4, v5, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@50
    throw v4

    #@51
    .line 662
    .end local v1    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v2, "freshestCRL":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_1
    move-exception v1

    #@52
    .line 663
    .restart local v1    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@54
    const-string/jumbo v5, "Freshest CRL extension could not be decoded from CRL."

    #@57
    invoke-direct {v4, v5, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5a
    throw v4

    #@5b
    .line 677
    .end local v1    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v0    # "crlStores":Ljava/util/List;
    :catch_2
    move-exception v1

    #@5c
    .line 678
    .restart local v1    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@5e
    .line 679
    const-string/jumbo v5, "No new delta CRL locations could be added from Freshest CRL extension."

    #@61
    .line 678
    invoke-direct {v4, v5, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@64
    throw v4

    #@65
    .line 688
    .end local v1    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_3
    move-exception v1

    #@66
    .line 689
    .restart local v1    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@68
    const-string/jumbo v5, "Exception obtaining delta CRLs."

    #@6b
    invoke-direct {v4, v5, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6e
    throw v4
.end method

.method protected static processCRLA1ii(Ljava/util/Date;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)[Ljava/util/Set;
    .locals 11
    .param p0, "currentDate"    # Ljava/util/Date;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 703
    new-instance v2, Ljava/util/HashSet;

    #@3
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@6
    .line 704
    .local v2, "deltaSet":Ljava/util/Set;
    new-instance v1, Ljava/security/cert/X509CRLSelector;

    #@8
    invoke-direct {v1}, Ljava/security/cert/X509CRLSelector;-><init>()V

    #@b
    .line 705
    .local v1, "crlselect":Ljava/security/cert/X509CRLSelector;
    invoke-virtual {v1, p2}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    #@e
    .line 709
    :try_start_0
    invoke-static {p3}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@11
    move-result-object v7

    #@12
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    #@15
    move-result-object v7

    #@16
    invoke-virtual {v1, v7}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 716
    new-instance v7, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    #@1b
    invoke-direct {v7, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    #@1e
    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setCompleteCRLEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    #@25
    move-result-object v5

    #@26
    .line 718
    .local v5, "extSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    move-object v6, p0

    #@27
    .line 720
    .local v6, "validityDate":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    #@2a
    move-result-object v7

    #@2b
    if-eqz v7, :cond_0

    #@2d
    .line 722
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    #@30
    move-result-object v6

    #@31
    .line 725
    :cond_0
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    #@33
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    #@36
    move-result-object v8

    #@37
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v7, v5, v6, v8, v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    #@3e
    move-result-object v0

    #@3f
    .line 727
    .local v0, "completeSet":Ljava/util/Set;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    #@42
    move-result v7

    #@43
    if-eqz v7, :cond_1

    #@45
    .line 732
    :try_start_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    #@4c
    move-result-object v8

    #@4d
    invoke-static {v6, p3, v7, v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    #@50
    move-result-object v7

    #@51
    invoke-interface {v2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    #@54
    .line 740
    :cond_1
    const/4 v7, 0x2

    #@55
    new-array v7, v7, [Ljava/util/Set;

    #@57
    .line 741
    const/4 v8, 0x0

    #@58
    aput-object v0, v7, v8

    #@5a
    .line 742
    aput-object v2, v7, v10

    #@5c
    .line 739
    return-object v7

    #@5d
    .line 712
    .end local v0    # "completeSet":Ljava/util/Set;
    .end local v5    # "extSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .end local v6    # "validityDate":Ljava/util/Date;
    :catch_0
    move-exception v4

    #@5e
    .line 713
    .local v4, "e":Ljava/io/IOException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@60
    new-instance v8, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v9, "Cannot extract issuer from CRL."

    #@68
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v8

    #@6c
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v8

    #@70
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v8

    #@74
    invoke-direct {v7, v8, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@77
    throw v7

    #@78
    .line 735
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "completeSet":Ljava/util/Set;
    .restart local v5    # "extSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .restart local v6    # "validityDate":Ljava/util/Date;
    :catch_1
    move-exception v3

    #@79
    .line 736
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@7b
    const-string/jumbo v8, "Exception obtaining delta CRLs."

    #@7e
    invoke-direct {v7, v8, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@81
    throw v7
.end method

.method protected static processCRLB1(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 10
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 291
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    #@2
    invoke-static {p2, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5
    move-result-object v2

    #@6
    .line 292
    .local v2, "idp":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v3, 0x0

    #@7
    .line 293
    .local v3, "isIndirect":Z
    if-eqz v2, :cond_0

    #@9
    .line 295
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    #@c
    move-result-object v7

    #@d
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    #@10
    move-result v7

    #@11
    if-eqz v7, :cond_0

    #@13
    .line 297
    const/4 v3, 0x1

    #@14
    .line 304
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@17
    move-result-object v7

    #@18
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result-object v4

    #@1c
    .line 311
    .local v4, "issuerBytes":[B
    const/4 v6, 0x0

    #@1d
    .line 312
    .local v6, "matchIssuer":Z
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@20
    move-result-object v7

    #@21
    if-eqz v7, :cond_5

    #@23
    .line 314
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@26
    move-result-object v7

    #@27
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@2a
    move-result-object v1

    #@2b
    .line 315
    .local v1, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    #@2c
    .local v5, "j":I
    :goto_0
    array-length v7, v1

    #@2d
    if-ge v5, v7, :cond_2

    #@2f
    .line 317
    aget-object v7, v1, v5

    #@31
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@34
    move-result v7

    #@35
    const/4 v8, 0x4

    #@36
    if-ne v7, v8, :cond_1

    #@38
    .line 321
    :try_start_1
    aget-object v7, v1, v5

    #@3a
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3d
    move-result-object v7

    #@3e
    invoke-interface {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@41
    move-result-object v7

    #@42
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    #@45
    move-result-object v7

    #@46
    invoke-static {v7, v4}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@49
    move-result v7

    #@4a
    if-eqz v7, :cond_1

    #@4c
    .line 323
    const/4 v6, 0x1

    #@4d
    .line 315
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 307
    .end local v1    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v4    # "issuerBytes":[B
    .end local v5    # "j":I
    .end local v6    # "matchIssuer":Z
    :catch_0
    move-exception v0

    #@51
    .line 308
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@53
    new-instance v8, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v9, "Exception encoding CRL issuer: "

    #@5b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v8

    #@5f
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v8

    #@67
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v8

    #@6b
    invoke-direct {v7, v8, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6e
    throw v7

    #@6f
    .line 327
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v4    # "issuerBytes":[B
    .restart local v5    # "j":I
    .restart local v6    # "matchIssuer":Z
    :catch_1
    move-exception v0

    #@70
    .line 328
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@72
    .line 329
    const-string/jumbo v8, "CRL issuer information from distribution point cannot be decoded."

    #@75
    .line 328
    invoke-direct {v7, v8, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@78
    throw v7

    #@79
    .line 333
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v6, :cond_3

    #@7b
    if-eqz v3, :cond_4

    #@7d
    .line 337
    :cond_3
    if-nez v6, :cond_6

    #@7f
    .line 339
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@81
    const-string/jumbo v8, "CRL issuer of CRL does not match CRL issuer of distribution point."

    #@84
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@87
    throw v7

    #@88
    .line 335
    :cond_4
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@8a
    const-string/jumbo v8, "Distribution point contains cRLIssuer field but CRL is not indirect."

    #@8d
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@90
    throw v7

    #@91
    .line 344
    .end local v1    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "j":I
    :cond_5
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@94
    move-result-object v7

    #@95
    .line 345
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@98
    move-result-object v8

    #@99
    .line 344
    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v7

    #@9d
    if-eqz v7, :cond_6

    #@9f
    .line 347
    const/4 v6, 0x1

    #@a0
    .line 350
    :cond_6
    if-nez v6, :cond_7

    #@a2
    .line 352
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@a4
    const-string/jumbo v8, "Cannot find matching CRL issuer for certificate."

    #@a7
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v7

    #@ab
    .line 289
    :cond_7
    return-void
.end method

.method protected static processCRLB2(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 14
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    .line 107
    const/4 v6, 0x0

    #@2
    .line 111
    .local v6, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v11, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    #@4
    .line 110
    move-object/from16 v0, p2

    #@6
    invoke-static {v0, v11}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9
    move-result-object v11

    #@a
    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v6

    #@e
    .line 119
    .local v6, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    if-eqz v6, :cond_11

    #@10
    .line 121
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@13
    move-result-object v11

    #@14
    if-eqz v11, :cond_d

    #@16
    .line 124
    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    #@19
    move-result-object v11

    #@1a
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@1d
    move-result-object v2

    #@1e
    .line 125
    .local v2, "dpName":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    new-instance v9, Ljava/util/ArrayList;

    #@20
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@23
    .line 127
    .local v9, "names":Ljava/util/List;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    #@26
    move-result v11

    #@27
    if-nez v11, :cond_0

    #@29
    .line 129
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2c
    move-result-object v11

    #@2d
    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@30
    move-result-object v11

    #@31
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@34
    move-result-object v5

    #@35
    .line 130
    .local v5, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v7, 0x0

    #@36
    .local v7, "j":I
    :goto_0
    array-length v11, v5

    #@37
    if-ge v7, v11, :cond_0

    #@39
    .line 132
    aget-object v11, v5, v7

    #@3b
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3e
    .line 130
    add-int/lit8 v7, v7, 0x1

    #@40
    goto :goto_0

    #@41
    .line 114
    .end local v2    # "dpName":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v7    # "j":I
    .end local v9    # "names":Ljava/util/List;
    .local v6, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_0
    move-exception v3

    #@42
    .line 115
    .local v3, "e":Ljava/lang/Exception;
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@44
    const-string/jumbo v12, "Issuing distribution point extension could not be decoded."

    #@47
    invoke-direct {v11, v12, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4a
    throw v11

    #@4b
    .line 135
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "dpName":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .local v6, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .restart local v9    # "names":Ljava/util/List;
    :cond_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    #@4e
    move-result v11

    #@4f
    if-ne v11, v13, :cond_2

    #@51
    .line 137
    new-instance v10, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@53
    invoke-direct {v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@56
    .line 140
    .local v10, "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@59
    move-result-object v11

    #@5a
    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@5d
    move-result-object v11

    #@5e
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@61
    move-result-object v4

    #@62
    .line 141
    .local v4, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@65
    move-result v11

    #@66
    if-eqz v11, :cond_1

    #@68
    .line 143
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@6b
    move-result-object v11

    #@6c
    check-cast v11, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6e
    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@71
    goto :goto_1

    #@72
    .line 147
    .end local v4    # "e":Ljava/util/Enumeration;
    :catch_1
    move-exception v3

    #@73
    .line 148
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@75
    const-string/jumbo v12, "Could not read CRL issuer."

    #@78
    invoke-direct {v11, v12, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7b
    throw v11

    #@7c
    .line 150
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "e":Ljava/util/Enumeration;
    :cond_1
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7f
    move-result-object v11

    #@80
    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@83
    .line 151
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@85
    new-instance v12, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@87
    invoke-direct {v12, v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@8a
    invoke-static {v12}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@8d
    move-result-object v12

    #@8e
    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    #@91
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@94
    .line 153
    .end local v4    # "e":Ljava/util/Enumeration;
    .end local v10    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2
    const/4 v8, 0x0

    #@95
    .line 156
    .local v8, "matches":Z
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@98
    move-result-object v11

    #@99
    if-eqz v11, :cond_9

    #@9b
    .line 158
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@9e
    move-result-object v2

    #@9f
    .line 159
    const/4 v5, 0x0

    #@a0
    .line 160
    .local v5, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    #@a3
    move-result v11

    #@a4
    if-nez v11, :cond_3

    #@a6
    .line 162
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@a9
    move-result-object v11

    #@aa
    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@ad
    move-result-object v11

    #@ae
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@b1
    move-result-object v5

    #@b2
    .line 164
    .end local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_3
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    #@b5
    move-result v11

    #@b6
    if-ne v11, v13, :cond_6

    #@b8
    .line 166
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@bb
    move-result-object v11

    #@bc
    if-eqz v11, :cond_4

    #@be
    .line 168
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@c1
    move-result-object v11

    #@c2
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@c5
    move-result-object v5

    #@c6
    .line 183
    .local v5, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :goto_2
    const/4 v7, 0x0

    #@c7
    .restart local v7    # "j":I
    :goto_3
    array-length v11, v5

    #@c8
    if-ge v7, v11, :cond_6

    #@ca
    .line 185
    aget-object v11, v5, v7

    #@cc
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@cf
    move-result-object v11

    #@d0
    invoke-interface {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@d3
    move-result-object v11

    #@d4
    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@d7
    move-result-object v11

    #@d8
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@db
    move-result-object v4

    #@dc
    .line 186
    .restart local v4    # "e":Ljava/util/Enumeration;
    new-instance v10, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@de
    invoke-direct {v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@e1
    .line 187
    .restart local v10    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_4
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e4
    move-result v11

    #@e5
    if-eqz v11, :cond_5

    #@e7
    .line 189
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@ea
    move-result-object v11

    #@eb
    check-cast v11, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@ed
    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f0
    goto :goto_4

    #@f1
    .line 172
    .end local v4    # "e":Ljava/util/Enumeration;
    .end local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v7    # "j":I
    .end local v10    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_4
    new-array v5, v13, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@f3
    .line 175
    .restart local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_2
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@f5
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@f8
    move-result-object v12

    #@f9
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    #@fc
    move-result-object v12

    #@fd
    invoke-static {v12}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@100
    move-result-object v12

    #@101
    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    #@104
    const/4 v12, 0x0

    #@105
    aput-object v11, v5, v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@107
    goto :goto_2

    #@108
    .line 179
    :catch_2
    move-exception v3

    #@109
    .line 180
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@10b
    const-string/jumbo v12, "Could not read certificate issuer."

    #@10e
    invoke-direct {v11, v12, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@111
    throw v11

    #@112
    .line 191
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "e":Ljava/util/Enumeration;
    .restart local v7    # "j":I
    .restart local v10    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_5
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@115
    move-result-object v11

    #@116
    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@119
    .line 192
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@11b
    new-instance v12, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@11d
    invoke-direct {v12, v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@120
    invoke-static {v12}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@123
    move-result-object v12

    #@124
    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    #@127
    aput-object v11, v5, v7

    #@129
    .line 183
    add-int/lit8 v7, v7, 0x1

    #@12b
    goto :goto_3

    #@12c
    .line 195
    .end local v4    # "e":Ljava/util/Enumeration;
    .end local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v7    # "j":I
    .end local v10    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_6
    if-eqz v5, :cond_7

    #@12e
    .line 197
    const/4 v7, 0x0

    #@12f
    .restart local v7    # "j":I
    :goto_5
    array-length v11, v5

    #@130
    if-ge v7, v11, :cond_7

    #@132
    .line 199
    aget-object v11, v5, v7

    #@134
    invoke-interface {v9, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@137
    move-result v11

    #@138
    if-eqz v11, :cond_8

    #@13a
    .line 201
    const/4 v8, 0x1

    #@13b
    .line 206
    .end local v7    # "j":I
    :cond_7
    if-nez v8, :cond_d

    #@13d
    .line 208
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@13f
    .line 209
    const-string/jumbo v12, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    #@142
    .line 208
    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@145
    throw v11

    #@146
    .line 197
    .restart local v7    # "j":I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    #@148
    goto :goto_5

    #@149
    .line 217
    .end local v7    # "j":I
    :cond_9
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@14c
    move-result-object v11

    #@14d
    if-nez v11, :cond_a

    #@14f
    .line 219
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@151
    const-string/jumbo v12, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    #@154
    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@157
    throw v11

    #@158
    .line 222
    :cond_a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@15b
    move-result-object v11

    #@15c
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@15f
    move-result-object v5

    #@160
    .line 223
    .restart local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v7, 0x0

    #@161
    .restart local v7    # "j":I
    :goto_6
    array-length v11, v5

    #@162
    if-ge v7, v11, :cond_b

    #@164
    .line 225
    aget-object v11, v5, v7

    #@166
    invoke-interface {v9, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@169
    move-result v11

    #@16a
    if-eqz v11, :cond_c

    #@16c
    .line 227
    const/4 v8, 0x1

    #@16d
    .line 231
    :cond_b
    if-nez v8, :cond_d

    #@16f
    .line 233
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@171
    .line 234
    const-string/jumbo v12, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    #@174
    .line 233
    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@177
    throw v11

    #@178
    .line 223
    :cond_c
    add-int/lit8 v7, v7, 0x1

    #@17a
    goto :goto_6

    #@17b
    .line 238
    .end local v2    # "dpName":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v5    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v7    # "j":I
    .end local v8    # "matches":Z
    .end local v9    # "names":Ljava/util/List;
    :cond_d
    const/4 v1, 0x0

    #@17c
    .line 241
    .local v1, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_3
    move-object v0, p1

    #@17d
    check-cast v0, Ljava/security/cert/X509Extension;

    #@17f
    move-object v11, v0

    #@180
    .line 242
    sget-object v12, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    #@182
    .line 241
    invoke-static {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@185
    move-result-object v11

    #@186
    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    #@189
    move-result-object v1

    #@18a
    .line 249
    .local v1, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    instance-of v11, p1, Ljava/security/cert/X509Certificate;

    #@18c
    if-eqz v11, :cond_f

    #@18e
    .line 252
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    #@191
    move-result v11

    #@192
    if-eqz v11, :cond_e

    #@194
    if-eqz v1, :cond_e

    #@196
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    #@199
    move-result v11

    #@19a
    if-eqz v11, :cond_e

    #@19c
    .line 254
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@19e
    const-string/jumbo v12, "CA Cert CRL only contains user certificates."

    #@1a1
    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@1a4
    throw v11

    #@1a5
    .line 245
    .local v1, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :catch_3
    move-exception v3

    #@1a6
    .line 246
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@1a8
    const-string/jumbo v12, "Basic constraints extension could not be decoded."

    #@1ab
    invoke-direct {v11, v12, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1ae
    throw v11

    #@1af
    .line 258
    .end local v3    # "e":Ljava/lang/Exception;
    .local v1, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :cond_e
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    #@1b2
    move-result v11

    #@1b3
    if-eqz v11, :cond_f

    #@1b5
    if-eqz v1, :cond_10

    #@1b7
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    #@1ba
    move-result v11

    #@1bb
    if-eqz v11, :cond_10

    #@1bd
    .line 265
    :cond_f
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    #@1c0
    move-result v11

    #@1c1
    if-eqz v11, :cond_11

    #@1c3
    .line 267
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@1c5
    const-string/jumbo v12, "onlyContainsAttributeCerts boolean is asserted."

    #@1c8
    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@1cb
    throw v11

    #@1cc
    .line 260
    :cond_10
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@1ce
    const-string/jumbo v12, "End CRL only contains CA certificates."

    #@1d1
    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@1d4
    throw v11

    #@1d5
    .line 105
    .end local v1    # "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :cond_11
    return-void
.end method

.method protected static processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .locals 9
    .param p0, "deltaCRL"    # Ljava/security/cert/X509CRL;
    .param p1, "completeCRL"    # Ljava/security/cert/X509CRL;
    .param p2, "pkixParams"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 761
    if-nez p0, :cond_0

    #@2
    .line 763
    return-void

    #@3
    .line 765
    :cond_0
    const/4 v1, 0x0

    #@4
    .line 769
    .local v1, "completeidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    #@6
    .line 768
    invoke-static {p1, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9
    move-result-object v7

    #@a
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    .line 776
    .local v1, "completeidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    #@11
    move-result v7

    #@12
    if-eqz v7, :cond_7

    #@14
    .line 779
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@17
    move-result-object v7

    #@18
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@1b
    move-result-object v8

    #@1c
    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v7

    #@20
    if-nez v7, :cond_1

    #@22
    .line 781
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@24
    const-string/jumbo v8, "Complete CRL issuer does not match delta CRL issuer."

    #@27
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v7

    #@2b
    .line 772
    .local v1, "completeidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_0
    move-exception v5

    #@2c
    .line 773
    .local v5, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@2e
    const-string/jumbo v8, "Issuing distribution point extension could not be decoded."

    #@31
    invoke-direct {v7, v8, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@34
    throw v7

    #@35
    .line 785
    .end local v5    # "e":Ljava/lang/Exception;
    .local v1, "completeidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :cond_1
    const/4 v3, 0x0

    #@36
    .line 789
    .local v3, "deltaidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_1
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    #@38
    .line 788
    invoke-static {p0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3b
    move-result-object v7

    #@3c
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@3f
    move-result-object v3

    #@40
    .line 797
    .local v3, "deltaidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    const/4 v6, 0x0

    #@41
    .line 798
    .local v6, "match":Z
    if-nez v1, :cond_3

    #@43
    .line 800
    if-nez v3, :cond_2

    #@45
    .line 802
    const/4 v6, 0x1

    #@46
    .line 812
    :cond_2
    :goto_0
    if-nez v6, :cond_4

    #@48
    .line 814
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@4a
    .line 815
    const-string/jumbo v8, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    #@4d
    .line 814
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@50
    throw v7

    #@51
    .line 792
    .end local v6    # "match":Z
    .local v3, "deltaidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_1
    move-exception v5

    #@52
    .line 793
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@54
    .line 794
    const-string/jumbo v8, "Issuing distribution point extension from delta CRL could not be decoded."

    #@57
    .line 793
    invoke-direct {v7, v8, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5a
    throw v7

    #@5b
    .line 807
    .end local v5    # "e":Ljava/lang/Exception;
    .local v3, "deltaidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .restart local v6    # "match":Z
    :cond_3
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v7

    #@5f
    if-eqz v7, :cond_2

    #@61
    .line 809
    const/4 v6, 0x1

    #@62
    goto :goto_0

    #@63
    .line 819
    :cond_4
    const/4 v0, 0x0

    #@64
    .line 823
    .local v0, "completeKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_2
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    #@66
    .line 822
    invoke-static {p1, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_2
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    #@69
    move-result-object v0

    #@6a
    .line 831
    .local v0, "completeKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v2, 0x0

    #@6b
    .line 835
    .local v2, "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_3
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    #@6d
    .line 834
    invoke-static {p0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_3
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    #@70
    move-result-object v2

    #@71
    .line 843
    .local v2, "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez v0, :cond_5

    #@73
    .line 845
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@75
    const-string/jumbo v8, "CRL authority key identifier is null."

    #@78
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v7

    #@7c
    .line 826
    .end local v2    # "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .local v0, "completeKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :catch_2
    move-exception v4

    #@7d
    .line 827
    .local v4, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@7f
    .line 828
    const-string/jumbo v8, "Authority key identifier extension could not be extracted from complete CRL."

    #@82
    .line 827
    invoke-direct {v7, v8, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@85
    throw v7

    #@86
    .line 838
    .end local v4    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v0, "completeKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .local v2, "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :catch_3
    move-exception v4

    #@87
    .line 839
    .restart local v4    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@89
    .line 840
    const-string/jumbo v8, "Authority key identifier extension could not be extracted from delta CRL."

    #@8c
    .line 839
    invoke-direct {v7, v8, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8f
    throw v7

    #@90
    .line 848
    .end local v4    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v2, "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_5
    if-nez v2, :cond_6

    #@92
    .line 850
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@94
    const-string/jumbo v8, "Delta CRL authority key identifier is null."

    #@97
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v7

    #@9b
    .line 853
    :cond_6
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@9e
    move-result v7

    #@9f
    if-nez v7, :cond_7

    #@a1
    .line 855
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@a3
    .line 856
    const-string/jumbo v8, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    #@a6
    .line 855
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v7

    #@aa
    .line 759
    .end local v0    # "completeKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v2    # "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v3    # "deltaidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .end local v6    # "match":Z
    :cond_7
    return-void
.end method

.method protected static processCRLD(Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .locals 5
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 361
    const/4 v1, 0x0

    #@1
    .line 365
    .local v1, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    #@3
    .line 364
    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    .line 372
    .local v1, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    if-eqz v1, :cond_0

    #@d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    #@10
    move-result-object v2

    #@11
    if-eqz v2, :cond_0

    #@13
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    #@16
    move-result-object v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 374
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@1b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    #@22
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@24
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    #@27
    move-result-object v4

    #@28
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    #@2b
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@2e
    move-result-object v2

    #@2f
    return-object v2

    #@30
    .line 368
    .local v1, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_0
    move-exception v0

    #@31
    .line 369
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@33
    const-string/jumbo v3, "Issuing distribution point extension could not be decoded."

    #@36
    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@39
    throw v2

    #@3a
    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    .local v1, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :cond_0
    if-eqz v1, :cond_1

    #@3c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    #@3f
    move-result-object v2

    #@40
    if-nez v2, :cond_2

    #@42
    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    #@45
    move-result-object v2

    #@46
    if-nez v2, :cond_2

    #@48
    .line 379
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@4a
    return-object v2

    #@4b
    .line 382
    :cond_2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    #@4e
    move-result-object v2

    #@4f
    if-nez v2, :cond_3

    #@51
    .line 383
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@53
    move-object v3, v2

    #@54
    .line 384
    :goto_0
    if-nez v1, :cond_4

    #@56
    .line 385
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@58
    .line 382
    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@5b
    move-result-object v2

    #@5c
    return-object v2

    #@5d
    .line 384
    :cond_3
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@5f
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    #@62
    move-result-object v3

    #@63
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    #@66
    move-object v3, v2

    #@67
    goto :goto_0

    #@68
    .line 386
    :cond_4
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@6a
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    #@6d
    move-result-object v4

    #@6e
    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    #@71
    goto :goto_1
.end method

.method protected static processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;
    .locals 27
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p4, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p5, "certPathCerts"    # Ljava/util/List;
    .param p6, "helper"    # Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 459
    new-instance v3, Ljava/security/cert/X509CertSelector;

    #@2
    invoke-direct {v3}, Ljava/security/cert/X509CertSelector;-><init>()V

    #@5
    .line 462
    .local v3, "certSelector":Ljava/security/cert/X509CertSelector;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@8
    move-result-object v25

    #@9
    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    #@c
    move-result-object v15

    #@d
    .line 463
    .local v15, "issuerPrincipal":[B
    invoke-virtual {v3, v15}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 471
    new-instance v25, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    #@12
    move-object/from16 v0, v25

    #@14
    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    #@17
    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@1a
    move-result-object v19

    #@1b
    .line 477
    .local v19, "selector":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    #@1e
    move-result-object v25

    #@1f
    move-object/from16 v0, v19

    #@21
    move-object/from16 v1, v25

    #@23
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    #@26
    move-result-object v7

    #@27
    .line 478
    .local v7, "coll":Ljava/util/Collection;
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    #@2a
    move-result-object v25

    #@2b
    move-object/from16 v0, v19

    #@2d
    move-object/from16 v1, v25

    #@2f
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    #@32
    move-result-object v25

    #@33
    move-object/from16 v0, v25

    #@35
    invoke-interface {v7, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    #@38
    .line 485
    move-object/from16 v0, p2

    #@3a
    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@3d
    .line 487
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v4

    #@41
    .line 489
    .local v4, "cert_it":Ljava/util/Iterator;
    new-instance v23, Ljava/util/ArrayList;

    #@43
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    #@46
    .line 490
    .local v23, "validCerts":Ljava/util/List;
    new-instance v24, Ljava/util/ArrayList;

    #@48
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    #@4b
    .line 492
    .local v24, "validKeys":Ljava/util/List;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v25

    #@4f
    if-eqz v25, :cond_2

    #@51
    .line 494
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v21

    #@55
    check-cast v21, Ljava/security/cert/X509Certificate;

    #@57
    .line 500
    .local v21, "signingCert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, v21

    #@59
    move-object/from16 v1, p2

    #@5b
    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v25

    #@5f
    if-eqz v25, :cond_0

    #@61
    .line 502
    move-object/from16 v0, v23

    #@63
    move-object/from16 v1, v21

    #@65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@68
    .line 503
    move-object/from16 v0, v24

    #@6a
    move-object/from16 v1, p3

    #@6c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6f
    goto :goto_0

    #@70
    .line 466
    .end local v4    # "cert_it":Ljava/util/Iterator;
    .end local v7    # "coll":Ljava/util/Collection;
    .end local v15    # "issuerPrincipal":[B
    .end local v19    # "selector":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v21    # "signingCert":Ljava/security/cert/X509Certificate;
    .end local v23    # "validCerts":Ljava/util/List;
    .end local v24    # "validKeys":Ljava/util/List;
    :catch_0
    move-exception v9

    #@71
    .line 467
    .local v9, "e":Ljava/io/IOException;
    new-instance v25, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@73
    .line 468
    const-string/jumbo v26, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    #@76
    .line 467
    move-object/from16 v0, v25

    #@78
    move-object/from16 v1, v26

    #@7a
    invoke-direct {v0, v1, v9}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7d
    throw v25

    #@7e
    .line 481
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v15    # "issuerPrincipal":[B
    .restart local v19    # "selector":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    :catch_1
    move-exception v8

    #@7f
    .line 482
    .local v8, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v25, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@81
    const-string/jumbo v26, "Issuer certificate for CRL cannot be searched."

    #@84
    move-object/from16 v0, v25

    #@86
    move-object/from16 v1, v26

    #@88
    invoke-direct {v0, v1, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8b
    throw v25

    #@8c
    .line 508
    .end local v8    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v4    # "cert_it":Ljava/util/Iterator;
    .restart local v7    # "coll":Ljava/util/Collection;
    .restart local v21    # "signingCert":Ljava/security/cert/X509Certificate;
    .restart local v23    # "validCerts":Ljava/util/List;
    .restart local v24    # "validKeys":Ljava/util/List;
    :cond_0
    :try_start_2
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;

    #@8e
    invoke-direct {v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;-><init>()V

    #@91
    .line 509
    .local v2, "builder":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    new-instance v22, Ljava/security/cert/X509CertSelector;

    #@93
    invoke-direct/range {v22 .. v22}, Ljava/security/cert/X509CertSelector;-><init>()V

    #@96
    .line 510
    .local v22, "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    move-object/from16 v0, v22

    #@98
    move-object/from16 v1, v21

    #@9a
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    #@9d
    .line 512
    new-instance v25, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@9f
    move-object/from16 v0, v25

    #@a1
    move-object/from16 v1, p4

    #@a3
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    #@a6
    .line 513
    new-instance v26, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    #@a8
    move-object/from16 v0, v26

    #@aa
    move-object/from16 v1, v22

    #@ac
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    #@af
    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@b2
    move-result-object v26

    #@b3
    .line 512
    invoke-virtual/range {v25 .. v26}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTargetConstraints(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@b6
    move-result-object v18

    #@b7
    .line 524
    .local v18, "paramsBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v0, p5

    #@b9
    move-object/from16 v1, v21

    #@bb
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@be
    move-result v25

    #@bf
    if-eqz v25, :cond_1

    #@c1
    .line 526
    const/16 v25, 0x0

    #@c3
    move-object/from16 v0, v18

    #@c5
    move/from16 v1, v25

    #@c7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V

    #@ca
    .line 533
    :goto_1
    new-instance v25, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    #@cc
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@cf
    move-result-object v26

    #@d0
    invoke-direct/range {v25 .. v26}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    #@d3
    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    #@d6
    move-result-object v13

    #@d7
    .line 535
    .local v13, "extParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    invoke-virtual {v2, v13}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    #@da
    move-result-object v25

    #@db
    invoke-interface/range {v25 .. v25}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    #@de
    move-result-object v25

    #@df
    invoke-virtual/range {v25 .. v25}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@e2
    move-result-object v5

    #@e3
    .line 536
    .local v5, "certs":Ljava/util/List;
    move-object/from16 v0, v23

    #@e5
    move-object/from16 v1, v21

    #@e7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ea
    .line 537
    const/16 v25, 0x0

    #@ec
    move/from16 v0, v25

    #@ee
    move-object/from16 v1, p6

    #@f0
    invoke-static {v5, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    #@f3
    move-result-object v25

    #@f4
    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    #@f7
    goto/16 :goto_0

    #@f9
    .line 540
    .end local v2    # "builder":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .end local v5    # "certs":Ljava/util/List;
    .end local v13    # "extParams":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local v18    # "paramsBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v22    # "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    :catch_2
    move-exception v11

    #@fa
    .line 541
    .local v11, "e":Ljava/security/cert/CertPathBuilderException;
    new-instance v25, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@fc
    const-string/jumbo v26, "CertPath for CRL signer failed to validate."

    #@ff
    move-object/from16 v0, v25

    #@101
    move-object/from16 v1, v26

    #@103
    invoke-direct {v0, v1, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@106
    throw v25

    #@107
    .line 530
    .end local v11    # "e":Ljava/security/cert/CertPathBuilderException;
    .restart local v2    # "builder":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .restart local v18    # "paramsBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v22    # "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    :cond_1
    const/16 v25, 0x1

    #@109
    :try_start_3
    move-object/from16 v0, v18

    #@10b
    move/from16 v1, v25

    #@10d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    #@110
    goto :goto_1

    #@111
    .line 544
    .end local v2    # "builder":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
    .end local v18    # "paramsBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v22    # "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    :catch_3
    move-exception v12

    #@112
    .line 545
    .local v12, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v25, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@114
    const-string/jumbo v26, "Public key of issuer certificate of CRL could not be retrieved."

    #@117
    move-object/from16 v0, v25

    #@119
    move-object/from16 v1, v26

    #@11b
    invoke-direct {v0, v1, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@11e
    throw v25

    #@11f
    .line 548
    .end local v12    # "e":Ljava/security/cert/CertPathValidatorException;
    :catch_4
    move-exception v10

    #@120
    .line 549
    .local v10, "e":Ljava/lang/Exception;
    new-instance v25, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@122
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@125
    move-result-object v26

    #@126
    invoke-direct/range {v25 .. v26}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@129
    throw v25

    #@12a
    .line 553
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v21    # "signingCert":Ljava/security/cert/X509Certificate;
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    #@12c
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@12f
    .line 555
    .local v6, "checkKeys":Ljava/util/Set;
    const/16 v17, 0x0

    #@131
    .line 556
    .local v17, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v14, 0x0

    #@132
    .end local v17    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v14, "i":I
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    #@135
    move-result v25

    #@136
    move/from16 v0, v25

    #@138
    if-ge v14, v0, :cond_5

    #@13a
    .line 558
    move-object/from16 v0, v23

    #@13c
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13f
    move-result-object v20

    #@140
    check-cast v20, Ljava/security/cert/X509Certificate;

    #@142
    .line 559
    .local v20, "signCert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    #@145
    move-result-object v16

    #@146
    .line 561
    .local v16, "keyusage":[Z
    if-eqz v16, :cond_3

    #@148
    move-object/from16 v0, v16

    #@14a
    array-length v0, v0

    #@14b
    move/from16 v25, v0

    #@14d
    const/16 v26, 0x7

    #@14f
    move/from16 v0, v25

    #@151
    move/from16 v1, v26

    #@153
    if-lt v0, v1, :cond_4

    #@155
    const/16 v25, 0x6

    #@157
    aget-boolean v25, v16, v25

    #@159
    if-eqz v25, :cond_4

    #@15b
    .line 568
    :cond_3
    move-object/from16 v0, v24

    #@15d
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@160
    move-result-object v25

    #@161
    move-object/from16 v0, v25

    #@163
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@166
    .line 556
    :goto_3
    add-int/lit8 v14, v14, 0x1

    #@168
    goto :goto_2

    #@169
    .line 563
    :cond_4
    new-instance v17, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@16b
    .line 564
    const-string/jumbo v25, "Issuer certificate key usage extension does not permit CRL signing."

    #@16e
    .line 563
    move-object/from16 v0, v17

    #@170
    move-object/from16 v1, v25

    #@172
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@175
    .line 562
    .local v17, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_3

    #@176
    .line 572
    .end local v16    # "keyusage":[Z
    .end local v17    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v20    # "signCert":Ljava/security/cert/X509Certificate;
    :cond_5
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    #@179
    move-result v25

    #@17a
    if-eqz v25, :cond_6

    #@17c
    if-nez v17, :cond_6

    #@17e
    .line 574
    new-instance v25, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@180
    const-string/jumbo v26, "Cannot find a valid issuer certificate."

    #@183
    invoke-direct/range {v25 .. v26}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@186
    throw v25

    #@187
    .line 576
    :cond_6
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    #@18a
    move-result v25

    #@18b
    if-eqz v25, :cond_7

    #@18d
    if-eqz v17, :cond_7

    #@18f
    .line 578
    throw v17

    #@190
    .line 581
    :cond_7
    return-object v6
.end method

.method protected static processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .locals 6
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "keys"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 589
    const/4 v3, 0x0

    #@1
    .line 590
    .local v3, "lastException":Ljava/lang/Exception;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .end local v3    # "lastException":Ljava/lang/Exception;
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 592
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Ljava/security/PublicKey;

    #@11
    .line 595
    .local v2, "key":Ljava/security/PublicKey;
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 596
    return-object v2

    #@15
    .line 599
    :catch_0
    move-exception v0

    #@16
    .line 600
    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v0

    #@17
    .local v3, "lastException":Ljava/lang/Exception;
    goto :goto_0

    #@18
    .line 603
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "key":Ljava/security/PublicKey;
    .end local v3    # "lastException":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@1a
    const-string/jumbo v5, "Cannot verify CRL."

    #@1d
    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@20
    throw v4
.end method

.method protected static processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .locals 6
    .param p0, "deltacrls"    # Ljava/util/Set;
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 611
    const/4 v3, 0x0

    #@2
    .line 613
    .local v3, "lastException":Ljava/lang/Exception;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .end local v3    # "lastException":Ljava/lang/Exception;
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 615
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/security/cert/X509CRL;

    #@12
    .line 618
    .local v0, "crl":Ljava/security/cert/X509CRL;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 619
    return-object v0

    #@16
    .line 622
    :catch_0
    move-exception v1

    #@17
    .line 623
    .local v1, "e":Ljava/lang/Exception;
    move-object v3, v1

    #@18
    .local v3, "lastException":Ljava/lang/Exception;
    goto :goto_0

    #@19
    .line 627
    .end local v0    # "crl":Ljava/security/cert/X509CRL;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "lastException":Ljava/lang/Exception;
    :cond_0
    if-eqz v3, :cond_1

    #@1b
    .line 629
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@1d
    const-string/jumbo v5, "Cannot verify delta CRL."

    #@20
    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@23
    throw v4

    #@24
    .line 631
    :cond_1
    return-object v5
.end method

.method protected static processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .locals 1
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "deltacrl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .param p4, "pkixParams"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 869
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    if-eqz p1, :cond_0

    #@8
    .line 871
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    #@b
    .line 867
    :cond_0
    return-void
.end method

.method protected static processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V
    .locals 2
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "completecrl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 882
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0xb

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 884
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    #@b
    .line 880
    :cond_0
    return-void
.end method

.method protected static processCertA(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;ILjava/security/PublicKey;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 13
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "index"    # I
    .param p3, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p4, "verificationAlreadyPerformed"    # Z
    .param p5, "workingIssuerName"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .param p6, "sign"    # Ljava/security/cert/X509Certificate;
    .param p7, "helper"    # Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 1490
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v6

    #@4
    .line 1491
    .local v6, "certs":Ljava/util/List;
    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@a
    .line 1495
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    if-nez p4, :cond_0

    #@c
    .line 1502
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 1501
    move-object/from16 v0, p3

    #@12
    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1514
    :cond_0
    :try_start_1
    invoke-static {p1, p0, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v2, v1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    #@1c
    .line 1533
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 1537
    :try_start_2
    invoke-static {p1, p0, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    #@25
    move-result-object v3

    #@26
    move-object v1, p1

    #@27
    move-object/from16 v4, p6

    #@29
    move-object/from16 v5, p3

    #@2b
    move-object/from16 v7, p7

    #@2d
    invoke-static/range {v1 .. v7}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_2
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_4

    #@30
    .line 1554
    :cond_1
    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@33
    move-result-object v1

    #@34
    move-object/from16 v0, p5

    #@36
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    if-nez v1, :cond_3

    #@3c
    .line 1556
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@3e
    new-instance v3, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v4, "IssuerName("

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    .line 1557
    const-string/jumbo v4, ") does not match SubjectName("

    #@55
    .line 1556
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    move-object/from16 v0, p5

    #@5b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    .line 1557
    const-string/jumbo v4, ") of signing certificate."

    #@62
    .line 1556
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    .line 1557
    const/4 v4, 0x0

    #@6b
    .line 1556
    invoke-direct {v1, v3, v4, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@6e
    throw v1

    #@6f
    .line 1505
    :catch_0
    move-exception v10

    #@70
    .line 1506
    .local v10, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@72
    const-string/jumbo v3, "Could not validate certificate signature."

    #@75
    invoke-direct {v1, v3, v10, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@78
    throw v1

    #@79
    .line 1526
    .end local v10    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v9

    #@7a
    .line 1527
    .local v9, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@7c
    const-string/jumbo v3, "Could not validate time of certificate."

    #@7f
    invoke-direct {v1, v3, v9, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@82
    throw v1

    #@83
    .line 1522
    .end local v9    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_2
    move-exception v12

    #@84
    .line 1523
    .local v12, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@86
    new-instance v3, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v4, "Could not validate certificate: "

    #@8e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v3

    #@92
    invoke-virtual {v12}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    #@95
    move-result-object v4

    #@96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v3

    #@9a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v3

    #@9e
    invoke-direct {v1, v3, v12, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@a1
    throw v1

    #@a2
    .line 1518
    .end local v12    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_3
    move-exception v11

    #@a3
    .line 1519
    .local v11, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@a5
    new-instance v3, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v4, "Could not validate certificate: "

    #@ad
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    invoke-virtual {v11}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    #@b4
    move-result-object v4

    #@b5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v3

    #@b9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v3

    #@bd
    invoke-direct {v1, v3, v11, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@c0
    throw v1

    #@c1
    .line 1541
    .end local v11    # "e":Ljava/security/cert/CertificateExpiredException;
    :catch_4
    move-exception v9

    #@c2
    .line 1542
    .restart local v9    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object v8, v9

    #@c3
    .line 1543
    .local v8, "cause":Ljava/lang/Throwable;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    #@c6
    move-result-object v1

    #@c7
    if-eqz v1, :cond_2

    #@c9
    .line 1545
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    #@cc
    move-result-object v8

    #@cd
    .line 1547
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@cf
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    #@d2
    move-result-object v3

    #@d3
    invoke-direct {v1, v3, v8, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@d6
    throw v1

    #@d7
    .line 1488
    .end local v8    # "cause":Ljava/lang/Throwable;
    .end local v9    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_3
    return-void
.end method

.method protected static processCertBC(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 22
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 1185
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v6

    #@4
    .line 1186
    .local v6, "certs":Ljava/util/List;
    move/from16 v0, p1

    #@6
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v5

    #@a
    check-cast v5, Ljava/security/cert/X509Certificate;

    #@c
    .line 1187
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@f
    move-result v18

    #@10
    .line 1189
    .local v18, "n":I
    sub-int v16, v18, p1

    #@12
    .line 1193
    .local v16, "i":I
    invoke-static {v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@15
    move-result v20

    #@16
    if-eqz v20, :cond_0

    #@18
    move/from16 v0, v16

    #@1a
    move/from16 v1, v18

    #@1c
    if-ge v0, v1, :cond_0

    #@1e
    const/16 v20, 0x1

    #@20
    :goto_0
    if-nez v20, :cond_2

    #@22
    .line 1195
    invoke-static {v5}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@25
    move-result-object v19

    #@26
    .line 1200
    .local v19, "principal":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    #@29
    move-result-object v20

    #@2a
    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    move-result-object v7

    #@2e
    .line 1210
    .local v7, "dns":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_1
    move-object/from16 v0, p2

    #@30
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@33
    .line 1211
    move-object/from16 v0, p2

    #@35
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    #@38
    .line 1219
    const/4 v4, 0x0

    #@39
    .line 1223
    .local v4, "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :try_start_2
    sget-object v20, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    #@3b
    .line 1222
    move-object/from16 v0, v20

    #@3d
    invoke-static {v5, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@40
    move-result-object v20

    #@41
    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@44
    move-result-object v4

    #@45
    .line 1230
    .local v4, "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@48
    move-result-object v20

    #@49
    sget-object v21, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4b
    invoke-virtual/range {v20 .. v21}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@4e
    move-result-object v13

    #@4f
    .line 1231
    .local v13, "emails":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    const/4 v10, 0x0

    #@50
    .local v10, "eI":I
    :goto_1
    array-length v0, v13

    #@51
    move/from16 v20, v0

    #@53
    move/from16 v0, v20

    #@55
    if-eq v10, v0, :cond_1

    #@57
    .line 1234
    aget-object v20, v13, v10

    #@59
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@5c
    move-result-object v20

    #@5d
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@60
    move-result-object v20

    #@61
    check-cast v20, Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@63
    invoke-interface/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    #@66
    move-result-object v11

    #@67
    .line 1235
    .local v11, "email":Ljava/lang/String;
    new-instance v12, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@69
    const/16 v20, 0x1

    #@6b
    move/from16 v0, v20

    #@6d
    invoke-direct {v12, v0, v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    #@70
    .line 1238
    .local v12, "emailAsGeneralName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_3
    move-object/from16 v0, p2

    #@72
    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    #@75
    .line 1239
    move-object/from16 v0, p2

    #@77
    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_3
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_3

    #@7a
    .line 1231
    add-int/lit8 v10, v10, 0x1

    #@7c
    goto :goto_1

    #@7d
    .line 1193
    .end local v4    # "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v7    # "dns":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v10    # "eI":I
    .end local v11    # "email":Ljava/lang/String;
    .end local v12    # "emailAsGeneralName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v13    # "emails":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .end local v19    # "principal":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :cond_0
    const/16 v20, 0x0

    #@7f
    goto :goto_0

    #@80
    .line 1203
    .restart local v19    # "principal":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :catch_0
    move-exception v9

    #@81
    .line 1204
    .local v9, "e":Ljava/lang/Exception;
    new-instance v20, Ljava/security/cert/CertPathValidatorException;

    #@83
    const-string/jumbo v21, "Exception extracting subject name when checking subtrees."

    #@86
    move-object/from16 v0, v20

    #@88
    move-object/from16 v1, v21

    #@8a
    move-object/from16 v2, p0

    #@8c
    move/from16 v3, p1

    #@8e
    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@91
    throw v20

    #@92
    .line 1214
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "dns":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v8

    #@93
    .line 1215
    .local v8, "e":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v20, Ljava/security/cert/CertPathValidatorException;

    #@95
    const-string/jumbo v21, "Subtree check for certificate subject failed."

    #@98
    move-object/from16 v0, v20

    #@9a
    move-object/from16 v1, v21

    #@9c
    move-object/from16 v2, p0

    #@9e
    move/from16 v3, p1

    #@a0
    invoke-direct {v0, v1, v8, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@a3
    throw v20

    #@a4
    .line 1226
    .end local v8    # "e":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .local v4, "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :catch_2
    move-exception v9

    #@a5
    .line 1227
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v20, Ljava/security/cert/CertPathValidatorException;

    #@a7
    const-string/jumbo v21, "Subject alternative name extension could not be decoded."

    #@aa
    move-object/from16 v0, v20

    #@ac
    move-object/from16 v1, v21

    #@ae
    move-object/from16 v2, p0

    #@b0
    move/from16 v3, p1

    #@b2
    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@b5
    throw v20

    #@b6
    .line 1242
    .end local v9    # "e":Ljava/lang/Exception;
    .local v4, "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .restart local v10    # "eI":I
    .restart local v11    # "email":Ljava/lang/String;
    .restart local v12    # "emailAsGeneralName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v13    # "emails":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    :catch_3
    move-exception v14

    #@b7
    .line 1243
    .local v14, "ex":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v20, Ljava/security/cert/CertPathValidatorException;

    #@b9
    .line 1244
    const-string/jumbo v21, "Subtree check for certificate subject alternative email failed."

    #@bc
    .line 1243
    move-object/from16 v0, v20

    #@be
    move-object/from16 v1, v21

    #@c0
    move-object/from16 v2, p0

    #@c2
    move/from16 v3, p1

    #@c4
    invoke-direct {v0, v1, v14, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@c7
    throw v20

    #@c8
    .line 1247
    .end local v11    # "email":Ljava/lang/String;
    .end local v12    # "emailAsGeneralName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v14    # "ex":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    :cond_1
    if-eqz v4, :cond_2

    #@ca
    .line 1249
    const/4 v15, 0x0

    #@cb
    .line 1252
    .local v15, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_4
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    #@ce
    move-result-object v15

    #@cf
    .line 1259
    .local v15, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/16 v17, 0x0

    #@d1
    .local v17, "j":I
    :goto_2
    array-length v0, v15

    #@d2
    move/from16 v20, v0

    #@d4
    move/from16 v0, v17

    #@d6
    move/from16 v1, v20

    #@d8
    if-ge v0, v1, :cond_2

    #@da
    .line 1264
    :try_start_5
    aget-object v20, v15, v17

    #@dc
    move-object/from16 v0, p2

    #@de
    move-object/from16 v1, v20

    #@e0
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    #@e3
    .line 1265
    aget-object v20, v15, v17

    #@e5
    move-object/from16 v0, p2

    #@e7
    move-object/from16 v1, v20

    #@e9
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_5 .. :try_end_5} :catch_5

    #@ec
    .line 1259
    add-int/lit8 v17, v17, 0x1

    #@ee
    goto :goto_2

    #@ef
    .line 1255
    .end local v17    # "j":I
    .local v15, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_4
    move-exception v9

    #@f0
    .line 1256
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v20, Ljava/security/cert/CertPathValidatorException;

    #@f2
    const-string/jumbo v21, "Subject alternative name contents could not be decoded."

    #@f5
    move-object/from16 v0, v20

    #@f7
    move-object/from16 v1, v21

    #@f9
    move-object/from16 v2, p0

    #@fb
    move/from16 v3, p1

    #@fd
    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@100
    throw v20

    #@101
    .line 1268
    .end local v9    # "e":Ljava/lang/Exception;
    .local v15, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v17    # "j":I
    :catch_5
    move-exception v8

    #@102
    .line 1269
    .restart local v8    # "e":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v20, Ljava/security/cert/CertPathValidatorException;

    #@104
    .line 1270
    const-string/jumbo v21, "Subtree check for certificate subject alternative name failed."

    #@107
    .line 1269
    move-object/from16 v0, v20

    #@109
    move-object/from16 v1, v21

    #@10b
    move-object/from16 v2, p0

    #@10d
    move/from16 v3, p1

    #@10f
    invoke-direct {v0, v1, v8, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@112
    throw v20

    #@113
    .line 1183
    .end local v4    # "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v7    # "dns":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "e":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v10    # "eI":I
    .end local v13    # "emails":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .end local v15    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v17    # "j":I
    .end local v19    # "principal":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :cond_2
    return-void
.end method

.method protected static processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 39
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "acceptablePolicies"    # Ljava/util/Set;
    .param p3, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p4, "policyNodes"    # [Ljava/util/List;
    .param p5, "inhibitAnyPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 1286
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v20

    #@4
    .line 1287
    .local v20, "certs":Ljava/util/List;
    move-object/from16 v0, v20

    #@6
    move/from16 v1, p1

    #@8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v18

    #@c
    check-cast v18, Ljava/security/cert/X509Certificate;

    #@e
    .line 1288
    .local v18, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    #@11
    move-result v30

    #@12
    .line 1290
    .local v30, "n":I
    sub-int v5, v30, p1

    #@14
    .line 1295
    .local v5, "i":I
    const/16 v19, 0x0

    #@16
    .line 1299
    .local v19, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    #@18
    .line 1298
    move-object/from16 v0, v18

    #@1a
    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v19

    #@22
    .line 1306
    .local v19, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v19, :cond_12

    #@24
    if-eqz p3, :cond_12

    #@26
    .line 1311
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@29
    move-result-object v24

    #@2a
    .line 1312
    .local v24, "e":Ljava/util/Enumeration;
    new-instance v36, Ljava/util/HashSet;

    #@2c
    invoke-direct/range {v36 .. v36}, Ljava/util/HashSet;-><init>()V

    #@2f
    .line 1314
    .local v36, "pols":Ljava/util/Set;
    :cond_0
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_1

    #@35
    .line 1316
    invoke-interface/range {v24 .. v24}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@38
    move-result-object v4

    #@39
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    #@3c
    move-result-object v34

    #@3d
    .line 1317
    .local v34, "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@40
    move-result-object v35

    #@41
    .line 1319
    .local v35, "pOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual/range {v35 .. v35}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    move-object/from16 v0, v36

    #@47
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4a
    .line 1321
    const-string/jumbo v4, "2.5.29.32.0"

    #@4d
    invoke-virtual/range {v35 .. v35}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@50
    move-result-object v10

    #@51
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v4

    #@55
    if-nez v4, :cond_0

    #@57
    .line 1323
    const/16 v37, 0x0

    #@59
    .line 1326
    .local v37, "pq":Ljava/util/Set;
    :try_start_1
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@5c
    move-result-object v4

    #@5d
    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    #@60
    move-result-object v37

    #@61
    .line 1334
    .local v37, "pq":Ljava/util/Set;
    move-object/from16 v0, p4

    #@63
    move-object/from16 v1, v35

    #@65
    move-object/from16 v2, v37

    #@67
    invoke-static {v5, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1i(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    #@6a
    move-result v29

    #@6b
    .line 1336
    .local v29, "match":Z
    if-nez v29, :cond_0

    #@6d
    .line 1338
    move-object/from16 v0, p4

    #@6f
    move-object/from16 v1, v35

    #@71
    move-object/from16 v2, v37

    #@73
    invoke-static {v5, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1ii(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V

    #@76
    goto :goto_0

    #@77
    .line 1302
    .end local v24    # "e":Ljava/util/Enumeration;
    .end local v29    # "match":Z
    .end local v34    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v35    # "pOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v36    # "pols":Ljava/util/Set;
    .end local v37    # "pq":Ljava/util/Set;
    .local v19, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v23

    #@78
    .line 1303
    .local v23, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@7a
    const-string/jumbo v10, "Could not read certificate policies extension from certificate."

    #@7d
    move-object/from16 v0, v23

    #@7f
    move-object/from16 v1, p0

    #@81
    move/from16 v2, p1

    #@83
    invoke-direct {v4, v10, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@86
    throw v4

    #@87
    .line 1329
    .end local v23    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v19, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v24    # "e":Ljava/util/Enumeration;
    .restart local v34    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v35    # "pOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v36    # "pols":Ljava/util/Set;
    .local v37, "pq":Ljava/util/Set;
    :catch_1
    move-exception v25

    #@88
    .line 1330
    .local v25, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@8a
    const-string/jumbo v10, "Policy qualifier info set could not be build."

    #@8d
    move-object/from16 v0, v25

    #@8f
    move-object/from16 v1, p0

    #@91
    move/from16 v2, p1

    #@93
    invoke-direct {v4, v10, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@96
    throw v4

    #@97
    .line 1343
    .end local v25    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v34    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v35    # "pOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v37    # "pq":Ljava/util/Set;
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    #@9a
    move-result v4

    #@9b
    if-nez v4, :cond_2

    #@9d
    const-string/jumbo v4, "2.5.29.32.0"

    #@a0
    move-object/from16 v0, p2

    #@a2
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@a5
    move-result v4

    #@a6
    if-eqz v4, :cond_7

    #@a8
    .line 1345
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    #@ab
    .line 1346
    move-object/from16 v0, p2

    #@ad
    move-object/from16 v1, v36

    #@af
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@b2
    .line 1369
    :goto_1
    if-gtz p5, :cond_3

    #@b4
    move/from16 v0, v30

    #@b6
    if-ge v5, v0, :cond_d

    #@b8
    invoke-static/range {v18 .. v18}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@bb
    move-result v4

    #@bc
    if-eqz v4, :cond_d

    #@be
    .line 1371
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@c1
    move-result-object v24

    #@c2
    .line 1373
    :cond_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@c5
    move-result v4

    #@c6
    if-eqz v4, :cond_d

    #@c8
    .line 1375
    invoke-interface/range {v24 .. v24}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@cb
    move-result-object v4

    #@cc
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    #@cf
    move-result-object v34

    #@d0
    .line 1377
    .restart local v34    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    const-string/jumbo v4, "2.5.29.32.0"

    #@d3
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d6
    move-result-object v10

    #@d7
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@da
    move-result-object v10

    #@db
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@de
    move-result v4

    #@df
    if-eqz v4, :cond_4

    #@e1
    .line 1379
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@e4
    move-result-object v4

    #@e5
    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    #@e8
    move-result-object v8

    #@e9
    .line 1380
    .local v8, "_apq":Ljava/util/Set;
    add-int/lit8 v4, v5, -0x1

    #@eb
    aget-object v14, p4, v4

    #@ed
    .line 1382
    .local v14, "_nodes":Ljava/util/List;
    const/16 v28, 0x0

    #@ef
    .local v28, "k":I
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@f2
    move-result v4

    #@f3
    move/from16 v0, v28

    #@f5
    if-ge v0, v4, :cond_d

    #@f7
    .line 1384
    move/from16 v0, v28

    #@f9
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@fc
    move-result-object v7

    #@fd
    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@ff
    .line 1386
    .local v7, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    #@102
    move-result-object v4

    #@103
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@106
    move-result-object v15

    #@107
    .line 1387
    .local v15, "_policySetIter":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@10a
    move-result v4

    #@10b
    if-eqz v4, :cond_c

    #@10d
    .line 1389
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@110
    move-result-object v16

    #@111
    .line 1392
    .local v16, "_tmp":Ljava/lang/Object;
    move-object/from16 v0, v16

    #@113
    instance-of v4, v0, Ljava/lang/String;

    #@115
    if-eqz v4, :cond_a

    #@117
    move-object/from16 v9, v16

    #@119
    .line 1394
    check-cast v9, Ljava/lang/String;

    #@11b
    .line 1405
    .end local v16    # "_tmp":Ljava/lang/Object;
    .local v9, "_policy":Ljava/lang/String;
    :goto_4
    const/4 v13, 0x0

    #@11c
    .line 1406
    .local v13, "_found":Z
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    #@11f
    move-result-object v12

    #@120
    .line 1408
    .local v12, "_childrenIter":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@123
    move-result v4

    #@124
    if-eqz v4, :cond_b

    #@126
    .line 1410
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@129
    move-result-object v11

    #@12a
    check-cast v11, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@12c
    .line 1412
    .local v11, "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    #@12f
    move-result-object v4

    #@130
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@133
    move-result v4

    #@134
    if-eqz v4, :cond_6

    #@136
    .line 1414
    const/4 v13, 0x1

    #@137
    goto :goto_5

    #@138
    .line 1350
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "_apq":Ljava/util/Set;
    .end local v9    # "_policy":Ljava/lang/String;
    .end local v11    # "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12    # "_childrenIter":Ljava/util/Iterator;
    .end local v13    # "_found":Z
    .end local v14    # "_nodes":Ljava/util/List;
    .end local v15    # "_policySetIter":Ljava/util/Iterator;
    .end local v28    # "k":I
    .end local v34    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_7
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@13b
    move-result-object v26

    #@13c
    .line 1351
    .local v26, "it":Ljava/util/Iterator;
    new-instance v38, Ljava/util/HashSet;

    #@13e
    invoke-direct/range {v38 .. v38}, Ljava/util/HashSet;-><init>()V

    #@141
    .line 1353
    .local v38, "t1":Ljava/util/Set;
    :cond_8
    :goto_6
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    #@144
    move-result v4

    #@145
    if-eqz v4, :cond_9

    #@147
    .line 1355
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14a
    move-result-object v33

    #@14b
    .line 1357
    .local v33, "o":Ljava/lang/Object;
    move-object/from16 v0, v36

    #@14d
    move-object/from16 v1, v33

    #@14f
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@152
    move-result v4

    #@153
    if-eqz v4, :cond_8

    #@155
    .line 1359
    move-object/from16 v0, v38

    #@157
    move-object/from16 v1, v33

    #@159
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@15c
    goto :goto_6

    #@15d
    .line 1362
    .end local v33    # "o":Ljava/lang/Object;
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    #@160
    .line 1363
    move-object/from16 v0, p2

    #@162
    move-object/from16 v1, v38

    #@164
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@167
    goto/16 :goto_1

    #@169
    .line 1396
    .end local v26    # "it":Ljava/util/Iterator;
    .end local v38    # "t1":Ljava/util/Set;
    .restart local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v8    # "_apq":Ljava/util/Set;
    .restart local v14    # "_nodes":Ljava/util/List;
    .restart local v15    # "_policySetIter":Ljava/util/Iterator;
    .restart local v16    # "_tmp":Ljava/lang/Object;
    .restart local v28    # "k":I
    .restart local v34    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_a
    move-object/from16 v0, v16

    #@16b
    instance-of v4, v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16d
    if-eqz v4, :cond_5

    #@16f
    .line 1398
    check-cast v16, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@171
    .end local v16    # "_tmp":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@174
    move-result-object v9

    #@175
    .restart local v9    # "_policy":Ljava/lang/String;
    goto :goto_4

    #@176
    .line 1418
    .restart local v12    # "_childrenIter":Ljava/util/Iterator;
    .restart local v13    # "_found":Z
    :cond_b
    if-nez v13, :cond_5

    #@178
    .line 1420
    new-instance v6, Ljava/util/HashSet;

    #@17a
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@17d
    .line 1421
    .local v6, "_newChildExpectedPolicies":Ljava/util/Set;
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@180
    .line 1423
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@182
    new-instance v4, Ljava/util/ArrayList;

    #@184
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@187
    .line 1424
    const/4 v10, 0x0

    #@188
    .line 1423
    invoke-direct/range {v3 .. v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    #@18b
    .line 1425
    .local v3, "_newChild":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@18e
    .line 1426
    aget-object v4, p4, v5

    #@190
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@193
    goto/16 :goto_3

    #@195
    .line 1382
    .end local v3    # "_newChild":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "_newChildExpectedPolicies":Ljava/util/Set;
    .end local v9    # "_policy":Ljava/lang/String;
    .end local v12    # "_childrenIter":Ljava/util/Iterator;
    .end local v13    # "_found":Z
    :cond_c
    add-int/lit8 v28, v28, 0x1

    #@197
    goto/16 :goto_2

    #@199
    .line 1435
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "_apq":Ljava/util/Set;
    .end local v14    # "_nodes":Ljava/util/List;
    .end local v15    # "_policySetIter":Ljava/util/Iterator;
    .end local v28    # "k":I
    .end local v34    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_d
    move-object/from16 v17, p3

    #@19b
    .line 1439
    .local v17, "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    add-int/lit8 v27, v5, -0x1

    #@19d
    .local v27, "j":I
    :goto_7
    if-ltz v27, :cond_10

    #@19f
    .line 1441
    aget-object v32, p4, v27

    #@1a1
    .line 1443
    .local v32, "nodes":Ljava/util/List;
    const/16 v28, 0x0

    #@1a3
    .restart local v28    # "k":I
    :goto_8
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    #@1a6
    move-result v4

    #@1a7
    move/from16 v0, v28

    #@1a9
    if-ge v0, v4, :cond_e

    #@1ab
    .line 1445
    move-object/from16 v0, v32

    #@1ad
    move/from16 v1, v28

    #@1af
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b2
    move-result-object v31

    #@1b3
    check-cast v31, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@1b5
    .line 1446
    .local v31, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v31 .. v31}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    #@1b8
    move-result v4

    #@1b9
    if-nez v4, :cond_f

    #@1bb
    .line 1448
    move-object/from16 v0, v17

    #@1bd
    move-object/from16 v1, p4

    #@1bf
    move-object/from16 v2, v31

    #@1c1
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@1c4
    move-result-object v17

    #@1c5
    .line 1450
    if-nez v17, :cond_f

    #@1c7
    .line 1439
    .end local v31    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_e
    add-int/lit8 v27, v27, -0x1

    #@1c9
    goto :goto_7

    #@1ca
    .line 1443
    .restart local v31    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_f
    add-int/lit8 v28, v28, 0x1

    #@1cc
    goto :goto_8

    #@1cd
    .line 1461
    .end local v28    # "k":I
    .end local v31    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v32    # "nodes":Ljava/util/List;
    :cond_10
    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@1d0
    move-result-object v22

    #@1d1
    .line 1463
    .local v22, "criticalExtensionOids":Ljava/util/Set;
    if-eqz v22, :cond_11

    #@1d3
    .line 1465
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    #@1d5
    move-object/from16 v0, v22

    #@1d7
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1da
    move-result v21

    #@1db
    .line 1467
    .local v21, "critical":Z
    aget-object v32, p4, v5

    #@1dd
    .line 1468
    .restart local v32    # "nodes":Ljava/util/List;
    const/16 v27, 0x0

    #@1df
    :goto_9
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    #@1e2
    move-result v4

    #@1e3
    move/from16 v0, v27

    #@1e5
    if-ge v0, v4, :cond_11

    #@1e7
    .line 1470
    move-object/from16 v0, v32

    #@1e9
    move/from16 v1, v27

    #@1eb
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1ee
    move-result-object v31

    #@1ef
    check-cast v31, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@1f1
    .line 1471
    .restart local v31    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v31

    #@1f3
    move/from16 v1, v21

    #@1f5
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    #@1f8
    .line 1468
    add-int/lit8 v27, v27, 0x1

    #@1fa
    goto :goto_9

    #@1fb
    .line 1474
    .end local v21    # "critical":Z
    .end local v31    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v32    # "nodes":Ljava/util/List;
    :cond_11
    return-object v17

    #@1fc
    .line 1476
    .end local v17    # "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v22    # "criticalExtensionOids":Ljava/util/Set;
    .end local v24    # "e":Ljava/util/Enumeration;
    .end local v27    # "j":I
    .end local v36    # "pols":Ljava/util/Set;
    :cond_12
    const/4 v4, 0x0

    #@1fd
    return-object v4
.end method

.method protected static processCertE(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 1156
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 1157
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@a
    .line 1161
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    #@b
    .line 1165
    .local v1, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    #@d
    .line 1164
    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@10
    move-result-object v4

    #@11
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v1

    #@15
    .line 1172
    .local v1, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-nez v1, :cond_0

    #@17
    .line 1174
    const/4 p2, 0x0

    #@18
    .line 1176
    .end local p2    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_0
    return-object p2

    #@19
    .line 1168
    .local v1, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local p2    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :catch_0
    move-exception v3

    #@1a
    .line 1169
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@1c
    const-string/jumbo v5, "Could not read certificate policies extension from certificate."

    #@1f
    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@22
    throw v4
.end method

.method protected static processCertF(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p3, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1143
    if-gtz p3, :cond_0

    #@3
    if-nez p2, :cond_0

    #@5
    .line 1145
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@7
    const-string/jumbo v1, "No valid policy tree found when one expected."

    #@a
    invoke-direct {v0, v1, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@d
    throw v0

    #@e
    .line 1138
    :cond_0
    return-void
.end method

.method protected static wrapupCertA(ILjava/security/cert/X509Certificate;)I
    .locals 1
    .param p0, "explicitPolicy"    # I
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 2345
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    if-eqz p0, :cond_0

    #@8
    .line 2347
    add-int/lit8 p0, p0, -0x1

    #@a
    .line 2349
    :cond_0
    return p0
.end method

.method protected static wrapupCertB(Ljava/security/cert/CertPath;II)I
    .locals 10
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 2358
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@4
    move-result-object v1

    #@5
    .line 2359
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@b
    .line 2364
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v5, 0x0

    #@c
    .line 2368
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v8, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    #@e
    .line 2367
    invoke-static {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@11
    move-result-object v8

    #@12
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v5

    #@16
    .line 2374
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v5, :cond_1

    #@18
    .line 2376
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@1b
    move-result-object v6

    #@1c
    .line 2378
    .local v6, "policyConstraints":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1f
    move-result v8

    #@20
    if-eqz v8, :cond_1

    #@22
    .line 2380
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@28
    .line 2381
    .local v2, "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@2b
    move-result v8

    #@2c
    packed-switch v8, :pswitch_data_0

    #@2f
    goto :goto_0

    #@30
    .line 2386
    :pswitch_0
    const/4 v8, 0x0

    #@31
    :try_start_1
    invoke-static {v2, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@34
    move-result-object v8

    #@35
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@38
    move-result-object v8

    #@39
    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@3c
    move-result v7

    #@3d
    .line 2394
    .local v7, "tmpInt":I
    if-nez v7, :cond_0

    #@3f
    .line 2396
    return v9

    #@40
    .line 2371
    .end local v2    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v6    # "policyConstraints":Ljava/util/Enumeration;
    .end local v7    # "tmpInt":I
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v3

    #@41
    .line 2372
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v8, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@43
    const-string/jumbo v9, "Policy constraints could not be decoded."

    #@46
    invoke-direct {v8, v9, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@49
    throw v8

    #@4a
    .line 2389
    .end local v3    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v2    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .local v5, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v6    # "policyConstraints":Ljava/util/Enumeration;
    :catch_1
    move-exception v4

    #@4b
    .line 2390
    .local v4, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@4d
    .line 2391
    const-string/jumbo v9, "Policy constraints requireExplicitPolicy field could not be decoded."

    #@50
    .line 2390
    invoke-direct {v8, v9, v4, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@53
    throw v8

    #@54
    .line 2402
    .end local v2    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "policyConstraints":Ljava/util/Enumeration;
    :cond_1
    return p2

    #@55
    .line 2381
    nop

    #@56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected static wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "pathCheckers"    # Ljava/util/List;
    .param p3, "criticalExtensions"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 2412
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 2413
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@a
    .line 2415
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v3

    #@e
    .line 2416
    .local v3, "tmpIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 2420
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    #@1a
    invoke-virtual {v4, v0, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    goto :goto_0

    #@1e
    .line 2423
    :catch_0
    move-exception v2

    #@1f
    .line 2424
    .local v2, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@21
    const-string/jumbo v5, "Additional certificate path checker failed."

    #@24
    invoke-direct {v4, v5, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@27
    throw v4

    #@28
    .line 2429
    .end local v2    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    #@2b
    move-result v4

    #@2c
    if-nez v4, :cond_1

    #@2e
    .line 2431
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@30
    new-instance v5, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v6, "Certificate has unsupported critical extension: "

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    const/4 v6, 0x0

    #@45
    invoke-direct {v4, v5, v6, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@48
    throw v4

    #@49
    .line 2410
    :cond_1
    return-void
.end method

.method protected static wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 21
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "userInitialPolicySet"    # Ljava/util/Set;
    .param p3, "index"    # I
    .param p4, "policyNodes"    # [Ljava/util/List;
    .param p5, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p6, "acceptablePolicies"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 2446
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v18

    #@4
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    #@7
    move-result v15

    #@8
    .line 2455
    .local v15, "n":I
    if-nez p5, :cond_1

    #@a
    .line 2457
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    #@d
    move-result v18

    #@e
    if-eqz v18, :cond_0

    #@10
    .line 2459
    new-instance v18, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@12
    const-string/jumbo v19, "Explicit policy requested but none available."

    #@15
    const/16 v20, 0x0

    #@17
    move-object/from16 v0, v18

    #@19
    move-object/from16 v1, v19

    #@1b
    move-object/from16 v2, v20

    #@1d
    move-object/from16 v3, p0

    #@1f
    move/from16 v4, p3

    #@21
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@24
    throw v18

    #@25
    .line 2462
    :cond_0
    const/4 v12, 0x0

    #@26
    .line 2610
    :goto_0
    return-object v12

    #@27
    .line 2464
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isAnyPolicy(Ljava/util/Set;)Z

    #@2a
    move-result v18

    #@2b
    if-eqz v18, :cond_b

    #@2d
    .line 2467
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    #@30
    move-result v18

    #@31
    if-eqz v18, :cond_a

    #@33
    .line 2469
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->isEmpty()Z

    #@36
    move-result v18

    #@37
    if-eqz v18, :cond_2

    #@39
    .line 2471
    new-instance v18, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@3b
    const-string/jumbo v19, "Explicit policy requested but none available."

    #@3e
    const/16 v20, 0x0

    #@40
    move-object/from16 v0, v18

    #@42
    move-object/from16 v1, v19

    #@44
    move-object/from16 v2, v20

    #@46
    move-object/from16 v3, p0

    #@48
    move/from16 v4, p3

    #@4a
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@4d
    throw v18

    #@4e
    .line 2476
    :cond_2
    new-instance v10, Ljava/util/HashSet;

    #@50
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    #@53
    .line 2478
    .local v10, "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v13, 0x0

    #@54
    .local v13, "j":I
    :goto_1
    move-object/from16 v0, p4

    #@56
    array-length v0, v0

    #@57
    move/from16 v18, v0

    #@59
    move/from16 v0, v18

    #@5b
    if-ge v13, v0, :cond_5

    #@5d
    .line 2480
    aget-object v8, p4, v13

    #@5f
    .line 2482
    .local v8, "_nodeDepth":Ljava/util/List;
    const/4 v14, 0x0

    #@60
    .local v14, "k":I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@63
    move-result v18

    #@64
    move/from16 v0, v18

    #@66
    if-ge v14, v0, :cond_4

    #@68
    .line 2484
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6b
    move-result-object v7

    #@6c
    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@6e
    .line 2486
    .local v7, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string/jumbo v18, "2.5.29.32.0"

    #@71
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    #@74
    move-result-object v19

    #@75
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v18

    #@79
    if-eqz v18, :cond_3

    #@7b
    .line 2488
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    #@7e
    move-result-object v6

    #@7f
    .line 2489
    .local v6, "_iter":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@82
    move-result v18

    #@83
    if-eqz v18, :cond_3

    #@85
    .line 2491
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@88
    move-result-object v18

    #@89
    move-object/from16 v0, v18

    #@8b
    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@8e
    goto :goto_3

    #@8f
    .line 2482
    .end local v6    # "_iter":Ljava/util/Iterator;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    #@91
    goto :goto_2

    #@92
    .line 2478
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    #@94
    goto :goto_1

    #@95
    .line 2497
    .end local v8    # "_nodeDepth":Ljava/util/List;
    .end local v14    # "k":I
    :cond_5
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@98
    move-result-object v11

    #@99
    .line 2498
    .local v11, "_vpnsIter":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@9c
    move-result v18

    #@9d
    if-eqz v18, :cond_7

    #@9f
    .line 2500
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a2
    move-result-object v7

    #@a3
    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@a5
    .line 2501
    .restart local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    #@a8
    move-result-object v9

    #@a9
    .line 2503
    .local v9, "_validPolicy":Ljava/lang/String;
    move-object/from16 v0, p6

    #@ab
    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@ae
    move-result v18

    #@af
    if-nez v18, :cond_6

    #@b1
    goto :goto_4

    #@b2
    .line 2510
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "_validPolicy":Ljava/lang/String;
    :cond_7
    if-eqz p5, :cond_a

    #@b4
    .line 2512
    add-int/lit8 v13, v15, -0x1

    #@b6
    :goto_5
    if-ltz v13, :cond_a

    #@b8
    .line 2514
    aget-object v17, p4, v13

    #@ba
    .line 2516
    .local v17, "nodes":Ljava/util/List;
    const/4 v14, 0x0

    #@bb
    .restart local v14    # "k":I
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    #@be
    move-result v18

    #@bf
    move/from16 v0, v18

    #@c1
    if-ge v14, v0, :cond_9

    #@c3
    .line 2518
    move-object/from16 v0, v17

    #@c5
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c8
    move-result-object v16

    #@c9
    check-cast v16, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@cb
    .line 2519
    .local v16, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    #@ce
    move-result v18

    #@cf
    if-nez v18, :cond_8

    #@d1
    .line 2521
    move-object/from16 v0, p5

    #@d3
    move-object/from16 v1, p4

    #@d5
    move-object/from16 v2, v16

    #@d7
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@da
    move-result-object p5

    #@db
    .line 2516
    :cond_8
    add-int/lit8 v14, v14, 0x1

    #@dd
    goto :goto_6

    #@de
    .line 2512
    .end local v16    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_9
    add-int/lit8 v13, v13, -0x1

    #@e0
    goto :goto_5

    #@e1
    .line 2530
    .end local v10    # "_validPolicyNodeSet":Ljava/util/Set;
    .end local v11    # "_vpnsIter":Ljava/util/Iterator;
    .end local v13    # "j":I
    .end local v14    # "k":I
    .end local v17    # "nodes":Ljava/util/List;
    :cond_a
    move-object/from16 v12, p5

    #@e3
    .local v12, "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_0

    #@e5
    .line 2547
    .end local v12    # "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_b
    new-instance v10, Ljava/util/HashSet;

    #@e7
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    #@ea
    .line 2549
    .restart local v10    # "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v13, 0x0

    #@eb
    .restart local v13    # "j":I
    :goto_7
    move-object/from16 v0, p4

    #@ed
    array-length v0, v0

    #@ee
    move/from16 v18, v0

    #@f0
    move/from16 v0, v18

    #@f2
    if-ge v13, v0, :cond_f

    #@f4
    .line 2551
    aget-object v8, p4, v13

    #@f6
    .line 2553
    .restart local v8    # "_nodeDepth":Ljava/util/List;
    const/4 v14, 0x0

    #@f7
    .restart local v14    # "k":I
    :goto_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@fa
    move-result v18

    #@fb
    move/from16 v0, v18

    #@fd
    if-ge v14, v0, :cond_e

    #@ff
    .line 2555
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@102
    move-result-object v7

    #@103
    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@105
    .line 2557
    .restart local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string/jumbo v18, "2.5.29.32.0"

    #@108
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    #@10b
    move-result-object v19

    #@10c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10f
    move-result v18

    #@110
    if-eqz v18, :cond_d

    #@112
    .line 2559
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    #@115
    move-result-object v6

    #@116
    .line 2560
    .restart local v6    # "_iter":Ljava/util/Iterator;
    :cond_c
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@119
    move-result v18

    #@11a
    if-eqz v18, :cond_d

    #@11c
    .line 2562
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11f
    move-result-object v5

    #@120
    check-cast v5, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@122
    .line 2563
    .local v5, "_c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string/jumbo v18, "2.5.29.32.0"

    #@125
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    #@128
    move-result-object v19

    #@129
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12c
    move-result v18

    #@12d
    if-nez v18, :cond_c

    #@12f
    .line 2565
    invoke-interface {v10, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@132
    goto :goto_9

    #@133
    .line 2553
    .end local v5    # "_c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "_iter":Ljava/util/Iterator;
    :cond_d
    add-int/lit8 v14, v14, 0x1

    #@135
    goto :goto_8

    #@136
    .line 2549
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_e
    add-int/lit8 v13, v13, 0x1

    #@138
    goto :goto_7

    #@139
    .line 2575
    .end local v8    # "_nodeDepth":Ljava/util/List;
    .end local v14    # "k":I
    :cond_f
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@13c
    move-result-object v11

    #@13d
    .line 2576
    .restart local v11    # "_vpnsIter":Ljava/util/Iterator;
    :cond_10
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@140
    move-result v18

    #@141
    if-eqz v18, :cond_11

    #@143
    .line 2578
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@146
    move-result-object v7

    #@147
    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@149
    .line 2579
    .restart local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    #@14c
    move-result-object v9

    #@14d
    .line 2581
    .restart local v9    # "_validPolicy":Ljava/lang/String;
    move-object/from16 v0, p2

    #@14f
    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@152
    move-result v18

    #@153
    if-nez v18, :cond_10

    #@155
    .line 2583
    move-object/from16 v0, p5

    #@157
    move-object/from16 v1, p4

    #@159
    invoke-static {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@15c
    move-result-object p5

    #@15d
    goto :goto_a

    #@15e
    .line 2590
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "_validPolicy":Ljava/lang/String;
    :cond_11
    if-eqz p5, :cond_14

    #@160
    .line 2592
    add-int/lit8 v13, v15, -0x1

    #@162
    :goto_b
    if-ltz v13, :cond_14

    #@164
    .line 2594
    aget-object v17, p4, v13

    #@166
    .line 2596
    .restart local v17    # "nodes":Ljava/util/List;
    const/4 v14, 0x0

    #@167
    .restart local v14    # "k":I
    :goto_c
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    #@16a
    move-result v18

    #@16b
    move/from16 v0, v18

    #@16d
    if-ge v14, v0, :cond_13

    #@16f
    .line 2598
    move-object/from16 v0, v17

    #@171
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@174
    move-result-object v16

    #@175
    check-cast v16, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@177
    .line 2599
    .restart local v16    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    #@17a
    move-result v18

    #@17b
    if-nez v18, :cond_12

    #@17d
    .line 2601
    move-object/from16 v0, p5

    #@17f
    move-object/from16 v1, p4

    #@181
    move-object/from16 v2, v16

    #@183
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@186
    move-result-object p5

    #@187
    .line 2596
    :cond_12
    add-int/lit8 v14, v14, 0x1

    #@189
    goto :goto_c

    #@18a
    .line 2592
    .end local v16    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_13
    add-int/lit8 v13, v13, -0x1

    #@18c
    goto :goto_b

    #@18d
    .line 2608
    .end local v14    # "k":I
    .end local v17    # "nodes":Ljava/util/List;
    :cond_14
    move-object/from16 v12, p5

    #@18f
    .restart local v12    # "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_0
.end method
