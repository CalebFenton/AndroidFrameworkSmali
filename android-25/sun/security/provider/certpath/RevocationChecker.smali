.class Lsun/security/provider/certpath/RevocationChecker;
.super Ljava/security/cert/PKIXRevocationChecker;
.source "RevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/RevocationChecker$Mode;,
        Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;,
        Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    }
.end annotation


# static fields
.field private static final synthetic -java-security-cert-PKIXRevocationChecker$OptionSwitchesValues:[I = null

.field private static final synthetic -sun-security-provider-certpath-RevocationChecker$ModeSwitchesValues:[I = null

.field private static final ALL_REASONS:[Z

.field private static final CRL_SIGN_USAGE:[Z

.field private static final HEX_DIGITS:Ljava/lang/String; = "0123456789ABCDEFabcdef"

.field private static final MAX_CLOCK_SKEW:J = 0xdbba0L

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private anchor:Ljava/security/cert/TrustAnchor;

.field private certIndex:I

.field private certStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private crlDP:Z

.field private crlSignFlag:Z

.field private issuerCert:Ljava/security/cert/X509Certificate;

.field private legacy:Z

.field private mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

.field private ocspExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private ocspResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;"
        }
    .end annotation
.end field

.field private onlyEE:Z

.field private params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

.field private prevPubKey:Ljava/security/PublicKey;

.field private responderCert:Ljava/security/cert/X509Certificate;

.field private responderURI:Ljava/net/URI;

.field private softFail:Z

.field private softFailExceptions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/CertPathValidatorException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Lsun/security/util/Debug;
    .locals 1

    #@0
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@2
    return-object v0
.end method

.method private static synthetic -getjava-security-cert-PKIXRevocationChecker$OptionSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->-java-security-cert-PKIXRevocationChecker$OptionSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->-java-security-cert-PKIXRevocationChecker$OptionSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ljava/security/cert/PKIXRevocationChecker$Option;->values()[Ljava/security/cert/PKIXRevocationChecker$Option;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->-java-security-cert-PKIXRevocationChecker$OptionSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method private static synthetic -getsun-security-provider-certpath-RevocationChecker$ModeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->-sun-security-provider-certpath-RevocationChecker$ModeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->-sun-security-provider-certpath-RevocationChecker$ModeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker$Mode;->values()[Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->-sun-security-provider-certpath-RevocationChecker$ModeSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 53
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@9
    .line 793
    const/16 v0, 0x9

    #@b
    new-array v0, v0, [Z

    #@d
    fill-array-data v0, :array_0

    #@10
    .line 792
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    #@12
    .line 923
    const/4 v0, 0x7

    #@13
    new-array v0, v0, [Z

    #@15
    fill-array-data v0, :array_1

    #@18
    .line 922
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->CRL_SIGN_USAGE:[Z

    #@1a
    .line 51
    return-void

    #@1b
    .line 793
    nop

    #@1c
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    #@25
    .line 923
    nop

    #@26
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/security/cert/PKIXRevocationChecker;-><init>()V

    #@3
    .line 67
    new-instance v0, Ljava/util/LinkedList;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@8
    .line 66
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    #@a
    .line 76
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@c
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@e
    .line 89
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    #@11
    .line 88
    return-void
.end method

.method constructor <init>(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V
    .locals 1
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "params"    # Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/security/cert/PKIXRevocationChecker;-><init>()V

    #@3
    .line 67
    new-instance v0, Ljava/util/LinkedList;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@8
    .line 66
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    #@a
    .line 76
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@c
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@e
    .line 95
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    #@11
    .line 96
    invoke-virtual {p0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    #@14
    .line 93
    return-void
.end method

.method private buildToNewKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Set;)V
    .locals 39
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PublicKey;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 930
    .local p3, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 931
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@6
    const-string/jumbo v5, "RevocationChecker.buildToNewKey() starting work"

    #@9
    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@c
    .line 934
    :cond_0
    new-instance v23, Ljava/util/HashSet;

    #@e
    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    #@11
    .line 935
    .local v23, "badKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    if-eqz p2, :cond_1

    #@13
    .line 936
    move-object/from16 v0, v23

    #@15
    move-object/from16 v1, p2

    #@17
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1a
    .line 938
    :cond_1
    new-instance v27, Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;

    #@1c
    move-object/from16 v0, v27

    #@1e
    move-object/from16 v1, v23

    #@20
    invoke-direct {v0, v1}, Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;-><init>(Ljava/util/Set;)V

    #@23
    .line 939
    .local v27, "certSel":Ljava/security/cert/X509CertSelector;
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@26
    move-result-object v2

    #@27
    move-object/from16 v0, v27

    #@29
    invoke-virtual {v0, v2}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    #@2c
    .line 940
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->CRL_SIGN_USAGE:[Z

    #@2e
    move-object/from16 v0, v27

    #@30
    invoke-virtual {v0, v2}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    #@33
    .line 942
    move-object/from16 v0, p0

    #@35
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    #@37
    if-nez v2, :cond_6

    #@39
    .line 943
    move-object/from16 v0, p0

    #@3b
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@3d
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    #@40
    move-result-object v9

    #@41
    .line 948
    .local v9, "newAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :goto_0
    :try_start_0
    new-instance v25, Ljava/security/cert/PKIXBuilderParameters;

    #@43
    move-object/from16 v0, v25

    #@45
    move-object/from16 v1, v27

    #@47
    invoke-direct {v0, v9, v1}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a
    .line 952
    .local v25, "builderParams":Ljava/security/cert/PKIXBuilderParameters;
    move-object/from16 v0, p0

    #@4c
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@4e
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->initialPolicies()Ljava/util/Set;

    #@51
    move-result-object v2

    #@52
    move-object/from16 v0, v25

    #@54
    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setInitialPolicies(Ljava/util/Set;)V

    #@57
    .line 953
    move-object/from16 v0, p0

    #@59
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    #@5b
    move-object/from16 v0, v25

    #@5d
    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setCertStores(Ljava/util/List;)V

    #@60
    .line 955
    move-object/from16 v0, p0

    #@62
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@64
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    #@67
    move-result v2

    #@68
    .line 954
    move-object/from16 v0, v25

    #@6a
    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setExplicitPolicyRequired(Z)V

    #@6d
    .line 957
    move-object/from16 v0, p0

    #@6f
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@71
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyMappingInhibited()Z

    #@74
    move-result v2

    #@75
    .line 956
    move-object/from16 v0, v25

    #@77
    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setPolicyMappingInhibited(Z)V

    #@7a
    .line 958
    move-object/from16 v0, p0

    #@7c
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@7e
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anyPolicyInhibited()Z

    #@81
    move-result v2

    #@82
    move-object/from16 v0, v25

    #@84
    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setAnyPolicyInhibited(Z)V

    #@87
    .line 962
    move-object/from16 v0, p0

    #@89
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@8b
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    #@8e
    move-result-object v2

    #@8f
    move-object/from16 v0, v25

    #@91
    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    #@94
    .line 965
    move-object/from16 v0, p0

    #@96
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@98
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->getPKIXParameters()Ljava/security/cert/PKIXParameters;

    #@9b
    move-result-object v2

    #@9c
    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    #@9f
    move-result-object v2

    #@a0
    .line 964
    move-object/from16 v0, v25

    #@a2
    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    #@a5
    .line 966
    move-object/from16 v0, p0

    #@a7
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@a9
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    #@ac
    move-result-object v2

    #@ad
    move-object/from16 v0, v25

    #@af
    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setSigProvider(Ljava/lang/String;)V

    #@b2
    .line 971
    const/4 v2, 0x0

    #@b3
    move-object/from16 v0, v25

    #@b5
    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    #@b8
    .line 974
    sget-boolean v2, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    #@ba
    if-eqz v2, :cond_7

    #@bc
    .line 975
    const/16 v33, 0x0

    #@be
    .line 977
    .local v33, "currCertImpl":Lsun/security/x509/X509CertImpl;
    :try_start_1
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    #@c1
    move-result-object v33

    #@c2
    .line 985
    .end local v33    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    :cond_2
    :goto_1
    const/16 v22, 0x0

    #@c4
    .line 986
    .local v22, "aiaExt":Lsun/security/x509/AuthorityInfoAccessExtension;
    if-eqz v33, :cond_3

    #@c6
    .line 987
    invoke-virtual/range {v33 .. v33}, Lsun/security/x509/X509CertImpl;->getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;

    #@c9
    move-result-object v22

    #@ca
    .line 989
    .end local v22    # "aiaExt":Lsun/security/x509/AuthorityInfoAccessExtension;
    :cond_3
    if-eqz v22, :cond_7

    #@cc
    .line 990
    invoke-virtual/range {v22 .. v22}, Lsun/security/x509/AuthorityInfoAccessExtension;->getAccessDescriptions()Ljava/util/List;

    #@cf
    move-result-object v21

    #@d0
    .line 991
    .local v21, "adList":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    if-eqz v21, :cond_7

    #@d2
    .line 992
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d5
    move-result-object v20

    #@d6
    .local v20, "ad$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@d9
    move-result v2

    #@da
    if-eqz v2, :cond_7

    #@dc
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@df
    move-result-object v19

    #@e0
    check-cast v19, Lsun/security/x509/AccessDescription;

    #@e2
    .line 993
    .local v19, "ad":Lsun/security/x509/AccessDescription;
    invoke-static/range {v19 .. v19}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/x509/AccessDescription;)Ljava/security/cert/CertStore;

    #@e5
    move-result-object v32

    #@e6
    .line 994
    .local v32, "cs":Ljava/security/cert/CertStore;
    if-eqz v32, :cond_4

    #@e8
    .line 995
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@ea
    if-eqz v2, :cond_5

    #@ec
    .line 996
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@ee
    const-string/jumbo v5, "adding AIAext CertStore"

    #@f1
    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@f4
    .line 998
    :cond_5
    move-object/from16 v0, v25

    #@f6
    move-object/from16 v1, v32

    #@f8
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    #@fb
    goto :goto_2

    #@fc
    .line 944
    .end local v9    # "newAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v19    # "ad":Lsun/security/x509/AccessDescription;
    .end local v20    # "ad$iterator":Ljava/util/Iterator;
    .end local v21    # "adList":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    .end local v25    # "builderParams":Ljava/security/cert/PKIXBuilderParameters;
    .end local v32    # "cs":Ljava/security/cert/CertStore;
    :cond_6
    move-object/from16 v0, p0

    #@fe
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    #@100
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@103
    move-result-object v9

    #@104
    .restart local v9    # "newAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    goto/16 :goto_0

    #@106
    .line 949
    :catch_0
    move-exception v35

    #@107
    .line 950
    .local v35, "iape":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@109
    move-object/from16 v0, v35

    #@10b
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@10e
    throw v2

    #@10f
    .line 978
    .end local v35    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v25    # "builderParams":Ljava/security/cert/PKIXBuilderParameters;
    .restart local v33    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    :catch_1
    move-exception v26

    #@110
    .line 980
    .local v26, "ce":Ljava/security/cert/CertificateException;
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@112
    if-eqz v2, :cond_2

    #@114
    .line 981
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@116
    new-instance v5, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    const-string/jumbo v7, "RevocationChecker.buildToNewKey: error decoding cert: "

    #@11e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v5

    #@122
    move-object/from16 v0, v26

    #@124
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v5

    #@128
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12b
    move-result-object v5

    #@12c
    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@12f
    goto :goto_1

    #@130
    .line 1005
    .end local v26    # "ce":Ljava/security/cert/CertificateException;
    .end local v33    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    :cond_7
    const/16 v24, 0x0

    #@132
    .line 1007
    .local v24, "builder":Ljava/security/cert/CertPathBuilder;
    :try_start_2
    const-string/jumbo v2, "PKIX"

    #@135
    invoke-static {v2}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    #@138
    move-result-object v24

    #@139
    .local v24, "builder":Ljava/security/cert/CertPathBuilder;
    :goto_3
    move-object/from16 v37, p3

    #@13b
    .line 1013
    .end local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .local v37, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :goto_4
    :try_start_3
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@13d
    if-eqz v2, :cond_8

    #@13f
    .line 1014
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@141
    const-string/jumbo v5, "RevocationChecker.buildToNewKey() about to try build ..."

    #@144
    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@147
    .line 1018
    :cond_8
    invoke-virtual/range {v24 .. v25}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    #@14a
    move-result-object v30

    #@14b
    check-cast v30, Ljava/security/cert/PKIXCertPathBuilderResult;

    #@14d
    .line 1020
    .local v30, "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@14f
    if-eqz v2, :cond_9

    #@151
    .line 1021
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@153
    const-string/jumbo v5, "RevocationChecker.buildToNewKey() about to check revocation ..."

    #@156
    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@159
    .line 1026
    :cond_9
    if-nez v37, :cond_f

    #@15b
    .line 1027
    new-instance p3, Ljava/util/HashSet;

    #@15d
    invoke-direct/range {p3 .. p3}, Ljava/util/HashSet;-><init>()V
    :try_end_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_8

    #@160
    .line 1029
    .end local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :goto_5
    :try_start_4
    move-object/from16 v0, p3

    #@162
    move-object/from16 v1, p1

    #@164
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@167
    .line 1030
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    #@16a
    move-result-object v38

    #@16b
    .line 1031
    .local v38, "ta":Ljava/security/cert/TrustAnchor;
    invoke-virtual/range {v38 .. v38}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    #@16e
    move-result-object v4

    #@16f
    .line 1032
    .local v4, "prevKey2":Ljava/security/PublicKey;
    if-nez v4, :cond_a

    #@171
    .line 1033
    invoke-virtual/range {v38 .. v38}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@174
    move-result-object v2

    #@175
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@178
    move-result-object v4

    #@179
    .line 1035
    :cond_a
    const/4 v6, 0x1

    #@17a
    .line 1037
    .local v6, "signFlag":Z
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/PKIXCertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    #@17d
    move-result-object v2

    #@17e
    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_4 .. :try_end_4} :catch_6

    #@181
    move-result-object v28

    #@182
    .line 1039
    .local v28, "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    :try_start_5
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    #@185
    move-result v2

    #@186
    add-int/lit8 v34, v2, -0x1

    #@188
    .end local v6    # "signFlag":Z
    .local v34, "i":I
    :goto_6
    if-ltz v34, :cond_c

    #@18a
    .line 1040
    move-object/from16 v0, v28

    #@18c
    move/from16 v1, v34

    #@18e
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@191
    move-result-object v3

    #@192
    check-cast v3, Ljava/security/cert/X509Certificate;

    #@194
    .line 1042
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@196
    if-eqz v2, :cond_b

    #@198
    .line 1043
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@19a
    new-instance v5, Ljava/lang/StringBuilder;

    #@19c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@19f
    const-string/jumbo v7, "RevocationChecker.buildToNewKey() index "

    #@1a2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v5

    #@1a6
    move/from16 v0, v34

    #@1a8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v5

    #@1ac
    .line 1044
    const-string/jumbo v7, " checking "

    #@1af
    .line 1043
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v5

    #@1b3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v5

    #@1b7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ba
    move-result-object v5

    #@1bb
    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@1be
    .line 1047
    :cond_b
    const/4 v5, 0x0

    #@1bf
    const/4 v7, 0x1

    #@1c0
    move-object/from16 v2, p0

    #@1c2
    move-object/from16 v8, p3

    #@1c4
    invoke-direct/range {v2 .. v9}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V

    #@1c7
    .line 1049
    invoke-static {v3}, Lsun/security/provider/certpath/RevocationChecker;->certCanSignCrl(Ljava/security/cert/X509Certificate;)Z

    #@1ca
    move-result v6

    #@1cb
    .line 1050
    .local v6, "signFlag":Z
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_5 .. :try_end_5} :catch_6

    #@1ce
    move-result-object v4

    #@1cf
    .line 1039
    add-int/lit8 v34, v34, -0x1

    #@1d1
    goto :goto_6

    #@1d2
    .line 1008
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "prevKey2":Ljava/security/PublicKey;
    .end local v6    # "signFlag":Z
    .end local v28    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .end local v30    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .end local v34    # "i":I
    .end local v38    # "ta":Ljava/security/cert/TrustAnchor;
    .local v24, "builder":Ljava/security/cert/CertPathBuilder;
    :catch_2
    move-exception v36

    #@1d3
    .line 1009
    .local v36, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@1d5
    move-object/from16 v0, v36

    #@1d7
    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@1da
    throw v2

    #@1db
    .line 1052
    .end local v36    # "nsae":Ljava/security/NoSuchAlgorithmException;
    .restart local v4    # "prevKey2":Ljava/security/PublicKey;
    .local v24, "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v28    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .restart local v30    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .restart local v38    # "ta":Ljava/security/cert/TrustAnchor;
    :catch_3
    move-exception v31

    #@1dc
    .line 1054
    .local v31, "cpve":Ljava/security/cert/CertPathValidatorException;
    :try_start_6
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    #@1df
    move-result-object v2

    #@1e0
    move-object/from16 v0, v23

    #@1e2
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1e5
    move-object/from16 v37, p3

    #@1e7
    .line 1055
    .end local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    goto/16 :goto_4

    #@1e9
    .line 1058
    .end local v31    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v34    # "i":I
    .restart local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :cond_c
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@1eb
    if-eqz v2, :cond_d

    #@1ed
    .line 1059
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@1ef
    new-instance v5, Ljava/lang/StringBuilder;

    #@1f1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1f4
    const-string/jumbo v7, "RevocationChecker.buildToNewKey() got key "

    #@1f7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v5

    #@1fb
    .line 1060
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    #@1fe
    move-result-object v7

    #@1ff
    .line 1059
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@202
    move-result-object v5

    #@203
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@206
    move-result-object v5

    #@207
    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@20a
    .line 1066
    :cond_d
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;
    :try_end_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_6 .. :try_end_6} :catch_6

    #@20d
    move-result-object v12

    #@20e
    .line 1068
    .local v12, "newKey":Ljava/security/PublicKey;
    const/4 v2, 0x0

    #@20f
    :try_start_7
    move-object/from16 v0, v28

    #@211
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@214
    move-result-object v13

    #@215
    check-cast v13, Ljava/security/cert/X509Certificate;

    #@217
    .line 1069
    move-object/from16 v0, p0

    #@219
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@21b
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    #@21e
    move-result-object v17

    #@21f
    const/4 v14, 0x1

    #@220
    const/4 v15, 0x0

    #@221
    const/16 v16, 0x0

    #@223
    move-object/from16 v10, p0

    #@225
    move-object/from16 v11, p1

    #@227
    .line 1068
    invoke-direct/range {v10 .. v17}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V
    :try_end_7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_7 .. :try_end_7} :catch_6

    #@22a
    .line 1071
    return-void

    #@22b
    .line 1072
    :catch_4
    move-exception v31

    #@22c
    .line 1074
    .restart local v31    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :try_start_8
    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    #@22f
    move-result-object v2

    #@230
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@232
    if-ne v2, v5, :cond_e

    #@234
    .line 1075
    throw v31
    :try_end_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_8 .. :try_end_8} :catch_6

    #@235
    .line 1081
    .end local v4    # "prevKey2":Ljava/security/PublicKey;
    .end local v12    # "newKey":Ljava/security/PublicKey;
    .end local v28    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .end local v31    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v34    # "i":I
    .end local v38    # "ta":Ljava/security/cert/TrustAnchor;
    :catch_5
    move-exception v35

    #@236
    .line 1082
    .end local v30    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .restart local v35    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    :goto_7
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@238
    move-object/from16 v0, v35

    #@23a
    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@23d
    throw v2

    #@23e
    .line 1080
    .end local v35    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v4    # "prevKey2":Ljava/security/PublicKey;
    .restart local v12    # "newKey":Ljava/security/PublicKey;
    .restart local v28    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .restart local v30    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .restart local v31    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .restart local v34    # "i":I
    .restart local v38    # "ta":Ljava/security/cert/TrustAnchor;
    :cond_e
    :try_start_9
    move-object/from16 v0, v23

    #@240
    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_9 .. :try_end_9} :catch_6

    #@243
    goto/16 :goto_3

    #@245
    .line 1083
    .end local v4    # "prevKey2":Ljava/security/PublicKey;
    .end local v12    # "newKey":Ljava/security/PublicKey;
    .end local v28    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .end local v31    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v34    # "i":I
    .end local v38    # "ta":Ljava/security/cert/TrustAnchor;
    :catch_6
    move-exception v29

    #@246
    .line 1084
    .end local v30    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .local v29, "cpbe":Ljava/security/cert/CertPathBuilderException;
    :goto_8
    new-instance v13, Ljava/security/cert/CertPathValidatorException;

    #@248
    .line 1085
    const-string/jumbo v14, "Could not determine revocation status"

    #@24b
    .line 1086
    sget-object v18, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@24d
    .line 1085
    const/4 v15, 0x0

    #@24e
    const/16 v16, 0x0

    #@250
    .line 1086
    const/16 v17, -0x1

    #@252
    .line 1084
    invoke-direct/range {v13 .. v18}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@255
    throw v13

    #@256
    .line 1081
    .end local v29    # "cpbe":Ljava/security/cert/CertPathBuilderException;
    .end local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :catch_7
    move-exception v35

    #@257
    .restart local v35    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    move-object/from16 p3, v37

    #@259
    .end local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    goto :goto_7

    #@25a
    .line 1083
    .end local v35    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .end local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :catch_8
    move-exception v29

    #@25b
    .restart local v29    # "cpbe":Ljava/security/cert/CertPathBuilderException;
    move-object/from16 p3, v37

    #@25d
    .end local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    goto :goto_8

    #@25e
    .end local v29    # "cpbe":Ljava/security/cert/CertPathBuilderException;
    .end local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v30    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .restart local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :cond_f
    move-object/from16 p3, v37

    #@260
    .end local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    goto/16 :goto_5
.end method

.method static certCanSignCrl(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 773
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    #@3
    move-result-object v0

    #@4
    .line 774
    .local v0, "keyUsage":[Z
    if-eqz v0, :cond_0

    #@6
    .line 775
    const/4 v1, 0x6

    #@7
    aget-boolean v1, v0, v1

    #@9
    return v1

    #@a
    .line 777
    :cond_0
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method private check(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/PublicKey;Z)V
    .locals 10
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;
    .param p3, "pubKey"    # Ljava/security/PublicKey;
    .param p4, "crlSignFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/security/PublicKey;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 347
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :try_start_0
    iget-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->onlyEE:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    #@7
    move-result v0

    #@8
    const/4 v1, -0x1

    #@9
    if-eq v0, v1, :cond_1

    #@b
    .line 348
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 349
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@11
    const-string/jumbo v1, "Skipping revocation check, not end entity cert"

    #@14
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 414
    :cond_0
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    #@1a
    .line 352
    return-void

    #@1b
    .line 354
    :cond_1
    :try_start_1
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-getsun-security-provider-certpath-RevocationChecker$ModeSwitchesValues()[I

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@24
    move-result v1

    #@25
    aget v0, v0, v1
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    packed-switch v0, :pswitch_data_0

    #@2a
    .line 414
    :goto_0
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    #@2d
    .line 344
    :goto_1
    return-void

    #@2e
    .line 357
    :pswitch_0
    :try_start_2
    invoke-direct {p0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->checkOCSP(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 365
    :catch_0
    move-exception v7

    #@33
    .line 366
    .local v7, "e":Ljava/security/cert/CertPathValidatorException;
    :try_start_3
    invoke-virtual {v7}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    #@36
    move-result-object v0

    #@37
    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@39
    if-ne v0, v1, :cond_2

    #@3b
    .line 367
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3c
    .line 413
    .end local v7    # "e":Ljava/security/cert/CertPathValidatorException;
    :catchall_0
    move-exception v0

    #@3d
    .line 414
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    #@40
    .line 413
    throw v0

    #@41
    .line 361
    :pswitch_1
    const/4 v3, 0x0

    #@42
    move-object v0, p0

    #@43
    move-object v1, p1

    #@44
    move-object v2, p2

    #@45
    move-object v4, p3

    #@46
    move v5, p4

    #@47
    :try_start_4
    invoke-direct/range {v0 .. v5}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Set;Ljava/security/PublicKey;Z)V
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .line 369
    .restart local v7    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_2
    :try_start_5
    invoke-direct {p0, v7}, Lsun/security/provider/certpath/RevocationChecker;->isSoftFailException(Ljava/security/cert/CertPathValidatorException;)Z

    #@4e
    move-result v8

    #@4f
    .line 370
    .local v8, "eSoftFail":Z
    if-eqz v8, :cond_4

    #@51
    .line 371
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@53
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@55
    if-eq v0, v1, :cond_3

    #@57
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@59
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@5b
    if-ne v0, v1, :cond_6

    #@5d
    .line 414
    :cond_3
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    #@60
    .line 372
    return-void

    #@61
    .line 375
    :cond_4
    :try_start_6
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@63
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@65
    if-eq v0, v1, :cond_5

    #@67
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@69
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@6b
    if-ne v0, v1, :cond_6

    #@6d
    .line 376
    :cond_5
    throw v7

    #@6e
    .line 379
    :cond_6
    move-object v6, v7

    #@6f
    .line 381
    .local v6, "cause":Ljava/security/cert/CertPathValidatorException;
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@71
    if-eqz v0, :cond_7

    #@73
    .line 382
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@75
    new-instance v1, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v2, "RevocationChecker.check() "

    #@7d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@90
    .line 383
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@92
    const-string/jumbo v1, "RevocationChecker.check() preparing to failover"

    #@95
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@98
    .line 386
    :cond_7
    :try_start_7
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-getsun-security-provider-certpath-RevocationChecker$ModeSwitchesValues()[I

    #@9b
    move-result-object v0

    #@9c
    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@9e
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@a1
    move-result v1

    #@a2
    aget v0, v0, v1
    :try_end_7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@a4
    packed-switch v0, :pswitch_data_1

    #@a7
    .line 414
    :cond_8
    :goto_2
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    #@aa
    goto :goto_1

    #@ab
    .line 388
    :pswitch_2
    const/4 v3, 0x0

    #@ac
    move-object v0, p0

    #@ad
    move-object v1, p1

    #@ae
    move-object v2, p2

    #@af
    move-object v4, p3

    #@b0
    move v5, p4

    #@b1
    :try_start_8
    invoke-direct/range {v0 .. v5}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Set;Ljava/security/PublicKey;Z)V
    :try_end_8
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@b4
    goto :goto_2

    #@b5
    .line 395
    :catch_1
    move-exception v9

    #@b6
    .line 396
    .local v9, "x":Ljava/security/cert/CertPathValidatorException;
    :try_start_9
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@b8
    if-eqz v0, :cond_9

    #@ba
    .line 397
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@bc
    const-string/jumbo v1, "RevocationChecker.check() failover failed"

    #@bf
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@c2
    .line 398
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@c4
    new-instance v1, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    const-string/jumbo v2, "RevocationChecker.check() "

    #@cc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v1

    #@d0
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@d3
    move-result-object v2

    #@d4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v1

    #@d8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v1

    #@dc
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@df
    .line 400
    :cond_9
    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    #@e2
    move-result-object v0

    #@e3
    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@e5
    if-ne v0, v1, :cond_a

    #@e7
    .line 401
    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@e8
    .line 392
    .end local v9    # "x":Ljava/security/cert/CertPathValidatorException;
    :pswitch_3
    :try_start_a
    invoke-direct {p0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->checkOCSP(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)V
    :try_end_a
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@eb
    goto :goto_2

    #@ec
    .line 403
    .restart local v9    # "x":Ljava/security/cert/CertPathValidatorException;
    :cond_a
    :try_start_b
    invoke-direct {p0, v9}, Lsun/security/provider/certpath/RevocationChecker;->isSoftFailException(Ljava/security/cert/CertPathValidatorException;)Z

    #@ef
    move-result v0

    #@f0
    if-nez v0, :cond_b

    #@f2
    .line 404
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@f5
    .line 405
    throw v7

    #@f6
    .line 408
    :cond_b
    if-nez v8, :cond_8

    #@f8
    .line 409
    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@f9
    .line 354
    nop

    #@fa
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    #@106
    .line 386
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private checkApprovedCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
    .locals 16
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 605
    .local p2, "approvedCRLs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 606
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@7
    move-result-object v14

    #@8
    .line 607
    .local v14, "sn":Ljava/math/BigInteger;
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@a
    const-string/jumbo v2, "RevocationChecker.checkApprovedCRLs() starting the final sweep..."

    #@d
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@10
    .line 609
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "RevocationChecker.checkApprovedCRLs() cert SN: "

    #@1a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    .line 610
    invoke-virtual {v14}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 609
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@2d
    .line 613
    .end local v14    # "sn":Ljava/math/BigInteger;
    :cond_0
    sget-object v12, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    #@2f
    .line 614
    .local v12, "reasonCode":Ljava/security/cert/CRLReason;
    const/4 v11, 0x0

    #@30
    .line 615
    .local v11, "entry":Lsun/security/x509/X509CRLEntryImpl;
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v9

    #@34
    .end local v11    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .local v9, "crl$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_6

    #@3a
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v8

    #@3e
    check-cast v8, Ljava/security/cert/X509CRL;

    #@40
    .line 616
    .local v8, "crl":Ljava/security/cert/X509CRL;
    move-object/from16 v0, p1

    #@42
    invoke-virtual {v8, v0}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;

    #@45
    move-result-object v10

    #@46
    .line 617
    .local v10, "e":Ljava/security/cert/X509CRLEntry;
    if-eqz v10, :cond_1

    #@48
    .line 619
    :try_start_0
    invoke-static {v10}, Lsun/security/x509/X509CRLEntryImpl;->toImpl(Ljava/security/cert/X509CRLEntry;)Lsun/security/x509/X509CRLEntryImpl;
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    move-result-object v11

    #@4c
    .line 623
    .local v11, "entry":Lsun/security/x509/X509CRLEntryImpl;
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@4e
    if-eqz v1, :cond_2

    #@50
    .line 624
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@52
    new-instance v2, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v4, "RevocationChecker.checkApprovedCRLs() CRL entry: "

    #@5a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    .line 625
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->toString()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    .line 624
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@6d
    .line 633
    :cond_2
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@70
    move-result-object v15

    #@71
    .line 634
    .local v15, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v15, :cond_3

    #@73
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    #@76
    move-result v1

    #@77
    if-eqz v1, :cond_5

    #@79
    .line 645
    :cond_3
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getRevocationReason()Ljava/security/cert/CRLReason;

    #@7c
    move-result-object v12

    #@7d
    .line 646
    if-nez v12, :cond_4

    #@7f
    .line 647
    sget-object v12, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    #@81
    .line 649
    :cond_4
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getRevocationDate()Ljava/util/Date;

    #@84
    move-result-object v13

    #@85
    .line 650
    .local v13, "revocationDate":Ljava/util/Date;
    move-object/from16 v0, p0

    #@87
    iget-object v1, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@89
    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v13, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@90
    move-result v1

    #@91
    if-eqz v1, :cond_1

    #@93
    .line 651
    new-instance v3, Ljava/security/cert/CertificateRevokedException;

    #@95
    .line 653
    invoke-virtual {v8}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@98
    move-result-object v1

    #@99
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getExtensions()Ljava/util/Map;

    #@9c
    move-result-object v2

    #@9d
    .line 651
    invoke-direct {v3, v13, v12, v1, v2}, Ljava/security/cert/CertificateRevokedException;-><init>(Ljava/util/Date;Ljava/security/cert/CRLReason;Ljavax/security/auth/x500/X500Principal;Ljava/util/Map;)V

    #@a0
    .line 654
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@a2
    .line 655
    invoke-virtual {v3}, Ljava/security/cert/CertificateRevokedException;->getMessage()Ljava/lang/String;

    #@a5
    move-result-object v2

    #@a6
    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@a8
    const/4 v4, 0x0

    #@a9
    const/4 v5, -0x1

    #@aa
    .line 654
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@ad
    throw v1

    #@ae
    .line 620
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v11    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .end local v13    # "revocationDate":Ljava/util/Date;
    .end local v15    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    #@af
    .line 621
    .local v7, "ce":Ljava/security/cert/CRLException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@b1
    invoke-direct {v1, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@b4
    throw v1

    #@b5
    .line 636
    .end local v7    # "ce":Ljava/security/cert/CRLException;
    .restart local v11    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .restart local v15    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    #@b7
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@ba
    move-result-object v1

    #@bb
    invoke-interface {v15, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@be
    .line 637
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    #@c0
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@c3
    move-result-object v1

    #@c4
    invoke-interface {v15, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@c7
    .line 638
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    #@ca
    move-result v1

    #@cb
    if-nez v1, :cond_3

    #@cd
    .line 639
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@cf
    .line 640
    const-string/jumbo v2, "Unrecognized critical extension(s) in revoked CRL entry"

    #@d2
    .line 639
    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@d5
    throw v1

    #@d6
    .line 602
    .end local v8    # "crl":Ljava/security/cert/X509CRL;
    .end local v10    # "e":Ljava/security/cert/X509CRLEntry;
    .end local v11    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .end local v15    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    return-void
.end method

.method private checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V
    .locals 33
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .param p3, "prevCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "signFlag"    # Z
    .param p5, "allowSeparateKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PublicKey;",
            "Ljava/security/cert/X509Certificate;",
            "ZZ",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 470
    .local p6, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .local p7, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@2
    if-eqz v7, :cond_0

    #@4
    .line 471
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@6
    const-string/jumbo v9, "RevocationChecker.checkCRLs() ---checking revocation status ..."

    #@9
    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@c
    .line 478
    :cond_0
    if-eqz p6, :cond_2

    #@e
    move-object/from16 v0, p6

    #@10
    move-object/from16 v1, p1

    #@12
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_2

    #@18
    .line 479
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@1a
    if-eqz v7, :cond_1

    #@1c
    .line 480
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@1e
    const-string/jumbo v9, "RevocationChecker.checkCRLs() circular dependency"

    #@21
    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@24
    .line 483
    :cond_1
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    #@26
    .line 484
    const-string/jumbo v7, "Could not determine revocation status"

    #@29
    .line 485
    sget-object v11, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@2b
    .line 484
    const/4 v8, 0x0

    #@2c
    const/4 v9, 0x0

    #@2d
    const/4 v10, -0x1

    #@2e
    .line 483
    invoke-direct/range {v6 .. v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@31
    throw v6

    #@32
    .line 488
    :cond_2
    new-instance v29, Ljava/util/HashSet;

    #@34
    invoke-direct/range {v29 .. v29}, Ljava/util/HashSet;-><init>()V

    #@37
    .line 489
    .local v29, "possibleCRLs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    new-instance v24, Ljava/util/HashSet;

    #@39
    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    #@3c
    .line 490
    .local v24, "approvedCRLs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    new-instance v30, Ljava/security/cert/X509CRLSelector;

    #@3e
    invoke-direct/range {v30 .. v30}, Ljava/security/cert/X509CRLSelector;-><init>()V

    #@41
    .line 491
    .local v30, "sel":Ljava/security/cert/X509CRLSelector;
    move-object/from16 v0, v30

    #@43
    move-object/from16 v1, p1

    #@45
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    #@48
    .line 492
    move-object/from16 v0, p0

    #@4a
    iget-object v7, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@4c
    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    #@4f
    move-result-object v7

    #@50
    const-wide/32 v10, 0xdbba0

    #@53
    move-object/from16 v0, v30

    #@55
    invoke-static {v0, v7, v10, v11}, Lsun/security/provider/certpath/CertPathHelper;->setDateAndTime(Ljava/security/cert/X509CRLSelector;Ljava/util/Date;J)V

    #@58
    .line 495
    const/4 v6, 0x0

    #@59
    .line 496
    .local v6, "networkFailureException":Ljava/security/cert/CertPathValidatorException;
    move-object/from16 v0, p0

    #@5b
    iget-object v7, v0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    #@5d
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@60
    move-result-object v32

    #@61
    .end local v6    # "networkFailureException":Ljava/security/cert/CertPathValidatorException;
    .local v32, "store$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    #@64
    move-result v7

    #@65
    if-eqz v7, :cond_5

    #@67
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6a
    move-result-object v31

    #@6b
    check-cast v31, Ljava/security/cert/CertStore;

    #@6d
    .line 498
    .local v31, "store":Ljava/security/cert/CertStore;
    :try_start_0
    move-object/from16 v0, v31

    #@6f
    move-object/from16 v1, v30

    #@71
    invoke-virtual {v0, v1}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    #@74
    move-result-object v7

    #@75
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@78
    move-result-object v27

    #@79
    .local v27, "crl$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    #@7c
    move-result v7

    #@7d
    if-eqz v7, :cond_3

    #@7f
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@82
    move-result-object v26

    #@83
    check-cast v26, Ljava/security/cert/CRL;

    #@85
    .line 499
    .local v26, "crl":Ljava/security/cert/CRL;
    check-cast v26, Ljava/security/cert/X509CRL;

    #@87
    .end local v26    # "crl":Ljava/security/cert/CRL;
    move-object/from16 v0, v29

    #@89
    move-object/from16 v1, v26

    #@8b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@8e
    goto :goto_1

    #@8f
    .line 501
    .end local v27    # "crl$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v8

    #@90
    .line 502
    .local v8, "e":Ljava/security/cert/CertStoreException;
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@92
    if-eqz v7, :cond_4

    #@94
    .line 503
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@96
    new-instance v9, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v10, "RevocationChecker.checkCRLs() CertStoreException: "

    #@9e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v9

    #@a2
    .line 504
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@a5
    move-result-object v10

    #@a6
    .line 503
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v9

    #@aa
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v9

    #@ae
    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@b1
    .line 506
    :cond_4
    if-nez v6, :cond_3

    #@b3
    .line 507
    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/CertStore;->getType()Ljava/lang/String;

    #@b6
    move-result-object v7

    #@b7
    invoke-static {v7, v8}, Lsun/security/provider/certpath/CertStoreHelper;->isCausedByNetworkIssue(Ljava/lang/String;Ljava/security/cert/CertStoreException;)Z

    #@ba
    move-result v7

    #@bb
    .line 506
    if-eqz v7, :cond_3

    #@bd
    .line 509
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    #@bf
    .line 510
    const-string/jumbo v7, "Unable to determine revocation status due to network error"

    #@c2
    .line 512
    sget-object v11, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@c4
    .line 511
    const/4 v9, 0x0

    #@c5
    const/4 v10, -0x1

    #@c6
    .line 509
    invoke-direct/range {v6 .. v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@c9
    .local v6, "networkFailureException":Ljava/security/cert/CertPathValidatorException;
    goto :goto_0

    #@ca
    .line 517
    .end local v6    # "networkFailureException":Ljava/security/cert/CertPathValidatorException;
    .end local v8    # "e":Ljava/security/cert/CertStoreException;
    .end local v31    # "store":Ljava/security/cert/CertStore;
    :cond_5
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@cc
    if-eqz v7, :cond_6

    #@ce
    .line 518
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@d0
    new-instance v9, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    const-string/jumbo v10, "RevocationChecker.checkCRLs() possible crls.size() = "

    #@d8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v9

    #@dc
    .line 519
    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->size()I

    #@df
    move-result v10

    #@e0
    .line 518
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v9

    #@e4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v9

    #@e8
    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@eb
    .line 521
    :cond_6
    const/16 v7, 0x9

    #@ed
    new-array v14, v7, [Z

    #@ef
    .line 522
    .local v14, "reasonsMask":[Z
    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->isEmpty()Z

    #@f2
    move-result v7

    #@f3
    if-nez v7, :cond_7

    #@f5
    move-object/from16 v9, p0

    #@f7
    move-object/from16 v10, v29

    #@f9
    move-object/from16 v11, p1

    #@fb
    move-object/from16 v12, p2

    #@fd
    move/from16 v13, p4

    #@ff
    move-object/from16 v15, p7

    #@101
    .line 525
    invoke-direct/range {v9 .. v15}, Lsun/security/provider/certpath/RevocationChecker;->verifyPossibleCRLs(Ljava/util/Set;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Z[ZLjava/util/Set;)Ljava/util/Collection;

    #@104
    move-result-object v7

    #@105
    move-object/from16 v0, v24

    #@107
    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@10a
    .line 530
    :cond_7
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@10c
    if-eqz v7, :cond_8

    #@10e
    .line 531
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@110
    new-instance v9, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string/jumbo v10, "RevocationChecker.checkCRLs() approved crls.size() = "

    #@118
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v9

    #@11c
    .line 532
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->size()I

    #@11f
    move-result v10

    #@120
    .line 531
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@123
    move-result-object v9

    #@124
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v9

    #@128
    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@12b
    .line 537
    :cond_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    #@12e
    move-result v7

    #@12f
    if-nez v7, :cond_9

    #@131
    .line 538
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    #@133
    invoke-static {v14, v7}, Ljava/util/Arrays;->equals([Z[Z)Z

    #@136
    move-result v7

    #@137
    .line 537
    if-eqz v7, :cond_9

    #@139
    .line 540
    move-object/from16 v0, p0

    #@13b
    move-object/from16 v1, p1

    #@13d
    move-object/from16 v2, v24

    #@13f
    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/RevocationChecker;->checkApprovedCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    #@142
    .line 468
    :goto_2
    return-void

    #@143
    .line 545
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    #@145
    iget-boolean v7, v0, Lsun/security/provider/certpath/RevocationChecker;->crlDP:Z

    #@147
    if-eqz v7, :cond_a

    #@149
    .line 548
    move-object/from16 v0, p0

    #@14b
    iget-object v7, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@14d
    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    #@150
    move-result-object v19

    #@151
    move-object/from16 v0, p0

    #@153
    iget-object v0, v0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    #@155
    move-object/from16 v20, v0

    #@157
    .line 549
    const/16 v23, 0x0

    #@159
    move-object/from16 v15, v30

    #@15b
    move/from16 v16, p4

    #@15d
    move-object/from16 v17, p2

    #@15f
    move-object/from16 v18, p3

    #@161
    move-object/from16 v21, v14

    #@163
    move-object/from16 v22, p7

    #@165
    .line 546
    invoke-static/range {v15 .. v23}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;

    #@168
    move-result-object v7

    #@169
    move-object/from16 v0, v24

    #@16b
    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    #@16e
    .line 564
    :cond_a
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    #@171
    move-result v7

    #@172
    if-nez v7, :cond_c

    #@174
    .line 565
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    #@176
    invoke-static {v14, v7}, Ljava/util/Arrays;->equals([Z[Z)Z

    #@179
    move-result v7

    #@17a
    .line 564
    if-eqz v7, :cond_c

    #@17c
    .line 567
    move-object/from16 v0, p0

    #@17e
    move-object/from16 v1, p1

    #@180
    move-object/from16 v2, v24

    #@182
    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/RevocationChecker;->checkApprovedCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    #@185
    goto :goto_2

    #@186
    .line 551
    :catch_1
    move-exception v8

    #@187
    .line 552
    .restart local v8    # "e":Ljava/security/cert/CertStoreException;
    instance-of v7, v8, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    #@189
    if-eqz v7, :cond_b

    #@18b
    move-object/from16 v28, v8

    #@18d
    .line 553
    nop

    #@18e
    nop

    #@18f
    .line 554
    .local v28, "cste":Lsun/security/provider/certpath/PKIX$CertStoreTypeException;
    invoke-virtual/range {v28 .. v28}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;->getType()Ljava/lang/String;

    #@192
    move-result-object v7

    #@193
    invoke-static {v7, v8}, Lsun/security/provider/certpath/CertStoreHelper;->isCausedByNetworkIssue(Ljava/lang/String;Ljava/security/cert/CertStoreException;)Z

    #@196
    move-result v7

    #@197
    if-eqz v7, :cond_b

    #@199
    .line 556
    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    #@19b
    .line 557
    const-string/jumbo v16, "Unable to determine revocation status due to network error"

    #@19e
    .line 559
    sget-object v20, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@1a0
    .line 558
    const/16 v18, 0x0

    #@1a2
    const/16 v19, -0x1

    #@1a4
    move-object/from16 v17, v8

    #@1a6
    .line 556
    invoke-direct/range {v15 .. v20}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@1a9
    throw v15

    #@1aa
    .line 562
    .end local v28    # "cste":Lsun/security/provider/certpath/PKIX$CertStoreTypeException;
    :cond_b
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    #@1ac
    invoke-direct {v7, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@1af
    throw v7

    #@1b0
    .line 569
    .end local v8    # "e":Ljava/security/cert/CertStoreException;
    :cond_c
    if-eqz p5, :cond_e

    #@1b2
    .line 571
    :try_start_2
    move-object/from16 v0, p0

    #@1b4
    move-object/from16 v1, p1

    #@1b6
    move-object/from16 v2, p2

    #@1b8
    move/from16 v3, p4

    #@1ba
    move-object/from16 v4, p6

    #@1bc
    invoke-direct {v0, v1, v2, v3, v4}, Lsun/security/provider/certpath/RevocationChecker;->verifyWithSeparateSigningKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;ZLjava/util/Set;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    #@1bf
    .line 573
    return-void

    #@1c0
    .line 574
    :catch_2
    move-exception v25

    #@1c1
    .line 575
    .local v25, "cpve":Ljava/security/cert/CertPathValidatorException;
    if-eqz v6, :cond_d

    #@1c3
    .line 580
    throw v6

    #@1c4
    .line 582
    :cond_d
    throw v25

    #@1c5
    .line 585
    .end local v25    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :cond_e
    if-eqz v6, :cond_f

    #@1c7
    .line 590
    throw v6

    #@1c8
    .line 592
    :cond_f
    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    #@1ca
    .line 593
    const-string/jumbo v16, "Could not determine revocation status"

    #@1cd
    .line 594
    sget-object v20, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@1cf
    .line 593
    const/16 v17, 0x0

    #@1d1
    const/16 v18, 0x0

    #@1d3
    const/16 v19, -0x1

    #@1d5
    .line 592
    invoke-direct/range {v15 .. v20}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@1d8
    throw v15
.end method

.method private checkCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Set;Ljava/security/PublicKey;Z)V
    .locals 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p4, "pubKey"    # Ljava/security/PublicKey;
    .param p5, "signFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/PublicKey;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 460
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@2
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    #@5
    move-result-object v7

    #@6
    .line 459
    const/4 v3, 0x0

    #@7
    const/4 v5, 0x1

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move-object v2, p4

    #@b
    move v4, p5

    #@c
    move-object v6, p3

    #@d
    invoke-direct/range {v0 .. v7}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V

    #@10
    .line 457
    return-void
.end method

.method private checkOCSP(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)V
    .locals 32
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 665
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v25, 0x0

    #@2
    .line 667
    .local v25, "currCert":Lsun/security/x509/X509CertImpl;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v25

    #@6
    .line 676
    .local v25, "currCert":Lsun/security/x509/X509CertImpl;
    const/16 v28, 0x0

    #@8
    .line 677
    .local v28, "response":Lsun/security/provider/certpath/OCSPResponse;
    const/16 v22, 0x0

    #@a
    .line 679
    .local v22, "certId":Lsun/security/provider/certpath/CertId;
    :try_start_1
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    #@e
    if-eqz v2, :cond_2

    #@10
    .line 680
    new-instance v23, Lsun/security/provider/certpath/CertId;

    #@12
    move-object/from16 v0, p0

    #@14
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    #@16
    .line 681
    invoke-virtual/range {v25 .. v25}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    #@19
    move-result-object v3

    #@1a
    .line 680
    move-object/from16 v0, v23

    #@1c
    invoke-direct {v0, v2, v3}, Lsun/security/provider/certpath/CertId;-><init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V

    #@1f
    .local v23, "certId":Lsun/security/provider/certpath/CertId;
    move-object/from16 v22, v23

    #@21
    .line 689
    .end local v23    # "certId":Lsun/security/provider/certpath/CertId;
    .local v22, "certId":Lsun/security/provider/certpath/CertId;
    :goto_0
    move-object/from16 v0, p0

    #@23
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->ocspResponses:Ljava/util/Map;

    #@25
    move-object/from16 v0, p1

    #@27
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v29

    #@2b
    check-cast v29, [B

    #@2d
    .line 690
    .local v29, "responseBytes":[B
    if-eqz v29, :cond_4

    #@2f
    .line 691
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@31
    if-eqz v2, :cond_0

    #@33
    .line 692
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@35
    const-string/jumbo v3, "Found cached OCSP response"

    #@38
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3b
    .line 694
    :cond_0
    new-instance v1, Lsun/security/provider/certpath/OCSPResponse;

    #@3d
    move-object/from16 v0, v29

    #@3f
    invoke-direct {v1, v0}, Lsun/security/provider/certpath/OCSPResponse;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@42
    .line 697
    .local v1, "response":Lsun/security/provider/certpath/OCSPResponse;
    const/4 v6, 0x0

    #@43
    .line 698
    .local v6, "nonce":[B
    :try_start_2
    move-object/from16 v0, p0

    #@45
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->ocspExtensions:Ljava/util/List;

    #@47
    .end local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object v27

    #@4b
    .end local v6    # "nonce":[B
    .local v27, "ext$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_3

    #@51
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v26

    #@55
    check-cast v26, Ljava/security/cert/Extension;

    #@57
    .line 699
    .local v26, "ext":Ljava/security/cert/Extension;
    invoke-interface/range {v26 .. v26}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    const-string/jumbo v3, "1.3.6.1.5.5.7.48.1.2"

    #@5e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v2

    #@62
    if-eqz v2, :cond_1

    #@64
    .line 700
    invoke-interface/range {v26 .. v26}, Ljava/security/cert/Extension;->getValue()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@67
    move-result-object v6

    #@68
    .local v6, "nonce":[B
    goto :goto_1

    #@69
    .line 668
    .end local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .end local v6    # "nonce":[B
    .end local v22    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v26    # "ext":Ljava/security/cert/Extension;
    .end local v27    # "ext$iterator":Ljava/util/Iterator;
    .end local v29    # "responseBytes":[B
    .local v25, "currCert":Lsun/security/x509/X509CertImpl;
    :catch_0
    move-exception v21

    #@6a
    .line 669
    .local v21, "ce":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@6c
    move-object/from16 v0, v21

    #@6e
    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@71
    throw v2

    #@72
    .line 684
    .end local v21    # "ce":Ljava/security/cert/CertificateException;
    .local v22, "certId":Lsun/security/provider/certpath/CertId;
    .local v25, "currCert":Lsun/security/x509/X509CertImpl;
    .restart local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    :cond_2
    :try_start_3
    new-instance v23, Lsun/security/provider/certpath/CertId;

    #@74
    move-object/from16 v0, p0

    #@76
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    #@78
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    #@7b
    move-result-object v2

    #@7c
    move-object/from16 v0, p0

    #@7e
    iget-object v3, v0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    #@80
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    #@83
    move-result-object v3

    #@84
    .line 685
    invoke-virtual/range {v25 .. v25}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    #@87
    move-result-object v4

    #@88
    .line 684
    move-object/from16 v0, v23

    #@8a
    invoke-direct {v0, v2, v3, v4}, Lsun/security/provider/certpath/CertId;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lsun/security/x509/SerialNumber;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@8d
    .restart local v23    # "certId":Lsun/security/provider/certpath/CertId;
    move-object/from16 v22, v23

    #@8f
    .end local v23    # "certId":Lsun/security/provider/certpath/CertId;
    .local v22, "certId":Lsun/security/provider/certpath/CertId;
    goto :goto_0

    #@90
    .line 703
    .end local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v27    # "ext$iterator":Ljava/util/Iterator;
    .restart local v29    # "responseBytes":[B
    :cond_3
    :try_start_4
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@93
    move-result-object v2

    #@94
    move-object/from16 v0, p0

    #@96
    iget-object v3, v0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    #@98
    .line 704
    move-object/from16 v0, p0

    #@9a
    iget-object v4, v0, Lsun/security/provider/certpath/RevocationChecker;->responderCert:Ljava/security/cert/X509Certificate;

    #@9c
    move-object/from16 v0, p0

    #@9e
    iget-object v5, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@a0
    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    #@a3
    move-result-object v5

    #@a4
    .line 703
    invoke-virtual/range {v1 .. v6}, Lsun/security/provider/certpath/OCSPResponse;->verify(Ljava/util/List;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;[B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@a7
    .line 727
    .end local v27    # "ext$iterator":Ljava/util/Iterator;
    :goto_2
    move-object/from16 v0, v22

    #@a9
    invoke-virtual {v1, v0}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    #@ac
    move-result-object v31

    #@ad
    .line 728
    .local v31, "rs":Lsun/security/provider/certpath/OCSP$RevocationStatus;
    invoke-interface/range {v31 .. v31}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getCertStatus()Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@b0
    move-result-object v24

    #@b1
    .line 729
    .local v24, "certStatus":Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    sget-object v2, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@b3
    move-object/from16 v0, v24

    #@b5
    if-ne v0, v2, :cond_7

    #@b7
    .line 730
    invoke-interface/range {v31 .. v31}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getRevocationTime()Ljava/util/Date;

    #@ba
    move-result-object v30

    #@bb
    .line 731
    .local v30, "revocationTime":Ljava/util/Date;
    move-object/from16 v0, p0

    #@bd
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@bf
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    #@c2
    move-result-object v2

    #@c3
    move-object/from16 v0, v30

    #@c5
    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@c8
    move-result v2

    #@c9
    if-eqz v2, :cond_8

    #@cb
    .line 732
    new-instance v14, Ljava/security/cert/CertificateRevokedException;

    #@cd
    .line 733
    invoke-interface/range {v31 .. v31}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getRevocationReason()Ljava/security/cert/CRLReason;

    #@d0
    move-result-object v2

    #@d1
    .line 734
    invoke-virtual {v1}, Lsun/security/provider/certpath/OCSPResponse;->getSignerCertificate()Ljava/security/cert/X509Certificate;

    #@d4
    move-result-object v3

    #@d5
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@d8
    move-result-object v3

    #@d9
    .line 735
    invoke-interface/range {v31 .. v31}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getSingleExtensions()Ljava/util/Map;

    #@dc
    move-result-object v4

    #@dd
    .line 732
    move-object/from16 v0, v30

    #@df
    invoke-direct {v14, v0, v2, v3, v4}, Ljava/security/cert/CertificateRevokedException;-><init>(Ljava/util/Date;Ljava/security/cert/CRLReason;Ljavax/security/auth/x500/X500Principal;Ljava/util/Map;)V

    #@e2
    .line 736
    .local v14, "t":Ljava/lang/Throwable;
    new-instance v12, Ljava/security/cert/CertPathValidatorException;

    #@e4
    invoke-virtual {v14}, Ljava/security/cert/CertificateRevokedException;->getMessage()Ljava/lang/String;

    #@e7
    move-result-object v13

    #@e8
    .line 737
    sget-object v17, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@ea
    .line 736
    const/4 v15, 0x0

    #@eb
    .line 737
    const/16 v16, -0x1

    #@ed
    .line 736
    invoke-direct/range {v12 .. v17}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@f0
    throw v12

    #@f1
    .line 707
    .end local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .end local v14    # "t":Ljava/lang/Throwable;
    .end local v24    # "certStatus":Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .end local v30    # "revocationTime":Ljava/util/Date;
    .end local v31    # "rs":Lsun/security/provider/certpath/OCSP$RevocationStatus;
    .restart local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    #@f3
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->responderURI:Ljava/net/URI;

    #@f5
    if-eqz v2, :cond_5

    #@f7
    .line 708
    move-object/from16 v0, p0

    #@f9
    iget-object v8, v0, Lsun/security/provider/certpath/RevocationChecker;->responderURI:Ljava/net/URI;

    #@fb
    .line 710
    .local v8, "responderURI":Ljava/net/URI;
    :goto_3
    if-nez v8, :cond_6

    #@fd
    .line 711
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@ff
    .line 712
    const-string/jumbo v3, "Certificate does not specify OCSP responder"

    #@102
    const/4 v4, 0x0

    #@103
    .line 713
    const/4 v5, 0x0

    #@104
    const/4 v7, -0x1

    #@105
    .line 711
    invoke-direct {v2, v3, v4, v5, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@108
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@109
    .line 720
    .end local v8    # "responderURI":Ljava/net/URI;
    .end local v22    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v29    # "responseBytes":[B
    :catch_1
    move-exception v11

    #@10a
    .local v11, "e":Ljava/io/IOException;
    move-object/from16 v1, v28

    #@10c
    .line 721
    .end local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    :goto_4
    new-instance v9, Ljava/security/cert/CertPathValidatorException;

    #@10e
    .line 722
    const-string/jumbo v10, "Unable to determine revocation status due to network error"

    #@111
    .line 723
    sget-object v14, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@113
    const/4 v12, 0x0

    #@114
    const/4 v13, -0x1

    #@115
    .line 721
    invoke-direct/range {v9 .. v14}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@118
    throw v9

    #@119
    .line 709
    .end local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v22    # "certId":Lsun/security/provider/certpath/CertId;
    .restart local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v29    # "responseBytes":[B
    :cond_5
    :try_start_6
    invoke-static/range {v25 .. v25}, Lsun/security/provider/certpath/OCSP;->getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;

    #@11c
    move-result-object v8

    #@11d
    goto :goto_3

    #@11e
    .line 716
    .restart local v8    # "responderURI":Ljava/net/URI;
    :cond_6
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@121
    move-result-object v7

    #@122
    .line 717
    move-object/from16 v0, p0

    #@124
    iget-object v9, v0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    #@126
    move-object/from16 v0, p0

    #@128
    iget-object v10, v0, Lsun/security/provider/certpath/RevocationChecker;->responderCert:Ljava/security/cert/X509Certificate;

    #@12a
    .line 718
    move-object/from16 v0, p0

    #@12c
    iget-object v12, v0, Lsun/security/provider/certpath/RevocationChecker;->ocspExtensions:Ljava/util/List;

    #@12e
    const/4 v11, 0x0

    #@12f
    .line 716
    invoke-static/range {v7 .. v12}, Lsun/security/provider/certpath/OCSP;->check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    #@132
    move-result-object v1

    #@133
    .restart local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    goto/16 :goto_2

    #@135
    .line 739
    .end local v8    # "responderURI":Ljava/net/URI;
    .end local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v24    # "certStatus":Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .restart local v31    # "rs":Lsun/security/provider/certpath/OCSP$RevocationStatus;
    :cond_7
    sget-object v2, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@137
    move-object/from16 v0, v24

    #@139
    if-ne v0, v2, :cond_8

    #@13b
    .line 740
    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    #@13d
    .line 741
    const-string/jumbo v16, "Certificate\'s revocation status is unknown"

    #@140
    .line 742
    move-object/from16 v0, p0

    #@142
    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@144
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    #@147
    move-result-object v18

    #@148
    .line 743
    sget-object v20, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@14a
    .line 741
    const/16 v17, 0x0

    #@14c
    .line 742
    const/16 v19, -0x1

    #@14e
    .line 740
    invoke-direct/range {v15 .. v20}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@151
    throw v15

    #@152
    .line 663
    :cond_8
    return-void

    #@153
    .line 720
    .end local v24    # "certStatus":Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .end local v31    # "rs":Lsun/security/provider/certpath/OCSP$RevocationStatus;
    :catch_2
    move-exception v11

    #@154
    .restart local v11    # "e":Ljava/io/IOException;
    goto :goto_4
.end method

.method private static getResponderCert(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .locals 6
    .param p0, "issuer"    # Ljava/lang/String;
    .param p1, "serial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    .local p2, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p3, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    new-instance v2, Ljava/security/cert/X509CertSelector;

    #@2
    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    #@5
    .line 248
    .local v2, "sel":Ljava/security/cert/X509CertSelector;
    :try_start_0
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    #@7
    invoke-direct {v3, p0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    #@a
    invoke-virtual {v2, v3}, Ljava/security/cert/X509CertSelector;->setIssuer(Ljavax/security/auth/x500/X500Principal;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 254
    :try_start_1
    new-instance v3, Ljava/math/BigInteger;

    #@f
    invoke-static {p1}, Lsun/security/provider/certpath/RevocationChecker;->stripOutSeparators(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    const/16 v5, 0x10

    #@15
    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@18
    invoke-virtual {v2, v3}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@1b
    .line 259
    invoke-static {v2, p2, p3}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/security/cert/X509CertSelector;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    #@1e
    move-result-object v3

    #@1f
    return-object v3

    #@20
    .line 249
    :catch_0
    move-exception v0

    #@21
    .line 250
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    #@23
    .line 251
    const-string/jumbo v4, "cannot parse ocsp.responderCertIssuerName property"

    #@26
    .line 250
    invoke-direct {v3, v4, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@29
    throw v3

    #@2a
    .line 255
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    #@2b
    .line 256
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    #@2d
    .line 257
    const-string/jumbo v4, "cannot parse ocsp.responderCertSerialNumber property"

    #@30
    .line 256
    invoke-direct {v3, v4, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v3
.end method

.method private static getResponderCert(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p0, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 230
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p2, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    new-instance v1, Ljava/security/cert/X509CertSelector;

    #@2
    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    #@5
    .line 232
    .local v1, "sel":Ljava/security/cert/X509CertSelector;
    :try_start_0
    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    #@7
    invoke-direct {v2, p0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    #@a
    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 237
    invoke-static {v1, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/security/cert/X509CertSelector;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 233
    :catch_0
    move-exception v0

    #@13
    .line 234
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@15
    .line 235
    const-string/jumbo v3, "cannot parse ocsp.responderCertSubjectName property"

    #@18
    .line 234
    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b
    throw v2
.end method

.method private static getResponderCert(Ljava/security/cert/X509CertSelector;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .locals 10
    .param p0, "sel"    # Ljava/security/cert/X509CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CertSelector;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 268
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p2, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v7

    #@8
    if-eqz v7, :cond_1

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/security/cert/TrustAnchor;

    #@10
    .line 269
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@13
    move-result-object v2

    #@14
    .line 270
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    #@16
    .line 273
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    #@19
    move-result v7

    #@1a
    if-eqz v7, :cond_0

    #@1c
    .line 274
    return-object v2

    #@1d
    .line 278
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v6

    #@21
    .local v6, "store$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v7

    #@25
    if-eqz v7, :cond_3

    #@27
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v5

    #@2b
    check-cast v5, Ljava/security/cert/CertStore;

    #@2d
    .line 281
    .local v5, "store":Ljava/security/cert/CertStore;
    :try_start_0
    invoke-virtual {v5, p0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    #@30
    move-result-object v3

    #@31
    .line 282
    .local v3, "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    #@34
    move-result v7

    #@35
    if-nez v7, :cond_2

    #@37
    .line 283
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v7

    #@3b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v7

    #@3f
    check-cast v7, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    return-object v7

    #@42
    .line 285
    .end local v3    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v4

    #@43
    .line 287
    .local v4, "e":Ljava/security/cert/CertStoreException;
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@45
    if-eqz v7, :cond_2

    #@47
    .line 288
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@49
    new-instance v8, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v9, "CertStore exception:"

    #@51
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v8

    #@55
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v8

    #@59
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v8

    #@5d
    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@60
    goto :goto_0

    #@61
    .line 293
    .end local v4    # "e":Ljava/security/cert/CertStoreException;
    .end local v5    # "store":Ljava/security/cert/CertStore;
    :cond_3
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    #@63
    .line 294
    const-string/jumbo v8, "Cannot find the responder\'s certificate (set using the OCSP security properties)."

    #@66
    .line 293
    invoke-direct {v7, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@69
    throw v7
.end method

.method private static getResponderCert(Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "rp"    # Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p2, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    const/4 v1, 0x0

    #@1
    .line 212
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSubject:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 213
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSubject:Ljava/lang/String;

    #@7
    invoke-static {v0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 214
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    #@e
    if-eqz v0, :cond_1

    #@10
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 215
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    #@16
    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    #@18
    invoke-static {v0, v1, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    #@1b
    move-result-object v0

    #@1c
    return-object v0

    #@1d
    .line 217
    :cond_1
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    #@1f
    if-nez v0, :cond_2

    #@21
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    #@23
    if-eqz v0, :cond_3

    #@25
    .line 218
    :cond_2
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@27
    .line 219
    const-string/jumbo v1, "Must specify both ocsp.responderCertIssuerName and ocsp.responderCertSerialNumber properties"

    #@2a
    .line 218
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 222
    :cond_3
    return-object v1
.end method

.method private static getRevocationProperties()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    .locals 1

    #@0
    .prologue
    .line 182
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$1;

    #@2
    invoke-direct {v0}, Lsun/security/provider/certpath/RevocationChecker$1;-><init>()V

    #@5
    .line 181
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;

    #@b
    return-object v0
.end method

.method private isSoftFailException(Ljava/security/cert/CertPathValidatorException;)Z
    .locals 6
    .param p1, "e"    # Ljava/security/cert/CertPathValidatorException;

    #@0
    .prologue
    .line 419
    iget-boolean v1, p0, Lsun/security/provider/certpath/RevocationChecker;->softFail:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 420
    invoke-virtual {p1}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    #@7
    move-result-object v1

    #@8
    sget-object v2, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@a
    if-ne v1, v2, :cond_0

    #@c
    .line 423
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@e
    .line 424
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@18
    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    #@1b
    move-result-object v3

    #@1c
    iget v4, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    #@1e
    .line 425
    invoke-virtual {p1}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    #@21
    move-result-object v5

    #@22
    .line 423
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@25
    .line 426
    .local v0, "e2":Ljava/security/cert/CertPathValidatorException;
    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    #@27
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@2a
    .line 427
    const/4 v1, 0x1

    #@2b
    return v1

    #@2c
    .line 429
    .end local v0    # "e2":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    const/4 v1, 0x0

    #@2d
    return v1
.end method

.method private static stripOutSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 752
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v0

    #@4
    .line 753
    .local v0, "chars":[C
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 754
    .local v1, "hexNumber":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    #@b
    if-ge v2, v3, :cond_1

    #@d
    .line 755
    const-string/jumbo v3, "0123456789ABCDEFabcdef"

    #@10
    aget-char v4, v0, v2

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    #@15
    move-result v3

    #@16
    const/4 v4, -0x1

    #@17
    if-eq v3, v4, :cond_0

    #@19
    .line 756
    aget-char v3, v0, v2

    #@1b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 754
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 759
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    return-object v3
.end method

.method private static toURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .param p0, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 170
    if-eqz p0, :cond_0

    #@3
    .line 171
    :try_start_0
    new-instance v1, Ljava/net/URI;

    #@5
    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    return-object v1

    #@9
    .line 173
    :cond_0
    return-object v1

    #@a
    .line 174
    :catch_0
    move-exception v0

    #@b
    .line 175
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@d
    .line 176
    const-string/jumbo v2, "cannot parse ocsp.responderURL property"

    #@10
    .line 175
    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method private updateState(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 435
    iput-object p1, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    #@2
    .line 438
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@5
    move-result-object v0

    #@6
    .line 439
    .local v0, "pubKey":Ljava/security/PublicKey;
    invoke-static {v0}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 441
    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    #@e
    invoke-static {v0, v1}, Lsun/security/provider/certpath/BasicChecker;->makeInheritedParamsKey(Ljava/security/PublicKey;Ljava/security/PublicKey;)Ljava/security/PublicKey;

    #@11
    move-result-object v0

    #@12
    .line 443
    :cond_0
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    #@14
    .line 444
    invoke-static {p1}, Lsun/security/provider/certpath/RevocationChecker;->certCanSignCrl(Ljava/security/cert/X509Certificate;)Z

    #@17
    move-result v1

    #@18
    iput-boolean v1, p0, Lsun/security/provider/certpath/RevocationChecker;->crlSignFlag:Z

    #@1a
    .line 445
    iget v1, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    #@1c
    if-lez v1, :cond_1

    #@1e
    .line 446
    iget v1, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    #@20
    add-int/lit8 v1, v1, -0x1

    #@22
    iput v1, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    #@24
    .line 433
    :cond_1
    return-void
.end method

.method private verifyPossibleCRLs(Ljava/util/Set;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Z[ZLjava/util/Set;)Ljava/util/Collection;
    .locals 19
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "prevKey"    # Ljava/security/PublicKey;
    .param p4, "signFlag"    # Z
    .param p5, "reasonsMask"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PublicKey;",
            "Z[Z",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 803
    .local p1, "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    .local p6, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :try_start_0
    invoke-static/range {p2 .. p2}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    #@3
    move-result-object v1

    #@4
    .line 804
    .local v1, "certImpl":Lsun/security/x509/X509CertImpl;
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 805
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@a
    new-instance v5, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v6, "RevocationChecker.verifyPossibleCRLs: Checking CRLDPs for "

    #@12
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    .line 807
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@19
    move-result-object v6

    #@1a
    .line 805
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@25
    .line 810
    :cond_0
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getCRLDistributionPointsExtension()Lsun/security/x509/CRLDistributionPointsExtension;

    #@28
    move-result-object v15

    #@29
    .line 811
    .local v15, "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    const/16 v17, 0x0

    #@2b
    .line 812
    .local v17, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    if-nez v15, :cond_4

    #@2d
    .line 816
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    #@30
    move-result-object v12

    #@31
    check-cast v12, Lsun/security/x509/X500Name;

    #@33
    .line 817
    .local v12, "certIssuer":Lsun/security/x509/X500Name;
    new-instance v2, Lsun/security/x509/DistributionPoint;

    #@35
    .line 818
    new-instance v4, Lsun/security/x509/GeneralNames;

    #@37
    invoke-direct {v4}, Lsun/security/x509/GeneralNames;-><init>()V

    #@3a
    new-instance v5, Lsun/security/x509/GeneralName;

    #@3c
    invoke-direct {v5, v12}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    #@3f
    invoke-virtual {v4, v5}, Lsun/security/x509/GeneralNames;->add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;

    #@42
    move-result-object v4

    #@43
    .line 819
    const/4 v5, 0x0

    #@44
    const/4 v6, 0x0

    #@45
    .line 817
    invoke-direct {v2, v4, v5, v6}, Lsun/security/x509/DistributionPoint;-><init>(Lsun/security/x509/GeneralNames;[ZLsun/security/x509/GeneralNames;)V

    #@48
    .line 820
    .local v2, "point":Lsun/security/x509/DistributionPoint;
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@4b
    move-result-object v17

    #@4c
    .line 824
    .end local v2    # "point":Lsun/security/x509/DistributionPoint;
    .end local v12    # "certIssuer":Lsun/security/x509/X500Name;
    .local v17, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    :goto_0
    new-instance v18, Ljava/util/HashSet;

    #@4e
    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    #@51
    .line 825
    .local v18, "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@54
    move-result-object v16

    #@55
    .local v16, "point$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@58
    move-result v4

    #@59
    if-eqz v4, :cond_6

    #@5b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5e
    move-result-object v2

    #@5f
    check-cast v2, Lsun/security/x509/DistributionPoint;

    #@61
    .line 826
    .restart local v2    # "point":Lsun/security/x509/DistributionPoint;
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@64
    move-result-object v13

    #@65
    .local v13, "crl$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@68
    move-result v4

    #@69
    if-eqz v4, :cond_5

    #@6b
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6e
    move-result-object v3

    #@6f
    check-cast v3, Ljava/security/cert/X509CRL;

    #@71
    .line 829
    .local v3, "crl":Ljava/security/cert/X509CRL;
    move-object/from16 v0, p0

    #@73
    iget-object v4, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@75
    invoke-virtual {v4}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    #@78
    move-result-object v8

    #@79
    .line 830
    move-object/from16 v0, p0

    #@7b
    iget-object v10, v0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    #@7d
    move-object/from16 v0, p0

    #@7f
    iget-object v4, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@81
    invoke-virtual {v4}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    #@84
    move-result-object v11

    #@85
    .line 829
    const/4 v7, 0x0

    #@86
    move-object/from16 v4, p5

    #@88
    move/from16 v5, p4

    #@8a
    move-object/from16 v6, p3

    #@8c
    move-object/from16 v9, p6

    #@8e
    .line 827
    invoke-static/range {v1 .. v11}, Lsun/security/provider/certpath/DistributionPointFetcher;->verifyCRL(Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;Ljava/security/cert/X509CRL;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/Date;)Z

    #@91
    move-result v4

    #@92
    if-eqz v4, :cond_2

    #@94
    .line 832
    move-object/from16 v0, v18

    #@96
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@99
    goto :goto_1

    #@9a
    .line 839
    .end local v1    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v2    # "point":Lsun/security/x509/DistributionPoint;
    .end local v3    # "crl":Ljava/security/cert/X509CRL;
    .end local v13    # "crl$iterator":Ljava/util/Iterator;
    .end local v15    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    .end local v16    # "point$iterator":Ljava/util/Iterator;
    .end local v17    # "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    .end local v18    # "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    :catch_0
    move-exception v14

    #@9b
    .line 840
    .local v14, "e":Ljava/lang/Exception;
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@9d
    if-eqz v4, :cond_3

    #@9f
    .line 841
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@a1
    new-instance v5, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v6, "Exception while verifying CRL: "

    #@a9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v5

    #@ad
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@b0
    move-result-object v6

    #@b1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v5

    #@b5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v5

    #@b9
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@bc
    .line 842
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    #@bf
    .line 844
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@c2
    move-result-object v4

    #@c3
    return-object v4

    #@c4
    .line 822
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v1    # "certImpl":Lsun/security/x509/X509CertImpl;
    .restart local v15    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    .local v17, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    :cond_4
    :try_start_1
    const-string/jumbo v4, "points"

    #@c7
    invoke-virtual {v15, v4}, Lsun/security/x509/CRLDistributionPointsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    #@ca
    move-result-object v17

    #@cb
    .local v17, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    goto :goto_0

    #@cc
    .line 835
    .restart local v2    # "point":Lsun/security/x509/DistributionPoint;
    .restart local v13    # "crl$iterator":Ljava/util/Iterator;
    .restart local v16    # "point$iterator":Ljava/util/Iterator;
    .restart local v18    # "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    :cond_5
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    #@ce
    move-object/from16 v0, p5

    #@d0
    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([Z[Z)Z
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@d3
    move-result v4

    #@d4
    if-eqz v4, :cond_1

    #@d6
    .line 838
    .end local v2    # "point":Lsun/security/x509/DistributionPoint;
    .end local v13    # "crl$iterator":Ljava/util/Iterator;
    :cond_6
    return-object v18
.end method

.method private verifyWithSeparateSigningKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;ZLjava/util/Set;)V
    .locals 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .param p3, "signFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PublicKey;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .local p4, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x0

    #@1
    .line 876
    const-string/jumbo v6, "revocation status"

    #@4
    .line 877
    .local v6, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 878
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@a
    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "RevocationChecker.verifyWithSeparateSigningKey() ---checking "

    #@12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 880
    const-string/jumbo v3, "..."

    #@1d
    .line 879
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 878
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@28
    .line 886
    :cond_0
    if-eqz p4, :cond_2

    #@2a
    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_2

    #@30
    .line 887
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@32
    if-eqz v0, :cond_1

    #@34
    .line 888
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@36
    .line 889
    const-string/jumbo v1, "RevocationChecker.verifyWithSeparateSigningKey() circular dependency"

    #@39
    .line 888
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3c
    .line 892
    :cond_1
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@3e
    .line 893
    const-string/jumbo v1, "Could not determine revocation status"

    #@41
    .line 894
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@43
    .line 893
    const/4 v4, -0x1

    #@44
    move-object v3, v2

    #@45
    .line 892
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@48
    throw v0

    #@49
    .line 901
    :cond_2
    if-nez p3, :cond_3

    #@4b
    .line 902
    invoke-direct {p0, p1, v2, p4}, Lsun/security/provider/certpath/RevocationChecker;->buildToNewKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Set;)V

    #@4e
    .line 874
    :goto_0
    return-void

    #@4f
    .line 904
    :cond_3
    invoke-direct {p0, p1, p2, p4}, Lsun/security/provider/certpath/RevocationChecker;->buildToNewKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Set;)V

    #@52
    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 337
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    check-cast p1, Ljava/security/cert/X509Certificate;

    #@2
    .line 338
    .end local p1    # "cert":Ljava/security/cert/Certificate;
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    #@4
    iget-boolean v1, p0, Lsun/security/provider/certpath/RevocationChecker;->crlSignFlag:Z

    #@6
    .line 337
    invoke-direct {p0, p1, p2, v0, v1}, Lsun/security/provider/certpath/RevocationChecker;->check(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/PublicKey;Z)V

    #@9
    .line 335
    return-void
.end method

.method public bridge synthetic clone()Ljava/security/cert/PKIXRevocationChecker;
    .locals 1

    #@0
    .prologue
    .line 1092
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->clone()Lsun/security/provider/certpath/RevocationChecker;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public clone()Lsun/security/provider/certpath/RevocationChecker;
    .locals 3

    #@0
    .prologue
    .line 1093
    invoke-super {p0}, Ljava/security/cert/PKIXRevocationChecker;->clone()Ljava/security/cert/PKIXRevocationChecker;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lsun/security/provider/certpath/RevocationChecker;

    #@6
    .line 1096
    .local v0, "copy":Lsun/security/provider/certpath/RevocationChecker;
    new-instance v1, Ljava/util/LinkedList;

    #@8
    iget-object v2, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    #@a
    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    #@d
    iput-object v1, v0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    #@f
    .line 1097
    return-object v0
.end method

.method public getSoftFailExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertPathValidatorException;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 325
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V
    .locals 11
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "params"    # Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->getRevocationProperties()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;

    #@3
    move-result-object v5

    #@4
    .line 103
    .local v5, "rp":Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponder()Ljava/net/URI;

    #@7
    move-result-object v6

    #@8
    .line 104
    .local v6, "uri":Ljava/net/URI;
    if-nez v6, :cond_0

    #@a
    iget-object v7, v5, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspUrl:Ljava/lang/String;

    #@c
    invoke-static {v7}, Lsun/security/provider/certpath/RevocationChecker;->toURI(Ljava/lang/String;)Ljava/net/URI;

    #@f
    move-result-object v6

    #@10
    .end local v6    # "uri":Ljava/net/URI;
    :cond_0
    iput-object v6, p0, Lsun/security/provider/certpath/RevocationChecker;->responderURI:Ljava/net/URI;

    #@12
    .line 105
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponderCert()Ljava/security/cert/X509Certificate;

    #@15
    move-result-object v0

    #@16
    .line 106
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_1

    #@18
    .line 107
    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    #@1b
    move-result-object v7

    #@1c
    .line 108
    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certStores()Ljava/util/List;

    #@1f
    move-result-object v8

    #@20
    .line 107
    invoke-static {v5, v7, v8}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    #@23
    move-result-object v0

    #@24
    .line 106
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->responderCert:Ljava/security/cert/X509Certificate;

    #@26
    .line 110
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOptions()Ljava/util/Set;

    #@29
    move-result-object v4

    #@2a
    .line 111
    .local v4, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PKIXRevocationChecker$Option;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v3

    #@2e
    .local v3, "option$iterator":Ljava/util/Iterator;
    :pswitch_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v7

    #@32
    if-eqz v7, :cond_2

    #@34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Ljava/security/cert/PKIXRevocationChecker$Option;

    #@3a
    .line 112
    .local v2, "option":Ljava/security/cert/PKIXRevocationChecker$Option;
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-getjava-security-cert-PKIXRevocationChecker$OptionSwitchesValues()[I

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    #@41
    move-result v8

    #@42
    aget v7, v7, v8

    #@44
    packed-switch v7, :pswitch_data_0

    #@47
    .line 119
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    #@49
    .line 120
    new-instance v8, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v9, "Unrecognized revocation parameter option: "

    #@51
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v8

    #@55
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v8

    #@59
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v8

    #@5d
    .line 119
    invoke-direct {v7, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@60
    throw v7

    #@61
    .line 123
    .end local v2    # "option":Ljava/security/cert/PKIXRevocationChecker$Option;
    :cond_2
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@63
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@66
    move-result v7

    #@67
    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->softFail:Z

    #@69
    .line 126
    iget-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    #@6b
    if-eqz v7, :cond_5

    #@6d
    .line 127
    iget-boolean v7, v5, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspEnabled:Z

    #@6f
    if-eqz v7, :cond_4

    #@71
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@73
    :goto_0
    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@75
    .line 128
    iget-boolean v7, v5, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->onlyEE:Z

    #@77
    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->onlyEE:Z

    #@79
    .line 141
    :goto_1
    iget-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    #@7b
    if-eqz v7, :cond_9

    #@7d
    .line 142
    iget-boolean v7, v5, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->crlDPEnabled:Z

    #@7f
    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->crlDP:Z

    #@81
    .line 146
    :goto_2
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponses()Ljava/util/Map;

    #@84
    move-result-object v7

    #@85
    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->ocspResponses:Ljava/util/Map;

    #@87
    .line 147
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspExtensions()Ljava/util/List;

    #@8a
    move-result-object v7

    #@8b
    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->ocspExtensions:Ljava/util/List;

    #@8d
    .line 149
    iput-object p1, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    #@8f
    .line 150
    iput-object p2, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@91
    .line 151
    new-instance v7, Ljava/util/ArrayList;

    #@93
    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certStores()Ljava/util/List;

    #@96
    move-result-object v8

    #@97
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@9a
    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    #@9c
    .line 153
    :try_start_0
    iget-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    #@9e
    const-string/jumbo v8, "Collection"

    #@a1
    .line 154
    new-instance v9, Ljava/security/cert/CollectionCertStoreParameters;

    #@a3
    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    #@a6
    move-result-object v10

    #@a7
    invoke-direct {v9, v10}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    #@aa
    .line 153
    invoke-static {v8, v9}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    #@ad
    move-result-object v8

    #@ae
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@b1
    .line 100
    :cond_3
    :goto_3
    return-void

    #@b2
    .line 127
    :cond_4
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@b4
    goto :goto_0

    #@b5
    .line 130
    :cond_5
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@b7
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@ba
    move-result v7

    #@bb
    if-eqz v7, :cond_8

    #@bd
    .line 131
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@bf
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@c2
    move-result v7

    #@c3
    if-eqz v7, :cond_7

    #@c5
    .line 132
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@c7
    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@c9
    .line 139
    :cond_6
    :goto_4
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@cb
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@ce
    move-result v7

    #@cf
    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->onlyEE:Z

    #@d1
    goto :goto_1

    #@d2
    .line 134
    :cond_7
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@d4
    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@d6
    goto :goto_4

    #@d7
    .line 136
    :cond_8
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@d9
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@dc
    move-result v7

    #@dd
    if-eqz v7, :cond_6

    #@df
    .line 137
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@e1
    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@e3
    goto :goto_4

    #@e4
    .line 144
    :cond_9
    const/4 v7, 0x1

    #@e5
    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->crlDP:Z

    #@e7
    goto :goto_2

    #@e8
    .line 156
    :catch_0
    move-exception v1

    #@e9
    .line 159
    .local v1, "e":Ljava/security/GeneralSecurityException;
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@eb
    if-eqz v7, :cond_3

    #@ed
    .line 160
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    #@ef
    new-instance v8, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    const-string/jumbo v9, "RevocationChecker: error creating Collection CertStore: "

    #@f7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v8

    #@fb
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v8

    #@ff
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v8

    #@103
    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@106
    goto :goto_3

    #@107
    .line 112
    nop

    #@108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public init(Z)V
    .locals 2
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    if-eqz p1, :cond_0

    #@2
    .line 301
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@4
    .line 302
    const-string/jumbo v1, "forward checking not supported"

    #@7
    .line 301
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 304
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 305
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    #@11
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    #@17
    .line 306
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    #@19
    if-eqz v0, :cond_2

    #@1b
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    #@1d
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@20
    move-result-object v0

    #@21
    :goto_0
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    #@23
    .line 309
    :cond_1
    const/4 v0, 0x1

    #@24
    iput-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->crlSignFlag:Z

    #@26
    .line 310
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@28
    if-eqz v0, :cond_3

    #@2a
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@2c
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    #@2f
    move-result-object v0

    #@30
    if-eqz v0, :cond_3

    #@32
    .line 311
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@34
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@3b
    move-result-object v0

    #@3c
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@3f
    move-result v0

    #@40
    add-int/lit8 v0, v0, -0x1

    #@42
    iput v0, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    #@44
    .line 315
    :goto_1
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    #@46
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    #@49
    .line 299
    return-void

    #@4a
    .line 307
    :cond_2
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    #@4c
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    #@4f
    move-result-object v0

    #@50
    goto :goto_0

    #@51
    .line 313
    :cond_3
    const/4 v0, -0x1

    #@52
    iput v0, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    #@54
    goto :goto_1
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    #@0
    .prologue
    .line 320
    const/4 v0, 0x0

    #@1
    return v0
.end method
