.class public final Lsun/security/validator/PKIXValidator;
.super Lsun/security/validator/Validator;
.source "PKIXValidator.java"


# static fields
.field private static final TRY_VALIDATOR:Z = true

.field private static final checkTLSRevocation:Z


# instance fields
.field private certPathLength:I

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private final parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

.field private final plugin:Z

.field private final trustedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final trustedSubjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 61
    new-instance v0, Lsun/security/action/GetBooleanAction;

    #@2
    const-string/jumbo v1, "com.sun.net.ssl.checkRevocation"

    #@5
    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    #@8
    .line 60
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Boolean;

    #@e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@11
    move-result v0

    #@12
    .line 59
    sput-boolean v0, Lsun/security/validator/PKIXValidator;->checkTLSRevocation:Z

    #@14
    .line 52
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 9
    .param p1, "variant"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/cert/PKIXBuilderParameters;

    #@0
    .prologue
    .line 123
    const-string/jumbo v7, "PKIX"

    #@3
    invoke-direct {p0, v7, p1}, Lsun/security/validator/Validator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 68
    const/4 v7, -0x1

    #@7
    iput v7, p0, Lsun/security/validator/PKIXValidator;->certPathLength:I

    #@9
    .line 124
    new-instance v7, Ljava/util/HashSet;

    #@b
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    #@e
    iput-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    #@10
    .line 125
    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    #@13
    move-result-object v7

    #@14
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_1

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/security/cert/TrustAnchor;

    #@24
    .line 126
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@27
    move-result-object v2

    #@28
    .line 127
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    #@2a
    .line 128
    iget-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    #@2c
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_0

    #@30
    .line 131
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1
    iput-object p2, p0, Lsun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

    #@32
    .line 138
    new-instance v7, Ljava/util/HashMap;

    #@34
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@37
    iput-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    #@39
    .line 139
    iget-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    #@3b
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v3

    #@3f
    .local v3, "cert$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v7

    #@43
    if-eqz v7, :cond_3

    #@45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v2

    #@49
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@4b
    .line 140
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@4e
    move-result-object v4

    #@4f
    .line 142
    .local v4, "dn":Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    #@51
    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@54
    move-result v7

    #@55
    if-eqz v7, :cond_2

    #@57
    .line 143
    iget-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    #@59
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    move-result-object v6

    #@5d
    check-cast v6, Ljava/util/List;

    #@5f
    .line 148
    .local v6, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    :goto_2
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@62
    move-result-object v7

    #@63
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@66
    goto :goto_1

    #@67
    .line 145
    .end local v6    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    #@69
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@6c
    .line 146
    .restart local v6    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    iget-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    #@6e
    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    goto :goto_2

    #@72
    .line 151
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "dn":Ljavax/security/auth/x500/X500Principal;
    .end local v6    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    :cond_3
    :try_start_0
    const-string/jumbo v7, "X.509"

    #@75
    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@78
    move-result-object v7

    #@79
    iput-object v7, p0, Lsun/security/validator/PKIXValidator;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@7b
    .line 155
    const-string/jumbo v7, "plugin code signing"

    #@7e
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v7

    #@82
    iput-boolean v7, p0, Lsun/security/validator/PKIXValidator;->plugin:Z

    #@84
    .line 122
    return-void

    #@85
    .line 152
    :catch_0
    move-exception v5

    #@86
    .line 153
    .local v5, "e":Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/lang/RuntimeException;

    #@88
    const-string/jumbo v8, "Internal error"

    #@8b
    invoke-direct {v7, v8, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8e
    throw v7
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 10
    .param p1, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "trustedCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const/4 v8, 0x0

    #@1
    .line 77
    const-string/jumbo v7, "PKIX"

    #@4
    invoke-direct {p0, v7, p1}, Lsun/security/validator/Validator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 68
    const/4 v7, -0x1

    #@8
    iput v7, p0, Lsun/security/validator/PKIXValidator;->certPathLength:I

    #@a
    .line 78
    instance-of v7, p2, Ljava/util/Set;

    #@c
    if-eqz v7, :cond_0

    #@e
    move-object v7, p2

    #@f
    .line 79
    check-cast v7, Ljava/util/Set;

    #@11
    iput-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    #@13
    .line 83
    :goto_0
    new-instance v6, Ljava/util/HashSet;

    #@15
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@18
    .line 84
    .local v6, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v1

    #@1c
    .local v1, "cert$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v7

    #@20
    if-eqz v7, :cond_1

    #@22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@28
    .line 85
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v7, Ljava/security/cert/TrustAnchor;

    #@2a
    invoke-direct {v7, v0, v8}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@2d
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_1

    #@31
    .line 81
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "cert$iterator":Ljava/util/Iterator;
    .end local v6    # "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    #@33
    invoke-direct {v7, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@36
    iput-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    #@38
    goto :goto_0

    #@39
    .line 88
    .restart local v1    # "cert$iterator":Ljava/util/Iterator;
    .restart local v6    # "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :cond_1
    :try_start_0
    new-instance v7, Ljava/security/cert/PKIXBuilderParameters;

    #@3b
    const/4 v8, 0x0

    #@3c
    invoke-direct {v7, v6, v8}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V

    #@3f
    iput-object v7, p0, Lsun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 92
    invoke-direct {p0, p1}, Lsun/security/validator/PKIXValidator;->setDefaultParameters(Ljava/lang/String;)V

    #@44
    .line 99
    new-instance v7, Ljava/util/HashMap;

    #@46
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@49
    iput-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    #@4b
    .line 100
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4e
    move-result-object v1

    #@4f
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v7

    #@53
    if-eqz v7, :cond_3

    #@55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v0

    #@59
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@5b
    .line 101
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@5e
    move-result-object v2

    #@5f
    .line 103
    .local v2, "dn":Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    #@61
    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@64
    move-result v7

    #@65
    if-eqz v7, :cond_2

    #@67
    .line 104
    iget-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    #@69
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    move-result-object v5

    #@6d
    check-cast v5, Ljava/util/List;

    #@6f
    .line 109
    .local v5, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    :goto_3
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@72
    move-result-object v7

    #@73
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@76
    goto :goto_2

    #@77
    .line 89
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "dn":Ljavax/security/auth/x500/X500Principal;
    .end local v5    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    :catch_0
    move-exception v3

    #@78
    .line 90
    .local v3, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v7, Ljava/lang/RuntimeException;

    #@7a
    new-instance v8, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v9, "Unexpected error: "

    #@82
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v8

    #@86
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@89
    move-result-object v9

    #@8a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v8

    #@8e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v8

    #@92
    invoke-direct {v7, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@95
    throw v7

    #@96
    .line 106
    .end local v3    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v2    # "dn":Ljavax/security/auth/x500/X500Principal;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    #@98
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@9b
    .line 107
    .restart local v5    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    iget-object v7, p0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    #@9d
    invoke-interface {v7, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a0
    goto :goto_3

    #@a1
    .line 112
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "dn":Ljavax/security/auth/x500/X500Principal;
    .end local v5    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    :cond_3
    :try_start_1
    const-string/jumbo v7, "X.509"

    #@a4
    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@a7
    move-result-object v7

    #@a8
    iput-object v7, p0, Lsun/security/validator/PKIXValidator;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    #@aa
    .line 116
    const-string/jumbo v7, "plugin code signing"

    #@ad
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v7

    #@b1
    iput-boolean v7, p0, Lsun/security/validator/PKIXValidator;->plugin:Z

    #@b3
    .line 76
    return-void

    #@b4
    .line 113
    :catch_1
    move-exception v4

    #@b5
    .line 114
    .local v4, "e":Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/lang/RuntimeException;

    #@b7
    const-string/jumbo v8, "Internal error"

    #@ba
    invoke-direct {v7, v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@bd
    throw v7
.end method

.method private doBuild([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;
    .locals 9
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p3, "params"    # Ljava/security/cert/PKIXBuilderParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/PKIXBuilderParameters;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 360
    .local p2, "otherCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    invoke-direct {p0, p3}, Lsun/security/validator/PKIXValidator;->setDate(Ljava/security/cert/PKIXBuilderParameters;)V

    #@3
    .line 363
    new-instance v4, Ljava/security/cert/X509CertSelector;

    #@5
    invoke-direct {v4}, Ljava/security/cert/X509CertSelector;-><init>()V

    #@8
    .line 364
    .local v4, "selector":Ljava/security/cert/X509CertSelector;
    const/4 v6, 0x0

    #@9
    aget-object v6, p1, v6

    #@b
    invoke-virtual {v4, v6}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    #@e
    .line 365
    invoke-virtual {p3, v4}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    #@11
    .line 369
    new-instance v1, Ljava/util/ArrayList;

    #@13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@16
    .line 370
    .local v1, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@19
    move-result-object v6

    #@1a
    invoke-interface {v1, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    #@1d
    .line 371
    if-eqz p2, :cond_0

    #@1f
    .line 372
    invoke-interface {v1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    #@22
    .line 374
    :cond_0
    const-string/jumbo v6, "Collection"

    #@25
    .line 375
    new-instance v7, Ljava/security/cert/CollectionCertStoreParameters;

    #@27
    invoke-direct {v7, v1}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    #@2a
    .line 374
    invoke-static {v6, v7}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    #@2d
    move-result-object v5

    #@2e
    .line 376
    .local v5, "store":Ljava/security/cert/CertStore;
    invoke-virtual {p3, v5}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    #@31
    .line 379
    const-string/jumbo v6, "PKIX"

    #@34
    invoke-static {v6}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    #@37
    move-result-object v0

    #@38
    .line 381
    .local v0, "builder":Ljava/security/cert/CertPathBuilder;
    invoke-virtual {v0, p3}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    #@3b
    move-result-object v3

    #@3c
    check-cast v3, Ljava/security/cert/PKIXCertPathBuilderResult;

    #@3e
    .line 383
    .local v3, "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    invoke-virtual {v3}, Ljava/security/cert/PKIXCertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v3}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    #@45
    move-result-object v7

    #@46
    invoke-static {v6, v7}, Lsun/security/validator/PKIXValidator;->toArray(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;)[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    move-result-object v6

    #@4a
    return-object v6

    #@4b
    .line 384
    .end local v0    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v1    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    .end local v4    # "selector":Ljava/security/cert/X509CertSelector;
    .end local v5    # "store":Ljava/security/cert/CertStore;
    :catch_0
    move-exception v2

    #@4c
    .line 385
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v6, Lsun/security/validator/ValidatorException;

    #@4e
    .line 386
    new-instance v7, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v8, "PKIX path building failed: "

    #@56
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v7

    #@62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v7

    #@66
    .line 385
    invoke-direct {v6, v7, v2}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@69
    throw v6
.end method

.method private doValidate([Ljava/security/cert/X509Certificate;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "params"    # Ljava/security/cert/PKIXBuilderParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 339
    :try_start_0
    invoke-direct {p0, p2}, Lsun/security/validator/PKIXValidator;->setDate(Ljava/security/cert/PKIXBuilderParameters;)V

    #@3
    .line 342
    const-string/jumbo v4, "PKIX"

    #@6
    invoke-static {v4}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    #@9
    move-result-object v3

    #@a
    .line 343
    .local v3, "validator":Ljava/security/cert/CertPathValidator;
    iget-object v4, p0, Lsun/security/validator/PKIXValidator;->factory:Ljava/security/cert/CertificateFactory;

    #@c
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v4, v5}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    #@13
    move-result-object v1

    #@14
    .line 344
    .local v1, "path":Ljava/security/cert/CertPath;
    array-length v4, p1

    #@15
    iput v4, p0, Lsun/security/validator/PKIXValidator;->certPathLength:I

    #@17
    .line 346
    invoke-virtual {v3, v1, p2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Ljava/security/cert/PKIXCertPathValidatorResult;

    #@1d
    .line 348
    .local v2, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    invoke-virtual {v2}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    #@20
    move-result-object v4

    #@21
    invoke-static {v1, v4}, Lsun/security/validator/PKIXValidator;->toArray(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;)[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v4

    #@25
    return-object v4

    #@26
    .line 349
    .end local v1    # "path":Ljava/security/cert/CertPath;
    .end local v2    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .end local v3    # "validator":Ljava/security/cert/CertPathValidator;
    :catch_0
    move-exception v0

    #@27
    .line 350
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Lsun/security/validator/ValidatorException;

    #@29
    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v6, "PKIX path validation failed: "

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    .line 350
    invoke-direct {v4, v5, v0}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@44
    throw v4
.end method

.method private isSignatureValid(Ljava/util/List;Ljava/security/cert/X509Certificate;)Z
    .locals 5
    .param p2, "sub"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/PublicKey;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    const/4 v4, 0x1

    #@1
    .line 297
    iget-boolean v3, p0, Lsun/security/validator/PKIXValidator;->plugin:Z

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 298
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/security/PublicKey;

    #@15
    .line 300
    .local v1, "key":Ljava/security/PublicKey;
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 301
    return v4

    #@19
    .line 302
    :catch_0
    move-exception v0

    #@1a
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0

    #@1b
    .line 306
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "key":Ljava/security/PublicKey;
    :cond_0
    const/4 v3, 0x0

    #@1c
    return v3

    #@1d
    .line 308
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    return v4
.end method

.method private setDate(Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 1
    .param p1, "params"    # Ljava/security/cert/PKIXBuilderParameters;

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Lsun/security/validator/PKIXValidator;->validationDate:Ljava/util/Date;

    #@2
    .line 331
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_0

    #@4
    .line 332
    invoke-virtual {p1, v0}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    #@7
    .line 329
    :cond_0
    return-void
.end method

.method private setDefaultParameters(Ljava/lang/String;)V
    .locals 2
    .param p1, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 184
    const-string/jumbo v0, "tls server"

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 185
    const-string/jumbo v0, "tls client"

    #@8
    if-ne p1, v0, :cond_1

    #@a
    .line 186
    :cond_0
    iget-object v0, p0, Lsun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

    #@c
    sget-boolean v1, Lsun/security/validator/PKIXValidator;->checkTLSRevocation:Z

    #@e
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    #@11
    .line 183
    :goto_0
    return-void

    #@12
    .line 188
    :cond_1
    iget-object v0, p0, Lsun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    #@18
    goto :goto_0
.end method

.method private static toArray(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;)[Ljava/security/cert/X509Certificate;
    .locals 5
    .param p0, "path"    # Ljava/security/cert/CertPath;
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 314
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 315
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v3

    #@8
    add-int/lit8 v3, v3, 0x1

    #@a
    new-array v0, v3, [Ljava/security/cert/X509Certificate;

    #@c
    .line 316
    .local v0, "chain":[Ljava/security/cert/X509Certificate;
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f
    .line 317
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@12
    move-result-object v2

    #@13
    .line 318
    .local v2, "trustedCert":Ljava/security/cert/X509Certificate;
    if-nez v2, :cond_0

    #@15
    .line 319
    new-instance v3, Lsun/security/validator/ValidatorException;

    #@17
    .line 320
    const-string/jumbo v4, "TrustAnchor must be specified as certificate"

    #@1a
    .line 319
    invoke-direct {v3, v4}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v3

    #@1e
    .line 322
    :cond_0
    array-length v3, v0

    #@1f
    add-int/lit8 v3, v3, -0x1

    #@21
    aput-object v2, v0, v3

    #@23
    .line 323
    return-object v0
.end method


# virtual methods
.method engineValidate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    .locals 17
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p3, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p4, "parameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/AlgorithmConstraints;",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    .local p2, "otherCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    if-eqz p1, :cond_0

    #@2
    move-object/from16 v0, p1

    #@4
    array-length v14, v0

    #@5
    if-nez v14, :cond_1

    #@7
    .line 207
    :cond_0
    new-instance v14, Ljava/security/cert/CertificateException;

    #@9
    .line 208
    const-string/jumbo v15, "null or zero-length certificate chain"

    #@c
    .line 207
    invoke-direct {v14, v15}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v14

    #@10
    .line 213
    :cond_1
    move-object/from16 v0, p0

    #@12
    iget-object v14, v0, Lsun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

    #@14
    invoke-virtual {v14}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    #@17
    move-result-object v11

    #@18
    check-cast v11, Ljava/security/cert/PKIXBuilderParameters;

    #@1a
    .line 214
    .local v11, "pkixParameters":Ljava/security/cert/PKIXBuilderParameters;
    const/4 v3, 0x0

    #@1b
    .line 215
    .local v3, "algorithmChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    if-eqz p3, :cond_2

    #@1d
    .line 216
    new-instance v3, Lsun/security/provider/certpath/AlgorithmChecker;

    #@1f
    .end local v3    # "algorithmChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    move-object/from16 v0, p3

    #@21
    invoke-direct {v3, v0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/AlgorithmConstraints;)V

    #@24
    .line 217
    .local v3, "algorithmChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    invoke-virtual {v11, v3}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    #@27
    .line 223
    .end local v3    # "algorithmChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    :cond_2
    const/4 v12, 0x0

    #@28
    .line 224
    .local v12, "prevIssuer":Ljavax/security/auth/x500/X500Principal;
    const/4 v6, 0x0

    #@29
    .end local v12    # "prevIssuer":Ljavax/security/auth/x500/X500Principal;
    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p1

    #@2b
    array-length v14, v0

    #@2c
    if-ge v6, v14, :cond_8

    #@2e
    .line 225
    aget-object v4, p1, v6

    #@30
    .line 226
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@33
    move-result-object v5

    #@34
    .line 227
    .local v5, "dn":Ljavax/security/auth/x500/X500Principal;
    if-eqz v6, :cond_3

    #@36
    .line 228
    invoke-virtual {v5, v12}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v14

    #@3a
    if-eqz v14, :cond_5

    #@3c
    .line 239
    :cond_3
    move-object/from16 v0, p0

    #@3e
    iget-object v14, v0, Lsun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    #@40
    invoke-interface {v14, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@43
    move-result v14

    #@44
    if-nez v14, :cond_4

    #@46
    .line 240
    move-object/from16 v0, p0

    #@48
    iget-object v14, v0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    #@4a
    invoke-interface {v14, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@4d
    move-result v14

    #@4e
    if-eqz v14, :cond_7

    #@50
    .line 241
    move-object/from16 v0, p0

    #@52
    iget-object v14, v0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    #@54
    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    move-result-object v14

    #@58
    check-cast v14, Ljava/util/List;

    #@5a
    .line 242
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@5d
    move-result-object v15

    #@5e
    .line 241
    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@61
    move-result v14

    #@62
    .line 239
    if-eqz v14, :cond_7

    #@64
    .line 243
    :cond_4
    if-nez v6, :cond_6

    #@66
    .line 244
    const/4 v14, 0x1

    #@67
    new-array v14, v14, [Ljava/security/cert/X509Certificate;

    #@69
    const/4 v15, 0x0

    #@6a
    aget-object v15, p1, v15

    #@6c
    const/16 v16, 0x0

    #@6e
    aput-object v15, v14, v16

    #@70
    return-object v14

    #@71
    .line 230
    :cond_5
    move-object/from16 v0, p0

    #@73
    move-object/from16 v1, p1

    #@75
    move-object/from16 v2, p2

    #@77
    invoke-direct {v0, v1, v2, v11}, Lsun/security/validator/PKIXValidator;->doBuild([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;

    #@7a
    move-result-object v14

    #@7b
    return-object v14

    #@7c
    .line 247
    :cond_6
    new-array v10, v6, [Ljava/security/cert/X509Certificate;

    #@7e
    .line 248
    .local v10, "newChain":[Ljava/security/cert/X509Certificate;
    const/4 v14, 0x0

    #@7f
    const/4 v15, 0x0

    #@80
    move-object/from16 v0, p1

    #@82
    invoke-static {v0, v14, v10, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@85
    .line 249
    move-object/from16 v0, p0

    #@87
    invoke-direct {v0, v10, v11}, Lsun/security/validator/PKIXValidator;->doValidate([Ljava/security/cert/X509Certificate;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;

    #@8a
    move-result-object v14

    #@8b
    return-object v14

    #@8c
    .line 251
    .end local v10    # "newChain":[Ljava/security/cert/X509Certificate;
    :cond_7
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@8f
    move-result-object v12

    #@90
    .line 224
    .local v12, "prevIssuer":Ljavax/security/auth/x500/X500Principal;
    add-int/lit8 v6, v6, 0x1

    #@92
    goto :goto_0

    #@93
    .line 255
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "dn":Ljavax/security/auth/x500/X500Principal;
    .end local v12    # "prevIssuer":Ljavax/security/auth/x500/X500Principal;
    :cond_8
    move-object/from16 v0, p1

    #@95
    array-length v14, v0

    #@96
    add-int/lit8 v14, v14, -0x1

    #@98
    aget-object v9, p1, v14

    #@9a
    .line 256
    .local v9, "last":Ljava/security/cert/X509Certificate;
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@9d
    move-result-object v8

    #@9e
    .line 257
    .local v8, "issuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@a1
    move-result-object v13

    #@a2
    .line 258
    .local v13, "subject":Ljavax/security/auth/x500/X500Principal;
    move-object/from16 v0, p0

    #@a4
    iget-object v14, v0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    #@a6
    invoke-interface {v14, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@a9
    move-result v14

    #@aa
    if-eqz v14, :cond_9

    #@ac
    .line 259
    move-object/from16 v0, p0

    #@ae
    iget-object v14, v0, Lsun/security/validator/PKIXValidator;->trustedSubjects:Ljava/util/Map;

    #@b0
    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b3
    move-result-object v14

    #@b4
    check-cast v14, Ljava/util/List;

    #@b6
    move-object/from16 v0, p0

    #@b8
    invoke-direct {v0, v14, v9}, Lsun/security/validator/PKIXValidator;->isSignatureValid(Ljava/util/List;Ljava/security/cert/X509Certificate;)Z

    #@bb
    move-result v14

    #@bc
    .line 258
    if-eqz v14, :cond_9

    #@be
    .line 260
    move-object/from16 v0, p0

    #@c0
    move-object/from16 v1, p1

    #@c2
    invoke-direct {v0, v1, v11}, Lsun/security/validator/PKIXValidator;->doValidate([Ljava/security/cert/X509Certificate;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;

    #@c5
    move-result-object v14

    #@c6
    return-object v14

    #@c7
    .line 264
    :cond_9
    move-object/from16 v0, p0

    #@c9
    iget-boolean v14, v0, Lsun/security/validator/PKIXValidator;->plugin:Z

    #@cb
    if-eqz v14, :cond_b

    #@cd
    .line 268
    move-object/from16 v0, p1

    #@cf
    array-length v14, v0

    #@d0
    const/4 v15, 0x1

    #@d1
    if-le v14, v15, :cond_a

    #@d3
    .line 270
    move-object/from16 v0, p1

    #@d5
    array-length v14, v0

    #@d6
    add-int/lit8 v14, v14, -0x1

    #@d8
    new-array v10, v14, [Ljava/security/cert/X509Certificate;

    #@da
    .line 271
    .restart local v10    # "newChain":[Ljava/security/cert/X509Certificate;
    array-length v14, v10

    #@db
    const/4 v15, 0x0

    #@dc
    const/16 v16, 0x0

    #@de
    move-object/from16 v0, p1

    #@e0
    move/from16 v1, v16

    #@e2
    invoke-static {v0, v15, v10, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@e5
    .line 276
    :try_start_0
    new-instance v14, Ljava/security/cert/TrustAnchor;

    #@e7
    .line 277
    move-object/from16 v0, p1

    #@e9
    array-length v15, v0

    #@ea
    add-int/lit8 v15, v15, -0x1

    #@ec
    aget-object v15, p1, v15

    #@ee
    const/16 v16, 0x0

    #@f0
    .line 276
    invoke-direct/range {v14 .. v16}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@f3
    invoke-static {v14}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@f6
    move-result-object v14

    #@f7
    .line 275
    invoke-virtual {v11, v14}, Ljava/security/cert/PKIXParameters;->setTrustAnchors(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@fa
    .line 282
    move-object/from16 v0, p0

    #@fc
    invoke-direct {v0, v10, v11}, Lsun/security/validator/PKIXValidator;->doValidate([Ljava/security/cert/X509Certificate;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;

    #@ff
    .line 286
    .end local v10    # "newChain":[Ljava/security/cert/X509Certificate;
    :cond_a
    new-instance v14, Lsun/security/validator/ValidatorException;

    #@101
    .line 287
    sget-object v15, Lsun/security/validator/ValidatorException;->T_NO_TRUST_ANCHOR:Ljava/lang/Object;

    #@103
    .line 286
    invoke-direct {v14, v15}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;)V

    #@106
    throw v14

    #@107
    .line 278
    .restart local v10    # "newChain":[Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v7

    #@108
    .line 280
    .local v7, "iape":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v14, Ljava/security/cert/CertificateException;

    #@10a
    invoke-direct {v14, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@10d
    throw v14

    #@10e
    .line 292
    .end local v7    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .end local v10    # "newChain":[Ljava/security/cert/X509Certificate;
    :cond_b
    move-object/from16 v0, p0

    #@110
    move-object/from16 v1, p1

    #@112
    move-object/from16 v2, p2

    #@114
    invoke-direct {v0, v1, v2, v11}, Lsun/security/validator/PKIXValidator;->doBuild([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/cert/PKIXBuilderParameters;)[Ljava/security/cert/X509Certificate;

    #@117
    move-result-object v14

    #@118
    return-object v14
.end method

.method public getCertPathLength()I
    .locals 1

    #@0
    .prologue
    .line 176
    iget v0, p0, Lsun/security/validator/PKIXValidator;->certPathLength:I

    #@2
    return v0
.end method

.method public getParameters()Ljava/security/cert/PKIXBuilderParameters;
    .locals 1

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Lsun/security/validator/PKIXValidator;->parameterTemplate:Ljava/security/cert/PKIXBuilderParameters;

    #@2
    return-object v0
.end method

.method public getTrustedCertificates()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lsun/security/validator/PKIXValidator;->trustedCerts:Ljava/util/Set;

    #@2
    return-object v0
.end method
