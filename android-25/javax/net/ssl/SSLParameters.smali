.class public Ljavax/net/ssl/SSLParameters;
.super Ljava/lang/Object;
.source "SSLParameters.java"


# instance fields
.field private algorithmConstraints:Ljava/security/AlgorithmConstraints;

.field private cipherSuites:[Ljava/lang/String;

.field private identificationAlgorithm:Ljava/lang/String;

.field private needClientAuth:Z

.field private preferLocalCipherSuites:Z

.field private protocols:[Ljava/lang/String;

.field private sniMatchers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private sniNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation
.end field

.field private wantClientAuth:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 74
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    #@6
    .line 75
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    #@8
    .line 86
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 74
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    #@6
    .line 75
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    #@8
    .line 100
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    #@b
    .line 99
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # [Ljava/lang/String;
    .param p2, "protocols"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 74
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    #@6
    .line 75
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    #@8
    .line 115
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    #@b
    .line 116
    invoke-virtual {p0, p2}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@e
    .line 114
    return-void
.end method

.method private static clone([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "s"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 120
    if-nez p0, :cond_0

    #@3
    :goto_0
    return-object v0

    #@4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [Ljava/lang/String;

    #@a
    goto :goto_0
.end method


# virtual methods
.method public getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@2
    return-object v0
.end method

.method public getCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    #@2
    invoke-static {v0}, Ljavax/net/ssl/SSLParameters;->clone([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEndpointIdentificationAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->identificationAlgorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    #@0
    .prologue
    .line 189
    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    #@2
    return v0
.end method

.method public getProtocols()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    #@2
    invoke-static {v0}, Ljavax/net/ssl/SSLParameters;->clone([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getSNIMatchers()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 427
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 428
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    #@7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 430
    new-instance v0, Ljava/util/ArrayList;

    #@f
    iget-object v1, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    #@11
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@18
    .line 429
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@1b
    move-result-object v0

    #@1c
    return-object v0

    #@1d
    .line 432
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 436
    :cond_1
    return-object v1
.end method

.method public final getServerNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 352
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 353
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    #@7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 355
    new-instance v0, Ljava/util/ArrayList;

    #@f
    iget-object v1, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    #@11
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@18
    .line 354
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@1b
    move-result-object v0

    #@1c
    return-object v0

    #@1d
    .line 357
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 361
    :cond_1
    return-object v1
.end method

.method public final getUseCipherSuitesOrder()Z
    .locals 1

    #@0
    .prologue
    .line 465
    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->preferLocalCipherSuites:Z

    #@2
    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    #@0
    .prologue
    .line 169
    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    #@2
    return v0
.end method

.method public setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    .locals 0
    .param p1, "constraints"    # Ljava/security/AlgorithmConstraints;

    #@0
    .prologue
    .line 231
    iput-object p1, p0, Ljavax/net/ssl/SSLParameters;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@2
    .line 229
    return-void
.end method

.method public setCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 140
    invoke-static {p1}, Ljavax/net/ssl/SSLParameters;->clone([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    #@6
    .line 139
    return-void
.end method

.method public setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 267
    iput-object p1, p0, Ljavax/net/ssl/SSLParameters;->identificationAlgorithm:Ljava/lang/String;

    #@2
    .line 266
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .param p1, "needClientAuth"    # Z

    #@0
    .prologue
    .line 199
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    #@3
    .line 200
    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    #@5
    .line 198
    return-void
.end method

.method public setProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 160
    invoke-static {p1}, Ljavax/net/ssl/SSLParameters;->clone([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    #@6
    .line 159
    return-void
.end method

.method public final setSNIMatchers(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "matchers":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/net/ssl/SNIMatcher;>;"
    const/4 v2, 0x0

    #@1
    .line 389
    if-eqz p1, :cond_3

    #@3
    .line 390
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_1

    #@9
    .line 391
    new-instance v2, Ljava/util/HashMap;

    #@b
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@e
    move-result v3

    #@f
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    #@12
    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    #@14
    .line 392
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "matcher$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljavax/net/ssl/SNIMatcher;

    #@24
    .line 393
    .local v0, "matcher":Ljavax/net/ssl/SNIMatcher;
    iget-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    #@26
    invoke-virtual {v0}, Ljavax/net/ssl/SNIMatcher;->getType()I

    #@29
    move-result v3

    #@2a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v3

    #@2e
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    if-eqz v2, :cond_0

    #@34
    .line 395
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@36
    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v4, "Duplicated server name of type "

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 397
    invoke-virtual {v0}, Ljavax/net/ssl/SNIMatcher;->getType()I

    #@45
    move-result v4

    #@46
    .line 396
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    .line 395
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@51
    throw v2

    #@52
    .line 401
    .end local v0    # "matcher":Ljavax/net/ssl/SNIMatcher;
    .end local v1    # "matcher$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@55
    move-result-object v2

    #@56
    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    #@58
    .line 388
    :cond_2
    :goto_0
    return-void

    #@59
    .line 404
    :cond_3
    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    #@5b
    goto :goto_0
.end method

.method public final setServerNames(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "serverNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    const/4 v2, 0x0

    #@1
    .line 294
    if-eqz p1, :cond_3

    #@3
    .line 295
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_1

    #@9
    .line 296
    new-instance v2, Ljava/util/LinkedHashMap;

    #@b
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@e
    move-result v3

    #@f
    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    #@12
    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    #@14
    .line 297
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "serverName$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljavax/net/ssl/SNIServerName;

    #@24
    .line 298
    .local v0, "serverName":Ljavax/net/ssl/SNIServerName;
    iget-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    #@26
    invoke-virtual {v0}, Ljavax/net/ssl/SNIServerName;->getType()I

    #@29
    move-result v3

    #@2a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v3

    #@2e
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    if-eqz v2, :cond_0

    #@34
    .line 300
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@36
    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v4, "Duplicated server name of type "

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 302
    invoke-virtual {v0}, Ljavax/net/ssl/SNIServerName;->getType()I

    #@45
    move-result v4

    #@46
    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    .line 300
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@51
    throw v2

    #@52
    .line 306
    .end local v0    # "serverName":Ljavax/net/ssl/SNIServerName;
    .end local v1    # "serverName$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@55
    move-result-object v2

    #@56
    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    #@58
    .line 293
    :cond_2
    :goto_0
    return-void

    #@59
    .line 309
    :cond_3
    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    #@5b
    goto :goto_0
.end method

.method public final setUseCipherSuitesOrder(Z)V
    .locals 0
    .param p1, "honorOrder"    # Z

    #@0
    .prologue
    .line 451
    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->preferLocalCipherSuites:Z

    #@2
    .line 450
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "wantClientAuth"    # Z

    #@0
    .prologue
    .line 179
    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    #@2
    .line 180
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    #@5
    .line 178
    return-void
.end method
