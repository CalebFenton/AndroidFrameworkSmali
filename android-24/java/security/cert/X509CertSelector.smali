.class public Ljava/security/cert/X509CertSelector;
.super Ljava/lang/Object;
.source "X509CertSelector.java"

# interfaces
.implements Ljava/security/cert/CertSelector;


# static fields
.field private static final ANY_EXTENDED_KEY_USAGE:Lsun/security/util/ObjectIdentifier;

.field private static final CERT_POLICIES_ID:I = 0x3

.field private static final EXTENDED_KEY_USAGE_ID:I = 0x4

.field private static final EXTENSION_OIDS:[Ljava/lang/String;

.field private static final FALSE:Ljava/lang/Boolean;

.field static final NAME_ANY:I = 0x0

.field private static final NAME_CONSTRAINTS_ID:I = 0x2

.field static final NAME_DIRECTORY:I = 0x4

.field static final NAME_DNS:I = 0x2

.field static final NAME_EDI:I = 0x5

.field static final NAME_IP:I = 0x7

.field static final NAME_OID:I = 0x8

.field static final NAME_RFC822:I = 0x1

.field static final NAME_URI:I = 0x6

.field static final NAME_X400:I = 0x3

.field private static final NUM_OF_EXTENSIONS:I = 0x5

.field private static final PRIVATE_KEY_USAGE_ID:I = 0x0

.field private static final SUBJECT_ALT_NAME_ID:I = 0x1

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private authorityKeyID:[B

.field private basicConstraints:I

.field private certificateValid:Ljava/util/Date;

.field private issuer:Ljavax/security/auth/x500/X500Principal;

.field private keyPurposeOIDSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private keyPurposeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keyUsage:[Z

.field private matchAllSubjectAltNames:Z

.field private nc:Lsun/security/x509/NameConstraintsExtension;

.field private ncBytes:[B

.field private pathToGeneralNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;"
        }
    .end annotation
.end field

.field private pathToNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private policy:Lsun/security/x509/CertificatePolicySet;

.field private policySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private privateKeyValid:Ljava/util/Date;

.field private serialNumber:Ljava/math/BigInteger;

.field private subject:Ljavax/security/auth/x500/X500Principal;

.field private subjectAlternativeGeneralNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;"
        }
    .end annotation
.end field

.field private subjectAlternativeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private subjectKeyID:[B

.field private subjectPublicKey:Ljava/security/PublicKey;

.field private subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

.field private subjectPublicKeyBytes:[B

.field private x509Cert:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x5

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v2, 0x0

    #@3
    .line 89
    const-string/jumbo v0, "certpath"

    #@6
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@c
    .line 92
    const/16 v0, 0x1d

    #@e
    const/16 v1, 0x25

    #@10
    filled-new-array {v3, v4, v0, v1, v2}, [I

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@17
    move-result-object v0

    #@18
    .line 91
    sput-object v0, Ljava/security/cert/X509CertSelector;->ANY_EXTENDED_KEY_USAGE:Lsun/security/util/ObjectIdentifier;

    #@1a
    .line 95
    invoke-static {}, Ljava/security/cert/CertPathHelperImpl;->initialize()V

    #@1d
    .line 123
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@1f
    sput-object v0, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    #@21
    .line 131
    new-array v0, v4, [Ljava/lang/String;

    #@23
    sput-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    #@25
    .line 134
    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    #@27
    const-string/jumbo v1, "2.5.29.16"

    #@2a
    aput-object v1, v0, v2

    #@2c
    .line 135
    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    #@2e
    const-string/jumbo v1, "2.5.29.17"

    #@31
    const/4 v2, 0x1

    #@32
    aput-object v1, v0, v2

    #@34
    .line 136
    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    #@36
    const-string/jumbo v1, "2.5.29.30"

    #@39
    aput-object v1, v0, v3

    #@3b
    .line 137
    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    #@3d
    const-string/jumbo v1, "2.5.29.32"

    #@40
    const/4 v2, 0x3

    #@41
    aput-object v1, v0, v2

    #@43
    .line 138
    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    #@45
    const-string/jumbo v1, "2.5.29.37"

    #@48
    const/4 v2, 0x4

    #@49
    aput-object v1, v0, v2

    #@4b
    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 119
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    #@6
    .line 121
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    #@9
    .line 156
    return-void
.end method

.method private addPathToNameInternal(ILjava/lang/Object;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1269
    invoke-static {p1, p2}, Ljava/security/cert/X509CertSelector;->makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;

    #@3
    move-result-object v1

    #@4
    .line 1270
    .local v1, "tempName":Lsun/security/x509/GeneralNameInterface;
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1271
    new-instance v2, Ljava/util/HashSet;

    #@a
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@d
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    #@f
    .line 1272
    new-instance v2, Ljava/util/HashSet;

    #@11
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@14
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    #@16
    .line 1274
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@18
    const/4 v2, 0x2

    #@19
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@1c
    .line 1275
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v2

    #@20
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    .line 1276
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    .line 1277
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    #@28
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2b
    .line 1278
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    #@2d
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@30
    .line 1267
    return-void
.end method

.method private addSubjectAlternativeNameInternal(ILjava/lang/Object;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 817
    invoke-static {p1, p2}, Ljava/security/cert/X509CertSelector;->makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;

    #@3
    move-result-object v1

    #@4
    .line 818
    .local v1, "tempName":Lsun/security/x509/GeneralNameInterface;
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 819
    new-instance v2, Ljava/util/HashSet;

    #@a
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@d
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    #@f
    .line 821
    :cond_0
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    #@11
    if-nez v2, :cond_1

    #@13
    .line 822
    new-instance v2, Ljava/util/HashSet;

    #@15
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@18
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    #@1a
    .line 824
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    #@1c
    const/4 v2, 0x2

    #@1d
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@20
    .line 825
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v2

    #@24
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27
    .line 826
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    .line 827
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    #@2c
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2f
    .line 828
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    #@31
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@34
    .line 815
    return-void
.end method

.method private static cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1675
    new-instance v4, Ljava/util/HashSet;

    #@4
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@7
    .line 1676
    .local v4, "namesCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    .line 1677
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v6

    #@f
    if-eqz v6, :cond_1

    #@11
    .line 1678
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v5

    #@15
    .line 1679
    .local v5, "o":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/List;

    #@17
    if-nez v6, :cond_0

    #@19
    .line 1680
    new-instance v6, Ljava/io/IOException;

    #@1b
    const-string/jumbo v7, "expected a List"

    #@1e
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v6

    #@22
    .line 1682
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    #@24
    check-cast v5, Ljava/util/List;

    #@26
    .end local v5    # "o":Ljava/lang/Object;
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@29
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 1686
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v0

    #@31
    .line 1687
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_a

    #@37
    .line 1688
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Ljava/util/List;

    #@3d
    .line 1689
    .local v1, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@40
    move-result v6

    #@41
    const/4 v7, 0x2

    #@42
    if-eq v6, v7, :cond_3

    #@44
    .line 1690
    new-instance v6, Ljava/io/IOException;

    #@46
    const-string/jumbo v7, "name list size not 2"

    #@49
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v6

    #@4d
    .line 1692
    :cond_3
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@50
    move-result-object v5

    #@51
    .line 1693
    .restart local v5    # "o":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/Integer;

    #@53
    if-nez v6, :cond_4

    #@55
    .line 1694
    new-instance v6, Ljava/io/IOException;

    #@57
    const-string/jumbo v7, "expected an Integer"

    #@5a
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v6

    #@5e
    .line 1696
    :cond_4
    check-cast v5, Ljava/lang/Integer;

    #@60
    .end local v5    # "o":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@63
    move-result v3

    #@64
    .line 1697
    .local v3, "nameType":I
    if-ltz v3, :cond_5

    #@66
    const/16 v6, 0x8

    #@68
    if-le v3, v6, :cond_6

    #@6a
    .line 1698
    :cond_5
    new-instance v6, Ljava/io/IOException;

    #@6c
    const-string/jumbo v7, "name type not 0-8"

    #@6f
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@72
    throw v6

    #@73
    .line 1700
    :cond_6
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@76
    move-result-object v2

    #@77
    .line 1701
    .local v2, "nameObject":Ljava/lang/Object;
    instance-of v6, v2, [B

    #@79
    if-nez v6, :cond_7

    #@7b
    .line 1702
    instance-of v6, v2, Ljava/lang/String;

    #@7d
    if-eqz v6, :cond_8

    #@7f
    .line 1709
    :cond_7
    instance-of v6, v2, [B

    #@81
    if-eqz v6, :cond_2

    #@83
    .line 1710
    check-cast v2, [B

    #@85
    .end local v2    # "nameObject":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@88
    move-result-object v6

    #@89
    invoke-interface {v1, v9, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@8c
    goto :goto_1

    #@8d
    .line 1703
    .restart local v2    # "nameObject":Ljava/lang/Object;
    :cond_8
    sget-object v6, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@8f
    if-eqz v6, :cond_9

    #@91
    .line 1704
    sget-object v6, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@93
    const-string/jumbo v7, "X509CertSelector.cloneAndCheckNames() name not byte array"

    #@96
    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@99
    .line 1707
    :cond_9
    new-instance v6, Ljava/io/IOException;

    #@9b
    const-string/jumbo v7, "name not byte array or String"

    #@9e
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v6

    #@a2
    .line 1713
    .end local v1    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "nameObject":Ljava/lang/Object;
    .end local v3    # "nameType":I
    :cond_a
    return-object v4
.end method

.method private static cloneNames(Ljava/util/Collection;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1651
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :try_start_0
    invoke-static {p0}, Ljava/security/cert/X509CertSelector;->cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 1652
    :catch_0
    move-exception v0

    #@6
    .line 1653
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "cloneNames encountered IOException: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    .line 1654
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 1653
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1
.end method

.method private static cloneSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;)",
            "Ljava/util/Set",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2594
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    instance-of v1, p0, Ljava/util/HashSet;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2595
    check-cast p0, Ljava/util/HashSet;

    #@6
    .end local p0    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    .line 2596
    .local v0, "clone":Ljava/lang/Object;
    check-cast v0, Ljava/util/Set;

    #@c
    .end local v0    # "clone":Ljava/lang/Object;
    return-object v0

    #@d
    .line 2598
    .restart local p0    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    #@f
    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@12
    return-object v1
.end method

.method static equalNames(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 1
    .param p0, "object1"    # Ljava/util/Collection;
    .param p1, "object2"    # Ljava/util/Collection;

    #@0
    .prologue
    .line 877
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_2

    #@4
    .line 878
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_1
    const/4 v0, 0x0

    #@9
    goto :goto_0

    #@a
    .line 880
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method private static getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;
    .locals 7
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "extId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1954
    instance-of v5, p0, Lsun/security/x509/X509CertImpl;

    #@3
    if-eqz v5, :cond_0

    #@5
    move-object v2, p0

    #@6
    .line 1955
    check-cast v2, Lsun/security/x509/X509CertImpl;

    #@8
    .line 1956
    .local v2, "impl":Lsun/security/x509/X509CertImpl;
    packed-switch p1, :pswitch_data_0

    #@b
    .line 1968
    return-object v6

    #@c
    .line 1958
    :pswitch_0
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getPrivateKeyUsageExtension()Lsun/security/x509/PrivateKeyUsageExtension;

    #@f
    move-result-object v5

    #@10
    return-object v5

    #@11
    .line 1960
    :pswitch_1
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    #@14
    move-result-object v5

    #@15
    return-object v5

    #@16
    .line 1962
    :pswitch_2
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;

    #@19
    move-result-object v5

    #@1a
    return-object v5

    #@1b
    .line 1964
    :pswitch_3
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getCertificatePoliciesExtension()Lsun/security/x509/CertificatePoliciesExtension;

    #@1e
    move-result-object v5

    #@1f
    return-object v5

    #@20
    .line 1966
    :pswitch_4
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsageExtension()Lsun/security/x509/ExtendedKeyUsageExtension;

    #@23
    move-result-object v5

    #@24
    return-object v5

    #@25
    .line 1971
    .end local v2    # "impl":Lsun/security/x509/X509CertImpl;
    :cond_0
    sget-object v5, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    #@27
    aget-object v5, v5, p1

    #@29
    invoke-virtual {p0, v5}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@2c
    move-result-object v4

    #@2d
    .line 1972
    .local v4, "rawExtVal":[B
    if-nez v4, :cond_1

    #@2f
    .line 1973
    return-object v6

    #@30
    .line 1975
    :cond_1
    new-instance v3, Lsun/security/util/DerInputStream;

    #@32
    invoke-direct {v3, v4}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@35
    .line 1976
    .local v3, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    #@38
    move-result-object v0

    #@39
    .line 1977
    .local v0, "encoded":[B
    packed-switch p1, :pswitch_data_1

    #@3c
    .line 1993
    return-object v6

    #@3d
    .line 1980
    :pswitch_5
    :try_start_0
    new-instance v5, Lsun/security/x509/PrivateKeyUsageExtension;

    #@3f
    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    #@41
    invoke-direct {v5, v6, v0}, Lsun/security/x509/PrivateKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    return-object v5

    #@45
    .line 1981
    :catch_0
    move-exception v1

    #@46
    .line 1982
    .local v1, "ex":Ljava/security/cert/CertificateException;
    new-instance v5, Ljava/io/IOException;

    #@48
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v5

    #@50
    .line 1985
    .end local v1    # "ex":Ljava/security/cert/CertificateException;
    :pswitch_6
    new-instance v5, Lsun/security/x509/SubjectAlternativeNameExtension;

    #@52
    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    #@54
    invoke-direct {v5, v6, v0}, Lsun/security/x509/SubjectAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    #@57
    return-object v5

    #@58
    .line 1987
    :pswitch_7
    new-instance v5, Lsun/security/x509/NameConstraintsExtension;

    #@5a
    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    #@5c
    invoke-direct {v5, v6, v0}, Lsun/security/x509/NameConstraintsExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    #@5f
    return-object v5

    #@60
    .line 1989
    :pswitch_8
    new-instance v5, Lsun/security/x509/CertificatePoliciesExtension;

    #@62
    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    #@64
    invoke-direct {v5, v6, v0}, Lsun/security/x509/CertificatePoliciesExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    #@67
    return-object v5

    #@68
    .line 1991
    :pswitch_9
    new-instance v5, Lsun/security/x509/ExtendedKeyUsageExtension;

    #@6a
    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    #@6c
    invoke-direct {v5, v6, v0}, Lsun/security/x509/ExtendedKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    #@6f
    return-object v5

    #@70
    .line 1956
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    #@7e
    .line 1977
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static keyUsageToString([Z)Ljava/lang/String;
    .locals 4
    .param p0, "k"    # [Z

    #@0
    .prologue
    .line 1897
    const-string/jumbo v1, "KeyUsage [\n"

    #@3
    .line 1899
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    #@4
    :try_start_0
    aget-boolean v2, p0, v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1900
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    const-string/jumbo v3, "  DigitalSignature\n"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 1902
    :cond_0
    const/4 v2, 0x1

    #@1d
    aget-boolean v2, p0, v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 1903
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, "  Non_repudiation\n"

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    .line 1905
    :cond_1
    const/4 v2, 0x2

    #@36
    aget-boolean v2, p0, v2

    #@38
    if-eqz v2, :cond_2

    #@3a
    .line 1906
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    const-string/jumbo v3, "  Key_Encipherment\n"

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    .line 1908
    :cond_2
    const/4 v2, 0x3

    #@4f
    aget-boolean v2, p0, v2

    #@51
    if-eqz v2, :cond_3

    #@53
    .line 1909
    new-instance v2, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    const-string/jumbo v3, "  Data_Encipherment\n"

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    .line 1911
    :cond_3
    const/4 v2, 0x4

    #@68
    aget-boolean v2, p0, v2

    #@6a
    if-eqz v2, :cond_4

    #@6c
    .line 1912
    new-instance v2, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v2

    #@75
    const-string/jumbo v3, "  Key_Agreement\n"

    #@78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    .line 1914
    :cond_4
    const/4 v2, 0x5

    #@81
    aget-boolean v2, p0, v2

    #@83
    if-eqz v2, :cond_5

    #@85
    .line 1915
    new-instance v2, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v2

    #@8e
    const-string/jumbo v3, "  Key_CertSign\n"

    #@91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v2

    #@95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    .line 1917
    :cond_5
    const/4 v2, 0x6

    #@9a
    aget-boolean v2, p0, v2

    #@9c
    if-eqz v2, :cond_6

    #@9e
    .line 1918
    new-instance v2, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v2

    #@a7
    const-string/jumbo v3, "  Crl_Sign\n"

    #@aa
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v2

    #@ae
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v1

    #@b2
    .line 1920
    :cond_6
    const/4 v2, 0x7

    #@b3
    aget-boolean v2, p0, v2

    #@b5
    if-eqz v2, :cond_7

    #@b7
    .line 1921
    new-instance v2, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v2

    #@c0
    const-string/jumbo v3, "  Encipher_Only\n"

    #@c3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v2

    #@c7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v1

    #@cb
    .line 1923
    :cond_7
    const/16 v2, 0x8

    #@cd
    aget-boolean v2, p0, v2

    #@cf
    if-eqz v2, :cond_8

    #@d1
    .line 1924
    new-instance v2, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v2

    #@da
    const-string/jumbo v3, "  Decipher_Only\n"

    #@dd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v2

    #@e1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@e4
    move-result-object v1

    #@e5
    .line 1928
    :cond_8
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v2

    #@ee
    const-string/jumbo v3, "]\n"

    #@f1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v2

    #@f5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v1

    #@f9
    .line 1930
    return-object v1

    #@fa
    .line 1926
    :catch_0
    move-exception v0

    #@fb
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method static makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;
    .locals 5
    .param p0, "type"    # I
    .param p1, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 901
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 902
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "X509CertSelector.makeGeneralNameInterface("

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    .line 903
    const-string/jumbo v4, ")..."

    #@19
    .line 902
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@24
    .line 906
    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    #@26
    if-eqz v2, :cond_3

    #@28
    .line 907
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@2a
    if-eqz v2, :cond_1

    #@2c
    .line 908
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "X509CertSelector.makeGeneralNameInterface() name is String: "

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@45
    .line 911
    :cond_1
    packed-switch p0, :pswitch_data_0

    #@48
    .line 931
    :pswitch_0
    new-instance v2, Ljava/io/IOException;

    #@4a
    new-instance v3, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v4, "unable to parse String names of type "

    #@52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@61
    throw v2

    #@62
    .line 913
    :pswitch_1
    new-instance v0, Lsun/security/x509/RFC822Name;

    #@64
    check-cast p1, Ljava/lang/String;

    #@66
    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/RFC822Name;-><init>(Ljava/lang/String;)V

    #@69
    .line 934
    .local v0, "result":Lsun/security/x509/GeneralNameInterface;
    :goto_0
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@6b
    if-eqz v2, :cond_2

    #@6d
    .line 935
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@6f
    new-instance v3, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v4, "X509CertSelector.makeGeneralNameInterface() result: "

    #@77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v3

    #@7b
    .line 936
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    .line 935
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v3

    #@83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v3

    #@87
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@8a
    .line 988
    :cond_2
    :goto_1
    return-object v0

    #@8b
    .line 916
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :pswitch_2
    new-instance v0, Lsun/security/x509/DNSName;

    #@8d
    check-cast p1, Ljava/lang/String;

    #@8f
    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    #@92
    .line 917
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_0

    #@93
    .line 919
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :pswitch_3
    new-instance v0, Lsun/security/x509/X500Name;

    #@95
    check-cast p1, Ljava/lang/String;

    #@97
    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    #@9a
    .line 920
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_0

    #@9b
    .line 922
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :pswitch_4
    new-instance v0, Lsun/security/x509/URIName;

    #@9d
    check-cast p1, Ljava/lang/String;

    #@9f
    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/URIName;-><init>(Ljava/lang/String;)V

    #@a2
    .line 923
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_0

    #@a3
    .line 925
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :pswitch_5
    new-instance v0, Lsun/security/x509/IPAddressName;

    #@a5
    check-cast p1, Ljava/lang/String;

    #@a7
    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/IPAddressName;-><init>(Ljava/lang/String;)V

    #@aa
    .line 926
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_0

    #@ab
    .line 928
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :pswitch_6
    new-instance v0, Lsun/security/x509/OIDName;

    #@ad
    check-cast p1, Ljava/lang/String;

    #@af
    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/OIDName;-><init>(Ljava/lang/String;)V

    #@b2
    .line 929
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_0

    #@b3
    .line 938
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :cond_3
    instance-of v2, p1, [B

    #@b5
    if-eqz v2, :cond_5

    #@b7
    .line 939
    new-instance v1, Lsun/security/util/DerValue;

    #@b9
    check-cast p1, [B

    #@bb
    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    #@be
    .line 940
    .local v1, "val":Lsun/security/util/DerValue;
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@c0
    if-eqz v2, :cond_4

    #@c2
    .line 941
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@c4
    .line 942
    const-string/jumbo v3, "X509CertSelector.makeGeneralNameInterface() is byte[]"

    #@c7
    .line 941
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@ca
    .line 945
    :cond_4
    packed-switch p0, :pswitch_data_1

    #@cd
    .line 974
    new-instance v2, Ljava/io/IOException;

    #@cf
    new-instance v3, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v4, "unable to parse byte array names of type "

    #@d7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v3

    #@db
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@de
    move-result-object v3

    #@df
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v3

    #@e3
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e6
    throw v2

    #@e7
    .line 947
    :pswitch_7
    new-instance v0, Lsun/security/x509/OtherName;

    #@e9
    invoke-direct {v0, v1}, Lsun/security/x509/OtherName;-><init>(Lsun/security/util/DerValue;)V

    #@ec
    .line 977
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :goto_2
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@ee
    if-eqz v2, :cond_2

    #@f0
    .line 978
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@f2
    new-instance v3, Ljava/lang/StringBuilder;

    #@f4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f7
    const-string/jumbo v4, "X509CertSelector.makeGeneralNameInterface() result: "

    #@fa
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v3

    #@fe
    .line 979
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@101
    move-result-object v4

    #@102
    .line 978
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v3

    #@106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v3

    #@10a
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@10d
    goto/16 :goto_1

    #@10f
    .line 950
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_8
    new-instance v0, Lsun/security/x509/RFC822Name;

    #@111
    invoke-direct {v0, v1}, Lsun/security/x509/RFC822Name;-><init>(Lsun/security/util/DerValue;)V

    #@114
    .line 951
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_2

    #@115
    .line 953
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_9
    new-instance v0, Lsun/security/x509/DNSName;

    #@117
    invoke-direct {v0, v1}, Lsun/security/x509/DNSName;-><init>(Lsun/security/util/DerValue;)V

    #@11a
    .line 954
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_2

    #@11b
    .line 956
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_a
    new-instance v0, Lsun/security/x509/X400Address;

    #@11d
    invoke-direct {v0, v1}, Lsun/security/x509/X400Address;-><init>(Lsun/security/util/DerValue;)V

    #@120
    .line 957
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_2

    #@121
    .line 959
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_b
    new-instance v0, Lsun/security/x509/X500Name;

    #@123
    invoke-direct {v0, v1}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerValue;)V

    #@126
    .line 960
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_2

    #@127
    .line 962
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_c
    new-instance v0, Lsun/security/x509/EDIPartyName;

    #@129
    invoke-direct {v0, v1}, Lsun/security/x509/EDIPartyName;-><init>(Lsun/security/util/DerValue;)V

    #@12c
    .line 963
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_2

    #@12d
    .line 965
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_d
    new-instance v0, Lsun/security/x509/URIName;

    #@12f
    invoke-direct {v0, v1}, Lsun/security/x509/URIName;-><init>(Lsun/security/util/DerValue;)V

    #@132
    .line 966
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_2

    #@133
    .line 968
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_e
    new-instance v0, Lsun/security/x509/IPAddressName;

    #@135
    invoke-direct {v0, v1}, Lsun/security/x509/IPAddressName;-><init>(Lsun/security/util/DerValue;)V

    #@138
    .line 969
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_2

    #@139
    .line 971
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_f
    new-instance v0, Lsun/security/x509/OIDName;

    #@13b
    invoke-direct {v0, v1}, Lsun/security/x509/OIDName;-><init>(Lsun/security/util/DerValue;)V

    #@13e
    .line 972
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_2

    #@13f
    .line 982
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .end local v1    # "val":Lsun/security/util/DerValue;
    .restart local p1    # "name":Ljava/lang/Object;
    :cond_5
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@141
    if-eqz v2, :cond_6

    #@143
    .line 983
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@145
    const-string/jumbo v3, "X509CertSelector.makeGeneralName() input name not String or byte array"

    #@148
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@14b
    .line 986
    :cond_6
    new-instance v2, Ljava/io/IOException;

    #@14d
    const-string/jumbo v3, "name not String or byte array"

    #@150
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@153
    throw v2

    #@154
    .line 911
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    #@168
    .line 945
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private matchAuthorityKeyID(Ljava/security/cert/X509Certificate;)Z
    .locals 7
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 2140
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    #@4
    if-nez v4, :cond_0

    #@6
    .line 2141
    return v5

    #@7
    .line 2144
    :cond_0
    :try_start_0
    const-string/jumbo v4, "2.5.29.35"

    #@a
    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@d
    move-result-object v2

    #@e
    .line 2145
    .local v2, "extVal":[B
    if-nez v2, :cond_2

    #@10
    .line 2146
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@12
    if-eqz v4, :cond_1

    #@14
    .line 2147
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@16
    const-string/jumbo v5, "X509CertSelector.match: no authority key ID extension"

    #@19
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@1c
    .line 2150
    :cond_1
    return v6

    #@1d
    .line 2152
    :cond_2
    new-instance v3, Lsun/security/util/DerInputStream;

    #@1f
    invoke-direct {v3, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@22
    .line 2153
    .local v3, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    #@25
    move-result-object v0

    #@26
    .line 2154
    .local v0, "certAuthKeyID":[B
    if-eqz v0, :cond_3

    #@28
    .line 2155
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    #@2a
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_3

    #@30
    .line 2169
    return v5

    #@31
    .line 2156
    :cond_3
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@33
    if-eqz v4, :cond_4

    #@35
    .line 2157
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@37
    const-string/jumbo v5, "X509CertSelector.match: authority key IDs don\'t match"

    #@3a
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 2160
    :cond_4
    return v6

    #@3e
    .line 2162
    .end local v0    # "certAuthKeyID":[B
    .end local v2    # "extVal":[B
    .end local v3    # "in":Lsun/security/util/DerInputStream;
    :catch_0
    move-exception v1

    #@3f
    .line 2163
    .local v1, "ex":Ljava/io/IOException;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@41
    if-eqz v4, :cond_5

    #@43
    .line 2164
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@45
    const-string/jumbo v5, "X509CertSelector.match: exception in authority key ID check"

    #@48
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@4b
    .line 2167
    :cond_5
    return v6
.end method

.method private matchBasicConstraints(Ljava/security/cert/X509Certificate;)Z
    .locals 6
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    .line 2570
    iget v1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    #@5
    if-ne v1, v3, :cond_0

    #@7
    .line 2571
    return v5

    #@8
    .line 2573
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    #@b
    move-result v0

    #@c
    .line 2574
    .local v0, "maxPathLen":I
    iget v1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    #@e
    const/4 v2, -0x2

    #@f
    if-ne v1, v2, :cond_2

    #@11
    .line 2575
    if-eq v0, v3, :cond_4

    #@13
    .line 2576
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 2577
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@19
    const-string/jumbo v2, "X509CertSelector.match: not an EE cert"

    #@1c
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@1f
    .line 2579
    :cond_1
    return v4

    #@20
    .line 2582
    :cond_2
    iget v1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    #@22
    if-ge v0, v1, :cond_4

    #@24
    .line 2583
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 2584
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@2a
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v3, "X509CertSelector.match: maxPathLen too small ("

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 2585
    const-string/jumbo v3, " < "

    #@3d
    .line 2584
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    .line 2585
    iget v3, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    #@43
    .line 2584
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    .line 2585
    const-string/jumbo v3, ")"

    #@4a
    .line 2584
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@55
    .line 2587
    :cond_3
    return v4

    #@56
    .line 2590
    :cond_4
    return v5
.end method

.method private matchExcluded(Lsun/security/x509/GeneralSubtrees;)Z
    .locals 8
    .param p1, "excluded"    # Lsun/security/x509/GeneralSubtrees;

    #@0
    .prologue
    .line 2502
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v3

    #@4
    .local v3, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralSubtree;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_3

    #@a
    .line 2503
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v4

    #@e
    check-cast v4, Lsun/security/x509/GeneralSubtree;

    #@10
    .line 2504
    .local v4, "tree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v4}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@17
    move-result-object v0

    #@18
    .line 2505
    .local v0, "excludedName":Lsun/security/x509/GeneralNameInterface;
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    #@1a
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .line 2506
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_0

    #@24
    .line 2507
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Lsun/security/x509/GeneralNameInterface;

    #@2a
    .line 2508
    .local v2, "pathToName":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v0}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@2d
    move-result v5

    #@2e
    invoke-interface {v2}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@31
    move-result v6

    #@32
    if-ne v5, v6, :cond_1

    #@34
    .line 2509
    invoke-interface {v2, v0}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    #@37
    move-result v5

    #@38
    packed-switch v5, :pswitch_data_0

    #@3b
    :pswitch_0
    goto :goto_0

    #@3c
    .line 2512
    :pswitch_1
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@3e
    if-eqz v5, :cond_2

    #@40
    .line 2513
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@42
    const-string/jumbo v6, "X509CertSelector.match: name constraints inhibit path to specified name"

    #@45
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@48
    .line 2515
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@4a
    new-instance v6, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v7, "X509CertSelector.match: excluded name: "

    #@52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@61
    .line 2518
    :cond_2
    const/4 v5, 0x0

    #@62
    return v5

    #@63
    .line 2524
    .end local v0    # "excludedName":Lsun/security/x509/GeneralNameInterface;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    .end local v2    # "pathToName":Lsun/security/x509/GeneralNameInterface;
    .end local v4    # "tree":Lsun/security/x509/GeneralSubtree;
    :cond_3
    const/4 v5, 0x1

    #@64
    return v5

    #@65
    .line 2509
    nop

    #@66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private matchExtendedKeyUsage(Ljava/security/cert/X509Certificate;)Z
    .locals 6
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2288
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    #@8
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 2289
    :cond_0
    return v4

    #@f
    .line 2294
    :cond_1
    const/4 v3, 0x4

    #@10
    .line 2293
    :try_start_0
    invoke-static {p1, v3}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lsun/security/x509/ExtendedKeyUsageExtension;

    #@16
    .line 2295
    .local v2, "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    if-eqz v2, :cond_2

    #@18
    .line 2297
    const-string/jumbo v3, "usages"

    #@1b
    invoke-virtual {v2, v3}, Lsun/security/x509/ExtendedKeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/util/Vector;

    #@21
    .line 2298
    .local v0, "certKeyPurposeVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    sget-object v3, Ljava/security/cert/X509CertSelector;->ANY_EXTENDED_KEY_USAGE:Lsun/security/util/ObjectIdentifier;

    #@23
    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_2

    #@29
    .line 2299
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    #@2b
    invoke-virtual {v0, v3}, Ljava/util/Vector;->containsAll(Ljava/util/Collection;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_3

    #@31
    .line 2314
    .end local v0    # "certKeyPurposeVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    :cond_2
    return v4

    #@32
    .line 2300
    .restart local v0    # "certKeyPurposeVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    :cond_3
    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@34
    if-eqz v3, :cond_4

    #@36
    .line 2301
    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@38
    const-string/jumbo v4, "X509CertSelector.match: cert failed extendedKeyUsage criterion"

    #@3b
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 2304
    :cond_4
    return v5

    #@3f
    .line 2307
    .end local v0    # "certKeyPurposeVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    .end local v2    # "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    :catch_0
    move-exception v1

    #@40
    .line 2308
    .local v1, "ex":Ljava/io/IOException;
    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@42
    if-eqz v3, :cond_5

    #@44
    .line 2309
    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@46
    const-string/jumbo v4, "X509CertSelector.match: IOException in extended key usage check"

    #@49
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@4c
    .line 2312
    :cond_5
    return v5
.end method

.method private matchKeyUsage(Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 2267
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 2268
    return v3

    #@6
    .line 2270
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    #@9
    move-result-object v0

    #@a
    .line 2271
    .local v0, "certKeyUsage":[Z
    if-eqz v0, :cond_4

    #@c
    .line 2272
    const/4 v1, 0x0

    #@d
    .local v1, "keyBit":I
    :goto_0
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@f
    array-length v2, v2

    #@10
    if-ge v1, v2, :cond_4

    #@12
    .line 2273
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@14
    aget-boolean v2, v2, v1

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 2274
    array-length v2, v0

    #@19
    if-ge v1, v2, :cond_2

    #@1b
    aget-boolean v2, v0, v1

    #@1d
    if-eqz v2, :cond_2

    #@1f
    .line 2272
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2275
    :cond_2
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@24
    if-eqz v2, :cond_3

    #@26
    .line 2276
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@28
    const-string/jumbo v3, "X509CertSelector.match: key usage bits don\'t match"

    #@2b
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@2e
    .line 2279
    :cond_3
    const/4 v2, 0x0

    #@2f
    return v2

    #@30
    .line 2283
    .end local v1    # "keyBit":I
    :cond_4
    return v3
.end method

.method private matchNameConstraints(Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2366
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 2367
    return v2

    #@7
    .line 2370
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@9
    invoke-virtual {v1, p1}, Lsun/security/x509/NameConstraintsExtension;->verify(Ljava/security/cert/X509Certificate;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_3

    #@f
    .line 2371
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 2372
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@15
    const-string/jumbo v2, "X509CertSelector.match: name constraints not satisfied"

    #@18
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 2375
    :cond_1
    return v3

    #@1c
    .line 2377
    :catch_0
    move-exception v0

    #@1d
    .line 2378
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 2379
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@23
    const-string/jumbo v2, "X509CertSelector.match: IOException in name constraints check"

    #@26
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@29
    .line 2382
    :cond_2
    return v3

    #@2a
    .line 2384
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    return v2
.end method

.method private matchPathToNames(Ljava/security/cert/X509Certificate;)Z
    .locals 10
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 2454
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    #@4
    if-nez v5, :cond_0

    #@6
    .line 2455
    return v9

    #@7
    .line 2459
    :cond_0
    const/4 v5, 0x2

    #@8
    :try_start_0
    invoke-static {p1, v5}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    #@b
    move-result-object v2

    #@c
    .line 2458
    check-cast v2, Lsun/security/x509/NameConstraintsExtension;

    #@e
    .line 2460
    .local v2, "ext":Lsun/security/x509/NameConstraintsExtension;
    if-nez v2, :cond_1

    #@10
    .line 2461
    return v9

    #@11
    .line 2463
    :cond_1
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@13
    if-eqz v5, :cond_3

    #@15
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@17
    const-string/jumbo v5, "certpath"

    #@1a
    invoke-static {v5}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_3

    #@20
    .line 2464
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@22
    const-string/jumbo v6, "X509CertSelector.match pathToNames:\n"

    #@25
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@28
    .line 2466
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    #@2a
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v3

    #@2e
    .line 2467
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_3

    #@34
    .line 2468
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@36
    new-instance v6, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v7, "    "

    #@3e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    const-string/jumbo v7, "\n"

    #@4d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    goto :goto_0

    #@59
    .line 2486
    .end local v2    # "ext":Lsun/security/x509/NameConstraintsExtension;
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :catch_0
    move-exception v0

    #@5a
    .line 2487
    .local v0, "ex":Ljava/io/IOException;
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@5c
    if-eqz v5, :cond_2

    #@5e
    .line 2488
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@60
    const-string/jumbo v6, "X509CertSelector.match: IOException in name constraints check"

    #@63
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@66
    .line 2491
    :cond_2
    return v8

    #@67
    .line 2473
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v2    # "ext":Lsun/security/x509/NameConstraintsExtension;
    :cond_3
    :try_start_1
    const-string/jumbo v5, "permitted_subtrees"

    #@6a
    invoke-virtual {v2, v5}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    #@6d
    move-result-object v4

    #@6e
    .line 2475
    .local v4, "permitted":Lsun/security/x509/GeneralSubtrees;
    const-string/jumbo v5, "excluded_subtrees"

    #@71
    invoke-virtual {v2, v5}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    #@74
    move-result-object v1

    #@75
    .line 2476
    .local v1, "excluded":Lsun/security/x509/GeneralSubtrees;
    if-eqz v1, :cond_4

    #@77
    .line 2477
    invoke-direct {p0, v1}, Ljava/security/cert/X509CertSelector;->matchExcluded(Lsun/security/x509/GeneralSubtrees;)Z

    #@7a
    move-result v5

    #@7b
    if-nez v5, :cond_4

    #@7d
    .line 2478
    return v8

    #@7e
    .line 2481
    :cond_4
    if-eqz v4, :cond_5

    #@80
    .line 2482
    invoke-direct {p0, v4}, Ljava/security/cert/X509CertSelector;->matchPermitted(Lsun/security/x509/GeneralSubtrees;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@83
    move-result v5

    #@84
    if-nez v5, :cond_5

    #@86
    .line 2483
    return v8

    #@87
    .line 2493
    :cond_5
    return v9
.end method

.method private matchPermitted(Lsun/security/x509/GeneralSubtrees;)Z
    .locals 11
    .param p1, "permitted"    # Lsun/security/x509/GeneralSubtrees;

    #@0
    .prologue
    .line 2534
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    #@2
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 2535
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v8

    #@a
    if-eqz v8, :cond_5

    #@c
    .line 2536
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lsun/security/x509/GeneralNameInterface;

    #@12
    .line 2537
    .local v3, "pathToName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v6

    #@16
    .line 2538
    .local v6, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralSubtree;>;"
    const/4 v5, 0x0

    #@17
    .line 2539
    .local v5, "permittedNameFound":Z
    const/4 v1, 0x0

    #@18
    .line 2540
    .local v1, "nameTypeFound":Z
    const-string/jumbo v2, ""

    #@1b
    .line 2541
    .local v2, "names":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v8

    #@1f
    if-eqz v8, :cond_2

    #@21
    if-eqz v5, :cond_4

    #@23
    .line 2556
    :cond_2
    if-nez v5, :cond_0

    #@25
    if-eqz v1, :cond_0

    #@27
    .line 2557
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@29
    if-eqz v8, :cond_3

    #@2b
    .line 2558
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@2d
    new-instance v9, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v10, "X509CertSelector.match: name constraints inhibit path to specified name; permitted names of type "

    #@35
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v9

    #@39
    .line 2560
    invoke-interface {v3}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@3c
    move-result v10

    #@3d
    .line 2558
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v9

    #@41
    .line 2561
    const-string/jumbo v10, ": "

    #@44
    .line 2558
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v9

    #@48
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v9

    #@4c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v9

    #@50
    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@53
    .line 2562
    :cond_3
    const/4 v8, 0x0

    #@54
    return v8

    #@55
    .line 2542
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v7

    #@59
    check-cast v7, Lsun/security/x509/GeneralSubtree;

    #@5b
    .line 2543
    .local v7, "tree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v7}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    #@5e
    move-result-object v8

    #@5f
    invoke-virtual {v8}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@62
    move-result-object v4

    #@63
    .line 2544
    .local v4, "permittedName":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v4}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@66
    move-result v8

    #@67
    invoke-interface {v3}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@6a
    move-result v9

    #@6b
    if-ne v8, v9, :cond_1

    #@6d
    .line 2545
    const/4 v1, 0x1

    #@6e
    .line 2546
    new-instance v8, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v8

    #@77
    const-string/jumbo v9, "  "

    #@7a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v8

    #@7e
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v8

    #@82
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v2

    #@86
    .line 2547
    invoke-interface {v3, v4}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    #@89
    move-result v8

    #@8a
    packed-switch v8, :pswitch_data_0

    #@8d
    :pswitch_0
    goto :goto_0

    #@8e
    .line 2550
    :pswitch_1
    const/4 v5, 0x1

    #@8f
    .line 2551
    goto :goto_0

    #@90
    .line 2565
    .end local v1    # "nameTypeFound":Z
    .end local v2    # "names":Ljava/lang/String;
    .end local v3    # "pathToName":Lsun/security/x509/GeneralNameInterface;
    .end local v4    # "permittedName":Lsun/security/x509/GeneralNameInterface;
    .end local v5    # "permittedNameFound":Z
    .end local v6    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralSubtree;>;"
    .end local v7    # "tree":Lsun/security/x509/GeneralSubtree;
    :cond_5
    const/4 v8, 0x1

    #@91
    return v8

    #@92
    .line 2547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private matchPolicy(Ljava/security/cert/X509Certificate;)Z
    .locals 12
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 2389
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    #@4
    if-nez v9, :cond_0

    #@6
    .line 2390
    return v10

    #@7
    .line 2394
    :cond_0
    const/4 v9, 0x3

    #@8
    :try_start_0
    invoke-static {p1, v9}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    #@b
    move-result-object v1

    #@c
    .line 2393
    check-cast v1, Lsun/security/x509/CertificatePoliciesExtension;

    #@e
    .line 2395
    .local v1, "ext":Lsun/security/x509/CertificatePoliciesExtension;
    if-nez v1, :cond_2

    #@10
    .line 2396
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@12
    if-eqz v9, :cond_1

    #@14
    .line 2397
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@16
    const-string/jumbo v10, "X509CertSelector.match: no certificate policy extension"

    #@19
    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@1c
    .line 2400
    :cond_1
    return v11

    #@1d
    .line 2402
    :cond_2
    const-string/jumbo v9, "policies"

    #@20
    invoke-virtual {v1, v9}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;

    #@23
    move-result-object v7

    #@24
    .line 2407
    .local v7, "policies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    new-instance v8, Ljava/util/ArrayList;

    #@26
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@29
    move-result v9

    #@2a
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    #@2d
    .line 2408
    .local v8, "policyIDs":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyId;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v6

    #@31
    .local v6, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v9

    #@35
    if-eqz v9, :cond_4

    #@37
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v5

    #@3b
    check-cast v5, Lsun/security/x509/PolicyInformation;

    #@3d
    .line 2409
    .local v5, "info":Lsun/security/x509/PolicyInformation;
    invoke-virtual {v5}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    #@40
    move-result-object v9

    #@41
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    goto :goto_0

    #@45
    .line 2442
    .end local v1    # "ext":Lsun/security/x509/CertificatePoliciesExtension;
    .end local v5    # "info":Lsun/security/x509/PolicyInformation;
    .end local v6    # "info$iterator":Ljava/util/Iterator;
    .end local v7    # "policies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    .end local v8    # "policyIDs":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyId;>;"
    :catch_0
    move-exception v0

    #@46
    .line 2443
    .local v0, "ex":Ljava/io/IOException;
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@48
    if-eqz v9, :cond_3

    #@4a
    .line 2444
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@4c
    const-string/jumbo v10, "X509CertSelector.match: IOException in certificate policy ID check"

    #@4f
    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@52
    .line 2447
    :cond_3
    return v11

    #@53
    .line 2411
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "ext":Lsun/security/x509/CertificatePoliciesExtension;
    .restart local v6    # "info$iterator":Ljava/util/Iterator;
    .restart local v7    # "policies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    .restart local v8    # "policyIDs":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyId;>;"
    :cond_4
    :try_start_1
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    #@55
    if-eqz v9, :cond_a

    #@57
    .line 2412
    const/4 v2, 0x0

    #@58
    .line 2418
    .local v2, "foundOne":Z
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    #@5a
    invoke-virtual {v9}, Lsun/security/x509/CertificatePolicySet;->getCertPolicyIds()Ljava/util/List;

    #@5d
    move-result-object v9

    #@5e
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    #@61
    move-result v9

    #@62
    if-eqz v9, :cond_6

    #@64
    .line 2419
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    #@67
    move-result v9

    #@68
    if-eqz v9, :cond_a

    #@6a
    .line 2420
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@6c
    if-eqz v9, :cond_5

    #@6e
    .line 2421
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@70
    const-string/jumbo v10, "X509CertSelector.match: cert failed policyAny criterion"

    #@73
    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@76
    .line 2424
    :cond_5
    return v11

    #@77
    .line 2427
    :cond_6
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    #@79
    invoke-virtual {v9}, Lsun/security/x509/CertificatePolicySet;->getCertPolicyIds()Ljava/util/List;

    #@7c
    move-result-object v9

    #@7d
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@80
    move-result-object v4

    #@81
    .local v4, "id$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@84
    move-result v9

    #@85
    if-eqz v9, :cond_8

    #@87
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8a
    move-result-object v3

    #@8b
    check-cast v3, Lsun/security/x509/CertificatePolicyId;

    #@8d
    .line 2428
    .local v3, "id":Lsun/security/x509/CertificatePolicyId;
    invoke-interface {v8, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@90
    move-result v9

    #@91
    if-eqz v9, :cond_7

    #@93
    .line 2429
    const/4 v2, 0x1

    #@94
    .line 2433
    .end local v3    # "id":Lsun/security/x509/CertificatePolicyId;
    :cond_8
    if-nez v2, :cond_a

    #@96
    .line 2434
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@98
    if-eqz v9, :cond_9

    #@9a
    .line 2435
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@9c
    const-string/jumbo v10, "X509CertSelector.match: cert failed policyAny criterion"

    #@9f
    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@a2
    .line 2438
    :cond_9
    return v11

    #@a3
    .line 2449
    .end local v2    # "foundOne":Z
    .end local v4    # "id$iterator":Ljava/util/Iterator;
    :cond_a
    return v10
.end method

.method private matchPrivateKeyValid(Ljava/security/cert/X509Certificate;)Z
    .locals 13
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 2174
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@4
    if-nez v9, :cond_0

    #@6
    .line 2175
    return v10

    #@7
    .line 2177
    :cond_0
    const/4 v5, 0x0

    #@8
    .line 2180
    .local v5, "ext":Lsun/security/x509/PrivateKeyUsageExtension;
    const/4 v9, 0x0

    #@9
    :try_start_0
    invoke-static {p1, v9}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    #@c
    move-result-object v9

    #@d
    .line 2179
    move-object v0, v9

    #@e
    check-cast v0, Lsun/security/x509/PrivateKeyUsageExtension;

    #@10
    move-object v5, v0

    #@11
    .line 2181
    .local v5, "ext":Lsun/security/x509/PrivateKeyUsageExtension;
    if-eqz v5, :cond_1

    #@13
    .line 2182
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@15
    invoke-virtual {v5, v9}, Lsun/security/x509/PrivateKeyUsageExtension;->valid(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 2227
    :cond_1
    return v10

    #@19
    .line 2218
    .end local v5    # "ext":Lsun/security/x509/PrivateKeyUsageExtension;
    :catch_0
    move-exception v3

    #@1a
    .line 2219
    .local v3, "e4":Ljava/io/IOException;
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@1c
    if-eqz v9, :cond_2

    #@1e
    .line 2220
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@20
    new-instance v10, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v11, "X509CertSelector.match: IOException in private key usage check; X509CertSelector: "

    #@28
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v10

    #@2c
    .line 2222
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    #@2f
    move-result-object v11

    #@30
    .line 2220
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v10

    #@34
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v10

    #@38
    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3b
    .line 2223
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    #@3e
    .line 2225
    :cond_2
    return v12

    #@3f
    .line 2201
    .end local v3    # "e4":Ljava/io/IOException;
    :catch_1
    move-exception v2

    #@40
    .line 2202
    .local v2, "e2":Ljava/security/cert/CertificateNotYetValidException;
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@42
    if-eqz v9, :cond_3

    #@44
    .line 2203
    const-string/jumbo v8, "n/a"

    #@47
    .line 2206
    .local v8, "time":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v9, "not_before"

    #@4a
    invoke-virtual {v5, v9}, Lsun/security/x509/PrivateKeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@4d
    move-result-object v7

    #@4e
    .line 2205
    check-cast v7, Ljava/util/Date;

    #@50
    .line 2207
    .local v7, "notBefore":Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4

    #@53
    move-result-object v8

    #@54
    .line 2211
    .end local v7    # "notBefore":Ljava/util/Date;
    :goto_0
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@56
    new-instance v10, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v11, "X509CertSelector.match: private key usage not within validity date; ext.NOT_BEFORE: "

    #@5e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v10

    #@62
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v10

    #@66
    .line 2213
    const-string/jumbo v11, "; X509CertSelector: "

    #@69
    .line 2211
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v10

    #@6d
    .line 2214
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    #@70
    move-result-object v11

    #@71
    .line 2211
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v10

    #@75
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v10

    #@79
    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@7c
    .line 2215
    invoke-virtual {v2}, Ljava/security/cert/CertificateNotYetValidException;->printStackTrace()V

    #@7f
    .line 2217
    .end local v8    # "time":Ljava/lang/String;
    :cond_3
    return v12

    #@80
    .line 2184
    .end local v2    # "e2":Ljava/security/cert/CertificateNotYetValidException;
    :catch_2
    move-exception v1

    #@81
    .line 2185
    .local v1, "e1":Ljava/security/cert/CertificateExpiredException;
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@83
    if-eqz v9, :cond_4

    #@85
    .line 2186
    const-string/jumbo v8, "n/a"

    #@88
    .line 2189
    .restart local v8    # "time":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v9, "not_after"

    #@8b
    invoke-virtual {v5, v9}, Lsun/security/x509/PrivateKeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@8e
    move-result-object v6

    #@8f
    check-cast v6, Ljava/util/Date;

    #@91
    .line 2190
    .local v6, "notAfter":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3

    #@94
    move-result-object v8

    #@95
    .line 2194
    .end local v6    # "notAfter":Ljava/util/Date;
    :goto_1
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@97
    new-instance v10, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v11, "X509CertSelector.match: private key usage not within validity date; ext.NOT_After: "

    #@9f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v10

    #@a3
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v10

    #@a7
    .line 2196
    const-string/jumbo v11, "; X509CertSelector: "

    #@aa
    .line 2194
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v10

    #@ae
    .line 2197
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    #@b1
    move-result-object v11

    #@b2
    .line 2194
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v10

    #@b6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v10

    #@ba
    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@bd
    .line 2198
    invoke-virtual {v1}, Ljava/security/cert/CertificateExpiredException;->printStackTrace()V

    #@c0
    .line 2200
    .end local v8    # "time":Ljava/lang/String;
    :cond_4
    return v12

    #@c1
    .line 2191
    .restart local v8    # "time":Ljava/lang/String;
    :catch_3
    move-exception v4

    #@c2
    .local v4, "ex":Ljava/security/cert/CertificateException;
    goto :goto_1

    #@c3
    .line 2208
    .end local v1    # "e1":Ljava/security/cert/CertificateExpiredException;
    .end local v4    # "ex":Ljava/security/cert/CertificateException;
    .restart local v2    # "e2":Ljava/security/cert/CertificateNotYetValidException;
    :catch_4
    move-exception v4

    #@c4
    .restart local v4    # "ex":Ljava/security/cert/CertificateException;
    goto :goto_0
.end method

.method private matchSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Z
    .locals 12
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 2319
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    #@4
    if-eqz v8, :cond_0

    #@6
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    #@8
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    #@b
    move-result v8

    #@c
    if-eqz v8, :cond_1

    #@e
    .line 2320
    :cond_0
    return v9

    #@f
    .line 2325
    :cond_1
    const/4 v8, 0x1

    #@10
    .line 2324
    :try_start_0
    invoke-static {p1, v8}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    #@13
    move-result-object v6

    #@14
    check-cast v6, Lsun/security/x509/SubjectAlternativeNameExtension;

    #@16
    .line 2326
    .local v6, "sanExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-nez v6, :cond_3

    #@18
    .line 2327
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@1a
    if-eqz v8, :cond_2

    #@1c
    .line 2328
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@1e
    const-string/jumbo v9, "X509CertSelector.match: no subject alternative name extension"

    #@21
    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@24
    .line 2331
    :cond_2
    return v11

    #@25
    .line 2334
    :cond_3
    const-string/jumbo v8, "subject_name"

    #@28
    invoke-virtual {v6, v8}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    #@2b
    move-result-object v1

    #@2c
    .line 2336
    .local v1, "certNames":Lsun/security/x509/GeneralNames;
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    #@2e
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v4

    #@32
    .line 2337
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v8

    #@36
    if-eqz v8, :cond_7

    #@38
    .line 2338
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v5

    #@3c
    check-cast v5, Lsun/security/x509/GeneralNameInterface;

    #@3e
    .line 2339
    .local v5, "matchName":Lsun/security/x509/GeneralNameInterface;
    const/4 v3, 0x0

    #@3f
    .line 2340
    .local v3, "found":Z
    invoke-virtual {v1}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v7

    #@43
    .line 2341
    .end local v3    # "found":Z
    .local v7, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v8

    #@47
    if-eqz v8, :cond_5

    #@49
    if-eqz v3, :cond_8

    #@4b
    .line 2345
    :cond_5
    if-nez v3, :cond_6

    #@4d
    iget-boolean v8, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    #@4f
    if-nez v8, :cond_9

    #@51
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@54
    move-result v8

    #@55
    if-eqz v8, :cond_9

    #@57
    .line 2351
    :cond_6
    if-eqz v3, :cond_4

    #@59
    iget-boolean v8, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    #@5b
    if-nez v8, :cond_4

    #@5d
    .line 2361
    .end local v5    # "matchName":Lsun/security/x509/GeneralNameInterface;
    .end local v7    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_7
    return v9

    #@5e
    .line 2342
    .restart local v5    # "matchName":Lsun/security/x509/GeneralNameInterface;
    .restart local v7    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v8

    #@62
    check-cast v8, Lsun/security/x509/GeneralName;

    #@64
    invoke-virtual {v8}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@67
    move-result-object v0

    #@68
    .line 2343
    .local v0, "certName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v3

    #@6c
    .local v3, "found":Z
    goto :goto_0

    #@6d
    .line 2346
    .end local v0    # "certName":Lsun/security/x509/GeneralNameInterface;
    .end local v3    # "found":Z
    :cond_9
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@6f
    if-eqz v8, :cond_a

    #@71
    .line 2347
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@73
    new-instance v9, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v10, "X509CertSelector.match: subject alternative name "

    #@7b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v9

    #@7f
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v9

    #@83
    .line 2348
    const-string/jumbo v10, " not found"

    #@86
    .line 2347
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v9

    #@8a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v9

    #@8e
    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@91
    .line 2350
    :cond_a
    return v11

    #@92
    .line 2355
    .end local v1    # "certNames":Lsun/security/x509/GeneralNames;
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    .end local v5    # "matchName":Lsun/security/x509/GeneralNameInterface;
    .end local v6    # "sanExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v7    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :catch_0
    move-exception v2

    #@93
    .line 2356
    .local v2, "ex":Ljava/io/IOException;
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@95
    if-eqz v8, :cond_b

    #@97
    .line 2357
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@99
    const-string/jumbo v9, "X509CertSelector.match: IOException in subject alternative name check"

    #@9c
    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@9f
    .line 2359
    :cond_b
    return v11
.end method

.method private matchSubjectKeyID(Ljava/security/cert/X509Certificate;)Z
    .locals 7
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 2106
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    #@4
    if-nez v4, :cond_0

    #@6
    .line 2107
    return v5

    #@7
    .line 2110
    :cond_0
    :try_start_0
    const-string/jumbo v4, "2.5.29.14"

    #@a
    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@d
    move-result-object v2

    #@e
    .line 2111
    .local v2, "extVal":[B
    if-nez v2, :cond_2

    #@10
    .line 2112
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@12
    if-eqz v4, :cond_1

    #@14
    .line 2113
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@16
    const-string/jumbo v5, "X509CertSelector.match: no subject key ID extension"

    #@19
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@1c
    .line 2116
    :cond_1
    return v6

    #@1d
    .line 2118
    :cond_2
    new-instance v3, Lsun/security/util/DerInputStream;

    #@1f
    invoke-direct {v3, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@22
    .line 2119
    .local v3, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    #@25
    move-result-object v0

    #@26
    .line 2120
    .local v0, "certSubjectKeyID":[B
    if-eqz v0, :cond_3

    #@28
    .line 2121
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    #@2a
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_3

    #@30
    .line 2135
    return v5

    #@31
    .line 2122
    :cond_3
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@33
    if-eqz v4, :cond_4

    #@35
    .line 2123
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@37
    const-string/jumbo v5, "X509CertSelector.match: subject key IDs don\'t match"

    #@3a
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 2126
    :cond_4
    return v6

    #@3e
    .line 2128
    .end local v0    # "certSubjectKeyID":[B
    .end local v2    # "extVal":[B
    .end local v3    # "in":Lsun/security/util/DerInputStream;
    :catch_0
    move-exception v1

    #@3f
    .line 2129
    .local v1, "ex":Ljava/io/IOException;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@41
    if-eqz v4, :cond_5

    #@43
    .line 2130
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@45
    const-string/jumbo v5, "X509CertSelector.match: exception in subject key ID check"

    #@48
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@4b
    .line 2133
    :cond_5
    return v6
.end method

.method private matchSubjectPublicKeyAlgID(Ljava/security/cert/X509Certificate;)Z
    .locals 9
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 2232
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    #@4
    if-nez v4, :cond_0

    #@6
    .line 2233
    return v8

    #@7
    .line 2236
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@a
    move-result-object v4

    #@b
    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    #@e
    move-result-object v2

    #@f
    .line 2237
    .local v2, "encodedKey":[B
    new-instance v3, Lsun/security/util/DerValue;

    #@11
    invoke-direct {v3, v2}, Lsun/security/util/DerValue;-><init>([B)V

    #@14
    .line 2238
    .local v3, "val":Lsun/security/util/DerValue;
    iget-byte v4, v3, Lsun/security/util/DerValue;->tag:B

    #@16
    const/16 v5, 0x30

    #@18
    if-eq v4, v5, :cond_2

    #@1a
    .line 2239
    new-instance v4, Ljava/io/IOException;

    #@1c
    const-string/jumbo v5, "invalid key format"

    #@1f
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@22
    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 2255
    .end local v2    # "encodedKey":[B
    .end local v3    # "val":Lsun/security/util/DerValue;
    :catch_0
    move-exception v1

    #@24
    .line 2256
    .local v1, "e5":Ljava/io/IOException;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@26
    if-eqz v4, :cond_1

    #@28
    .line 2257
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@2a
    const-string/jumbo v5, "X509CertSelector.match: IOException in subject public key algorithm OID check"

    #@2d
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@30
    .line 2260
    :cond_1
    return v7

    #@31
    .line 2242
    .end local v1    # "e5":Ljava/io/IOException;
    .restart local v2    # "encodedKey":[B
    .restart local v3    # "val":Lsun/security/util/DerValue;
    :cond_2
    :try_start_1
    iget-object v4, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@33
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@36
    move-result-object v4

    #@37
    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@3a
    move-result-object v0

    #@3b
    .line 2243
    .local v0, "algID":Lsun/security/x509/AlgorithmId;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@3d
    if-eqz v4, :cond_3

    #@3f
    .line 2244
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@41
    new-instance v5, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v6, "X509CertSelector.match: subjectPublicKeyAlgID = "

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    .line 2245
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    #@4f
    .line 2244
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    .line 2245
    const-string/jumbo v6, ", xcert subjectPublicKeyAlgID = "

    #@56
    .line 2244
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    .line 2246
    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    #@5d
    move-result-object v6

    #@5e
    .line 2244
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@69
    .line 2248
    :cond_3
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    #@6b
    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v4, v5}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@72
    move-result v4

    #@73
    if-nez v4, :cond_5

    #@75
    .line 2249
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@77
    if-eqz v4, :cond_4

    #@79
    .line 2250
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@7b
    const-string/jumbo v5, "X509CertSelector.match: subject public key alg IDs don\'t match"

    #@7e
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@81
    .line 2253
    :cond_4
    return v7

    #@82
    .line 2262
    :cond_5
    return v8
.end method

.method private static parseNames(Ljava/util/Collection;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)",
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 849
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 850
    .local v0, "genNames":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/GeneralNameInterface;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "nameList$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_2

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/util/List;

    #@15
    .line 851
    .local v1, "nameList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@18
    move-result v5

    #@19
    const/4 v6, 0x2

    #@1a
    if-eq v5, v6, :cond_0

    #@1c
    .line 852
    new-instance v5, Ljava/io/IOException;

    #@1e
    const-string/jumbo v6, "name list size not 2"

    #@21
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@24
    throw v5

    #@25
    .line 854
    :cond_0
    const/4 v5, 0x0

    #@26
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    .line 855
    .local v4, "o":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Integer;

    #@2c
    if-nez v5, :cond_1

    #@2e
    .line 856
    new-instance v5, Ljava/io/IOException;

    #@30
    const-string/jumbo v6, "expected an Integer"

    #@33
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@36
    throw v5

    #@37
    .line 858
    :cond_1
    check-cast v4, Ljava/lang/Integer;

    #@39
    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@3c
    move-result v3

    #@3d
    .line 859
    .local v3, "nameType":I
    const/4 v5, 0x1

    #@3e
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v4

    #@42
    .line 860
    .restart local v4    # "o":Ljava/lang/Object;
    invoke-static {v3, v4}, Ljava/security/cert/X509CertSelector;->makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;

    #@45
    move-result-object v5

    #@46
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@49
    goto :goto_0

    #@4a
    .line 863
    .end local v1    # "nameList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "nameType":I
    .end local v4    # "o":Ljava/lang/Object;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public addPathToName(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1223
    invoke-direct {p0, p1, p2}, Ljava/security/cert/X509CertSelector;->addPathToNameInternal(ILjava/lang/Object;)V

    #@3
    .line 1222
    return-void
.end method

.method public addPathToName(I[B)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1253
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Ljava/security/cert/X509CertSelector;->addPathToNameInternal(ILjava/lang/Object;)V

    #@7
    .line 1251
    return-void
.end method

.method public addSubjectAlternativeName(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 756
    invoke-direct {p0, p1, p2}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeNameInternal(ILjava/lang/Object;)V

    #@3
    .line 755
    return-void
.end method

.method public addSubjectAlternativeName(I[B)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 801
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeNameInternal(ILjava/lang/Object;)V

    #@7
    .line 799
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 2609
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/security/cert/X509CertSelector;

    #@6
    .line 2611
    .local v0, "copy":Ljava/security/cert/X509CertSelector;
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 2613
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    #@c
    invoke-static {v2}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    #@f
    move-result-object v2

    #@10
    .line 2612
    iput-object v2, v0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    #@12
    .line 2616
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    #@14
    .line 2615
    invoke-static {v2}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    #@17
    move-result-object v2

    #@18
    .line 2614
    iput-object v2, v0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    #@1a
    .line 2618
    :cond_0
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 2620
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    #@20
    invoke-static {v2}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    #@23
    move-result-object v2

    #@24
    .line 2619
    iput-object v2, v0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    #@26
    .line 2623
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    #@28
    .line 2622
    invoke-static {v2}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    #@2b
    move-result-object v2

    #@2c
    .line 2621
    iput-object v2, v0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 2625
    :cond_1
    return-object v0

    #@2f
    .line 2626
    .end local v0    # "copy":Ljava/security/cert/X509CertSelector;
    :catch_0
    move-exception v1

    #@30
    .line 2628
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    #@32
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@39
    throw v2
.end method

.method public getAuthorityKeyIdentifier()[B
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1458
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1459
    return-object v1

    #@6
    .line 1461
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    return-object v0
.end method

.method public getBasicConstraints()I
    .locals 1

    #@0
    .prologue
    .line 1755
    iget v0, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    #@2
    return v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 1291
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public getCertificateValid()Ljava/util/Date;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1477
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1478
    return-object v1

    #@6
    .line 1480
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    #@8
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/Date;

    #@e
    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/Set;
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
    .line 1566
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 1319
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@2
    return-object v0
.end method

.method public getIssuerAsBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1364
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@8
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getIssuerAsString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1341
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@8
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getKeyUsage()[Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1547
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1548
    return-object v1

    #@6
    .line 1550
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [Z

    #@e
    return-object v0
.end method

.method public getMatchAllSubjectAltNames()Z
    .locals 1

    #@0
    .prologue
    .line 1586
    iget-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    #@2
    return v0
.end method

.method public getNameConstraints()[B
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1737
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1738
    return-object v1

    #@6
    .line 1740
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    return-object v0
.end method

.method public getPathToNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1806
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1807
    return-object v1

    #@6
    .line 1809
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    #@8
    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->cloneNames(Ljava/util/Collection;)Ljava/util/Set;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getPolicy()Ljava/util/Set;
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
    .line 1771
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->policySet:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getPrivateKeyValid()Ljava/util/Date;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1496
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1497
    return-object v1

    #@6
    .line 1499
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@8
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/Date;

    #@e
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 1305
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getSubject()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 1378
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@2
    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1623
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1624
    return-object v1

    #@6
    .line 1626
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    #@8
    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->cloneNames(Ljava/util/Collection;)Ljava/util/Set;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getSubjectAsBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1423
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@8
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getSubjectAsString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1400
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@8
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getSubjectKeyIdentifier()[B
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1439
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1440
    return-object v1

    #@6
    .line 1442
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    return-object v0
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .locals 1

    #@0
    .prologue
    .line 1529
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    #@2
    return-object v0
.end method

.method public getSubjectPublicKeyAlgID()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1514
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1515
    return-object v1

    #@6
    .line 1517
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    #@8
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 8
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2005
    instance-of v4, p1, Ljava/security/cert/X509Certificate;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 2006
    return v2

    #@6
    :cond_0
    move-object v3, p1

    #@7
    .line 2008
    check-cast v3, Ljava/security/cert/X509Certificate;

    #@9
    .line 2010
    .local v3, "xcert":Ljava/security/cert/X509Certificate;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 2011
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@f
    new-instance v5, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v6, "X509CertSelector.match(SN: "

    #@17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    .line 2012
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@1e
    move-result-object v6

    #@1f
    const/16 v7, 0x10

    #@21
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    .line 2011
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    .line 2012
    const-string/jumbo v6, "\n  Issuer: "

    #@2c
    .line 2011
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    .line 2013
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@33
    move-result-object v6

    #@34
    .line 2011
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    .line 2013
    const-string/jumbo v6, "\n  Subject: "

    #@3b
    .line 2011
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    .line 2013
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@42
    move-result-object v6

    #@43
    .line 2011
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    .line 2014
    const-string/jumbo v6, ")"

    #@4a
    .line 2011
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@55
    .line 2018
    :cond_1
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    #@57
    if-eqz v4, :cond_3

    #@59
    .line 2019
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    #@5b
    invoke-virtual {v4, v3}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v4

    #@5f
    if-nez v4, :cond_3

    #@61
    .line 2020
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@63
    if-eqz v4, :cond_2

    #@65
    .line 2021
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@67
    const-string/jumbo v5, "X509CertSelector.match: certs don\'t match"

    #@6a
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@6d
    .line 2024
    :cond_2
    return v2

    #@6e
    .line 2029
    :cond_3
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    #@70
    if-eqz v4, :cond_5

    #@72
    .line 2030
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    #@74
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@77
    move-result-object v5

    #@78
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v4

    #@7c
    if-nez v4, :cond_5

    #@7e
    .line 2031
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@80
    if-eqz v4, :cond_4

    #@82
    .line 2032
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@84
    const-string/jumbo v5, "X509CertSelector.match: serial numbers don\'t match"

    #@87
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@8a
    .line 2035
    :cond_4
    return v2

    #@8b
    .line 2040
    :cond_5
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@8d
    if-eqz v4, :cond_7

    #@8f
    .line 2041
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@91
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@94
    move-result-object v5

    #@95
    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v4

    #@99
    if-nez v4, :cond_7

    #@9b
    .line 2042
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@9d
    if-eqz v4, :cond_6

    #@9f
    .line 2043
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@a1
    const-string/jumbo v5, "X509CertSelector.match: issuer DNs don\'t match"

    #@a4
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@a7
    .line 2046
    :cond_6
    return v2

    #@a8
    .line 2051
    :cond_7
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@aa
    if-eqz v4, :cond_9

    #@ac
    .line 2052
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@ae
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@b1
    move-result-object v5

    #@b2
    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@b5
    move-result v4

    #@b6
    if-nez v4, :cond_9

    #@b8
    .line 2053
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@ba
    if-eqz v4, :cond_8

    #@bc
    .line 2054
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@be
    const-string/jumbo v5, "X509CertSelector.match: subject DNs don\'t match"

    #@c1
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@c4
    .line 2057
    :cond_8
    return v2

    #@c5
    .line 2062
    :cond_9
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    #@c7
    if-eqz v4, :cond_a

    #@c9
    .line 2064
    :try_start_0
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    #@cb
    invoke-virtual {v3, v4}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@ce
    .line 2075
    :cond_a
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    #@d0
    if-eqz v4, :cond_d

    #@d2
    .line 2076
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@d5
    move-result-object v4

    #@d6
    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    #@d9
    move-result-object v0

    #@da
    .line 2077
    .local v0, "certKey":[B
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    #@dc
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    #@df
    move-result v4

    #@e0
    if-nez v4, :cond_d

    #@e2
    .line 2078
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@e4
    if-eqz v4, :cond_b

    #@e6
    .line 2079
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@e8
    const-string/jumbo v5, "X509CertSelector.match: subject public keys don\'t match"

    #@eb
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@ee
    .line 2082
    :cond_b
    return v2

    #@ef
    .line 2065
    .end local v0    # "certKey":[B
    :catch_0
    move-exception v1

    #@f0
    .line 2066
    .local v1, "e":Ljava/security/cert/CertificateException;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@f2
    if-eqz v4, :cond_c

    #@f4
    .line 2067
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@f6
    const-string/jumbo v5, "X509CertSelector.match: certificate not within validity period"

    #@f9
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@fc
    .line 2070
    :cond_c
    return v2

    #@fd
    .line 2086
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :cond_d
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchBasicConstraints(Ljava/security/cert/X509Certificate;)Z

    #@100
    move-result v4

    #@101
    if-eqz v4, :cond_e

    #@103
    .line 2087
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchKeyUsage(Ljava/security/cert/X509Certificate;)Z

    #@106
    move-result v4

    #@107
    .line 2086
    if-eqz v4, :cond_e

    #@109
    .line 2088
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchExtendedKeyUsage(Ljava/security/cert/X509Certificate;)Z

    #@10c
    move-result v4

    #@10d
    .line 2086
    if-eqz v4, :cond_e

    #@10f
    .line 2089
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchSubjectKeyID(Ljava/security/cert/X509Certificate;)Z

    #@112
    move-result v4

    #@113
    .line 2086
    if-eqz v4, :cond_e

    #@115
    .line 2090
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchAuthorityKeyID(Ljava/security/cert/X509Certificate;)Z

    #@118
    move-result v4

    #@119
    .line 2086
    if-eqz v4, :cond_e

    #@11b
    .line 2091
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchPrivateKeyValid(Ljava/security/cert/X509Certificate;)Z

    #@11e
    move-result v4

    #@11f
    .line 2086
    if-eqz v4, :cond_e

    #@121
    .line 2092
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchSubjectPublicKeyAlgID(Ljava/security/cert/X509Certificate;)Z

    #@124
    move-result v4

    #@125
    .line 2086
    if-eqz v4, :cond_e

    #@127
    .line 2093
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchPolicy(Ljava/security/cert/X509Certificate;)Z

    #@12a
    move-result v4

    #@12b
    .line 2086
    if-eqz v4, :cond_e

    #@12d
    .line 2094
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Z

    #@130
    move-result v4

    #@131
    .line 2086
    if-eqz v4, :cond_e

    #@133
    .line 2095
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchPathToNames(Ljava/security/cert/X509Certificate;)Z

    #@136
    move-result v4

    #@137
    .line 2086
    if-eqz v4, :cond_e

    #@139
    .line 2096
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchNameConstraints(Ljava/security/cert/X509Certificate;)Z

    #@13c
    move-result v2

    #@13d
    .line 2098
    .local v2, "result":Z
    :cond_e
    if-eqz v2, :cond_f

    #@13f
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@141
    if-eqz v4, :cond_f

    #@143
    .line 2099
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    #@145
    const-string/jumbo v5, "X509CertSelector.match returning: true"

    #@148
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@14b
    .line 2101
    :cond_f
    return v2
.end method

.method public setAuthorityKeyIdentifier([B)V
    .locals 1
    .param p1, "authorityKeyID"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 443
    if-nez p1, :cond_0

    #@3
    .line 444
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    #@5
    .line 442
    :goto_0
    return-void

    #@6
    .line 446
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [B

    #@c
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    #@e
    goto :goto_0
.end method

.method public setBasicConstraints(I)V
    .locals 2
    .param p1, "minMaxPathLen"    # I

    #@0
    .prologue
    .line 1067
    const/4 v0, -0x2

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 1068
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "basic constraints less than -2"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 1070
    :cond_0
    iput p1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    #@e
    .line 1066
    return-void
.end method

.method public setCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 176
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    #@2
    .line 175
    return-void
.end method

.method public setCertificateValid(Ljava/util/Date;)V
    .locals 1
    .param p1, "certValid"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 463
    if-nez p1, :cond_0

    #@3
    .line 464
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    #@5
    .line 462
    :goto_0
    return-void

    #@6
    .line 466
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/Date;

    #@c
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    #@e
    goto :goto_0
.end method

.method public setExtendedKeyUsage(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "keyPurposeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 618
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_2

    #@9
    .line 619
    :cond_0
    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    #@b
    .line 620
    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    #@d
    .line 617
    :cond_1
    return-void

    #@e
    .line 623
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    #@10
    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@13
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@16
    move-result-object v2

    #@17
    .line 622
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    #@19
    .line 624
    new-instance v2, Ljava/util/HashSet;

    #@1b
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@1e
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    #@20
    .line 625
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    #@22
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v1

    #@26
    .local v1, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_1

    #@2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Ljava/lang/String;

    #@32
    .line 626
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    #@34
    new-instance v3, Lsun/security/util/ObjectIdentifier;

    #@36
    invoke-direct {v3, v0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@39
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3c
    goto :goto_0
.end method

.method public setIssuer(Ljava/lang/String;)V
    .locals 1
    .param p1, "issuerDN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 228
    if-nez p1, :cond_0

    #@3
    .line 229
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@5
    .line 227
    :goto_0
    return-void

    #@6
    .line 231
    :cond_0
    new-instance v0, Lsun/security/x509/X500Name;

    #@8
    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    #@b
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@11
    goto :goto_0
.end method

.method public setIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .locals 0
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 204
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@2
    .line 203
    return-void
.end method

.method public setIssuer([B)V
    .locals 3
    .param p1, "issuerDN"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 279
    if-nez p1, :cond_0

    #@3
    :goto_0
    :try_start_0
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@5
    .line 277
    return-void

    #@6
    .line 279
    :cond_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    #@8
    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    goto :goto_0

    #@c
    .line 280
    :catch_0
    move-exception v0

    #@d
    .line 281
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    #@f
    const-string/jumbo v2, "Invalid name"

    #@12
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/io/IOException;

    #@1b
    throw v1
.end method

.method public setKeyUsage([Z)V
    .locals 1
    .param p1, "keyUsage"    # [Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 591
    if-nez p1, :cond_0

    #@3
    .line 592
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@5
    .line 590
    :goto_0
    return-void

    #@6
    .line 594
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Z

    #@c
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@e
    goto :goto_0
.end method

.method public setMatchAllSubjectAltNames(Z)V
    .locals 0
    .param p1, "matchAllNames"    # Z

    #@0
    .prologue
    .line 648
    iput-boolean p1, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    #@2
    .line 647
    return-void
.end method

.method public setNameConstraints([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1041
    if-nez p1, :cond_0

    #@3
    .line 1042
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    #@5
    .line 1043
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@7
    .line 1040
    :goto_0
    return-void

    #@8
    .line 1045
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    #@10
    .line 1046
    new-instance v0, Lsun/security/x509/NameConstraintsExtension;

    #@12
    sget-object v1, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    #@14
    invoke-direct {v0, v1, p1}, Lsun/security/x509/NameConstraintsExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    #@17
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@19
    goto :goto_0
.end method

.method public setPathToNames(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v2, 0x0

    #@1
    .line 1170
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 1171
    :cond_0
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    #@b
    .line 1172
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    #@d
    .line 1169
    :goto_0
    return-void

    #@e
    .line 1174
    :cond_1
    invoke-static {p1}, Ljava/security/cert/X509CertSelector;->cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;

    #@11
    move-result-object v0

    #@12
    .line 1175
    .local v0, "tempNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->parseNames(Ljava/util/Collection;)Ljava/util/Set;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    #@18
    .line 1177
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    #@1a
    goto :goto_0
.end method

.method setPathToNamesInternal(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1185
    .local p1, "names":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/GeneralNameInterface;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    #@6
    .line 1186
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    #@8
    .line 1182
    return-void
.end method

.method public setPolicy(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "certPolicySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@1
    .line 1094
    if-nez p1, :cond_0

    #@3
    .line 1095
    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->policySet:Ljava/util/Set;

    #@5
    .line 1096
    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    #@7
    .line 1093
    :goto_0
    return-void

    #@8
    .line 1100
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    #@a
    invoke-direct {v4, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@d
    .line 1099
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@10
    move-result-object v3

    #@11
    .line 1102
    .local v3, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v0

    #@15
    .line 1103
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/Vector;

    #@17
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@1a
    .line 1104
    .local v2, "polIdVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/x509/CertificatePolicyId;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_2

    #@20
    .line 1105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    .line 1106
    .local v1, "o":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/String;

    #@26
    if-nez v4, :cond_1

    #@28
    .line 1107
    new-instance v4, Ljava/io/IOException;

    #@2a
    const-string/jumbo v5, "non String in certPolicySet"

    #@2d
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@30
    throw v4

    #@31
    .line 1109
    :cond_1
    new-instance v4, Lsun/security/x509/CertificatePolicyId;

    #@33
    new-instance v5, Lsun/security/util/ObjectIdentifier;

    #@35
    .line 1110
    check-cast v1, Ljava/lang/String;

    #@37
    .line 1109
    .end local v1    # "o":Ljava/lang/Object;
    invoke-direct {v5, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@3a
    invoke-direct {v4, v5}, Lsun/security/x509/CertificatePolicyId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    #@3d
    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@40
    goto :goto_1

    #@41
    .line 1113
    :cond_2
    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->policySet:Ljava/util/Set;

    #@43
    .line 1114
    new-instance v4, Lsun/security/x509/CertificatePolicySet;

    #@45
    invoke-direct {v4, v2}, Lsun/security/x509/CertificatePolicySet;-><init>(Ljava/util/Vector;)V

    #@48
    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    #@4a
    goto :goto_0
.end method

.method public setPrivateKeyValid(Ljava/util/Date;)V
    .locals 1
    .param p1, "privateKeyValid"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 484
    if-nez p1, :cond_0

    #@3
    .line 485
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@5
    .line 483
    :goto_0
    return-void

    #@6
    .line 487
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/Date;

    #@c
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@e
    goto :goto_0
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "serial"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 190
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    #@2
    .line 189
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subjectDN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 319
    if-nez p1, :cond_0

    #@3
    .line 320
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@5
    .line 318
    :goto_0
    return-void

    #@6
    .line 322
    :cond_0
    new-instance v0, Lsun/security/x509/X500Name;

    #@8
    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    #@b
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@11
    goto :goto_0
.end method

.method public setSubject(Ljavax/security/auth/x500/X500Principal;)V
    .locals 0
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 296
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@2
    .line 295
    return-void
.end method

.method public setSubject([B)V
    .locals 3
    .param p1, "subjectDN"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 343
    if-nez p1, :cond_0

    #@3
    :goto_0
    :try_start_0
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@5
    .line 341
    return-void

    #@6
    .line 343
    :cond_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    #@8
    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    goto :goto_0

    #@c
    .line 344
    :catch_0
    move-exception v0

    #@d
    .line 345
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    #@f
    const-string/jumbo v2, "Invalid name"

    #@12
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/io/IOException;

    #@1b
    throw v1
.end method

.method public setSubjectAlternativeNames(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v2, 0x0

    #@1
    .line 700
    if-nez p1, :cond_0

    #@3
    .line 701
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    #@5
    .line 702
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    #@7
    .line 699
    :goto_0
    return-void

    #@8
    .line 704
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 705
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    #@10
    .line 706
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    #@12
    .line 707
    return-void

    #@13
    .line 709
    :cond_1
    invoke-static {p1}, Ljava/security/cert/X509CertSelector;->cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;

    #@16
    move-result-object v0

    #@17
    .line 711
    .local v0, "tempNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->parseNames(Ljava/util/Collection;)Ljava/util/Set;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    #@1d
    .line 712
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    #@1f
    goto :goto_0
.end method

.method public setSubjectKeyIdentifier([B)V
    .locals 1
    .param p1, "subjectKeyID"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 382
    if-nez p1, :cond_0

    #@3
    .line 383
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    #@5
    .line 381
    :goto_0
    return-void

    #@6
    .line 385
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [B

    #@c
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    #@e
    goto :goto_0
.end method

.method public setSubjectPublicKey(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 523
    if-nez p1, :cond_0

    #@3
    .line 524
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    #@5
    .line 525
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    #@7
    .line 522
    :goto_0
    return-void

    #@8
    .line 527
    :cond_0
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    #@a
    .line 528
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    #@10
    goto :goto_0
.end method

.method public setSubjectPublicKey([B)V
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 566
    if-nez p1, :cond_0

    #@3
    .line 567
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    #@5
    .line 568
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    #@7
    .line 565
    :goto_0
    return-void

    #@8
    .line 570
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    #@10
    .line 571
    new-instance v0, Lsun/security/util/DerValue;

    #@12
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    #@14
    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    #@17
    invoke-static {v0}, Lsun/security/x509/X509Key;->parse(Lsun/security/util/DerValue;)Ljava/security/PublicKey;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    #@1d
    goto :goto_0
.end method

.method public setSubjectPublicKeyAlgID(Ljava/lang/String;)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 507
    if-nez p1, :cond_0

    #@3
    .line 508
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    #@5
    .line 506
    :goto_0
    return-void

    #@6
    .line 510
    :cond_0
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    #@8
    invoke-direct {v0, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    #@d
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 1819
    new-instance v4, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 1820
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v5, "X509CertSelector: [\n"

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 1821
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 1822
    new-instance v5, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v6, "  Certificate: "

    #@17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    #@1d
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    const-string/jumbo v6, "\n"

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    .line 1824
    :cond_0
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    #@35
    if-eqz v5, :cond_1

    #@37
    .line 1825
    new-instance v5, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v6, "  Serial Number: "

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    #@45
    invoke-virtual {v6}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    const-string/jumbo v6, "\n"

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5b
    .line 1827
    :cond_1
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@5d
    if-eqz v5, :cond_2

    #@5f
    .line 1828
    new-instance v5, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v6, "  Issuer: "

    #@67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getIssuerAsString()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    const-string/jumbo v6, "\n"

    #@76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@81
    .line 1830
    :cond_2
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@83
    if-eqz v5, :cond_3

    #@85
    .line 1831
    new-instance v5, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v6, "  Subject: "

    #@8d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v5

    #@91
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectAsString()Ljava/lang/String;

    #@94
    move-result-object v6

    #@95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v5

    #@99
    const-string/jumbo v6, "\n"

    #@9c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v5

    #@a4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a7
    .line 1833
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v6, "  matchAllSubjectAltNames flag: "

    #@af
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v5

    #@b3
    .line 1834
    iget-boolean v6, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    #@b5
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@b8
    move-result-object v6

    #@b9
    .line 1833
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v5

    #@bd
    .line 1834
    const-string/jumbo v6, "\n"

    #@c0
    .line 1833
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v5

    #@c4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v5

    #@c8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@cb
    .line 1835
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    #@cd
    if-eqz v5, :cond_4

    #@cf
    .line 1836
    const-string/jumbo v5, "  SubjectAlternativeNames:\n"

    #@d2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d5
    .line 1837
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    #@d7
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@da
    move-result-object v1

    #@db
    .line 1838
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@de
    move-result v5

    #@df
    if-eqz v5, :cond_4

    #@e1
    .line 1839
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e4
    move-result-object v3

    #@e5
    check-cast v3, Ljava/util/List;

    #@e7
    .line 1840
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    const-string/jumbo v6, "    type "

    #@ef
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v5

    #@f3
    const/4 v6, 0x0

    #@f4
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f7
    move-result-object v6

    #@f8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v5

    #@fc
    .line 1841
    const-string/jumbo v6, ", name "

    #@ff
    .line 1840
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v5

    #@103
    .line 1841
    const/4 v6, 0x1

    #@104
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@107
    move-result-object v6

    #@108
    .line 1840
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v5

    #@10c
    .line 1841
    const-string/jumbo v6, "\n"

    #@10f
    .line 1840
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v5

    #@113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v5

    #@117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11a
    goto :goto_0

    #@11b
    .line 1844
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_4
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    #@11d
    if-eqz v5, :cond_5

    #@11f
    .line 1845
    new-instance v0, Lsun/misc/HexDumpEncoder;

    #@121
    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@124
    .line 1846
    .local v0, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v5, Ljava/lang/StringBuilder;

    #@126
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@129
    const-string/jumbo v6, "  Subject Key Identifier: "

    #@12c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v5

    #@130
    .line 1847
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    #@132
    invoke-virtual {v0, v6}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@135
    move-result-object v6

    #@136
    .line 1846
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v5

    #@13a
    .line 1847
    const-string/jumbo v6, "\n"

    #@13d
    .line 1846
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v5

    #@141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@144
    move-result-object v5

    #@145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@148
    .line 1849
    .end local v0    # "enc":Lsun/misc/HexDumpEncoder;
    :cond_5
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    #@14a
    if-eqz v5, :cond_6

    #@14c
    .line 1850
    new-instance v0, Lsun/misc/HexDumpEncoder;

    #@14e
    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@151
    .line 1851
    .restart local v0    # "enc":Lsun/misc/HexDumpEncoder;
    new-instance v5, Ljava/lang/StringBuilder;

    #@153
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@156
    const-string/jumbo v6, "  Authority Key Identifier: "

    #@159
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v5

    #@15d
    .line 1852
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    #@15f
    invoke-virtual {v0, v6}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@162
    move-result-object v6

    #@163
    .line 1851
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v5

    #@167
    .line 1852
    const-string/jumbo v6, "\n"

    #@16a
    .line 1851
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v5

    #@16e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v5

    #@172
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@175
    .line 1854
    .end local v0    # "enc":Lsun/misc/HexDumpEncoder;
    :cond_6
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    #@177
    if-eqz v5, :cond_7

    #@179
    .line 1855
    new-instance v5, Ljava/lang/StringBuilder;

    #@17b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@17e
    const-string/jumbo v6, "  Certificate Valid: "

    #@181
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v5

    #@185
    .line 1856
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    #@187
    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@18a
    move-result-object v6

    #@18b
    .line 1855
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v5

    #@18f
    .line 1856
    const-string/jumbo v6, "\n"

    #@192
    .line 1855
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v5

    #@196
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@199
    move-result-object v5

    #@19a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@19d
    .line 1858
    :cond_7
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@19f
    if-eqz v5, :cond_8

    #@1a1
    .line 1859
    new-instance v5, Ljava/lang/StringBuilder;

    #@1a3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a6
    const-string/jumbo v6, "  Private Key Valid: "

    #@1a9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v5

    #@1ad
    .line 1860
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@1af
    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@1b2
    move-result-object v6

    #@1b3
    .line 1859
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v5

    #@1b7
    .line 1860
    const-string/jumbo v6, "\n"

    #@1ba
    .line 1859
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v5

    #@1be
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c1
    move-result-object v5

    #@1c2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c5
    .line 1862
    :cond_8
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    #@1c7
    if-eqz v5, :cond_9

    #@1c9
    .line 1863
    new-instance v5, Ljava/lang/StringBuilder;

    #@1cb
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1ce
    const-string/jumbo v6, "  Subject Public Key AlgID: "

    #@1d1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v5

    #@1d5
    .line 1864
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    #@1d7
    invoke-virtual {v6}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@1da
    move-result-object v6

    #@1db
    .line 1863
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v5

    #@1df
    .line 1864
    const-string/jumbo v6, "\n"

    #@1e2
    .line 1863
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v5

    #@1e6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e9
    move-result-object v5

    #@1ea
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1ed
    .line 1866
    :cond_9
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    #@1ef
    if-eqz v5, :cond_a

    #@1f1
    .line 1867
    new-instance v5, Ljava/lang/StringBuilder;

    #@1f3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1f6
    const-string/jumbo v6, "  Subject Public Key: "

    #@1f9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v5

    #@1fd
    .line 1868
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    #@1ff
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@202
    move-result-object v6

    #@203
    .line 1867
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@206
    move-result-object v5

    #@207
    .line 1868
    const-string/jumbo v6, "\n"

    #@20a
    .line 1867
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v5

    #@20e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@211
    move-result-object v5

    #@212
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@215
    .line 1870
    :cond_a
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@217
    if-eqz v5, :cond_b

    #@219
    .line 1871
    new-instance v5, Ljava/lang/StringBuilder;

    #@21b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@21e
    const-string/jumbo v6, "  Key Usage: "

    #@221
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@224
    move-result-object v5

    #@225
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@227
    invoke-static {v6}, Ljava/security/cert/X509CertSelector;->keyUsageToString([Z)Ljava/lang/String;

    #@22a
    move-result-object v6

    #@22b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    move-result-object v5

    #@22f
    const-string/jumbo v6, "\n"

    #@232
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@235
    move-result-object v5

    #@236
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@239
    move-result-object v5

    #@23a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23d
    .line 1873
    :cond_b
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    #@23f
    if-eqz v5, :cond_c

    #@241
    .line 1874
    new-instance v5, Ljava/lang/StringBuilder;

    #@243
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@246
    const-string/jumbo v6, "  Extended Key Usage: "

    #@249
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v5

    #@24d
    .line 1875
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    #@24f
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@252
    move-result-object v6

    #@253
    .line 1874
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@256
    move-result-object v5

    #@257
    .line 1875
    const-string/jumbo v6, "\n"

    #@25a
    .line 1874
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v5

    #@25e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@261
    move-result-object v5

    #@262
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@265
    .line 1877
    :cond_c
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    #@267
    if-eqz v5, :cond_d

    #@269
    .line 1878
    new-instance v5, Ljava/lang/StringBuilder;

    #@26b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26e
    const-string/jumbo v6, "  Policy: "

    #@271
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@274
    move-result-object v5

    #@275
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    #@277
    invoke-virtual {v6}, Lsun/security/x509/CertificatePolicySet;->toString()Ljava/lang/String;

    #@27a
    move-result-object v6

    #@27b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27e
    move-result-object v5

    #@27f
    const-string/jumbo v6, "\n"

    #@282
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@285
    move-result-object v5

    #@286
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@289
    move-result-object v5

    #@28a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28d
    .line 1880
    :cond_d
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    #@28f
    if-eqz v5, :cond_e

    #@291
    .line 1881
    const-string/jumbo v5, "  Path to names:\n"

    #@294
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@297
    .line 1882
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    #@299
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@29c
    move-result-object v2

    #@29d
    .line 1883
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2a0
    move-result v5

    #@2a1
    if-eqz v5, :cond_e

    #@2a3
    .line 1884
    new-instance v5, Ljava/lang/StringBuilder;

    #@2a5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a8
    const-string/jumbo v6, "    "

    #@2ab
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ae
    move-result-object v5

    #@2af
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b2
    move-result-object v6

    #@2b3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b6
    move-result-object v5

    #@2b7
    const-string/jumbo v6, "\n"

    #@2ba
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bd
    move-result-object v5

    #@2be
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c1
    move-result-object v5

    #@2c2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c5
    goto :goto_1

    #@2c6
    .line 1887
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :cond_e
    const-string/jumbo v5, "]"

    #@2c9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2cc
    .line 1888
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2cf
    move-result-object v5

    #@2d0
    return-object v5
.end method
