.class public final Lsun/security/provider/certpath/PKIXCertPathValidator;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidator.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    #@9
    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    #@3
    return-void
.end method

.method private static validate(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)Ljava/security/cert/PKIXCertPathValidatorResult;
    .locals 18
    .param p0, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p1, "params"    # Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    #@3
    move-result-object v4

    #@4
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@7
    move-result v13

    #@8
    .line 168
    .local v13, "certPathLen":I
    new-instance v12, Ljava/util/ArrayList;

    #@a
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 170
    .local v12, "certPathCheckers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    new-instance v4, Lsun/security/provider/certpath/UntrustedChecker;

    #@f
    invoke-direct {v4}, Lsun/security/provider/certpath/UntrustedChecker;-><init>()V

    #@12
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15
    .line 171
    new-instance v4, Lsun/security/provider/certpath/AlgorithmChecker;

    #@17
    move-object/from16 v0, p0

    #@19
    invoke-direct {v4, v0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    #@1c
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    .line 172
    new-instance v4, Lsun/security/provider/certpath/KeyChecker;

    #@21
    .line 173
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    #@24
    move-result-object v5

    #@25
    .line 172
    invoke-direct {v4, v13, v5}, Lsun/security/provider/certpath/KeyChecker;-><init>(ILjava/security/cert/CertSelector;)V

    #@28
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2b
    .line 174
    new-instance v4, Lsun/security/provider/certpath/ConstraintsChecker;

    #@2d
    invoke-direct {v4, v13}, Lsun/security/provider/certpath/ConstraintsChecker;-><init>(I)V

    #@30
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    .line 176
    new-instance v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@35
    const-string/jumbo v4, "2.5.29.32.0"

    #@38
    .line 177
    const-string/jumbo v5, "2.5.29.32.0"

    #@3b
    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@3e
    move-result-object v7

    #@3f
    .line 176
    const/4 v3, 0x0

    #@40
    const/4 v5, 0x0

    #@41
    const/4 v6, 0x0

    #@42
    .line 178
    const/4 v8, 0x0

    #@43
    .line 176
    invoke-direct/range {v2 .. v8}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    #@46
    .line 179
    .local v2, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    new-instance v3, Lsun/security/provider/certpath/PolicyChecker;

    #@48
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->initialPolicies()Ljava/util/Set;

    #@4b
    move-result-object v4

    #@4c
    .line 181
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    #@4f
    move-result v6

    #@50
    .line 182
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyMappingInhibited()Z

    #@53
    move-result v7

    #@54
    .line 183
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anyPolicyInhibited()Z

    #@57
    move-result v8

    #@58
    .line 184
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyQualifiersRejected()Z

    #@5b
    move-result v9

    #@5c
    move v5, v13

    #@5d
    move-object v10, v2

    #@5e
    .line 179
    invoke-direct/range {v3 .. v10}, Lsun/security/provider/certpath/PolicyChecker;-><init>(Ljava/util/Set;IZZZZLsun/security/provider/certpath/PolicyNodeImpl;)V

    #@61
    .line 186
    .local v3, "pc":Lsun/security/provider/certpath/PolicyChecker;
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@64
    .line 188
    new-instance v11, Lsun/security/provider/certpath/BasicChecker;

    #@66
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    #@69
    move-result-object v4

    #@6a
    .line 189
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    const/4 v6, 0x0

    #@6f
    .line 188
    move-object/from16 v0, p0

    #@71
    invoke-direct {v11, v0, v4, v5, v6}, Lsun/security/provider/certpath/BasicChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/util/Date;Ljava/lang/String;Z)V

    #@74
    .line 190
    .local v11, "bc":Lsun/security/provider/certpath/BasicChecker;
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@77
    .line 192
    const/16 v17, 0x0

    #@79
    .line 193
    .local v17, "revCheckerAdded":Z
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPathCheckers()Ljava/util/List;

    #@7c
    move-result-object v16

    #@7d
    .line 194
    .local v16, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@80
    move-result-object v15

    #@81
    .local v15, "checker$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@84
    move-result v4

    #@85
    if-eqz v4, :cond_2

    #@87
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8a
    move-result-object v14

    #@8b
    check-cast v14, Ljava/security/cert/PKIXCertPathChecker;

    #@8d
    .line 195
    .local v14, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v4, v14, Ljava/security/cert/PKIXRevocationChecker;

    #@8f
    if-eqz v4, :cond_0

    #@91
    .line 196
    if-eqz v17, :cond_1

    #@93
    .line 197
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@95
    .line 198
    const-string/jumbo v5, "Only one PKIXRevocationChecker can be specified"

    #@98
    .line 197
    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v4

    #@9c
    .line 200
    :cond_1
    const/16 v17, 0x1

    #@9e
    .line 202
    instance-of v4, v14, Lsun/security/provider/certpath/RevocationChecker;

    #@a0
    if-eqz v4, :cond_0

    #@a2
    .line 203
    check-cast v14, Lsun/security/provider/certpath/RevocationChecker;

    #@a4
    .end local v14    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    move-object/from16 v0, p0

    #@a6
    move-object/from16 v1, p1

    #@a8
    invoke-virtual {v14, v0, v1}, Lsun/security/provider/certpath/RevocationChecker;->init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    #@ab
    goto :goto_0

    #@ac
    .line 209
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->revocationEnabled()Z

    #@af
    move-result v4

    #@b0
    if-eqz v4, :cond_3

    #@b2
    if-eqz v17, :cond_4

    #@b4
    .line 213
    :cond_3
    :goto_1
    move-object/from16 v0, v16

    #@b6
    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@b9
    .line 215
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    #@bc
    move-result-object v4

    #@bd
    .line 216
    invoke-virtual/range {p1 .. p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    #@c0
    move-result-object v5

    #@c1
    .line 215
    invoke-static {v4, v5, v12}, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/util/List;Ljava/util/List;)V

    #@c4
    .line 219
    new-instance v4, Ljava/security/cert/PKIXCertPathValidatorResult;

    #@c6
    invoke-virtual {v3}, Lsun/security/provider/certpath/PolicyChecker;->getPolicyTree()Ljava/security/cert/PolicyNode;

    #@c9
    move-result-object v5

    #@ca
    .line 220
    invoke-virtual {v11}, Lsun/security/provider/certpath/BasicChecker;->getPublicKey()Ljava/security/PublicKey;

    #@cd
    move-result-object v6

    #@ce
    .line 219
    move-object/from16 v0, p0

    #@d0
    invoke-direct {v4, v0, v5, v6}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    #@d3
    return-object v4

    #@d4
    .line 210
    :cond_4
    new-instance v4, Lsun/security/provider/certpath/RevocationChecker;

    #@d6
    move-object/from16 v0, p0

    #@d8
    move-object/from16 v1, p1

    #@da
    invoke-direct {v4, v0, v1}, Lsun/security/provider/certpath/RevocationChecker;-><init>(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    #@dd
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e0
    goto :goto_1
.end method

.method private static validate(Lsun/security/provider/certpath/PKIX$ValidatorParams;)Ljava/security/cert/PKIXCertPathValidatorResult;
    .locals 17
    .param p0, "params"    # Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 86
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    #@6
    const-string/jumbo v2, "PKIXCertPathValidator.engineValidate()..."

    #@9
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@c
    .line 90
    :cond_0
    const/4 v15, 0x0

    #@d
    .line 91
    .local v15, "selector":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    invoke-virtual/range {p0 .. p0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    #@10
    move-result-object v9

    #@11
    .line 92
    .local v9, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_1

    #@17
    .line 93
    new-instance v15, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    #@19
    .end local v15    # "selector":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    invoke-direct {v15}, Lsun/security/provider/certpath/AdaptableX509CertSelector;-><init>()V

    #@1c
    .line 94
    .local v15, "selector":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    const/4 v1, 0x0

    #@1d
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v12

    #@21
    check-cast v12, Ljava/security/cert/X509Certificate;

    #@23
    .line 96
    .local v12, "firstCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v15, v1}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    #@2a
    .line 98
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    #@2d
    move-result-object v1

    #@2e
    .line 99
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    #@31
    move-result-object v2

    #@32
    .line 98
    invoke-virtual {v15, v1, v2}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setValidityPeriod(Ljava/util/Date;Ljava/util/Date;)V

    #@35
    .line 105
    :try_start_0
    invoke-static {v12}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    #@38
    move-result-object v13

    #@39
    .line 107
    .local v13, "firstCertImpl":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v13}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    #@3c
    move-result-object v1

    #@3d
    .line 106
    invoke-virtual {v15, v1}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->parseAuthorityKeyIdentifierExtension(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@40
    .line 113
    .end local v12    # "firstCert":Ljava/security/cert/X509Certificate;
    .end local v13    # "firstCertImpl":Lsun/security/x509/X509CertImpl;
    .end local v15    # "selector":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    :cond_1
    :goto_0
    const/4 v14, 0x0

    #@41
    .line 117
    .local v14, "lastException":Ljava/security/cert/CertPathValidatorException;
    invoke-virtual/range {p0 .. p0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    #@44
    move-result-object v1

    #@45
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object v8

    #@49
    .end local v14    # "lastException":Ljava/security/cert/CertPathValidatorException;
    .local v8, "anchor$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_7

    #@4f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v7

    #@53
    check-cast v7, Ljava/security/cert/TrustAnchor;

    #@55
    .line 118
    .local v7, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v7}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@58
    move-result-object v16

    #@59
    .line 119
    .local v16, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v16, :cond_6

    #@5b
    .line 122
    if-eqz v15, :cond_3

    #@5d
    invoke-virtual/range {v15 .. v16}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_5

    #@63
    .line 129
    :cond_3
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    #@65
    if-eqz v1, :cond_4

    #@67
    .line 130
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    #@69
    const-string/jumbo v2, "YES - try this trustedCert"

    #@6c
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@6f
    .line 131
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    #@71
    new-instance v2, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v3, "anchor.getTrustedCert().getSubjectX500Principal() = "

    #@79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v2

    #@7d
    .line 133
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@80
    move-result-object v3

    #@81
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@8c
    .line 143
    :cond_4
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    #@8e
    invoke-static {v7, v0}, Lsun/security/provider/certpath/PKIXCertPathValidator;->validate(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_0

    #@91
    move-result-object v1

    #@92
    return-object v1

    #@93
    .line 123
    :cond_5
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    #@95
    if-eqz v1, :cond_2

    #@97
    .line 124
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    #@99
    const-string/jumbo v2, "NO - don\'t try this trustedCert"

    #@9c
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@9f
    goto :goto_1

    #@a0
    .line 136
    :cond_6
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    #@a2
    if-eqz v1, :cond_4

    #@a4
    .line 137
    sget-object v1, Lsun/security/provider/certpath/PKIXCertPathValidator;->debug:Lsun/security/util/Debug;

    #@a6
    const-string/jumbo v2, "PKIXCertPathValidator.engineValidate(): anchor.getTrustedCert() == null"

    #@a9
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@ac
    goto :goto_2

    #@ad
    .line 144
    :catch_0
    move-exception v10

    #@ae
    .line 146
    .local v10, "cpe":Ljava/security/cert/CertPathValidatorException;
    move-object v14, v10

    #@af
    .local v14, "lastException":Ljava/security/cert/CertPathValidatorException;
    goto :goto_1

    #@b0
    .line 152
    .end local v7    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v10    # "cpe":Ljava/security/cert/CertPathValidatorException;
    .end local v14    # "lastException":Ljava/security/cert/CertPathValidatorException;
    .end local v16    # "trustedCert":Ljava/security/cert/X509Certificate;
    :cond_7
    if-eqz v14, :cond_8

    #@b2
    .line 153
    throw v14

    #@b3
    .line 156
    :cond_8
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@b5
    .line 157
    const-string/jumbo v2, "Path does not chain with any of the trust anchors"

    #@b8
    .line 158
    sget-object v6, Ljava/security/cert/PKIXReason;->NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

    #@ba
    const/4 v3, 0x0

    #@bb
    const/4 v4, 0x0

    #@bc
    const/4 v5, -0x1

    #@bd
    .line 156
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@c0
    throw v1

    #@c1
    .line 108
    .end local v8    # "anchor$iterator":Ljava/util/Iterator;
    .restart local v12    # "firstCert":Ljava/security/cert/X509Certificate;
    .restart local v15    # "selector":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    :catch_1
    move-exception v11

    #@c2
    .local v11, "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method


# virtual methods
.method public engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;
    .locals 1

    #@0
    .prologue
    .line 57
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker;

    #@2
    invoke-direct {v0}, Lsun/security/provider/certpath/RevocationChecker;-><init>()V

    #@5
    return-object v0
.end method

.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 2
    .param p1, "cp"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    invoke-static {p1, p2}, Lsun/security/provider/certpath/PKIX;->checkParams(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@3
    move-result-object v0

    #@4
    .line 79
    .local v0, "valParams":Lsun/security/provider/certpath/PKIX$ValidatorParams;
    invoke-static {v0}, Lsun/security/provider/certpath/PKIXCertPathValidator;->validate(Lsun/security/provider/certpath/PKIX$ValidatorParams;)Ljava/security/cert/PKIXCertPathValidatorResult;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method
