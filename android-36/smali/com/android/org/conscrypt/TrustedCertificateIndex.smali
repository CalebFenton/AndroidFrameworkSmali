.class public final Lcom/android/org/conscrypt/TrustedCertificateIndex;
.super Ljava/lang/Object;
.source "TrustedCertificateIndex.java"


# instance fields
.field private final greylist-max-o subjectToTrustAnchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List<",
            "Ljava/security/cert/TrustAnchor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o test-api <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    .line 46
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/util/Set;)V

    .line 50
    return-void
.end method

.method private static greylist-max-o findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;
    .registers 11
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/security/cert/TrustAnchor;"
        }
    .end annotation

    .line 148
    .local p1, "anchors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/TrustAnchor;>;"
    const-string v0, "X.509"

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 149
    .local v1, "certPublicKey":Ljava/security/PublicKey;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 152
    .local v3, "anchor":Ljava/security/cert/TrustAnchor;
    :try_start_16
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 153
    .local v4, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_21

    .line 154
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .local v5, "caPublicKey":Ljava/security/PublicKey;
    goto :goto_25

    .line 156
    .end local v5    # "caPublicKey":Ljava/security/PublicKey;
    :cond_21
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 158
    .restart local v5    # "caPublicKey":Ljava/security/PublicKey;
    :goto_25
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 159
    return-object v3

    .line 163
    :cond_2c
    invoke-interface {v5}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 164
    invoke-interface {v1}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 165
    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    .line 166
    .local v6, "caPublicKeyEncoded":[B
    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    .line 167
    .local v7, "certPublicKeyEncoded":[B
    if-eqz v7, :cond_53

    if-eqz v6, :cond_53

    .line 169
    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_50} :catch_54

    if-eqz v8, :cond_53

    .line 170
    return-object v3

    .line 176
    .end local v4    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "caPublicKeyEncoded":[B
    .end local v7    # "certPublicKeyEncoded":[B
    :cond_53
    goto :goto_55

    .line 174
    .end local v5    # "caPublicKey":Ljava/security/PublicKey;
    :catch_54
    move-exception v4

    .line 177
    .end local v3    # "anchor":Ljava/security/cert/TrustAnchor;
    :goto_55
    goto :goto_a

    .line 178
    :cond_56
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o index(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    .line 54
    .local v1, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    .line 55
    .end local v1    # "anchor":Ljava/security/cert/TrustAnchor;
    goto :goto_4

    .line 56
    :cond_14
    return-void
.end method


# virtual methods
.method public greylist-max-o test-api findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 10
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 184
    .local v0, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v1

    .line 185
    :try_start_7
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 186
    .local v2, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v2, :cond_17

    .line 187
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 190
    :cond_17
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 191
    .local v3, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/TrustAnchor;
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_49

    .line 194
    .local v5, "anchor":Ljava/security/cert/TrustAnchor;
    :try_start_2c
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 195
    .local v6, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_37

    .line 196
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .local v7, "publicKey":Ljava/security/PublicKey;
    goto :goto_3b

    .line 198
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    :cond_37
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .line 200
    .restart local v7    # "publicKey":Ljava/security/PublicKey;
    :goto_3b
    if-nez v7, :cond_3e

    .line 201
    goto :goto_20

    .line 203
    :cond_3e
    invoke-virtual {p1, v7}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 204
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_44} :catch_45
    .catchall {:try_start_2c .. :try_end_44} :catchall_49

    .line 207
    .end local v6    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    goto :goto_46

    .line 205
    :catch_45
    move-exception v6

    .line 208
    .end local v5    # "anchor":Ljava/security/cert/TrustAnchor;
    :goto_46
    goto :goto_20

    .line 209
    :cond_47
    :try_start_47
    monitor-exit v1

    return-object v3

    .line 210
    .end local v2    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v3    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :catchall_49
    move-exception v2

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_49

    throw v2
.end method

.method public greylist-max-o test-api findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 10
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 108
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 109
    .local v0, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v1

    .line 110
    :try_start_7
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 111
    .local v2, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    const/4 v3, 0x0

    if-nez v2, :cond_14

    .line 112
    monitor-exit v1

    return-object v3

    .line 115
    :cond_14
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/TrustAnchor;
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_3c

    .line 118
    .local v5, "anchor":Ljava/security/cert/TrustAnchor;
    :try_start_24
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 119
    .local v6, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_2f

    .line 120
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .local v7, "publicKey":Ljava/security/PublicKey;
    goto :goto_33

    .line 122
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    :cond_2f
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .line 124
    .restart local v7    # "publicKey":Ljava/security/PublicKey;
    :goto_33
    invoke-virtual {p1, v7}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_36} :catch_38
    .catchall {:try_start_24 .. :try_end_36} :catchall_3c

    .line 125
    :try_start_36
    monitor-exit v1

    return-object v5

    .line 126
    .end local v6    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    :catch_38
    move-exception v6

    .line 129
    .end local v5    # "anchor":Ljava/security/cert/TrustAnchor;
    goto :goto_18

    .line 130
    .end local v2    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :cond_3a
    monitor-exit v1

    .line 131
    return-object v3

    .line 130
    :catchall_3c
    move-exception v2

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method public greylist-max-o test-api findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 6
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 136
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 137
    .local v0, "subject":Ljavax/security/auth/x500/X500Principal;
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v1

    .line 138
    :try_start_7
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 139
    .local v2, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v2, :cond_14

    .line 140
    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    .line 142
    :cond_14
    invoke-static {p1, v2}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 143
    .end local v2    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public greylist-max-o test-api index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 60
    new-instance v0, Ljava/security/cert/TrustAnchor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 61
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    .line 62
    return-object v0
.end method

.method public greylist-max-o index(Ljava/security/cert/TrustAnchor;)V
    .registers 9
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;

    .line 67
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 68
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_b

    .line 69
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .local v1, "subject":Ljavax/security/auth/x500/X500Principal;
    goto :goto_f

    .line 71
    .end local v1    # "subject":Ljavax/security/auth/x500/X500Principal;
    :cond_b
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 74
    .restart local v1    # "subject":Ljavax/security/auth/x500/X500Principal;
    :goto_f
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v2

    .line 75
    :try_start_12
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 76
    .local v3, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v3, :cond_29

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v4

    .line 78
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    .line 81
    :cond_29
    if-eqz v0, :cond_48

    .line 82
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/TrustAnchor;

    .line 83
    .local v5, "entry":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 84
    monitor-exit v2

    return-void

    .line 86
    .end local v5    # "entry":Ljava/security/cert/TrustAnchor;
    :cond_47
    goto :goto_2f

    .line 89
    :cond_48
    :goto_48
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    nop

    .end local v3    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    monitor-exit v2

    .line 91
    return-void

    .line 90
    :catchall_4e
    move-exception v3

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_12 .. :try_end_50} :catchall_4e

    throw v3
.end method

.method public greylist-max-o reset()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v0

    .line 95
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 96
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public greylist-max-o reset(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v0

    .line 101
    :try_start_3
    invoke-virtual {p0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset()V

    .line 102
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/util/Set;)V

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
