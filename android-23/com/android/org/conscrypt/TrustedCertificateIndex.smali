.class public final Lcom/android/org/conscrypt/TrustedCertificateIndex;
.super Ljava/lang/Object;
.source "TrustedCertificateIndex.java"


# instance fields
.field private final subjectToTrustAnchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 36
    iput-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@a
    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 41
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 36
    iput-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@a
    .line 42
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/util/Set;)V

    #@d
    .line 41
    return-void
.end method

.method private static findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;
    .locals 8
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/security/cert/TrustAnchor;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "anchors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/TrustAnchor;>;"
    const/4 v7, 0x0

    #@1
    .line 128
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@4
    move-result-object v4

    #@5
    .line 129
    .local v4, "certPublicKey":Ljava/security/PublicKey;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_2

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/security/cert/TrustAnchor;

    #@15
    .line 132
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@18
    move-result-object v2

    #@19
    .line 133
    .local v2, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_1

    #@1b
    .line 134
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@1e
    move-result-object v3

    #@1f
    .line 138
    .local v3, "caPublicKey":Ljava/security/PublicKey;
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v6

    #@23
    if-eqz v6, :cond_0

    #@25
    .line 139
    return-object v0

    #@26
    .line 136
    .end local v3    # "caPublicKey":Ljava/security/PublicKey;
    :cond_1
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result-object v3

    #@2a
    .restart local v3    # "caPublicKey":Ljava/security/PublicKey;
    goto :goto_1

    #@2b
    .line 145
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v3    # "caPublicKey":Ljava/security/PublicKey;
    :cond_2
    return-object v7

    #@2c
    .line 141
    .restart local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :catch_0
    move-exception v5

    #@2d
    .local v5, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private index(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 46
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/security/cert/TrustAnchor;

    #@10
    .line 47
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    #@13
    goto :goto_0

    #@14
    .line 45
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_0
    return-void
.end method


# virtual methods
.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 10
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 90
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@4
    move-result-object v5

    #@5
    .line 91
    .local v5, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v8, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@7
    monitor-enter v8

    #@8
    .line 92
    :try_start_0
    iget-object v7, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@a
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 93
    .local v2, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v2, :cond_0

    #@12
    monitor-exit v8

    #@13
    .line 94
    return-object v9

    #@14
    .line 97
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_2

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/security/cert/TrustAnchor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    .line 100
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    :try_start_2
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@27
    move-result-object v3

    #@28
    .line 101
    .local v3, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_1

    #@2a
    .line 102
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@2d
    move-result-object v6

    #@2e
    .line 106
    .local v6, "publicKey":Ljava/security/PublicKey;
    :goto_1
    invoke-virtual {p1, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    monitor-exit v8

    #@32
    .line 107
    return-object v0

    #@33
    .line 104
    .end local v6    # "publicKey":Ljava/security/PublicKey;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@36
    move-result-object v6

    #@37
    .restart local v6    # "publicKey":Ljava/security/PublicKey;
    goto :goto_1

    #@38
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v3    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "publicKey":Ljava/security/PublicKey;
    :cond_2
    monitor-exit v8

    #@39
    .line 112
    return-object v9

    #@3a
    .line 91
    .end local v1    # "anchor$iterator":Ljava/util/Iterator;
    .end local v2    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :catchall_0
    move-exception v7

    #@3b
    monitor-exit v8

    #@3c
    throw v7

    #@3d
    .line 108
    .restart local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .restart local v1    # "anchor$iterator":Ljava/util/Iterator;
    .restart local v2    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :catch_0
    move-exception v4

    #@3e
    .local v4, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 116
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@4
    move-result-object v1

    #@5
    .line 117
    .local v1, "subject":Ljavax/security/auth/x500/X500Principal;
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@7
    monitor-enter v3

    #@8
    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@a
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 119
    .local v0, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v0, :cond_0

    #@12
    monitor-exit v3

    #@13
    .line 120
    return-object v4

    #@14
    .line 122
    :cond_0
    :try_start_1
    invoke-static {p1, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result-object v2

    #@18
    monitor-exit v3

    #@19
    return-object v2

    #@1a
    .line 117
    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :catchall_0
    move-exception v2

    #@1b
    monitor-exit v3

    #@1c
    throw v2
.end method

.method public index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/security/cert/TrustAnchor;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@6
    .line 53
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    #@9
    .line 54
    return-object v0
.end method

.method public index(Ljava/security/cert/TrustAnchor;)V
    .locals 5
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;

    #@0
    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@3
    move-result-object v1

    #@4
    .line 60
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_1

    #@6
    .line 61
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@9
    move-result-object v2

    #@a
    .line 66
    .local v2, "subject":Ljavax/security/auth/x500/X500Principal;
    :goto_0
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@c
    monitor-enter v4

    #@d
    .line 67
    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@f
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/util/List;

    #@15
    .line 68
    .local v0, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v0, :cond_0

    #@17
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    #@19
    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    const/4 v3, 0x1

    #@1a
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@1d
    .line 70
    .restart local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@1f
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 72
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v4

    #@26
    .line 57
    return-void

    #@27
    .line 63
    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v2    # "subject":Ljavax/security/auth/x500/X500Principal;
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    #@2a
    move-result-object v2

    #@2b
    .restart local v2    # "subject":Ljavax/security/auth/x500/X500Principal;
    goto :goto_0

    #@2c
    .line 66
    :catchall_0
    move-exception v3

    #@2d
    monitor-exit v4

    #@2e
    throw v3
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 76
    return-void

    #@a
    .line 77
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public reset(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 83
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset()V

    #@6
    .line 85
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 82
    return-void

    #@b
    .line 83
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method
