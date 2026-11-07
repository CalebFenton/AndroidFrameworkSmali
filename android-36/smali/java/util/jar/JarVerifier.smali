.class Ljava/util/jar/JarVerifier;
.super Ljava/lang/Object;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarVerifier$VerifierCodeSource;,
        Ljava/util/jar/JarVerifier$VerifierStream;
    }
.end annotation


# static fields
.field static final greylist-max-o debug:Lsun/security/util/Debug;


# instance fields
.field private greylist-max-o anyToVerify:Z

.field private greylist-max-o baos:Ljava/io/ByteArrayOutputStream;

.field private greylist-max-o csdomain:Ljava/lang/Object;

.field greylist-max-o eagerValidation:Z

.field private greylist-max-o emptyEnumeration:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o emptySigner:[Ljava/security/CodeSigner;

.field private greylist-max-o jarCodeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o lastURL:Ljava/net/URL;

.field private greylist-max-o lastURLMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "[",
            "Ljava/security/CodeSigner;",
            "Ljava/security/CodeSource;",
            ">;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o manDig:Lsun/security/util/ManifestDigester;

.field private greylist-max-o manifestDigests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist manifestName:Ljava/lang/String;

.field greylist-max-o manifestRawBytes:[B

.field private greylist-max-o parsingBlockOrSF:Z

.field private greylist-max-o parsingMeta:Z

.field private greylist-max-o pendingBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsun/security/util/SignatureFileVerifier;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o sigFileData:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private greylist-max-o sigFileSigners:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o signerCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o signerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o signerToCodeSource:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "[",
            "Ljava/security/CodeSigner;",
            "Ljava/security/CodeSource;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o urlToCodeSourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "[",
            "Ljava/security/CodeSigner;",
            "Ljava/security/CodeSource;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o verifiedSigners:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const-string v0, "jar"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[B)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rawBytes"    # [B

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    .line 76
    iput-boolean v1, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    .line 95
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    .line 536
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    .line 537
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljava/util/jar/JarVerifier;->signerToCodeSource:Ljava/util/Map;

    .line 578
    new-array v0, v0, [Ljava/security/CodeSigner;

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->emptySigner:[Ljava/security/CodeSigner;

    .line 810
    new-instance v0, Ljava/util/jar/JarVerifier$3;

    invoke-direct {v0, p0}, Ljava/util/jar/JarVerifier$3;-><init>(Ljava/util/jar/JarVerifier;)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->emptyEnumeration:Ljava/util/Enumeration;

    .line 101
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->manifestName:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    .line 103
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    .line 104
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    .line 105
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    .line 109
    return-void
.end method

.method private greylist-max-o findMatchingSigners(Ljava/security/CodeSource;)[Ljava/security/CodeSigner;
    .registers 6
    .param p1, "cs"    # Ljava/security/CodeSource;

    .line 584
    instance-of v0, p1, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    if-eqz v0, :cond_17

    .line 585
    move-object v0, p1

    check-cast v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    .line 586
    .local v0, "vcs":Ljava/util/jar/JarVerifier$VerifierCodeSource;
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->isSameDomain(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 587
    move-object v1, p1

    check-cast v1, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    invoke-static {v1}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->-$$Nest$mgetPrivateSigners(Ljava/util/jar/JarVerifier$VerifierCodeSource;)[Ljava/security/CodeSigner;

    move-result-object v1

    return-object v1

    .line 595
    .end local v0    # "vcs":Ljava/util/jar/JarVerifier$VerifierCodeSource;
    :cond_17
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->getJarCodeSigners()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;

    move-result-object v0

    .line 596
    .local v0, "sources":[Ljava/security/CodeSource;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v1, "sourceList":Ljava/util/List;, "Ljava/util/List<Ljava/security/CodeSource;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    array-length v3, v0

    if-ge v2, v3, :cond_35

    .line 598
    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 600
    .end local v2    # "i":I
    :cond_35
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 601
    .local v2, "j":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4b

    .line 603
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    invoke-static {v3}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->-$$Nest$mgetPrivateSigners(Ljava/util/jar/JarVerifier$VerifierCodeSource;)[Ljava/security/CodeSigner;

    move-result-object v3

    .line 604
    .local v3, "match":[Ljava/security/CodeSigner;
    if-nez v3, :cond_4a

    .line 605
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->emptySigner:[Ljava/security/CodeSigner;

    .line 607
    :cond_4a
    return-object v3

    .line 609
    .end local v3    # "match":[Ljava/security/CodeSigner;
    :cond_4b
    const/4 v3, 0x0

    return-object v3
.end method

.method private declared-synchronized greylist-max-o getJarCodeSigners()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 870
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    if-nez v0, :cond_21

    .line 871
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 872
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<[Ljava/security/CodeSigner;>;"
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 873
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    .line 874
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 876
    .end local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<[Ljava/security/CodeSigner;>;"
    .end local p0    # "this":Ljava/util/jar/JarVerifier;
    :cond_21
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v0

    .line 869
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method static greylist-max-o getUnsignedCS(Ljava/net/URL;)Ljava/security/CodeSource;
    .registers 4
    .param p0, "url"    # Ljava/net/URL;

    .line 907
    new-instance v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/security/cert/Certificate;

    invoke-direct {v0, v1, p0, v1}, Ljava/util/jar/JarVerifier$VerifierCodeSource;-><init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    return-object v0
.end method

.method static greylist-max-o isSigningRelated(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 823
    invoke-static {p0}, Lsun/security/util/SignatureFileVerifier;->isSigningRelated(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;
    .registers 4
    .param p0, "signers"    # [Ljava/security/CodeSigner;

    .line 396
    if-eqz p0, :cond_29

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v0, "certChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    .line 399
    aget-object v2, p0, v1

    .line 400
    invoke-virtual {v2}, Ljava/security/CodeSigner;->getSignerCertPath()Ljava/security/cert/CertPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 399
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 404
    .end local v1    # "i":I
    :cond_1b
    nop

    .line 405
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    .line 404
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    return-object v1

    .line 407
    .end local v0    # "certChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized greylist-max-o mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;
    .registers 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "signers"    # [Ljava/security/CodeSigner;

    monitor-enter p0

    .line 548
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->lastURL:Ljava/net/URL;

    if-ne p1, v0, :cond_8

    .line 549
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->lastURLMap:Ljava/util/Map;

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    goto :goto_21

    .line 551
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    .end local p0    # "this":Ljava/util/jar/JarVerifier;
    :cond_8
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 552
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    if-nez v0, :cond_1d

    .line 553
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 554
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 556
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    :cond_1d
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->lastURLMap:Ljava/util/Map;

    .line 557
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->lastURL:Ljava/net/URL;

    .line 559
    :goto_21
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/CodeSource;

    .line 560
    .local v1, "cs":Ljava/security/CodeSource;
    if-nez v1, :cond_36

    .line 561
    new-instance v2, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    iget-object v3, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    invoke-direct {v2, v3, p1, p2}, Ljava/util/jar/JarVerifier$VerifierCodeSource;-><init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/CodeSigner;)V

    move-object v1, v2

    .line 562
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->signerToCodeSource:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 564
    :cond_36
    monitor-exit p0

    return-object v1

    .line 547
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    .end local v1    # "cs":Ljava/security/CodeSource;
    .end local p1    # "url":Ljava/net/URL;
    .end local p2    # "signers":[Ljava/security/CodeSigner;
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method private greylist-max-o mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;
    .registers 7
    .param p1, "url"    # Ljava/net/URL;
    .param p3, "unsigned"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/List<",
            "[",
            "Ljava/security/CodeSigner;",
            ">;Z)[",
            "Ljava/security/CodeSource;"
        }
    .end annotation

    .line 568
    .local p2, "signers":Ljava/util/List;, "Ljava/util/List<[Ljava/security/CodeSigner;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Ljava/security/CodeSource;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 571
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/CodeSigner;

    invoke-direct {p0, p1, v2}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 573
    .end local v1    # "i":I
    :cond_1c
    if-eqz p3, :cond_26

    .line 574
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/CodeSource;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/CodeSource;

    return-object v1
.end method

.method private greylist-max-o processEntry(Lsun/security/util/ManifestEntryVerifier;)V
    .registers 9
    .param p1, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    if-nez v0, :cond_22

    .line 244
    invoke-virtual {p1}, Lsun/security/util/ManifestEntryVerifier;->getEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 245
    .local v0, "je":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_20

    iget-object v1, v0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v1, :cond_20

    .line 246
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    iget-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {p1, v1, v2}, Lsun/security/util/ManifestEntryVerifier;->verify(Ljava/util/Hashtable;Ljava/util/Hashtable;)[Ljava/security/CodeSigner;

    move-result-object v1

    iput-object v1, v0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    .line 247
    iget-object v1, v0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    invoke-static {v1}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    move-result-object v1

    iput-object v1, v0, Ljava/util/jar/JarEntry;->certs:[Ljava/security/cert/Certificate;

    .line 249
    .end local v0    # "je":Ljava/util/jar/JarEntry;
    :cond_20
    goto/16 :goto_16f

    .line 252
    :cond_22
    const/4 v0, 0x0

    :try_start_23
    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    .line 254
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_30

    .line 255
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string v2, "processEntry: processing block"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 258
    :cond_30
    invoke-virtual {p1}, Lsun/security/util/ManifestEntryVerifier;->getEntry()Ljava/util/jar/JarEntry;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "uname":Ljava/lang/String;
    const-string v2, ".SF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 262
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 265
    .local v2, "bytes":[B
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 269
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/SignatureFileVerifier;>;"
    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 270
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/util/SignatureFileVerifier;

    .line 271
    .local v4, "sfv":Lsun/security/util/SignatureFileVerifier;
    invoke-virtual {v4, v0}, Lsun/security/util/SignatureFileVerifier;->needSignatureFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 272
    sget-object v5, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_7e

    .line 273
    sget-object v5, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string v6, "processEntry: processing pending block"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 277
    :cond_7e
    invoke-virtual {v4, v2}, Lsun/security/util/SignatureFileVerifier;->setSignatureFile([B)V

    .line 278
    iget-object v5, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    iget-object v6, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    invoke-virtual {v4, v5, v6}, Lsun/security/util/SignatureFileVerifier;->process(Ljava/util/Hashtable;Ljava/util/List;)V

    .line 280
    .end local v4    # "sfv":Lsun/security/util/SignatureFileVerifier;
    :cond_88
    goto :goto_61

    .line 281
    :cond_89
    return-void

    .line 286
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/SignatureFileVerifier;>;"
    :cond_8a
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 288
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    if-nez v2, :cond_9f

    .line 289
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    .line 291
    :cond_9f
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    if-nez v2, :cond_bb

    .line 292
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    monitor-enter v2
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_a6} :catch_151
    .catch Ljava/security/SignatureException; {:try_start_23 .. :try_end_a6} :catch_133
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_23 .. :try_end_a6} :catch_115
    .catch Ljava/security/cert/CertificateException; {:try_start_23 .. :try_end_a6} :catch_f7

    .line 293
    :try_start_a6
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    if-nez v3, :cond_b6

    .line 294
    new-instance v3, Lsun/security/util/ManifestDigester;

    iget-object v4, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    invoke-direct {v3, v4}, Lsun/security/util/ManifestDigester;-><init>([B)V

    iput-object v3, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    .line 295
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    .line 297
    :cond_b6
    monitor-exit v2

    goto :goto_bb

    :catchall_b8
    move-exception v3

    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_a6 .. :try_end_ba} :catchall_b8

    .end local p0    # "this":Ljava/util/jar/JarVerifier;
    .end local p1    # "mev":Lsun/security/util/ManifestEntryVerifier;
    :try_start_ba
    throw v3

    .line 300
    .restart local p0    # "this":Ljava/util/jar/JarVerifier;
    .restart local p1    # "mev":Lsun/security/util/ManifestEntryVerifier;
    :cond_bb
    :goto_bb
    new-instance v2, Lsun/security/util/SignatureFileVerifier;

    iget-object v3, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    iget-object v4, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    iget-object v5, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    .line 302
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Lsun/security/util/SignatureFileVerifier;-><init>(Ljava/util/ArrayList;Lsun/security/util/ManifestDigester;Ljava/lang/String;[B)V

    .line 304
    .local v2, "sfv":Lsun/security/util/SignatureFileVerifier;
    invoke-virtual {v2}, Lsun/security/util/SignatureFileVerifier;->needSignatureFileBytes()Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 306
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 308
    .local v3, "bytes":[B
    if-nez v3, :cond_eb

    .line 312
    sget-object v4, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_e5

    .line 313
    sget-object v4, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string v5, "adding pending block"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 315
    :cond_e5
    iget-object v4, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    return-void

    .line 318
    :cond_eb
    invoke-virtual {v2, v3}, Lsun/security/util/SignatureFileVerifier;->setSignatureFile([B)V

    .line 321
    .end local v3    # "bytes":[B
    :cond_ee
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    iget-object v4, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lsun/security/util/SignatureFileVerifier;->process(Ljava/util/Hashtable;Ljava/util/List;)V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_f5} :catch_151
    .catch Ljava/security/SignatureException; {:try_start_ba .. :try_end_f5} :catch_133
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ba .. :try_end_f5} :catch_115
    .catch Ljava/security/cert/CertificateException; {:try_start_ba .. :try_end_f5} :catch_f7

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "uname":Ljava/lang/String;
    .end local v2    # "sfv":Lsun/security/util/SignatureFileVerifier;
    goto/16 :goto_16e

    .line 333
    :catch_f7
    move-exception v0

    .line 334
    .local v0, "ce":Ljava/security/cert/CertificateException;
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_16f

    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEntry caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_16f

    .line 330
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :catch_115
    move-exception v0

    .line 331
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_16e

    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEntry caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_16e

    .line 327
    .end local v0    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :catch_133
    move-exception v0

    .line 328
    .local v0, "se":Ljava/security/SignatureException;
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_16e

    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEntry caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_16e

    .line 323
    .end local v0    # "se":Ljava/security/SignatureException;
    :catch_151
    move-exception v0

    .line 325
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_16e

    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEntry caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 336
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_16e
    :goto_16e
    nop

    .line 338
    :cond_16f
    :goto_16f
    return-void
.end method

.method private declared-synchronized greylist-max-o signerMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 688
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    if-nez v0, :cond_27

    .line 694
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    .line 695
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 696
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 698
    .end local p0    # "this":Ljava/util/jar/JarVerifier;
    :cond_27
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-object v0

    .line 687
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method private greylist-max-o unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;
    .registers 5
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 827
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v0

    .line 828
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    invoke-virtual {p1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 829
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    new-instance v2, Ljava/util/jar/JarVerifier$4;

    invoke-direct {v2, p0, v1, v0}, Ljava/util/jar/JarVerifier$4;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/Map;)V

    return-object v2
.end method


# virtual methods
.method public greylist-max-o beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V
    .registers 8
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    if-nez p1, :cond_3

    .line 120
    return-void

    .line 122
    :cond_3
    sget-object v0, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_23

    .line 123
    sget-object v0, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginEntry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 126
    :cond_23
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "name":Ljava/lang/String;
    iget-boolean v1, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_70

    .line 139
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "uname":Ljava/lang/String;
    const-string v4, "META-INF/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 141
    const-string v4, "/META-INF/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 143
    :cond_43
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 144
    invoke-virtual {p2, v3, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 145
    return-void

    .line 148
    :cond_4d
    const-string v4, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 149
    const-string v4, "META-INF/INDEX.LIST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    goto :goto_6f

    .line 153
    :cond_5e
    invoke-static {v1}, Lsun/security/util/SignatureFileVerifier;->isBlockOrSF(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 155
    iput-boolean v2, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    .line 156
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 157
    invoke-virtual {p2, v3, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 158
    return-void

    .line 150
    :cond_6f
    :goto_6f
    return-void

    .line 167
    .end local v1    # "uname":Ljava/lang/String;
    :cond_70
    iget-boolean v1, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    if-eqz v1, :cond_77

    .line 168
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier;->doneWithMeta()V

    .line 171
    :cond_77
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 172
    invoke-virtual {p2, v3, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 173
    return-void

    .line 178
    :cond_81
    const-string v1, "./"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 179
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_8e
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_9a
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_af

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    .line 189
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_ab

    goto :goto_af

    .line 195
    :cond_ab
    invoke-virtual {p2, v3, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 197
    return-void

    .line 190
    :cond_af
    :goto_af
    invoke-virtual {p2, v0, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 191
    return-void
.end method

.method greylist-max-o doneWithMeta()V
    .registers 4

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    .line 429
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    .line 431
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    .line 432
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    .line 433
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    .line 434
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    .line 437
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 438
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    .line 439
    .local v0, "codeSigners":[Ljava/security/CodeSigner;
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .end local v0    # "codeSigners":[Ljava/security/CodeSigner;
    :cond_2f
    return-void
.end method

.method public greylist-max-o entries2(Ljava/util/jar/JarFile;Ljava/util/Enumeration;)Ljava/util/Enumeration;
    .registers 6
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;)",
            "Ljava/util/Enumeration<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .line 766
    .local p2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 767
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 768
    move-object v1, p2

    .line 769
    .local v1, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    new-instance v2, Ljava/util/jar/JarVerifier$2;

    invoke-direct {v2, p0, v1, p1, v0}, Ljava/util/jar/JarVerifier$2;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/jar/JarFile;Ljava/util/Map;)V

    return-object v2
.end method

.method public declared-synchronized greylist-max-o entryNames(Ljava/util/jar/JarFile;[Ljava/security/CodeSource;)Ljava/util/Enumeration;
    .registers 10
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "cs"    # [Ljava/security/CodeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "[",
            "Ljava/security/CodeSource;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 702
    :try_start_1
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v0

    .line 703
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 704
    .local v1, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/security/CodeSigner;>;>;"
    const/4 v2, 0x0

    .line 710
    .local v2, "matchUnsigned":Z
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, p2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 711
    .local v3, "req":Ljava/util/List;, "Ljava/util/List<[Ljava/security/CodeSigner;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    array-length v5, p2

    if-ge v4, v5, :cond_2d

    .line 712
    aget-object v5, p2, v4

    invoke-direct {p0, v5}, Ljava/util/jar/JarVerifier;->findMatchingSigners(Ljava/security/CodeSource;)[Ljava/security/CodeSigner;

    move-result-object v5

    .line 713
    .local v5, "match":[Ljava/security/CodeSigner;
    if-eqz v5, :cond_29

    .line 714
    array-length v6, v5

    if-lez v6, :cond_27

    .line 715
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 717
    .end local p0    # "this":Ljava/util/jar/JarVerifier;
    :cond_27
    const/4 v2, 0x1

    goto :goto_2a

    .line 720
    :cond_29
    const/4 v2, 0x1

    .line 711
    .end local v5    # "match":[Ljava/security/CodeSigner;
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 724
    .end local v4    # "i":I
    :cond_2d
    move-object v4, v3

    .line 725
    .local v4, "signersReq":Ljava/util/List;, "Ljava/util/List<[Ljava/security/CodeSigner;>;"
    if-eqz v2, :cond_35

    invoke-direct {p0, p1}, Ljava/util/jar/JarVerifier;->unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;

    move-result-object v5

    goto :goto_37

    :cond_35
    iget-object v5, p0, Ljava/util/jar/JarVerifier;->emptyEnumeration:Ljava/util/Enumeration;

    .line 727
    .local v5, "enum2":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_37
    new-instance v6, Ljava/util/jar/JarVerifier$1;

    invoke-direct {v6, p0, v1, v4, v5}, Ljava/util/jar/JarVerifier$1;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Iterator;Ljava/util/List;Ljava/util/Enumeration;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-object v6

    .line 701
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    .end local v1    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/security/CodeSigner;>;>;"
    .end local v2    # "matchUnsigned":Z
    .end local v3    # "req":Ljava/util/List;, "Ljava/util/List<[Ljava/security/CodeSigner;>;"
    .end local v4    # "signersReq":Ljava/util/List;, "Ljava/util/List<[Ljava/security/CodeSigner;>;"
    .end local v5    # "enum2":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local p1    # "jar":Ljava/util/jar/JarFile;
    .end local p2    # "cs":[Ljava/security/CodeSource;
    :catchall_3e
    move-exception p1

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public greylist-max-o getCerts(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    invoke-virtual {p0, p1}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;

    move-result-object v0

    invoke-static {v0}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getCerts(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "entry"    # Ljava/util/jar/JarEntry;

    .line 354
    invoke-virtual {p0, p1, p2}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;

    move-result-object v0

    invoke-static {v0}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 364
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    return-object v0
.end method

.method public greylist-max-o getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;
    .registers 9
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "entry"    # Ljava/util/jar/JarEntry;

    .line 369
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "name":Ljava/lang/String;
    iget-boolean v1, p0, Ljava/util/jar/JarVerifier;->eagerValidation:Z

    if-eqz v1, :cond_29

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 376
    :try_start_10
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 377
    .local v1, "s":Ljava/io/InputStream;
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 378
    .local v2, "buffer":[B
    array-length v3, v2

    .line 379
    .local v3, "n":I
    :goto_19
    const/4 v4, -0x1

    if-eq v3, v4, :cond_24

    .line 380
    array-length v4, v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v3, v4

    goto :goto_19

    .line 382
    :cond_24
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_27} :catch_28

    .line 384
    .end local v1    # "s":Ljava/io/InputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "n":I
    goto :goto_29

    .line 383
    :catch_28
    move-exception v1

    .line 386
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o getCodeSource(Ljava/net/URL;Ljava/lang/String;)Ljava/security/CodeSource;
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;

    .line 888
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    .line 889
    .local v0, "signers":[Ljava/security/CodeSigner;
    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o getCodeSource(Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)Ljava/security/CodeSource;
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "jar"    # Ljava/util/jar/JarFile;
    .param p3, "je"    # Ljava/util/jar/JarEntry;

    .line 895
    invoke-virtual {p0, p2, p3}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized greylist-max-o getCodeSources(Ljava/util/jar/JarFile;Ljava/net/URL;)[Ljava/security/CodeSource;
    .registers 5
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "url"    # Ljava/net/URL;

    monitor-enter p0

    .line 880
    :try_start_1
    invoke-direct {p0, p1}, Ljava/util/jar/JarVerifier;->unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    .line 882
    .local v0, "hasUnsigned":Z
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->getJarCodeSigners()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v1

    .line 879
    .end local v0    # "hasUnsigned":Z
    .end local p0    # "this":Ljava/util/jar/JarVerifier;
    .end local p1    # "jar":Ljava/util/jar/JarFile;
    .end local p2    # "url":Ljava/net/URL;
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public declared-synchronized greylist-max-o getManifestDigests()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 903
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 903
    .end local p0    # "this":Ljava/util/jar/JarVerifier;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method blacklist isTrustedManifestEntry(Ljava/lang/String;)Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 916
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->manifestName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    .line 917
    .local v0, "forMan":[Ljava/security/CodeSigner;
    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 918
    return v1

    .line 922
    :cond_e
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/CodeSigner;

    .line 923
    .local v2, "forName":[Ljava/security/CodeSigner;
    if-nez v2, :cond_21

    .line 924
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Ljava/security/CodeSigner;

    .line 927
    :cond_21
    if-eqz v2, :cond_28

    array-length v3, v2

    array-length v4, v0

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    return v1
.end method

.method greylist-max-o nothingToVerify()Z
    .registers 2

    .line 417
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o setEagerValidation(Z)V
    .registers 2
    .param p1, "eager"    # Z

    .line 899
    iput-boolean p1, p0, Ljava/util/jar/JarVerifier;->eagerValidation:Z

    .line 900
    return-void
.end method

.method public greylist-max-o update(ILsun/security/util/ManifestEntryVerifier;)V
    .registers 4
    .param p1, "b"    # I
    .param p2, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    const/4 v0, -0x1

    if-eq p1, v0, :cond_12

    .line 208
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    if-eqz v0, :cond_d

    .line 209
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_15

    .line 211
    :cond_d
    int-to-byte v0, p1

    invoke-virtual {p2, v0}, Lsun/security/util/ManifestEntryVerifier;->update(B)V

    goto :goto_15

    .line 214
    :cond_12
    invoke-direct {p0, p2}, Ljava/util/jar/JarVerifier;->processEntry(Lsun/security/util/ManifestEntryVerifier;)V

    .line 216
    :goto_15
    return-void
.end method

.method public greylist-max-o update(I[BIILsun/security/util/ManifestEntryVerifier;)V
    .registers 7
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

    .line 226
    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    .line 227
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    if-eqz v0, :cond_d

    .line 228
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p2, p3, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_14

    .line 230
    :cond_d
    invoke-virtual {p5, p2, p3, p1}, Lsun/security/util/ManifestEntryVerifier;->update([BII)V

    goto :goto_14

    .line 233
    :cond_11
    invoke-direct {p0, p5}, Ljava/util/jar/JarVerifier;->processEntry(Lsun/security/util/ManifestEntryVerifier;)V

    .line 235
    :goto_14
    return-void
.end method
