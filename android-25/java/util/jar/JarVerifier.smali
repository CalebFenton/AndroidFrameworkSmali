.class Ljava/util/jar/JarVerifier;
.super Ljava/lang/Object;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarVerifier$1;,
        Ljava/util/jar/JarVerifier$VerifierCodeSource;,
        Ljava/util/jar/JarVerifier$VerifierStream;
    }
.end annotation


# static fields
.field static final debug:Lsun/security/util/Debug;


# instance fields
.field private anyToVerify:Z

.field private baos:Ljava/io/ByteArrayOutputStream;

.field private csdomain:Ljava/lang/Object;

.field eagerValidation:Z

.field private emptyEnumeration:Ljava/util/Enumeration;

.field private emptySigner:[Ljava/security/CodeSigner;

.field private jarCodeSigners:Ljava/util/List;

.field private lastURL:Ljava/net/URL;

.field private lastURLMap:Ljava/util/Map;

.field private volatile manDig:Lsun/security/util/ManifestDigester;

.field private manifestDigests:Ljava/util/List;

.field manifestRawBytes:[B

.field private parsingBlockOrSF:Z

.field private parsingMeta:Z

.field private pendingBlocks:Ljava/util/ArrayList;

.field private sigFileData:Ljava/util/Hashtable;

.field private sigFileSigners:Ljava/util/Hashtable;

.field private signerCache:Ljava/util/ArrayList;

.field private signerMap:Ljava/util/Map;

.field private signerToCodeSource:Ljava/util/Map;

.field private urlToCodeSourceMap:Ljava/util/Map;

.field private verifiedSigners:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    const-string/jumbo v0, "jar"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@9
    .line 45
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "rawBytes"    # [B

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 69
    iput-boolean v1, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    #@7
    .line 72
    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    #@9
    .line 75
    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    #@b
    .line 85
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    #@e
    .line 91
    new-instance v0, Ljava/lang/Object;

    #@10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@13
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    #@15
    .line 518
    new-instance v0, Ljava/util/HashMap;

    #@17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1a
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    #@1c
    .line 519
    new-instance v0, Ljava/util/HashMap;

    #@1e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@21
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signerToCodeSource:Ljava/util/Map;

    #@23
    .line 560
    new-array v0, v1, [Ljava/security/CodeSigner;

    #@25
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->emptySigner:[Ljava/security/CodeSigner;

    #@27
    .line 789
    new-instance v0, Ljava/util/jar/JarVerifier$1;

    #@29
    invoke-direct {v0, p0}, Ljava/util/jar/JarVerifier$1;-><init>(Ljava/util/jar/JarVerifier;)V

    #@2c
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->emptyEnumeration:Ljava/util/Enumeration;

    #@2e
    .line 97
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    #@30
    .line 98
    new-instance v0, Ljava/util/Hashtable;

    #@32
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@35
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    #@37
    .line 99
    new-instance v0, Ljava/util/Hashtable;

    #@39
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@3c
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    #@3e
    .line 100
    new-instance v0, Ljava/util/Hashtable;

    #@40
    const/16 v1, 0xb

    #@42
    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    #@45
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    #@47
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    #@49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@4c
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    #@4e
    .line 102
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@50
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@53
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    #@55
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    #@57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5a
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    #@5c
    .line 96
    return-void
.end method

.method private findMatchingSigners(Ljava/security/CodeSource;)[Ljava/security/CodeSigner;
    .locals 10
    .param p1, "cs"    # Ljava/security/CodeSource;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 566
    instance-of v6, p1, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    #@3
    if-eqz v6, :cond_0

    #@5
    move-object v5, p1

    #@6
    .line 567
    check-cast v5, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    #@8
    .line 568
    .local v5, "vcs":Ljava/util/jar/JarVerifier$VerifierCodeSource;
    iget-object v6, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    #@a
    invoke-virtual {v5, v6}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->isSameDomain(Ljava/lang/Object;)Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 569
    check-cast p1, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    #@12
    .end local p1    # "cs":Ljava/security/CodeSource;
    invoke-static {p1}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->-wrap0(Ljava/util/jar/JarVerifier$VerifierCodeSource;)[Ljava/security/CodeSigner;

    #@15
    move-result-object v6

    #@16
    return-object v6

    #@17
    .line 577
    .end local v5    # "vcs":Ljava/util/jar/JarVerifier$VerifierCodeSource;
    .restart local p1    # "cs":Ljava/security/CodeSource;
    :cond_0
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    #@1a
    move-result-object v6

    #@1b
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->getJarCodeSigners()Ljava/util/List;

    #@1e
    move-result-object v7

    #@1f
    const/4 v8, 0x1

    #@20
    invoke-direct {p0, v6, v7, v8}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;

    #@23
    move-result-object v4

    #@24
    .line 578
    .local v4, "sources":[Ljava/security/CodeSource;
    new-instance v3, Ljava/util/ArrayList;

    #@26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@29
    .line 579
    .local v3, "sourceList":Ljava/util/List;
    const/4 v0, 0x0

    #@2a
    .local v0, "i":I
    :goto_0
    array-length v6, v4

    #@2b
    if-ge v0, v6, :cond_1

    #@2d
    .line 580
    aget-object v6, v4, v0

    #@2f
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@32
    .line 579
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 582
    :cond_1
    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@38
    move-result v1

    #@39
    .line 583
    .local v1, "j":I
    const/4 v6, -0x1

    #@3a
    if-eq v1, v6, :cond_3

    #@3c
    .line 585
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v6

    #@40
    check-cast v6, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    #@42
    invoke-static {v6}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->-wrap0(Ljava/util/jar/JarVerifier$VerifierCodeSource;)[Ljava/security/CodeSigner;

    #@45
    move-result-object v2

    #@46
    .line 586
    .local v2, "match":[Ljava/security/CodeSigner;
    if-nez v2, :cond_2

    #@48
    .line 587
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->emptySigner:[Ljava/security/CodeSigner;

    #@4a
    .line 589
    :cond_2
    return-object v2

    #@4b
    .line 591
    .end local v2    # "match":[Ljava/security/CodeSigner;
    :cond_3
    return-object v9
.end method

.method private declared-synchronized getJarCodeSigners()Ljava/util/List;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 865
    :try_start_0
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 866
    new-instance v0, Ljava/util/HashSet;

    #@7
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@a
    .line 867
    .local v0, "set":Ljava/util/HashSet;
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    #@15
    .line 868
    new-instance v1, Ljava/util/ArrayList;

    #@17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    #@1c
    .line 869
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    #@1e
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@21
    .line 871
    .end local v0    # "set":Ljava/util/HashSet;
    :cond_0
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit p0

    #@24
    return-object v1

    #@25
    :catchall_0
    move-exception v1

    #@26
    monitor-exit p0

    #@27
    throw v1
.end method

.method static getUnsignedCS(Ljava/net/URL;)Ljava/security/CodeSource;
    .locals 3
    .param p0, "url"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 902
    new-instance v2, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    #@3
    move-object v0, v1

    #@4
    check-cast v0, [Ljava/security/cert/Certificate;

    #@6
    invoke-direct {v2, v1, p0, v0}, Ljava/util/jar/JarVerifier$VerifierCodeSource;-><init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    #@9
    return-object v2
.end method

.method static isSigningRelated(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 802
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@6
    move-result-object p0

    #@7
    .line 803
    const-string/jumbo v0, "META-INF/"

    #@a
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 804
    return v2

    #@11
    .line 806
    :cond_0
    const/16 v0, 0x9

    #@13
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@16
    move-result-object p0

    #@17
    .line 807
    const/16 v0, 0x2f

    #@19
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@1c
    move-result v0

    #@1d
    const/4 v1, -0x1

    #@1e
    if-eq v0, v1, :cond_1

    #@20
    .line 808
    return v2

    #@21
    .line 810
    :cond_1
    const-string/jumbo v0, ".DSA"

    #@24
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_2

    #@2a
    .line 811
    const-string/jumbo v0, ".RSA"

    #@2d
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@30
    move-result v0

    #@31
    .line 810
    if-nez v0, :cond_2

    #@33
    .line 812
    const-string/jumbo v0, ".SF"

    #@36
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@39
    move-result v0

    #@3a
    .line 810
    if-nez v0, :cond_2

    #@3c
    .line 813
    const-string/jumbo v0, ".EC"

    #@3f
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@42
    move-result v0

    #@43
    .line 810
    if-nez v0, :cond_2

    #@45
    .line 814
    const-string/jumbo v0, "SIG-"

    #@48
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4b
    move-result v0

    #@4c
    .line 810
    if-nez v0, :cond_2

    #@4e
    .line 815
    const-string/jumbo v0, "MANIFEST.MF"

    #@51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v0

    #@55
    .line 810
    if-eqz v0, :cond_3

    #@57
    .line 816
    :cond_2
    const/4 v0, 0x1

    #@58
    return v0

    #@59
    .line 818
    :cond_3
    return v2
.end method

.method private static mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;
    .locals 3
    .param p0, "signers"    # [Ljava/security/CodeSigner;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 380
    if-eqz p0, :cond_1

    #@3
    .line 381
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 382
    .local v0, "certChains":Ljava/util/ArrayList;
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@a
    if-ge v1, v2, :cond_0

    #@c
    .line 384
    aget-object v2, p0, v1

    #@e
    invoke-virtual {v2}, Ljava/security/CodeSigner;->getSignerCertPath()Ljava/security/cert/CertPath;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@15
    move-result-object v2

    #@16
    .line 383
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@19
    .line 382
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 390
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v2

    #@20
    new-array v2, v2, [Ljava/security/cert/Certificate;

    #@22
    .line 389
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, [Ljava/security/cert/Certificate;

    #@28
    .line 388
    return-object v2

    #@29
    .line 392
    .end local v0    # "certChains":Ljava/util/ArrayList;
    .end local v1    # "i":I
    :cond_1
    return-object v2
.end method

.method private declared-synchronized mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "signers"    # [Ljava/security/CodeSigner;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 530
    :try_start_0
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->lastURL:Ljava/net/URL;

    #@3
    if-ne p1, v2, :cond_1

    #@5
    .line 531
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->lastURLMap:Ljava/util/Map;

    #@7
    .line 541
    .local v1, "map":Ljava/util/Map;
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/security/CodeSource;

    #@d
    .line 542
    .local v0, "cs":Ljava/security/CodeSource;
    if-nez v0, :cond_0

    #@f
    .line 543
    new-instance v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    #@11
    .end local v0    # "cs":Ljava/security/CodeSource;
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    #@13
    invoke-direct {v0, v2, p1, p2}, Ljava/util/jar/JarVerifier$VerifierCodeSource;-><init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/CodeSigner;)V

    #@16
    .line 544
    .restart local v0    # "cs":Ljava/security/CodeSource;
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->signerToCodeSource:Ljava/util/Map;

    #@18
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    monitor-exit p0

    #@1c
    .line 546
    return-object v0

    #@1d
    .line 533
    .end local v0    # "cs":Ljava/security/CodeSource;
    .end local v1    # "map":Ljava/util/Map;
    :cond_1
    :try_start_1
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    #@1f
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/util/Map;

    #@25
    .line 534
    .restart local v1    # "map":Ljava/util/Map;
    if-nez v1, :cond_2

    #@27
    .line 535
    new-instance v1, Ljava/util/HashMap;

    #@29
    .end local v1    # "map":Ljava/util/Map;
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@2c
    .line 536
    .restart local v1    # "map":Ljava/util/Map;
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    #@2e
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 538
    :cond_2
    iput-object v1, p0, Ljava/util/jar/JarVerifier;->lastURLMap:Ljava/util/Map;

    #@33
    .line 539
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->lastURL:Ljava/net/URL;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .end local v1    # "map":Ljava/util/Map;
    :catchall_0
    move-exception v2

    #@37
    monitor-exit p0

    #@38
    throw v2
.end method

.method private mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "signers"    # Ljava/util/List;
    .param p3, "unsigned"    # Z

    #@0
    .prologue
    .line 550
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 552
    .local v1, "sources":Ljava/util/List;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@9
    move-result v2

    #@a
    if-ge v0, v2, :cond_0

    #@c
    .line 553
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, [Ljava/security/CodeSigner;

    #@12
    invoke-direct {p0, p1, v2}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 552
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 555
    :cond_0
    if-eqz p3, :cond_1

    #@1e
    .line 556
    const/4 v2, 0x0

    #@1f
    invoke-direct {p0, p1, v2}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    #@22
    move-result-object v2

    #@23
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    .line 558
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@29
    move-result v2

    #@2a
    new-array v2, v2, [Ljava/security/CodeSource;

    #@2c
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, [Ljava/security/CodeSource;

    #@32
    return-object v2
.end method

.method private processEntry(Lsun/security/util/ManifestEntryVerifier;)V
    .locals 13
    .param p1, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    iget-boolean v10, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    #@2
    if-nez v10, :cond_1

    #@4
    .line 228
    invoke-virtual {p1}, Lsun/security/util/ManifestEntryVerifier;->getEntry()Ljava/util/jar/JarEntry;

    #@7
    move-result-object v4

    #@8
    .line 229
    .local v4, "je":Ljava/util/jar/JarEntry;
    if-eqz v4, :cond_0

    #@a
    iget-object v10, v4, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    #@c
    if-nez v10, :cond_0

    #@e
    .line 230
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    #@10
    iget-object v11, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    #@12
    invoke-virtual {p1, v10, v11}, Lsun/security/util/ManifestEntryVerifier;->verify(Ljava/util/Hashtable;Ljava/util/Hashtable;)[Ljava/security/CodeSigner;

    #@15
    move-result-object v10

    #@16
    iput-object v10, v4, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    #@18
    .line 231
    iget-object v10, v4, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    #@1a
    invoke-static {v10}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    #@1d
    move-result-object v10

    #@1e
    iput-object v10, v4, Ljava/util/jar/JarEntry;->certs:[Ljava/security/cert/Certificate;

    #@20
    .line 225
    .end local v4    # "je":Ljava/util/jar/JarEntry;
    :cond_0
    :goto_0
    return-void

    #@21
    .line 236
    :cond_1
    const/4 v10, 0x0

    #@22
    :try_start_0
    iput-boolean v10, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    #@24
    .line 238
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@26
    if-eqz v10, :cond_2

    #@28
    .line 239
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@2a
    const-string/jumbo v11, "processEntry: processing block"

    #@2d
    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@30
    .line 242
    :cond_2
    invoke-virtual {p1}, Lsun/security/util/ManifestEntryVerifier;->getEntry()Ljava/util/jar/JarEntry;

    #@33
    move-result-object v10

    #@34
    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    #@37
    move-result-object v10

    #@38
    .line 243
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@3a
    .line 242
    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    .line 245
    .local v9, "uname":Ljava/lang/String;
    const-string/jumbo v10, ".SF"

    #@41
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@44
    move-result v10

    #@45
    if-eqz v10, :cond_6

    #@47
    .line 246
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@4a
    move-result v10

    #@4b
    add-int/lit8 v10, v10, -0x3

    #@4d
    const/4 v11, 0x0

    #@4e
    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    .line 247
    .local v5, "key":Ljava/lang/String;
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    #@54
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@57
    move-result-object v0

    #@58
    .line 249
    .local v0, "bytes":[B
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    #@5a
    invoke-virtual {v10, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    .line 252
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    #@5f
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@62
    move-result-object v3

    #@63
    .line 253
    .local v3, "it":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@66
    move-result v10

    #@67
    if-eqz v10, :cond_5

    #@69
    .line 255
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6c
    move-result-object v8

    #@6d
    check-cast v8, Lsun/security/util/SignatureFileVerifier;

    #@6f
    .line 256
    .local v8, "sfv":Lsun/security/util/SignatureFileVerifier;
    invoke-virtual {v8, v5}, Lsun/security/util/SignatureFileVerifier;->needSignatureFile(Ljava/lang/String;)Z

    #@72
    move-result v10

    #@73
    if-eqz v10, :cond_3

    #@75
    .line 257
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@77
    if-eqz v10, :cond_4

    #@79
    .line 258
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@7b
    .line 259
    const-string/jumbo v11, "processEntry: processing pending block"

    #@7e
    .line 258
    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@81
    .line 262
    :cond_4
    invoke-virtual {v8, v0}, Lsun/security/util/SignatureFileVerifier;->setSignatureFile([B)V

    #@84
    .line 263
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    #@86
    iget-object v11, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    #@88
    invoke-virtual {v8, v10, v11}, Lsun/security/util/SignatureFileVerifier;->process(Ljava/util/Hashtable;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    #@8b
    goto :goto_1

    #@8c
    .line 308
    .end local v0    # "bytes":[B
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "sfv":Lsun/security/util/SignatureFileVerifier;
    .end local v9    # "uname":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@8d
    .line 310
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@8f
    if-eqz v10, :cond_0

    #@91
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@93
    new-instance v11, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v12, "processEntry caught: "

    #@9b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v11

    #@9f
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v11

    #@a3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v11

    #@a7
    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@aa
    goto/16 :goto_0

    #@ac
    .line 266
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "bytes":[B
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v9    # "uname":Ljava/lang/String;
    :cond_5
    return-void

    #@ad
    .line 271
    .end local v0    # "bytes":[B
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string/jumbo v10, "."

    #@b0
    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@b3
    move-result v10

    #@b4
    const/4 v11, 0x0

    #@b5
    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b8
    move-result-object v5

    #@b9
    .line 273
    .restart local v5    # "key":Ljava/lang/String;
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    #@bb
    if-nez v10, :cond_7

    #@bd
    .line 274
    new-instance v10, Ljava/util/ArrayList;

    #@bf
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@c2
    iput-object v10, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    #@c4
    .line 276
    :cond_7
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    #@c6
    if-nez v10, :cond_9

    #@c8
    .line 277
    iget-object v11, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    #@ca
    monitor-enter v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3

    #@cb
    .line 278
    :try_start_2
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    #@cd
    if-nez v10, :cond_8

    #@cf
    .line 279
    new-instance v10, Lsun/security/util/ManifestDigester;

    #@d1
    iget-object v12, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    #@d3
    invoke-direct {v10, v12}, Lsun/security/util/ManifestDigester;-><init>([B)V

    #@d6
    iput-object v10, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    #@d8
    .line 280
    const/4 v10, 0x0

    #@d9
    iput-object v10, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@db
    :cond_8
    :try_start_3
    monitor-exit v11

    #@dc
    .line 286
    :cond_9
    new-instance v8, Lsun/security/util/SignatureFileVerifier;

    #@de
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    #@e0
    .line 287
    iget-object v11, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    #@e2
    iget-object v12, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    #@e4
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@e7
    move-result-object v12

    #@e8
    .line 286
    invoke-direct {v8, v10, v11, v9, v12}, Lsun/security/util/SignatureFileVerifier;-><init>(Ljava/util/ArrayList;Lsun/security/util/ManifestDigester;Ljava/lang/String;[B)V

    #@eb
    .line 289
    .restart local v8    # "sfv":Lsun/security/util/SignatureFileVerifier;
    invoke-virtual {v8}, Lsun/security/util/SignatureFileVerifier;->needSignatureFileBytes()Z

    #@ee
    move-result v10

    #@ef
    if-eqz v10, :cond_c

    #@f1
    .line 291
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    #@f3
    invoke-virtual {v10, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f6
    move-result-object v0

    #@f7
    check-cast v0, [B

    #@f9
    .line 293
    .restart local v0    # "bytes":[B
    if-nez v0, :cond_b

    #@fb
    .line 297
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@fd
    if-eqz v10, :cond_a

    #@ff
    .line 298
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@101
    const-string/jumbo v11, "adding pending block"

    #@104
    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@107
    .line 300
    :cond_a
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    #@109
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10c
    .line 301
    return-void

    #@10d
    .line 277
    .end local v0    # "bytes":[B
    .end local v8    # "sfv":Lsun/security/util/SignatureFileVerifier;
    :catchall_0
    move-exception v10

    #@10e
    monitor-exit v11

    #@10f
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    #@110
    .line 312
    .end local v5    # "key":Ljava/lang/String;
    .end local v9    # "uname":Ljava/lang/String;
    :catch_1
    move-exception v7

    #@111
    .line 313
    .local v7, "se":Ljava/security/SignatureException;
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@113
    if-eqz v10, :cond_0

    #@115
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@117
    new-instance v11, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v12, "processEntry caught: "

    #@11f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v11

    #@123
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v11

    #@127
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v11

    #@12b
    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@12e
    goto/16 :goto_0

    #@130
    .line 303
    .end local v7    # "se":Ljava/security/SignatureException;
    .restart local v0    # "bytes":[B
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v8    # "sfv":Lsun/security/util/SignatureFileVerifier;
    .restart local v9    # "uname":Ljava/lang/String;
    :cond_b
    :try_start_4
    invoke-virtual {v8, v0}, Lsun/security/util/SignatureFileVerifier;->setSignatureFile([B)V

    #@133
    .line 306
    .end local v0    # "bytes":[B
    :cond_c
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    #@135
    iget-object v11, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    #@137
    invoke-virtual {v8, v10, v11}, Lsun/security/util/SignatureFileVerifier;->process(Ljava/util/Hashtable;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3

    #@13a
    goto/16 :goto_0

    #@13c
    .line 315
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "sfv":Lsun/security/util/SignatureFileVerifier;
    .end local v9    # "uname":Ljava/lang/String;
    :catch_2
    move-exception v6

    #@13d
    .line 316
    .local v6, "nsae":Ljava/security/NoSuchAlgorithmException;
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@13f
    if-eqz v10, :cond_0

    #@141
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@143
    new-instance v11, Ljava/lang/StringBuilder;

    #@145
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@148
    const-string/jumbo v12, "processEntry caught: "

    #@14b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v11

    #@14f
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v11

    #@153
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@156
    move-result-object v11

    #@157
    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@15a
    goto/16 :goto_0

    #@15c
    .line 318
    .end local v6    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v1

    #@15d
    .line 319
    .local v1, "ce":Ljava/security/cert/CertificateException;
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@15f
    if-eqz v10, :cond_0

    #@161
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@163
    new-instance v11, Ljava/lang/StringBuilder;

    #@165
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@168
    const-string/jumbo v12, "processEntry caught: "

    #@16b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v11

    #@16f
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@172
    move-result-object v11

    #@173
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@176
    move-result-object v11

    #@177
    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@17a
    goto/16 :goto_0
.end method

.method private declared-synchronized signerMap()Ljava/util/Map;
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 669
    :try_start_0
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 675
    new-instance v0, Ljava/util/HashMap;

    #@7
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    #@9
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    #@c
    move-result v1

    #@d
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    #@f
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    #@12
    move-result v2

    #@13
    add-int/2addr v1, v2

    #@14
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@17
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    #@19
    .line 676
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    #@1b
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    #@1d
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@20
    .line 677
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    #@22
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    #@24
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@27
    .line 679
    :cond_0
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit p0

    #@2a
    return-object v0

    #@2b
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit p0

    #@2d
    throw v0
.end method

.method private unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 822
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    #@3
    move-result-object v1

    #@4
    .line 823
    .local v1, "map":Ljava/util/Map;
    invoke-virtual {p1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    #@7
    move-result-object v0

    #@8
    .line 824
    .local v0, "entries":Ljava/util/Enumeration;
    new-instance v2, Ljava/util/jar/JarVerifier$4;

    #@a
    invoke-direct {v2, p0, v0, v1}, Ljava/util/jar/JarVerifier$4;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/Map;)V

    #@d
    return-object v2
.end method


# virtual methods
.method public beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V
    .locals 7
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 114
    if-nez p1, :cond_0

    #@4
    .line 115
    return-void

    #@5
    .line 117
    :cond_0
    sget-object v2, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 118
    sget-object v2, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "beginEntry "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@26
    .line 121
    :cond_1
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 133
    .local v0, "name":Ljava/lang/String;
    iget-boolean v2, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    #@2c
    if-eqz v2, :cond_5

    #@2e
    .line 134
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@30
    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 135
    .local v1, "uname":Ljava/lang/String;
    const-string/jumbo v2, "META-INF/"

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3a
    move-result v2

    #@3b
    if-nez v2, :cond_2

    #@3d
    .line 136
    const-string/jumbo v2, "/META-INF/"

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@43
    move-result v2

    #@44
    .line 135
    if-eqz v2, :cond_5

    #@46
    .line 138
    :cond_2
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_3

    #@4c
    .line 139
    invoke-virtual {p2, v5, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    #@4f
    .line 140
    return-void

    #@50
    .line 143
    :cond_3
    invoke-static {v1}, Lsun/security/util/SignatureFileVerifier;->isBlockOrSF(Ljava/lang/String;)Z

    #@53
    move-result v2

    #@54
    if-eqz v2, :cond_4

    #@56
    .line 145
    iput-boolean v6, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    #@58
    .line 146
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    #@5a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@5d
    .line 147
    invoke-virtual {p2, v5, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    #@60
    .line 149
    :cond_4
    return-void

    #@61
    .line 153
    .end local v1    # "uname":Ljava/lang/String;
    :cond_5
    iget-boolean v2, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    #@63
    if-eqz v2, :cond_6

    #@65
    .line 154
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier;->doneWithMeta()V

    #@68
    .line 157
    :cond_6
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    #@6b
    move-result v2

    #@6c
    if-eqz v2, :cond_7

    #@6e
    .line 158
    invoke-virtual {p2, v5, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    #@71
    .line 159
    return-void

    #@72
    .line 164
    :cond_7
    const-string/jumbo v2, "./"

    #@75
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@78
    move-result v2

    #@79
    if-eqz v2, :cond_8

    #@7b
    .line 165
    const/4 v2, 0x2

    #@7c
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7f
    move-result-object v0

    #@80
    .line 169
    :cond_8
    const-string/jumbo v2, "/"

    #@83
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@86
    move-result v2

    #@87
    if-eqz v2, :cond_9

    #@89
    .line 170
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@8c
    move-result-object v0

    #@8d
    .line 173
    :cond_9
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    #@8f
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@92
    move-result-object v2

    #@93
    if-eqz v2, :cond_a

    #@95
    .line 174
    invoke-virtual {p2, v0, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    #@98
    .line 175
    return-void

    #@99
    .line 179
    :cond_a
    invoke-virtual {p2, v5, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    #@9c
    .line 181
    return-void
.end method

.method doneWithMeta()V
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 413
    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    #@4
    .line 414
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    #@6
    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    :goto_0
    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    #@e
    .line 415
    iput-object v2, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    #@10
    .line 416
    iput-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    #@12
    .line 417
    iput-object v2, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    #@14
    .line 418
    iput-object v2, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    #@16
    .line 419
    iput-object v2, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    #@18
    .line 422
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    #@1a
    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    #@1d
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 423
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    #@25
    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    #@28
    .line 424
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    #@2a
    const-string/jumbo v3, "META-INF/MANIFEST.MF"

    #@2d
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    .line 423
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    .line 411
    :cond_0
    return-void

    #@35
    .line 414
    :cond_1
    const/4 v0, 0x1

    #@36
    goto :goto_0
.end method

.method public entries2(Ljava/util/jar/JarFile;Ljava/util/Enumeration;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "e"    # Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/util/Enumeration;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 745
    new-instance v1, Ljava/util/HashMap;

    #@2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 746
    .local v1, "map":Ljava/util/Map;
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@c
    .line 747
    move-object v0, p2

    #@d
    .line 748
    .local v0, "enum_":Ljava/util/Enumeration;
    new-instance v2, Ljava/util/jar/JarVerifier$3;

    #@f
    invoke-direct {v2, p0, p2, p1, v1}, Ljava/util/jar/JarVerifier$3;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/jar/JarFile;Ljava/util/Map;)V

    #@12
    return-object v2
.end method

.method public declared-synchronized entryNames(Ljava/util/jar/JarFile;[Ljava/security/CodeSource;)Ljava/util/Enumeration;
    .locals 9
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "cs"    # [Ljava/security/CodeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "[",
            "Ljava/security/CodeSource;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 683
    :try_start_0
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    #@4
    move-result-object v3

    #@5
    .line 684
    .local v3, "map":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v8

    #@9
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .line 685
    .local v2, "itor":Ljava/util/Iterator;
    const/4 v5, 0x0

    #@e
    .line 691
    .local v5, "matchUnsigned":Z
    new-instance v6, Ljava/util/ArrayList;

    #@10
    array-length v8, p2

    #@11
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@14
    .line 692
    .local v6, "req":Ljava/util/List;
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    array-length v8, p2

    #@16
    if-ge v1, v8, :cond_2

    #@18
    .line 693
    aget-object v8, p2, v1

    #@1a
    invoke-direct {p0, v8}, Ljava/util/jar/JarVerifier;->findMatchingSigners(Ljava/security/CodeSource;)[Ljava/security/CodeSigner;

    #@1d
    move-result-object v4

    #@1e
    .line 694
    .local v4, "match":[Ljava/security/CodeSigner;
    if-eqz v4, :cond_0

    #@20
    .line 695
    array-length v8, v4

    #@21
    if-lez v8, :cond_1

    #@23
    .line 696
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    .line 692
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 698
    :cond_1
    const/4 v5, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 703
    .end local v4    # "match":[Ljava/security/CodeSigner;
    :cond_2
    move-object v7, v6

    #@2c
    .line 704
    .local v7, "signersReq":Ljava/util/List;
    if-eqz v5, :cond_3

    #@2e
    invoke-direct {p0, p1}, Ljava/util/jar/JarVerifier;->unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;

    #@31
    move-result-object v0

    #@32
    .line 706
    .local v0, "enum2":Ljava/util/Enumeration;
    :goto_2
    new-instance v8, Ljava/util/jar/JarVerifier$2;

    #@34
    invoke-direct {v8, p0, v2, v6, v0}, Ljava/util/jar/JarVerifier$2;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Iterator;Ljava/util/List;Ljava/util/Enumeration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    monitor-exit p0

    #@38
    return-object v8

    #@39
    .line 704
    .end local v0    # "enum2":Ljava/util/Enumeration;
    :cond_3
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->emptyEnumeration:Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .restart local v0    # "enum2":Ljava/util/Enumeration;
    goto :goto_2

    #@3c
    .end local v0    # "enum2":Ljava/util/Enumeration;
    .end local v1    # "i":I
    .end local v2    # "itor":Ljava/util/Iterator;
    .end local v3    # "map":Ljava/util/Map;
    .end local v5    # "matchUnsigned":Z
    .end local v6    # "req":Ljava/util/List;
    .end local v7    # "signersReq":Ljava/util/List;
    :catchall_0
    move-exception v8

    #@3d
    monitor-exit p0

    #@3e
    throw v8
.end method

.method public getCerts(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 333
    invoke-virtual {p0, p1}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCerts(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "entry"    # Ljava/util/jar/JarEntry;

    #@0
    .prologue
    .line 338
    invoke-virtual {p0, p1, p2}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/security/CodeSigner;

    #@8
    return-object v0
.end method

.method public getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;
    .locals 7
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "entry"    # Ljava/util/jar/JarEntry;

    #@0
    .prologue
    .line 353
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 354
    .local v3, "name":Ljava/lang/String;
    iget-boolean v5, p0, Ljava/util/jar/JarVerifier;->eagerValidation:Z

    #@6
    if-eqz v5, :cond_1

    #@8
    iget-object v5, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    #@a
    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v5

    #@e
    if-eqz v5, :cond_1

    #@10
    .line 360
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@13
    move-result-object v4

    #@14
    .line 361
    .local v4, "s":Ljava/io/InputStream;
    const/16 v5, 0x400

    #@16
    new-array v0, v5, [B

    #@18
    .line 362
    .local v0, "buffer":[B
    array-length v2, v0

    #@19
    .line 363
    .local v2, "n":I
    :goto_0
    const/4 v5, -0x1

    #@1a
    if-eq v2, v5, :cond_0

    #@1c
    .line 364
    array-length v5, v0

    #@1d
    const/4 v6, 0x0

    #@1e
    invoke-virtual {v4, v0, v6, v5}, Ljava/io/InputStream;->read([BII)I

    #@21
    move-result v2

    #@22
    goto :goto_0

    #@23
    .line 366
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 370
    .end local v0    # "buffer":[B
    .end local v2    # "n":I
    .end local v4    # "s":Ljava/io/InputStream;
    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;

    #@29
    move-result-object v5

    #@2a
    return-object v5

    #@2b
    .line 367
    :catch_0
    move-exception v1

    #@2c
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public getCodeSource(Ljava/net/URL;Ljava/lang/String;)Ljava/security/CodeSource;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 883
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [Ljava/security/CodeSigner;

    #@a
    .line 884
    .local v0, "signers":[Ljava/security/CodeSigner;
    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public getCodeSource(Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)Ljava/security/CodeSource;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "jar"    # Ljava/util/jar/JarFile;
    .param p3, "je"    # Ljava/util/jar/JarEntry;

    #@0
    .prologue
    .line 890
    invoke-virtual {p0, p2, p3}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public declared-synchronized getCodeSources(Ljava/util/jar/JarFile;Ljava/net/URL;)[Ljava/security/CodeSource;
    .locals 2
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "url"    # Ljava/net/URL;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 875
    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/jar/JarVerifier;->unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;

    #@4
    move-result-object v1

    #@5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@8
    move-result v0

    #@9
    .line 877
    .local v0, "hasUnsigned":Z
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->getJarCodeSigners()Ljava/util/List;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, p2, v1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v1

    #@11
    monitor-exit p0

    #@12
    return-object v1

    #@13
    .end local v0    # "hasUnsigned":Z
    :catchall_0
    move-exception v1

    #@14
    monitor-exit p0

    #@15
    throw v1
.end method

.method public declared-synchronized getManifestDigests()Ljava/util/List;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 898
    :try_start_0
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    #@3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method nothingToVerify()Z
    .locals 1

    #@0
    .prologue
    .line 402
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public setEagerValidation(Z)V
    .locals 0
    .param p1, "eager"    # Z

    #@0
    .prologue
    .line 894
    iput-boolean p1, p0, Ljava/util/jar/JarVerifier;->eagerValidation:Z

    #@2
    .line 893
    return-void
.end method

.method public update(ILsun/security/util/ManifestEntryVerifier;)V
    .locals 1
    .param p1, "b"    # I
    .param p2, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_1

    #@3
    .line 192
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 193
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    #@9
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@c
    .line 189
    :goto_0
    return-void

    #@d
    .line 195
    :cond_0
    int-to-byte v0, p1

    #@e
    invoke-virtual {p2, v0}, Lsun/security/util/ManifestEntryVerifier;->update(B)V

    #@11
    goto :goto_0

    #@12
    .line 198
    :cond_1
    invoke-direct {p0, p2}, Ljava/util/jar/JarVerifier;->processEntry(Lsun/security/util/ManifestEntryVerifier;)V

    #@15
    goto :goto_0
.end method

.method public update(I[BIILsun/security/util/ManifestEntryVerifier;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_1

    #@3
    .line 211
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 212
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    #@9
    invoke-virtual {v0, p2, p3, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@c
    .line 208
    :goto_0
    return-void

    #@d
    .line 214
    :cond_0
    invoke-virtual {p5, p2, p3, p1}, Lsun/security/util/ManifestEntryVerifier;->update([BII)V

    #@10
    goto :goto_0

    #@11
    .line 217
    :cond_1
    invoke-direct {p0, p5}, Ljava/util/jar/JarVerifier;->processEntry(Lsun/security/util/ManifestEntryVerifier;)V

    #@14
    goto :goto_0
.end method
