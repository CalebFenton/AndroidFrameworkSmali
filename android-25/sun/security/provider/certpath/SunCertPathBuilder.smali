.class public final Lsun/security/provider/certpath/SunCertPathBuilder;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "SunCertPathBuilder.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

.field private cf:Ljava/security/cert/CertificateFactory;

.field private finalPublicKey:Ljava/security/PublicKey;

.field private pathCompleted:Z

.field private policyTreeResult:Ljava/security/cert/PolicyNode;

.field private trustAnchor:Ljava/security/cert/TrustAnchor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 72
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@9
    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    #@3
    .line 79
    const/4 v1, 0x0

    #@4
    iput-boolean v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    #@6
    .line 91
    :try_start_0
    const-string/jumbo v1, "X.509"

    #@9
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->cf:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 89
    return-void

    #@10
    .line 92
    :catch_0
    move-exception v0

    #@11
    .line 93
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/security/cert/CertPathBuilderException;

    #@13
    invoke-direct {v1, v0}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method private static addVertices(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 781
    .local p0, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .local p1, "adjList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v4

    #@4
    add-int/lit8 v4, v4, -0x1

    #@6
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Ljava/util/List;

    #@c
    .line 783
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "cert$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_0

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@1c
    .line 784
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v3, Lsun/security/provider/certpath/Vertex;

    #@1e
    invoke-direct {v3, v0}, Lsun/security/provider/certpath/Vertex;-><init>(Ljava/security/cert/X509Certificate;)V

    #@21
    .line 785
    .local v3, "v":Lsun/security/provider/certpath/Vertex;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 788
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "v":Lsun/security/provider/certpath/Vertex;
    :cond_0
    return-object v2
.end method

.method private static anchorIsTarget(Ljava/security/cert/TrustAnchor;Ljava/security/cert/CertSelector;)Z
    .locals 2
    .param p0, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p1, "sel"    # Ljava/security/cert/CertSelector;

    #@0
    .prologue
    .line 798
    invoke-virtual {p0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@3
    move-result-object v0

    #@4
    .line 799
    .local v0, "anchorCert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_0

    #@6
    .line 800
    invoke-interface {p1, v0}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 802
    :cond_0
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method private build()Ljava/security/cert/PKIXCertPathBuilderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 136
    .local v0, "adjList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    const/4 v2, 0x0

    #@6
    invoke-direct {p0, v2, v0}, Lsun/security/provider/certpath/SunCertPathBuilder;->buildCertPath(ZLjava/util/List;)Ljava/security/cert/PKIXCertPathBuilderResult;

    #@9
    move-result-object v1

    #@a
    .line 137
    .local v1, "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    if-nez v1, :cond_1

    #@c
    .line 138
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 139
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@12
    const-string/jumbo v3, "SunCertPathBuilder.engineBuild: 2nd pass"

    #@15
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@18
    .line 142
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@1b
    .line 143
    const/4 v2, 0x1

    #@1c
    invoke-direct {p0, v2, v0}, Lsun/security/provider/certpath/SunCertPathBuilder;->buildCertPath(ZLjava/util/List;)Ljava/security/cert/PKIXCertPathBuilderResult;

    #@1f
    move-result-object v1

    #@20
    .line 144
    if-nez v1, :cond_1

    #@22
    .line 145
    new-instance v2, Lsun/security/provider/certpath/SunCertPathBuilderException;

    #@24
    const-string/jumbo v3, "unable to find valid certification path to requested target"

    #@27
    .line 147
    new-instance v4, Lsun/security/provider/certpath/AdjacencyList;

    #@29
    invoke-direct {v4, v0}, Lsun/security/provider/certpath/AdjacencyList;-><init>(Ljava/util/List;)V

    #@2c
    .line 145
    invoke-direct {v2, v3, v4}, Lsun/security/provider/certpath/SunCertPathBuilderException;-><init>(Ljava/lang/String;Lsun/security/provider/certpath/AdjacencyList;)V

    #@2f
    throw v2

    #@30
    .line 150
    :cond_1
    return-object v1
.end method

.method private buildCertPath(ZLjava/util/List;)Ljava/security/cert/PKIXCertPathBuilderResult;
    .locals 9
    .param p1, "searchAllCertStores"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;)",
            "Ljava/security/cert/PKIXCertPathBuilderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "adjList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    const/4 v1, 0x0

    #@1
    .line 158
    const/4 v0, 0x0

    #@2
    iput-boolean v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    #@4
    .line 159
    iput-object v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@6
    .line 160
    iput-object v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    #@8
    .line 161
    iput-object v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->policyTreeResult:Ljava/security/cert/PolicyNode;

    #@a
    .line 162
    new-instance v6, Ljava/util/LinkedList;

    #@c
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    #@f
    .line 164
    .local v6, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@11
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->buildForward()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 165
    invoke-direct {p0, p2, v6, p1}, Lsun/security/provider/certpath/SunCertPathBuilder;->buildForward(Ljava/util/List;Ljava/util/LinkedList;Z)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 182
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    #@1c
    if-eqz v0, :cond_4

    #@1e
    .line 183
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 184
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@24
    const-string/jumbo v1, "SunCertPathBuilder.engineBuild() pathCompleted"

    #@27
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@2a
    .line 190
    :cond_0
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    #@2d
    .line 192
    new-instance v0, Lsun/security/provider/certpath/SunCertPathBuilderResult;

    #@2f
    .line 193
    iget-object v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->cf:Ljava/security/cert/CertificateFactory;

    #@31
    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    #@34
    move-result-object v1

    #@35
    iget-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@37
    .line 194
    iget-object v3, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->policyTreeResult:Ljava/security/cert/PolicyNode;

    #@39
    iget-object v4, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    #@3b
    .line 195
    new-instance v5, Lsun/security/provider/certpath/AdjacencyList;

    #@3d
    invoke-direct {v5, p2}, Lsun/security/provider/certpath/AdjacencyList;-><init>(Ljava/util/List;)V

    #@40
    .line 192
    invoke-direct/range {v0 .. v5}, Lsun/security/provider/certpath/SunCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;Lsun/security/provider/certpath/AdjacencyList;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    #@43
    return-object v0

    #@44
    .line 167
    :cond_1
    :try_start_2
    invoke-direct {p0, p2, v6}, Lsun/security/provider/certpath/SunCertPathBuilder;->buildReverse(Ljava/util/List;Ljava/util/LinkedList;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@47
    goto :goto_0

    #@48
    .line 169
    :catch_0
    move-exception v7

    #@49
    .line 170
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@4b
    if-eqz v0, :cond_2

    #@4d
    .line 171
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@4f
    const-string/jumbo v1, "SunCertPathBuilder.engineBuild() exception in build"

    #@52
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@55
    .line 173
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    #@58
    .line 175
    :cond_2
    new-instance v0, Lsun/security/provider/certpath/SunCertPathBuilderException;

    #@5a
    const-string/jumbo v1, "unable to find valid certification path to requested target"

    #@5d
    .line 177
    new-instance v2, Lsun/security/provider/certpath/AdjacencyList;

    #@5f
    invoke-direct {v2, p2}, Lsun/security/provider/certpath/AdjacencyList;-><init>(Ljava/util/List;)V

    #@62
    .line 175
    invoke-direct {v0, v1, v7, v2}, Lsun/security/provider/certpath/SunCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lsun/security/provider/certpath/AdjacencyList;)V

    #@65
    throw v0

    #@66
    .line 197
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    #@67
    .line 198
    .local v8, "e":Ljava/security/cert/CertificateException;
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@69
    if-eqz v0, :cond_3

    #@6b
    .line 199
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@6d
    const-string/jumbo v1, "SunCertPathBuilder.engineBuild() exception in wrap-up"

    #@70
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@73
    .line 201
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    #@76
    .line 203
    :cond_3
    new-instance v0, Lsun/security/provider/certpath/SunCertPathBuilderException;

    #@78
    const-string/jumbo v1, "unable to find valid certification path to requested target"

    #@7b
    .line 205
    new-instance v2, Lsun/security/provider/certpath/AdjacencyList;

    #@7d
    invoke-direct {v2, p2}, Lsun/security/provider/certpath/AdjacencyList;-><init>(Ljava/util/List;)V

    #@80
    .line 203
    invoke-direct {v0, v1, v8, v2}, Lsun/security/provider/certpath/SunCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lsun/security/provider/certpath/AdjacencyList;)V

    #@83
    throw v0

    #@84
    .line 208
    .end local v8    # "e":Ljava/security/cert/CertificateException;
    :cond_4
    return-object v1
.end method

.method private buildForward(Ljava/util/List;Ljava/util/LinkedList;Z)V
    .locals 6
    .param p3, "searchAllCertStores"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    .local p1, "adjacencyList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    .local p2, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 295
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@6
    const-string/jumbo v1, "SunCertPathBuilder.buildForward()..."

    #@9
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@c
    .line 299
    :cond_0
    new-instance v2, Lsun/security/provider/certpath/ForwardState;

    #@e
    invoke-direct {v2}, Lsun/security/provider/certpath/ForwardState;-><init>()V

    #@11
    .line 300
    .local v2, "currentState":Lsun/security/provider/certpath/ForwardState;
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@13
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPathCheckers()Ljava/util/List;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v2, v0}, Lsun/security/provider/certpath/ForwardState;->initState(Ljava/util/List;)V

    #@1a
    .line 303
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@1d
    .line 304
    new-instance v0, Ljava/util/LinkedList;

    #@1f
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@22
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    .line 306
    new-instance v0, Lsun/security/provider/certpath/UntrustedChecker;

    #@27
    invoke-direct {v0}, Lsun/security/provider/certpath/UntrustedChecker;-><init>()V

    #@2a
    iput-object v0, v2, Lsun/security/provider/certpath/ForwardState;->untrustedChecker:Lsun/security/provider/certpath/UntrustedChecker;

    #@2c
    .line 308
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@2e
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject()Ljavax/security/auth/x500/X500Principal;

    #@31
    move-result-object v1

    #@32
    .line 309
    new-instance v3, Lsun/security/provider/certpath/ForwardBuilder;

    #@34
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@36
    invoke-direct {v3, v0, p3}, Lsun/security/provider/certpath/ForwardBuilder;-><init>(Lsun/security/provider/certpath/PKIX$BuilderParams;Z)V

    #@39
    move-object v0, p0

    #@3a
    move-object v4, p1

    #@3b
    move-object v5, p2

    #@3c
    .line 308
    invoke-direct/range {v0 .. v5}, Lsun/security/provider/certpath/SunCertPathBuilder;->depthFirstSearchForward(Ljavax/security/auth/x500/X500Principal;Lsun/security/provider/certpath/ForwardState;Lsun/security/provider/certpath/ForwardBuilder;Ljava/util/List;Ljava/util/LinkedList;)V

    #@3f
    .line 292
    return-void
.end method

.method private buildReverse(Ljava/util/List;Ljava/util/LinkedList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    .local p1, "adjacencyList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    .local p2, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 219
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@6
    const-string/jumbo v1, "SunCertPathBuilder.buildReverse()..."

    #@9
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@c
    .line 220
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "SunCertPathBuilder.buildReverse() InitialPolicies: "

    #@16
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 221
    iget-object v3, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@1c
    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->initialPolicies()Ljava/util/Set;

    #@1f
    move-result-object v3

    #@20
    .line 220
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@2b
    .line 224
    :cond_0
    new-instance v2, Lsun/security/provider/certpath/ReverseState;

    #@2d
    invoke-direct {v2}, Lsun/security/provider/certpath/ReverseState;-><init>()V

    #@30
    .line 226
    .local v2, "currentState":Lsun/security/provider/certpath/ReverseState;
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@33
    .line 227
    new-instance v0, Ljava/util/LinkedList;

    #@35
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    .line 233
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@3d
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    #@40
    move-result-object v0

    #@41
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@44
    move-result-object v8

    #@45
    .line 234
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/TrustAnchor;>;"
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_2

    #@4b
    .line 235
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4e
    move-result-object v6

    #@4f
    check-cast v6, Ljava/security/cert/TrustAnchor;

    #@51
    .line 238
    .local v6, "anchor":Ljava/security/cert/TrustAnchor;
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@53
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    #@56
    move-result-object v0

    #@57
    invoke-static {v6, v0}, Lsun/security/provider/certpath/SunCertPathBuilder;->anchorIsTarget(Ljava/security/cert/TrustAnchor;Ljava/security/cert/CertSelector;)Z

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_4

    #@5d
    .line 239
    iput-object v6, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@5f
    .line 240
    const/4 v0, 0x1

    #@60
    iput-boolean v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    #@62
    .line 241
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@69
    move-result-object v0

    #@6a
    iput-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    #@6c
    .line 278
    .end local v6    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_2
    :goto_0
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@6e
    if-eqz v0, :cond_3

    #@70
    .line 279
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@72
    const-string/jumbo v1, "SunCertPathBuilder.buildReverse() returned from depthFirstSearchReverse()"

    #@75
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@78
    .line 281
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@7a
    new-instance v1, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v3, "SunCertPathBuilder.buildReverse() certPathList.size: "

    #@82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    .line 282
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    #@89
    move-result v3

    #@8a
    .line 281
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v1

    #@92
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@95
    .line 216
    :cond_3
    return-void

    #@96
    .line 246
    .restart local v6    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_4
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@99
    move-result-object v10

    #@9a
    .line 247
    .local v10, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v10, :cond_5

    #@9c
    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@9f
    move-result-object v9

    #@a0
    .line 250
    .local v9, "pubKey":Ljava/security/PublicKey;
    :goto_1
    invoke-static {v9}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    #@a3
    move-result v0

    #@a4
    if-nez v0, :cond_1

    #@a6
    .line 255
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@a8
    invoke-virtual {v2, v0}, Lsun/security/provider/certpath/ReverseState;->initState(Lsun/security/provider/certpath/PKIX$BuilderParams;)V

    #@ab
    .line 256
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@ad
    invoke-virtual {v2, v6, v0}, Lsun/security/provider/certpath/ReverseState;->updateState(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$BuilderParams;)V

    #@b0
    .line 258
    new-instance v0, Lsun/security/provider/certpath/AlgorithmChecker;

    #@b2
    invoke-direct {v0, v6}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    #@b5
    iput-object v0, v2, Lsun/security/provider/certpath/ReverseState;->algorithmChecker:Lsun/security/provider/certpath/AlgorithmChecker;

    #@b7
    .line 259
    new-instance v0, Lsun/security/provider/certpath/UntrustedChecker;

    #@b9
    invoke-direct {v0}, Lsun/security/provider/certpath/UntrustedChecker;-><init>()V

    #@bc
    iput-object v0, v2, Lsun/security/provider/certpath/ReverseState;->untrustedChecker:Lsun/security/provider/certpath/UntrustedChecker;

    #@be
    .line 262
    :try_start_0
    new-instance v3, Lsun/security/provider/certpath/ReverseBuilder;

    #@c0
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@c2
    invoke-direct {v3, v0}, Lsun/security/provider/certpath/ReverseBuilder;-><init>(Lsun/security/provider/certpath/PKIX$BuilderParams;)V

    #@c5
    .line 261
    const/4 v1, 0x0

    #@c6
    move-object v0, p0

    #@c7
    move-object v4, p1

    #@c8
    move-object v5, p2

    #@c9
    invoke-direct/range {v0 .. v5}, Lsun/security/provider/certpath/SunCertPathBuilder;->depthFirstSearchReverse(Ljavax/security/auth/x500/X500Principal;Lsun/security/provider/certpath/ReverseState;Lsun/security/provider/certpath/ReverseBuilder;Ljava/util/List;Ljava/util/LinkedList;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@cc
    .line 273
    iget-boolean v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    #@ce
    if-eqz v0, :cond_1

    #@d0
    goto :goto_0

    #@d1
    .line 248
    .end local v9    # "pubKey":Ljava/security/PublicKey;
    :cond_5
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    #@d4
    move-result-object v9

    #@d5
    goto :goto_1

    #@d6
    .line 264
    .restart local v9    # "pubKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v7

    #@d7
    .line 266
    .local v7, "e":Ljava/lang/Exception;
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@da
    move-result v0

    #@db
    if-nez v0, :cond_1

    #@dd
    .line 269
    throw v7
.end method

.method private depthFirstSearchForward(Ljavax/security/auth/x500/X500Principal;Lsun/security/provider/certpath/ForwardState;Lsun/security/provider/certpath/ForwardBuilder;Ljava/util/List;Ljava/util/LinkedList;)V
    .locals 44
    .param p1, "dN"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "currentState"    # Lsun/security/provider/certpath/ForwardState;
    .param p3, "builder"    # Lsun/security/provider/certpath/ForwardBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/x500/X500Principal;",
            "Lsun/security/provider/certpath/ForwardState;",
            "Lsun/security/provider/certpath/ForwardBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 336
    .local p4, "adjList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    .local p5, "cpList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 337
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@6
    new-instance v6, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v7, "SunCertPathBuilder.depthFirstSearchForward("

    #@e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v6

    #@12
    move-object/from16 v0, p1

    #@14
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v6

    #@18
    .line 338
    const-string/jumbo v7, ", "

    #@1b
    .line 337
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    .line 338
    invoke-virtual/range {p2 .. p2}, Lsun/security/provider/certpath/ForwardState;->toString()Ljava/lang/String;

    #@22
    move-result-object v7

    #@23
    .line 337
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    .line 338
    const-string/jumbo v7, ")"

    #@2a
    .line 337
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@35
    .line 346
    :cond_0
    move-object/from16 v0, p0

    #@37
    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@39
    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certStores()Ljava/util/List;

    #@3c
    move-result-object v5

    #@3d
    move-object/from16 v0, p3

    #@3f
    move-object/from16 v1, p2

    #@41
    invoke-virtual {v0, v1, v5}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingCerts(Lsun/security/provider/certpath/State;Ljava/util/List;)Ljava/util/Collection;

    #@44
    move-result-object v22

    #@45
    .line 347
    .local v22, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, v22

    #@47
    move-object/from16 v1, p4

    #@49
    invoke-static {v0, v1}, Lsun/security/provider/certpath/SunCertPathBuilder;->addVertices(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    #@4c
    move-result-object v43

    #@4d
    .line 348
    .local v43, "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@4f
    if-eqz v5, :cond_1

    #@51
    .line 349
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@53
    new-instance v6, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v7, "SunCertPathBuilder.depthFirstSearchForward(): certs.size="

    #@5b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    .line 350
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    #@62
    move-result v7

    #@63
    .line 349
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@6e
    .line 361
    :cond_1
    invoke-interface/range {v43 .. v43}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@71
    move-result-object v42

    #@72
    .local v42, "vertex$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    #@75
    move-result v5

    #@76
    if-eqz v5, :cond_1e

    #@78
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7b
    move-result-object v41

    #@7c
    check-cast v41, Lsun/security/provider/certpath/Vertex;

    #@7e
    .line 369
    .local v41, "vertex":Lsun/security/provider/certpath/Vertex;
    invoke-virtual/range {p2 .. p2}, Lsun/security/provider/certpath/ForwardState;->clone()Ljava/lang/Object;

    #@81
    move-result-object v36

    #@82
    check-cast v36, Lsun/security/provider/certpath/ForwardState;

    #@84
    .line 370
    .local v36, "nextState":Lsun/security/provider/certpath/ForwardState;
    invoke-virtual/range {v41 .. v41}, Lsun/security/provider/certpath/Vertex;->getCertificate()Ljava/security/cert/X509Certificate;

    #@87
    move-result-object v21

    #@88
    .line 373
    .local v21, "cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    move-object/from16 v0, p3

    #@8a
    move-object/from16 v1, v21

    #@8c
    move-object/from16 v2, v36

    #@8e
    move-object/from16 v3, p5

    #@90
    invoke-virtual {v0, v1, v2, v3}, Lsun/security/provider/certpath/ForwardBuilder;->verifyCert(Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/State;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@93
    .line 393
    move-object/from16 v0, p3

    #@95
    move-object/from16 v1, v21

    #@97
    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/ForwardBuilder;->isPathCompleted(Ljava/security/cert/X509Certificate;)Z

    #@9a
    move-result v5

    #@9b
    if-eqz v5, :cond_1b

    #@9d
    .line 395
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@9f
    if-eqz v5, :cond_2

    #@a1
    .line 396
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@a3
    const-string/jumbo v6, "SunCertPathBuilder.depthFirstSearchForward(): commencing final verification"

    #@a6
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@a9
    .line 399
    :cond_2
    new-instance v19, Ljava/util/ArrayList;

    #@ab
    move-object/from16 v0, v19

    #@ad
    move-object/from16 v1, p5

    #@af
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@b2
    .line 407
    .local v19, "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p3

    #@b4
    iget-object v5, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@b6
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@b9
    move-result-object v5

    #@ba
    if-nez v5, :cond_3

    #@bc
    .line 408
    const/4 v5, 0x0

    #@bd
    move-object/from16 v0, v19

    #@bf
    move-object/from16 v1, v21

    #@c1
    invoke-interface {v0, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@c4
    .line 412
    :cond_3
    const-string/jumbo v5, "2.5.29.32.0"

    #@c7
    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@ca
    move-result-object v9

    #@cb
    .line 414
    .local v9, "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@cd
    .line 415
    const-string/jumbo v6, "2.5.29.32.0"

    #@d0
    .line 414
    const/4 v5, 0x0

    #@d1
    .line 415
    const/4 v7, 0x0

    #@d2
    const/4 v8, 0x0

    #@d3
    const/4 v10, 0x0

    #@d4
    .line 414
    invoke-direct/range {v4 .. v10}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    #@d7
    .line 417
    .local v4, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    new-instance v25, Ljava/util/ArrayList;

    #@d9
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    #@dc
    .line 419
    .local v25, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    new-instance v10, Lsun/security/provider/certpath/PolicyChecker;

    #@de
    move-object/from16 v0, p0

    #@e0
    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@e2
    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->initialPolicies()Ljava/util/Set;

    #@e5
    move-result-object v11

    #@e6
    .line 420
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    #@e9
    move-result v12

    #@ea
    .line 421
    move-object/from16 v0, p0

    #@ec
    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@ee
    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    #@f1
    move-result v13

    #@f2
    .line 422
    move-object/from16 v0, p0

    #@f4
    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@f6
    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyMappingInhibited()Z

    #@f9
    move-result v14

    #@fa
    .line 423
    move-object/from16 v0, p0

    #@fc
    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@fe
    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anyPolicyInhibited()Z

    #@101
    move-result v15

    #@102
    .line 424
    move-object/from16 v0, p0

    #@104
    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@106
    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyQualifiersRejected()Z

    #@109
    move-result v16

    #@10a
    move-object/from16 v17, v4

    #@10c
    .line 419
    invoke-direct/range {v10 .. v17}, Lsun/security/provider/certpath/PolicyChecker;-><init>(Ljava/util/Set;IZZZZLsun/security/provider/certpath/PolicyNodeImpl;)V

    #@10f
    .line 426
    .local v10, "policyChecker":Lsun/security/provider/certpath/PolicyChecker;
    move-object/from16 v0, v25

    #@111
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@114
    .line 429
    new-instance v5, Lsun/security/provider/certpath/AlgorithmChecker;

    #@116
    move-object/from16 v0, p3

    #@118
    iget-object v6, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@11a
    invoke-direct {v5, v6}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    #@11d
    move-object/from16 v0, v25

    #@11f
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@122
    .line 431
    const/16 v20, 0x0

    #@124
    .line 432
    .local v20, "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    invoke-virtual/range {v36 .. v36}, Lsun/security/provider/certpath/ForwardState;->keyParamsNeeded()Z

    #@127
    move-result v5

    #@128
    if-eqz v5, :cond_5

    #@12a
    .line 433
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@12d
    move-result-object v38

    #@12e
    .line 434
    .local v38, "rootKey":Ljava/security/PublicKey;
    move-object/from16 v0, p3

    #@130
    iget-object v5, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@132
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@135
    move-result-object v5

    #@136
    if-nez v5, :cond_4

    #@138
    .line 435
    move-object/from16 v0, p3

    #@13a
    iget-object v5, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@13c
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    #@13f
    move-result-object v38

    #@140
    .line 436
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@142
    if-eqz v5, :cond_4

    #@144
    .line 437
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@146
    .line 438
    new-instance v6, Ljava/lang/StringBuilder;

    #@148
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@14b
    const-string/jumbo v7, "SunCertPathBuilder.depthFirstSearchForward using buildParams public key: "

    #@14e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v6

    #@152
    .line 440
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@155
    move-result-object v7

    #@156
    .line 438
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v6

    #@15a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v6

    #@15e
    .line 437
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@161
    .line 442
    :cond_4
    new-instance v18, Ljava/security/cert/TrustAnchor;

    #@163
    .line 443
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@166
    move-result-object v5

    #@167
    const/4 v6, 0x0

    #@168
    .line 442
    move-object/from16 v0, v18

    #@16a
    move-object/from16 v1, v38

    #@16c
    invoke-direct {v0, v5, v1, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;[B)V

    #@16f
    .line 446
    .local v18, "anchor":Ljava/security/cert/TrustAnchor;
    new-instance v20, Lsun/security/provider/certpath/BasicChecker;

    #@171
    .end local v20    # "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    move-object/from16 v0, p0

    #@173
    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@175
    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    #@178
    move-result-object v5

    #@179
    .line 447
    move-object/from16 v0, p0

    #@17b
    iget-object v6, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@17d
    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    #@180
    move-result-object v6

    #@181
    .line 448
    const/4 v7, 0x1

    #@182
    .line 446
    move-object/from16 v0, v20

    #@184
    move-object/from16 v1, v18

    #@186
    invoke-direct {v0, v1, v5, v6, v7}, Lsun/security/provider/certpath/BasicChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/util/Date;Ljava/lang/String;Z)V

    #@189
    .line 449
    .local v20, "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    move-object/from16 v0, v25

    #@18b
    move-object/from16 v1, v20

    #@18d
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@190
    .line 452
    .end local v18    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v20    # "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    .end local v38    # "rootKey":Ljava/security/PublicKey;
    :cond_5
    move-object/from16 v0, p0

    #@192
    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@194
    move-object/from16 v0, p0

    #@196
    iget-object v6, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->cf:Ljava/security/cert/CertificateFactory;

    #@198
    move-object/from16 v0, v19

    #@19a
    invoke-virtual {v6, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    #@19d
    move-result-object v6

    #@19e
    invoke-virtual {v5, v6}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->setCertPath(Ljava/security/cert/CertPath;)V

    #@1a1
    .line 454
    const/16 v37, 0x0

    #@1a3
    .line 455
    .local v37, "revCheckerAdded":Z
    move-object/from16 v0, p0

    #@1a5
    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@1a7
    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPathCheckers()Ljava/util/List;

    #@1aa
    move-result-object v28

    #@1ab
    .line 456
    .local v28, "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1ae
    move-result-object v27

    #@1af
    .local v27, "ckr$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    #@1b2
    move-result v5

    #@1b3
    if-eqz v5, :cond_9

    #@1b5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b8
    move-result-object v26

    #@1b9
    check-cast v26, Ljava/security/cert/PKIXCertPathChecker;

    #@1bb
    .line 457
    .local v26, "ckr":Ljava/security/cert/PKIXCertPathChecker;
    move-object/from16 v0, v26

    #@1bd
    instance-of v5, v0, Ljava/security/cert/PKIXRevocationChecker;

    #@1bf
    if-eqz v5, :cond_6

    #@1c1
    .line 458
    if-eqz v37, :cond_8

    #@1c3
    .line 459
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    #@1c5
    .line 460
    const-string/jumbo v6, "Only one PKIXRevocationChecker can be specified"

    #@1c8
    .line 459
    invoke-direct {v5, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@1cb
    throw v5

    #@1cc
    .line 374
    .end local v4    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v9    # "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "policyChecker":Lsun/security/provider/certpath/PolicyChecker;
    .end local v19    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v26    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .end local v27    # "ckr$iterator":Ljava/util/Iterator;
    .end local v28    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v37    # "revCheckerAdded":Z
    :catch_0
    move-exception v34

    #@1cd
    .line 375
    .local v34, "gse":Ljava/security/GeneralSecurityException;
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@1cf
    if-eqz v5, :cond_7

    #@1d1
    .line 376
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@1d3
    new-instance v6, Ljava/lang/StringBuilder;

    #@1d5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1d8
    const-string/jumbo v7, "SunCertPathBuilder.depthFirstSearchForward(): validation failed: "

    #@1db
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v6

    #@1df
    move-object/from16 v0, v34

    #@1e1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v6

    #@1e5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e8
    move-result-object v6

    #@1e9
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@1ec
    .line 378
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Throwable;->printStackTrace()V

    #@1ef
    .line 380
    :cond_7
    move-object/from16 v0, v41

    #@1f1
    move-object/from16 v1, v34

    #@1f3
    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/Vertex;->setThrowable(Ljava/lang/Throwable;)V

    #@1f6
    goto/16 :goto_0

    #@1f8
    .line 462
    .end local v34    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v4    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .restart local v9    # "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "policyChecker":Lsun/security/provider/certpath/PolicyChecker;
    .restart local v19    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v26    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v27    # "ckr$iterator":Ljava/util/Iterator;
    .restart local v28    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v37    # "revCheckerAdded":Z
    :cond_8
    const/16 v37, 0x1

    #@1fa
    .line 464
    move-object/from16 v0, v26

    #@1fc
    instance-of v5, v0, Lsun/security/provider/certpath/RevocationChecker;

    #@1fe
    if-eqz v5, :cond_6

    #@200
    .line 465
    nop

    #@201
    nop

    #@202
    .end local v26    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    move-object/from16 v0, p3

    #@204
    iget-object v5, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@206
    .line 466
    move-object/from16 v0, p0

    #@208
    iget-object v6, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@20a
    .line 465
    move-object/from16 v0, v26

    #@20c
    invoke-virtual {v0, v5, v6}, Lsun/security/provider/certpath/RevocationChecker;->init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    #@20f
    goto :goto_1

    #@210
    .line 472
    :cond_9
    move-object/from16 v0, p0

    #@212
    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@214
    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->revocationEnabled()Z

    #@217
    move-result v5

    #@218
    if-eqz v5, :cond_a

    #@21a
    if-eqz v37, :cond_10

    #@21c
    .line 477
    :cond_a
    :goto_2
    move-object/from16 v0, v25

    #@21e
    move-object/from16 v1, v28

    #@220
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@223
    .line 482
    const/16 v35, 0x0

    #@225
    .local v35, "i":I
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    #@228
    move-result v5

    #@229
    move/from16 v0, v35

    #@22b
    if-ge v0, v5, :cond_16

    #@22d
    .line 483
    move-object/from16 v0, v19

    #@22f
    move/from16 v1, v35

    #@231
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@234
    move-result-object v30

    #@235
    check-cast v30, Ljava/security/cert/X509Certificate;

    #@237
    .line 484
    .local v30, "currCert":Ljava/security/cert/X509Certificate;
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@239
    if-eqz v5, :cond_b

    #@23b
    .line 485
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@23d
    new-instance v6, Ljava/lang/StringBuilder;

    #@23f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@242
    const-string/jumbo v7, "current subject = "

    #@245
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v6

    #@249
    .line 486
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@24c
    move-result-object v7

    #@24d
    .line 485
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@250
    move-result-object v6

    #@251
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@254
    move-result-object v6

    #@255
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@258
    .line 488
    :cond_b
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@25b
    move-result-object v40

    #@25c
    .line 489
    .local v40, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v40, :cond_c

    #@25e
    .line 490
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@261
    move-result-object v40

    #@262
    .line 493
    :cond_c
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@265
    move-result-object v32

    #@266
    .local v32, "currChecker$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_4
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    #@269
    move-result v5

    #@26a
    if-eqz v5, :cond_12

    #@26c
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26f
    move-result-object v31

    #@270
    check-cast v31, Ljava/security/cert/PKIXCertPathChecker;

    #@272
    .line 494
    .local v31, "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    #@275
    move-result v5

    #@276
    if-nez v5, :cond_d

    #@278
    .line 495
    if-nez v35, :cond_e

    #@27a
    .line 496
    const/4 v5, 0x0

    #@27b
    move-object/from16 v0, v31

    #@27d
    invoke-virtual {v0, v5}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    #@280
    .line 501
    move-object/from16 v0, v31

    #@282
    instance-of v5, v0, Lsun/security/provider/certpath/AlgorithmChecker;

    #@284
    if-eqz v5, :cond_e

    #@286
    move-object/from16 v5, v31

    #@288
    .line 502
    nop

    #@289
    nop

    #@28a
    .line 503
    move-object/from16 v0, p3

    #@28c
    iget-object v6, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@28e
    .line 502
    invoke-virtual {v5, v6}, Lsun/security/provider/certpath/AlgorithmChecker;->trySetTrustAnchor(Ljava/security/cert/TrustAnchor;)V

    #@291
    .line 508
    :cond_e
    :try_start_1
    move-object/from16 v0, v31

    #@293
    move-object/from16 v1, v30

    #@295
    move-object/from16 v2, v40

    #@297
    invoke-virtual {v0, v1, v2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    #@29a
    goto :goto_4

    #@29b
    .line 509
    :catch_1
    move-exception v29

    #@29c
    .line 510
    .local v29, "cpve":Ljava/security/cert/CertPathValidatorException;
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@29e
    if-eqz v5, :cond_f

    #@2a0
    .line 511
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@2a2
    .line 512
    new-instance v6, Ljava/lang/StringBuilder;

    #@2a4
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2a7
    const-string/jumbo v7, "SunCertPathBuilder.depthFirstSearchForward(): final verification failed: "

    #@2aa
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ad
    move-result-object v6

    #@2ae
    move-object/from16 v0, v29

    #@2b0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b3
    move-result-object v6

    #@2b4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b7
    move-result-object v6

    #@2b8
    .line 511
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@2bb
    .line 516
    :cond_f
    move-object/from16 v0, p0

    #@2bd
    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@2bf
    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    #@2c2
    move-result-object v5

    #@2c3
    move-object/from16 v0, v30

    #@2c5
    invoke-interface {v5, v0}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    #@2c8
    move-result v5

    #@2c9
    if-eqz v5, :cond_11

    #@2cb
    .line 517
    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    #@2ce
    move-result-object v5

    #@2cf
    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@2d1
    if-ne v5, v6, :cond_11

    #@2d3
    .line 518
    throw v29

    #@2d4
    .line 473
    .end local v29    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v30    # "currCert":Ljava/security/cert/X509Certificate;
    .end local v31    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v32    # "currChecker$iterator":Ljava/util/Iterator;
    .end local v35    # "i":I
    .end local v40    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    new-instance v5, Lsun/security/provider/certpath/RevocationChecker;

    #@2d6
    move-object/from16 v0, p3

    #@2d8
    iget-object v6, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@2da
    .line 474
    move-object/from16 v0, p0

    #@2dc
    iget-object v7, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@2de
    .line 473
    invoke-direct {v5, v6, v7}, Lsun/security/provider/certpath/RevocationChecker;-><init>(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    #@2e1
    move-object/from16 v0, v25

    #@2e3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e6
    goto/16 :goto_2

    #@2e8
    .line 520
    .restart local v29    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .restart local v30    # "currCert":Ljava/security/cert/X509Certificate;
    .restart local v31    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v32    # "currChecker$iterator":Ljava/util/Iterator;
    .restart local v35    # "i":I
    .restart local v40    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    move-object/from16 v0, v41

    #@2ea
    move-object/from16 v1, v29

    #@2ec
    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/Vertex;->setThrowable(Ljava/lang/Throwable;)V

    #@2ef
    goto/16 :goto_0

    #@2f1
    .line 533
    .end local v29    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v31    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_12
    move-object/from16 v0, p0

    #@2f3
    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@2f5
    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPathCheckers()Ljava/util/List;

    #@2f8
    move-result-object v5

    #@2f9
    .line 532
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2fc
    move-result-object v24

    #@2fd
    .local v24, "checker$iterator":Ljava/util/Iterator;
    :cond_13
    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    #@300
    move-result v5

    #@301
    if-eqz v5, :cond_14

    #@303
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@306
    move-result-object v23

    #@307
    check-cast v23, Ljava/security/cert/PKIXCertPathChecker;

    #@309
    .line 535
    .local v23, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    #@30c
    move-result v5

    #@30d
    if-eqz v5, :cond_13

    #@30f
    .line 537
    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/PKIXCertPathChecker;->getSupportedExtensions()Ljava/util/Set;

    #@312
    move-result-object v39

    #@313
    .line 538
    .local v39, "suppExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v39, :cond_13

    #@315
    .line 539
    move-object/from16 v0, v40

    #@317
    move-object/from16 v1, v39

    #@319
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    #@31c
    goto :goto_5

    #@31d
    .line 544
    .end local v23    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v39    # "suppExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_14
    invoke-interface/range {v40 .. v40}, Ljava/util/Set;->isEmpty()Z

    #@320
    move-result v5

    #@321
    if-nez v5, :cond_15

    #@323
    .line 545
    sget-object v5, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@325
    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@328
    move-result-object v5

    #@329
    move-object/from16 v0, v40

    #@32b
    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@32e
    .line 546
    sget-object v5, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@330
    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@333
    move-result-object v5

    #@334
    move-object/from16 v0, v40

    #@336
    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@339
    .line 547
    sget-object v5, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    #@33b
    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@33e
    move-result-object v5

    #@33f
    move-object/from16 v0, v40

    #@341
    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@344
    .line 548
    sget-object v5, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    #@346
    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@349
    move-result-object v5

    #@34a
    move-object/from16 v0, v40

    #@34c
    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@34f
    .line 549
    sget-object v5, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@351
    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@354
    move-result-object v5

    #@355
    move-object/from16 v0, v40

    #@357
    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@35a
    .line 550
    sget-object v5, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    #@35c
    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@35f
    move-result-object v5

    #@360
    move-object/from16 v0, v40

    #@362
    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@365
    .line 552
    sget-object v5, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@367
    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@36a
    move-result-object v5

    #@36b
    .line 551
    move-object/from16 v0, v40

    #@36d
    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@370
    .line 553
    sget-object v5, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@372
    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@375
    move-result-object v5

    #@376
    move-object/from16 v0, v40

    #@378
    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@37b
    .line 554
    sget-object v5, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@37d
    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@380
    move-result-object v5

    #@381
    move-object/from16 v0, v40

    #@383
    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@386
    .line 556
    invoke-interface/range {v40 .. v40}, Ljava/util/Set;->isEmpty()Z

    #@389
    move-result v5

    #@38a
    if-nez v5, :cond_15

    #@38c
    .line 557
    new-instance v11, Ljava/security/cert/CertPathValidatorException;

    #@38e
    .line 558
    const-string/jumbo v12, "unrecognized critical extension(s)"

    #@391
    .line 559
    sget-object v16, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    #@393
    .line 558
    const/4 v13, 0x0

    #@394
    .line 559
    const/4 v14, 0x0

    #@395
    const/4 v15, -0x1

    #@396
    .line 557
    invoke-direct/range {v11 .. v16}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@399
    throw v11

    #@39a
    .line 482
    :cond_15
    add-int/lit8 v35, v35, 0x1

    #@39c
    goto/16 :goto_3

    #@39e
    .line 563
    .end local v24    # "checker$iterator":Ljava/util/Iterator;
    .end local v30    # "currCert":Ljava/security/cert/X509Certificate;
    .end local v32    # "currChecker$iterator":Ljava/util/Iterator;
    .end local v40    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_16
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@3a0
    if-eqz v5, :cond_17

    #@3a2
    .line 564
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@3a4
    const-string/jumbo v6, "SunCertPathBuilder.depthFirstSearchForward(): final verification succeeded - path completed!"

    #@3a7
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3aa
    .line 566
    :cond_17
    const/4 v5, 0x1

    #@3ab
    move-object/from16 v0, p0

    #@3ad
    iput-boolean v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    #@3af
    .line 573
    move-object/from16 v0, p3

    #@3b1
    iget-object v5, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@3b3
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@3b6
    move-result-object v5

    #@3b7
    if-nez v5, :cond_18

    #@3b9
    .line 574
    move-object/from16 v0, p3

    #@3bb
    move-object/from16 v1, v21

    #@3bd
    move-object/from16 v2, p5

    #@3bf
    invoke-virtual {v0, v1, v2}, Lsun/security/provider/certpath/ForwardBuilder;->addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V

    #@3c2
    .line 576
    :cond_18
    move-object/from16 v0, p3

    #@3c4
    iget-object v5, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@3c6
    move-object/from16 v0, p0

    #@3c8
    iput-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@3ca
    .line 581
    if-eqz v20, :cond_19

    #@3cc
    .line 582
    invoke-virtual/range {v20 .. v20}, Lsun/security/provider/certpath/BasicChecker;->getPublicKey()Ljava/security/PublicKey;

    #@3cf
    move-result-object v5

    #@3d0
    move-object/from16 v0, p0

    #@3d2
    iput-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    #@3d4
    .line 593
    :goto_6
    invoke-virtual {v10}, Lsun/security/provider/certpath/PolicyChecker;->getPolicyTree()Ljava/security/cert/PolicyNode;

    #@3d7
    move-result-object v5

    #@3d8
    move-object/from16 v0, p0

    #@3da
    iput-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->policyTreeResult:Ljava/security/cert/PolicyNode;

    #@3dc
    .line 594
    return-void

    #@3dd
    .line 585
    :cond_19
    invoke-virtual/range {p5 .. p5}, Ljava/util/AbstractCollection;->isEmpty()Z

    #@3e0
    move-result v5

    #@3e1
    if-eqz v5, :cond_1a

    #@3e3
    .line 586
    move-object/from16 v0, p3

    #@3e5
    iget-object v5, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@3e7
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@3ea
    move-result-object v33

    #@3eb
    .line 590
    .local v33, "finalCert":Ljava/security/cert/Certificate;
    :goto_7
    invoke-virtual/range {v33 .. v33}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3ee
    move-result-object v5

    #@3ef
    move-object/from16 v0, p0

    #@3f1
    iput-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    #@3f3
    goto :goto_6

    #@3f4
    .line 588
    .end local v33    # "finalCert":Ljava/security/cert/Certificate;
    :cond_1a
    invoke-virtual/range {p5 .. p5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    #@3f7
    move-result-object v33

    #@3f8
    check-cast v33, Ljava/security/cert/Certificate;

    #@3fa
    .restart local v33    # "finalCert":Ljava/security/cert/Certificate;
    goto :goto_7

    #@3fb
    .line 596
    .end local v4    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v9    # "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "policyChecker":Lsun/security/provider/certpath/PolicyChecker;
    .end local v19    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v27    # "ckr$iterator":Ljava/util/Iterator;
    .end local v28    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v33    # "finalCert":Ljava/security/cert/Certificate;
    .end local v35    # "i":I
    .end local v37    # "revCheckerAdded":Z
    :cond_1b
    move-object/from16 v0, p3

    #@3fd
    move-object/from16 v1, v21

    #@3ff
    move-object/from16 v2, p5

    #@401
    invoke-virtual {v0, v1, v2}, Lsun/security/provider/certpath/ForwardBuilder;->addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V

    #@404
    .line 600
    move-object/from16 v0, v36

    #@406
    move-object/from16 v1, v21

    #@408
    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/ForwardState;->updateState(Ljava/security/cert/X509Certificate;)V

    #@40b
    .line 606
    new-instance v5, Ljava/util/LinkedList;

    #@40d
    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    #@410
    move-object/from16 v0, p4

    #@412
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@415
    .line 607
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    #@418
    move-result v5

    #@419
    add-int/lit8 v5, v5, -0x1

    #@41b
    move-object/from16 v0, v41

    #@41d
    invoke-virtual {v0, v5}, Lsun/security/provider/certpath/Vertex;->setIndex(I)V

    #@420
    .line 610
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@423
    move-result-object v12

    #@424
    move-object/from16 v11, p0

    #@426
    move-object/from16 v13, v36

    #@428
    move-object/from16 v14, p3

    #@42a
    move-object/from16 v15, p4

    #@42c
    move-object/from16 v16, p5

    #@42e
    invoke-direct/range {v11 .. v16}, Lsun/security/provider/certpath/SunCertPathBuilder;->depthFirstSearchForward(Ljavax/security/auth/x500/X500Principal;Lsun/security/provider/certpath/ForwardState;Lsun/security/provider/certpath/ForwardBuilder;Ljava/util/List;Ljava/util/LinkedList;)V

    #@431
    .line 616
    move-object/from16 v0, p0

    #@433
    iget-boolean v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    #@435
    if-eqz v5, :cond_1c

    #@437
    .line 617
    return-void

    #@438
    .line 625
    :cond_1c
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@43a
    if-eqz v5, :cond_1d

    #@43c
    .line 626
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@43e
    const-string/jumbo v6, "SunCertPathBuilder.depthFirstSearchForward(): backtracking"

    #@441
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@444
    .line 628
    :cond_1d
    move-object/from16 v0, p3

    #@446
    move-object/from16 v1, p5

    #@448
    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/ForwardBuilder;->removeFinalCertFromPath(Ljava/util/LinkedList;)V

    #@44b
    goto/16 :goto_0

    #@44d
    .line 334
    .end local v21    # "cert":Ljava/security/cert/X509Certificate;
    .end local v36    # "nextState":Lsun/security/provider/certpath/ForwardState;
    .end local v41    # "vertex":Lsun/security/provider/certpath/Vertex;
    :cond_1e
    return-void
.end method

.method private depthFirstSearchReverse(Ljavax/security/auth/x500/X500Principal;Lsun/security/provider/certpath/ReverseState;Lsun/security/provider/certpath/ReverseBuilder;Ljava/util/List;Ljava/util/LinkedList;)V
    .locals 15
    .param p1, "dN"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "currentState"    # Lsun/security/provider/certpath/ReverseState;
    .param p3, "builder"    # Lsun/security/provider/certpath/ReverseBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/x500/X500Principal;",
            "Lsun/security/provider/certpath/ReverseState;",
            "Lsun/security/provider/certpath/ReverseBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 655
    .local p4, "adjList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    .local p5, "cpList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 656
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "SunCertPathBuilder.depthFirstSearchReverse("

    #@e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    move-object/from16 v0, p1

    #@14
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    .line 657
    const-string/jumbo v5, ", "

    #@1b
    .line 656
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    .line 657
    invoke-virtual/range {p2 .. p2}, Lsun/security/provider/certpath/ReverseState;->toString()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    .line 656
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 657
    const-string/jumbo v5, ")"

    #@2a
    .line 656
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@35
    .line 664
    :cond_0
    iget-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@37
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certStores()Ljava/util/List;

    #@3a
    move-result-object v2

    #@3b
    move-object/from16 v0, p3

    #@3d
    move-object/from16 v1, p2

    #@3f
    invoke-virtual {v0, v1, v2}, Lsun/security/provider/certpath/ReverseBuilder;->getMatchingCerts(Lsun/security/provider/certpath/State;Ljava/util/List;)Ljava/util/Collection;

    #@42
    move-result-object v9

    #@43
    .line 665
    .local v9, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p4

    #@45
    invoke-static {v9, v0}, Lsun/security/provider/certpath/SunCertPathBuilder;->addVertices(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    #@48
    move-result-object v14

    #@49
    .line 666
    .local v14, "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@4b
    if-eqz v2, :cond_1

    #@4d
    .line 667
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@4f
    new-instance v3, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v5, "SunCertPathBuilder.depthFirstSearchReverse(): certs.size="

    #@57
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    .line 668
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@5e
    move-result v5

    #@5f
    .line 667
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@6a
    .line 676
    :cond_1
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6d
    move-result-object v13

    #@6e
    .local v13, "vertex$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@71
    move-result v2

    #@72
    if-eqz v2, :cond_b

    #@74
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@77
    move-result-object v12

    #@78
    check-cast v12, Lsun/security/provider/certpath/Vertex;

    #@7a
    .line 684
    .local v12, "vertex":Lsun/security/provider/certpath/Vertex;
    invoke-virtual/range {p2 .. p2}, Lsun/security/provider/certpath/ReverseState;->clone()Ljava/lang/Object;

    #@7d
    move-result-object v4

    #@7e
    check-cast v4, Lsun/security/provider/certpath/ReverseState;

    #@80
    .line 685
    .local v4, "nextState":Lsun/security/provider/certpath/ReverseState;
    invoke-virtual {v12}, Lsun/security/provider/certpath/Vertex;->getCertificate()Ljava/security/cert/X509Certificate;

    #@83
    move-result-object v8

    #@84
    .line 687
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    move-object/from16 v0, p3

    #@86
    move-object/from16 v1, p5

    #@88
    invoke-virtual {v0, v8, v4, v1}, Lsun/security/provider/certpath/ReverseBuilder;->verifyCert(Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/State;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@8b
    .line 700
    invoke-virtual/range {p2 .. p2}, Lsun/security/provider/certpath/ReverseState;->isInitial()Z

    #@8e
    move-result v2

    #@8f
    if-nez v2, :cond_3

    #@91
    .line 701
    move-object/from16 v0, p3

    #@93
    move-object/from16 v1, p5

    #@95
    invoke-virtual {v0, v8, v1}, Lsun/security/provider/certpath/ReverseBuilder;->addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V

    #@98
    .line 703
    :cond_3
    move-object/from16 v0, p2

    #@9a
    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@9c
    iput-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@9e
    .line 708
    move-object/from16 v0, p3

    #@a0
    invoke-virtual {v0, v8}, Lsun/security/provider/certpath/ReverseBuilder;->isPathCompleted(Ljava/security/cert/X509Certificate;)Z

    #@a3
    move-result v2

    #@a4
    if-eqz v2, :cond_8

    #@a6
    .line 709
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@a8
    if-eqz v2, :cond_4

    #@aa
    .line 710
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@ac
    const-string/jumbo v3, "SunCertPathBuilder.depthFirstSearchReverse(): path completed!"

    #@af
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@b2
    .line 712
    :cond_4
    const/4 v2, 0x1

    #@b3
    iput-boolean v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    #@b5
    .line 714
    iget-object v11, v4, Lsun/security/provider/certpath/ReverseState;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@b7
    .line 716
    .local v11, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    if-nez v11, :cond_7

    #@b9
    .line 717
    const/4 v2, 0x0

    #@ba
    iput-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->policyTreeResult:Ljava/security/cert/PolicyNode;

    #@bc
    .line 726
    :goto_1
    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@bf
    move-result-object v2

    #@c0
    iput-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    #@c2
    .line 727
    iget-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    #@c4
    invoke-static {v2}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    #@c7
    move-result v2

    #@c8
    if-eqz v2, :cond_5

    #@ca
    .line 730
    iget-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    #@cc
    move-object/from16 v0, p2

    #@ce
    iget-object v3, v0, Lsun/security/provider/certpath/ReverseState;->pubKey:Ljava/security/PublicKey;

    #@d0
    .line 729
    invoke-static {v2, v3}, Lsun/security/provider/certpath/BasicChecker;->makeInheritedParamsKey(Ljava/security/PublicKey;Ljava/security/PublicKey;)Ljava/security/PublicKey;

    #@d3
    move-result-object v2

    #@d4
    .line 728
    iput-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    #@d6
    .line 733
    :cond_5
    return-void

    #@d7
    .line 688
    .end local v11    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :catch_0
    move-exception v10

    #@d8
    .line 689
    .local v10, "gse":Ljava/security/GeneralSecurityException;
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@da
    if-eqz v2, :cond_6

    #@dc
    .line 690
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@de
    new-instance v3, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v5, "SunCertPathBuilder.depthFirstSearchReverse(): validation failed: "

    #@e6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v3

    #@ea
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v3

    #@ee
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v3

    #@f2
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@f5
    .line 692
    :cond_6
    invoke-virtual {v12, v10}, Lsun/security/provider/certpath/Vertex;->setThrowable(Ljava/lang/Throwable;)V

    #@f8
    goto/16 :goto_0

    #@fa
    .line 719
    .end local v10    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v11    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_7
    invoke-virtual {v11}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;

    #@fd
    move-result-object v2

    #@fe
    iput-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->policyTreeResult:Ljava/security/cert/PolicyNode;

    #@100
    .line 720
    iget-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->policyTreeResult:Ljava/security/cert/PolicyNode;

    #@102
    check-cast v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@104
    invoke-virtual {v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->setImmutable()V

    #@107
    goto :goto_1

    #@108
    .line 737
    .end local v11    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_8
    invoke-virtual {v4, v8}, Lsun/security/provider/certpath/ReverseState;->updateState(Ljava/security/cert/X509Certificate;)V

    #@10b
    .line 743
    new-instance v2, Ljava/util/LinkedList;

    #@10d
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@110
    move-object/from16 v0, p4

    #@112
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@115
    .line 744
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    #@118
    move-result v2

    #@119
    add-int/lit8 v2, v2, -0x1

    #@11b
    invoke-virtual {v12, v2}, Lsun/security/provider/certpath/Vertex;->setIndex(I)V

    #@11e
    .line 747
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@121
    move-result-object v3

    #@122
    move-object v2, p0

    #@123
    move-object/from16 v5, p3

    #@125
    move-object/from16 v6, p4

    #@127
    move-object/from16 v7, p5

    #@129
    invoke-direct/range {v2 .. v7}, Lsun/security/provider/certpath/SunCertPathBuilder;->depthFirstSearchReverse(Ljavax/security/auth/x500/X500Principal;Lsun/security/provider/certpath/ReverseState;Lsun/security/provider/certpath/ReverseBuilder;Ljava/util/List;Ljava/util/LinkedList;)V

    #@12c
    .line 753
    iget-boolean v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    #@12e
    if-eqz v2, :cond_9

    #@130
    .line 754
    return-void

    #@131
    .line 762
    :cond_9
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@133
    if-eqz v2, :cond_a

    #@135
    .line 763
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@137
    const-string/jumbo v3, "SunCertPathBuilder.depthFirstSearchReverse(): backtracking"

    #@13a
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@13d
    .line 765
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lsun/security/provider/certpath/ReverseState;->isInitial()Z

    #@140
    move-result v2

    #@141
    if-nez v2, :cond_2

    #@143
    .line 766
    move-object/from16 v0, p3

    #@145
    move-object/from16 v1, p5

    #@147
    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/ReverseBuilder;->removeFinalCertFromPath(Ljava/util/LinkedList;)V

    #@14a
    goto/16 :goto_0

    #@14c
    .line 769
    .end local v4    # "nextState":Lsun/security/provider/certpath/ReverseState;
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .end local v12    # "vertex":Lsun/security/provider/certpath/Vertex;
    :cond_b
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@14e
    if-eqz v2, :cond_c

    #@150
    .line 770
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@152
    const-string/jumbo v3, "SunCertPathBuilder.depthFirstSearchReverse() all certs in this adjacency list checked"

    #@155
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@158
    .line 653
    :cond_c
    return-void
.end method


# virtual methods
.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 3
    .param p1, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 127
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "SunCertPathBuilder.engineBuild("

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ")"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@24
    .line 130
    :cond_0
    invoke-static {p1}, Lsun/security/provider/certpath/PKIX;->checkBuilderParams(Ljava/security/cert/CertPathParameters;)Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@2a
    .line 131
    invoke-direct {p0}, Lsun/security/provider/certpath/SunCertPathBuilder;->build()Ljava/security/cert/PKIXCertPathBuilderResult;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method public engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;
    .locals 1

    #@0
    .prologue
    .line 99
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker;

    #@2
    invoke-direct {v0}, Lsun/security/provider/certpath/RevocationChecker;-><init>()V

    #@5
    return-object v0
.end method
