.class public Ljavax/net/ssl/SSLParameters;
.super Ljava/lang/Object;
.source "SSLParameters.java"


# instance fields
.field private greylist-max-o algorithmConstraints:Ljava/security/AlgorithmConstraints;

.field private blacklist applicationProtocols:[Ljava/lang/String;

.field private greylist-max-o cipherSuites:[Ljava/lang/String;

.field private greylist-max-o identificationAlgorithm:Ljava/lang/String;

.field private greylist-max-o needClientAuth:Z

.field private greylist-max-o preferLocalCipherSuites:Z

.field private greylist-max-o protocols:[Ljava/lang/String;

.field private greylist-max-o sniMatchers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o sniNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o wantClientAuth:Z


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    .line 75
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    .line 78
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->applicationProtocols:[Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor whitelist test-api <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    .line 75
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    .line 78
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->applicationProtocols:[Ljava/lang/String;

    .line 102
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public constructor whitelist test-api <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "cipherSuites"    # [Ljava/lang/String;
    .param p2, "protocols"    # [Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    .line 75
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    .line 78
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->applicationProtocols:[Ljava/lang/String;

    .line 117
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p2}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private static greylist-max-o clone([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "s"    # [Ljava/lang/String;

    .line 122
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_a
    return-object v0
.end method


# virtual methods
.method public whitelist test-api getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;
    .registers 2

    .line 216
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    return-object v0
.end method

.method public whitelist test-api getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 489
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->applicationProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/SSLParameters;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEndpointIdentificationAlgorithm()Ljava/lang/String;
    .registers 2

    .line 248
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->identificationAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNeedClientAuth()Z
    .registers 2

    .line 191
    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    return v0
.end method

.method public whitelist test-api getProtocols()[Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/SSLParameters;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getSNIMatchers()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    if-eqz v0, :cond_21

    .line 431
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    .line 433
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 432
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 435
    :cond_1c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 439
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist test-api getServerNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    if-eqz v0, :cond_21

    .line 356
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    .line 358
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 357
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 360
    :cond_1c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 364
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist test-api getUseCipherSuitesOrder()Z
    .registers 2

    .line 468
    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->preferLocalCipherSuites:Z

    return v0
.end method

.method public whitelist test-api getWantClientAuth()Z
    .registers 2

    .line 171
    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    return v0
.end method

.method public whitelist test-api setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    .registers 2
    .param p1, "constraints"    # Ljava/security/AlgorithmConstraints;

    .line 233
    iput-object p1, p0, Ljavax/net/ssl/SSLParameters;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 234
    return-void
.end method

.method public whitelist test-api setApplicationProtocols([Ljava/lang/String;)V
    .registers 7
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 528
    if-eqz p1, :cond_26

    .line 532
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 534
    .local v0, "tempProtocols":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    .line 535
    .local v3, "p":Ljava/lang/String;
    if-eqz v3, :cond_1b

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 534
    .end local v3    # "p":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 536
    .restart local v3    # "p":Ljava/lang/String;
    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An element of protocols was null/empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 540
    .end local v3    # "p":Ljava/lang/String;
    :cond_23
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->applicationProtocols:[Ljava/lang/String;

    .line 541
    return-void

    .line 529
    .end local v0    # "tempProtocols":[Ljava/lang/String;
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .line 142
    invoke-static {p1}, Ljavax/net/ssl/SSLParameters;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    .line 143
    return-void
.end method

.method public whitelist test-api setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    .registers 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 270
    iput-object p1, p0, Ljavax/net/ssl/SSLParameters;->identificationAlgorithm:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public whitelist test-api setNeedClientAuth(Z)V
    .registers 3
    .param p1, "needClientAuth"    # Z

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    .line 202
    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    .line 203
    return-void
.end method

.method public whitelist test-api setProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 162
    invoke-static {p1}, Ljavax/net/ssl/SSLParameters;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    .line 163
    return-void
.end method

.method public final whitelist test-api setSNIMatchers(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;)V"
        }
    .end annotation

    .line 392
    .local p1, "matchers":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/net/ssl/SNIMatcher;>;"
    if-eqz p1, :cond_59

    .line 393
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    .line 394
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    .line 395
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SNIMatcher;

    .line 396
    .local v1, "matcher":Ljavax/net/ssl/SNIMatcher;
    iget-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    invoke-virtual {v1}, Ljavax/net/ssl/SNIMatcher;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_34

    .line 402
    .end local v1    # "matcher":Ljavax/net/ssl/SNIMatcher;
    goto :goto_17

    .line 398
    .restart local v1    # "matcher":Ljavax/net/ssl/SNIMatcher;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicated server name of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 400
    invoke-virtual {v1}, Ljavax/net/ssl/SNIMatcher;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    .end local v1    # "matcher":Ljavax/net/ssl/SNIMatcher;
    :cond_51
    goto :goto_5c

    .line 404
    :cond_52
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    goto :goto_5c

    .line 407
    :cond_59
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    .line 409
    :goto_5c
    return-void
.end method

.method public final whitelist test-api setServerNames(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;)V"
        }
    .end annotation

    .line 297
    .local p1, "serverNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    if-eqz p1, :cond_59

    .line 298
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    .line 299
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    .line 300
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SNIServerName;

    .line 301
    .local v1, "serverName":Ljavax/net/ssl/SNIServerName;
    iget-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    invoke-virtual {v1}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_34

    .line 307
    .end local v1    # "serverName":Ljavax/net/ssl/SNIServerName;
    goto :goto_17

    .line 303
    .restart local v1    # "serverName":Ljavax/net/ssl/SNIServerName;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicated server name of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 305
    invoke-virtual {v1}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    .end local v1    # "serverName":Ljavax/net/ssl/SNIServerName;
    :cond_51
    goto :goto_5c

    .line 309
    :cond_52
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    goto :goto_5c

    .line 312
    :cond_59
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    .line 314
    :goto_5c
    return-void
.end method

.method public final whitelist test-api setUseCipherSuitesOrder(Z)V
    .registers 2
    .param p1, "honorOrder"    # Z

    .line 454
    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->preferLocalCipherSuites:Z

    .line 455
    return-void
.end method

.method public whitelist test-api setWantClientAuth(Z)V
    .registers 3
    .param p1, "wantClientAuth"    # Z

    .line 181
    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    .line 183
    return-void
.end method
