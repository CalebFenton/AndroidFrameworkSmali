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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 39
    iput-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@a
    .line 42
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
    .line 44
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 39
    iput-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@a
    .line 45
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/util/Set;)V

    #@d
    .line 44
    return-void
.end method

.method private static findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;
    .locals 11
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
    const/4 v10, 0x0

    #@1
    .line 140
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@4
    move-result-object v5

    #@5
    .line 141
    .local v5, "certPublicKey":Ljava/security/PublicKey;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v8

    #@d
    if-eqz v8, :cond_3

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/security/cert/TrustAnchor;

    #@15
    .line 144
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@18
    move-result-object v2

    #@19
    .line 145
    .local v2, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_1

    #@1b
    .line 146
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@1e
    move-result-object v3

    #@1f
    .line 150
    .local v3, "caPublicKey":Ljava/security/PublicKey;
    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v8

    #@23
    if-eqz v8, :cond_2

    #@25
    .line 151
    return-object v0

    #@26
    .line 148
    .end local v3    # "caPublicKey":Ljava/security/PublicKey;
    :cond_1
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    #@29
    move-result-object v3

    #@2a
    .restart local v3    # "caPublicKey":Ljava/security/PublicKey;
    goto :goto_1

    #@2b
    .line 155
    :cond_2
    const-string/jumbo v8, "X.509"

    #@2e
    invoke-interface {v3}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    #@31
    move-result-object v9

    #@32
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v8

    #@36
    if-eqz v8, :cond_0

    #@38
    .line 156
    const-string/jumbo v8, "X.509"

    #@3b
    invoke-interface {v5}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    #@3e
    move-result-object v9

    #@3f
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v8

    #@43
    .line 155
    if-eqz v8, :cond_0

    #@45
    .line 157
    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    #@48
    move-result-object v4

    #@49
    .line 158
    .local v4, "caPublicKeyEncoded":[B
    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    #@4c
    move-result-object v6

    #@4d
    .line 159
    .local v6, "certPublicKeyEncoded":[B
    if-eqz v6, :cond_0

    #@4f
    .line 160
    if-eqz v4, :cond_0

    #@51
    .line 161
    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    move-result v8

    #@55
    .line 159
    if-eqz v8, :cond_0

    #@57
    .line 162
    return-object v0

    #@58
    .line 170
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v3    # "caPublicKey":Ljava/security/PublicKey;
    .end local v4    # "caPublicKeyEncoded":[B
    .end local v6    # "certPublicKeyEncoded":[B
    :cond_3
    return-object v10

    #@59
    .line 166
    .restart local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :catch_0
    move-exception v7

    #@5a
    .local v7, "e":Ljava/lang/Exception;
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
    .line 49
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
    .line 50
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    #@13
    goto :goto_0

    #@14
    .line 48
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_0
    return-void
.end method


# virtual methods
.method public findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 10
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 174
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@3
    move-result-object v5

    #@4
    .line 175
    .local v5, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v9, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@6
    monitor-enter v9

    #@7
    .line 176
    :try_start_0
    iget-object v8, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@9
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Ljava/util/List;

    #@f
    .line 177
    .local v2, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v2, :cond_0

    #@11
    .line 178
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v8

    #@15
    monitor-exit v9

    #@16
    return-object v8

    #@17
    .line 181
    :cond_0
    :try_start_1
    new-instance v7, Ljava/util/HashSet;

    #@19
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    #@1c
    .line 182
    .local v7, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v1

    #@20
    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v8

    #@24
    if-eqz v8, :cond_3

    #@26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Ljava/security/cert/TrustAnchor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .line 185
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    :try_start_2
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@2f
    move-result-object v3

    #@30
    .line 186
    .local v3, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_2

    #@32
    .line 187
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@35
    move-result-object v6

    #@36
    .line 191
    .local v6, "publicKey":Ljava/security/PublicKey;
    :goto_1
    if-eqz v6, :cond_1

    #@38
    .line 194
    invoke-virtual {p1, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    #@3b
    .line 195
    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3e
    goto :goto_0

    #@3f
    .line 196
    .end local v3    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "publicKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v4

    #@40
    .local v4, "ignored":Ljava/lang/Exception;
    goto :goto_0

    #@41
    .line 189
    .end local v4    # "ignored":Ljava/lang/Exception;
    .restart local v3    # "caCert":Ljava/security/cert/X509Certificate;
    :cond_2
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    move-result-object v6

    #@45
    .restart local v6    # "publicKey":Ljava/security/PublicKey;
    goto :goto_1

    #@46
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v3    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "publicKey":Ljava/security/PublicKey;
    :cond_3
    monitor-exit v9

    #@47
    .line 199
    return-object v7

    #@48
    .line 175
    .end local v1    # "anchor$iterator":Ljava/util/Iterator;
    .end local v2    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v7    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :catchall_0
    move-exception v8

    #@49
    monitor-exit v9

    #@4a
    throw v8
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 10
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 102
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@4
    move-result-object v5

    #@5
    .line 103
    .local v5, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v8, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@7
    monitor-enter v8

    #@8
    .line 104
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
    .line 105
    .local v2, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v2, :cond_0

    #@12
    monitor-exit v8

    #@13
    .line 106
    return-object v9

    #@14
    .line 109
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
    .line 112
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    :try_start_2
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@27
    move-result-object v3

    #@28
    .line 113
    .local v3, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_1

    #@2a
    .line 114
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@2d
    move-result-object v6

    #@2e
    .line 118
    .local v6, "publicKey":Ljava/security/PublicKey;
    :goto_1
    invoke-virtual {p1, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    monitor-exit v8

    #@32
    .line 119
    return-object v0

    #@33
    .line 116
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
    .line 124
    return-object v9

    #@3a
    .line 103
    .end local v1    # "anchor$iterator":Ljava/util/Iterator;
    .end local v2    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :catchall_0
    move-exception v7

    #@3b
    monitor-exit v8

    #@3c
    throw v7

    #@3d
    .line 120
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
    .line 128
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@4
    move-result-object v1

    #@5
    .line 129
    .local v1, "subject":Ljavax/security/auth/x500/X500Principal;
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@7
    monitor-enter v3

    #@8
    .line 130
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
    .line 131
    .local v0, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v0, :cond_0

    #@12
    monitor-exit v3

    #@13
    .line 132
    return-object v4

    #@14
    .line 134
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
    .line 129
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
    .line 55
    new-instance v0, Ljava/security/cert/TrustAnchor;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@6
    .line 56
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    #@9
    .line 57
    return-object v0
.end method

.method public index(Ljava/security/cert/TrustAnchor;)V
    .locals 7
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;

    #@0
    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@3
    move-result-object v1

    #@4
    .line 63
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_1

    #@6
    .line 64
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@9
    move-result-object v4

    #@a
    .line 69
    .local v4, "subject":Ljavax/security/auth/x500/X500Principal;
    :goto_0
    iget-object v6, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@c
    monitor-enter v6

    #@d
    .line 70
    :try_start_0
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@f
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/util/List;

    #@15
    .line 71
    .local v0, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v0, :cond_2

    #@17
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    #@19
    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    const/4 v5, 0x1

    #@1a
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@1d
    .line 73
    .restart local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@1f
    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 84
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v6

    #@26
    .line 60
    return-void

    #@27
    .line 66
    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v4    # "subject":Ljavax/security/auth/x500/X500Principal;
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    #@2a
    move-result-object v4

    #@2b
    .restart local v4    # "subject":Ljavax/security/auth/x500/X500Principal;
    goto :goto_0

    #@2c
    .line 76
    .restart local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :cond_2
    if-eqz v1, :cond_0

    #@2e
    .line 77
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v3

    #@32
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_0

    #@38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Ljava/security/cert/TrustAnchor;

    #@3e
    .line 78
    .local v2, "entry":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v1, v5}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_3

    #@48
    monitor-exit v6

    #@49
    .line 79
    return-void

    #@4a
    .line 69
    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v2    # "entry":Ljava/security/cert/TrustAnchor;
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@4b
    monitor-exit v6

    #@4c
    throw v5
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 88
    return-void

    #@a
    .line 89
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
    .line 95
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset()V

    #@6
    .line 97
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 94
    return-void

    #@b
    .line 95
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method
