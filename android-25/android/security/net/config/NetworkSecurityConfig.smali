.class public final Landroid/security/net/config/NetworkSecurityConfig;
.super Ljava/lang/Object;
.source "NetworkSecurityConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/NetworkSecurityConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CLEARTEXT_TRAFFIC_PERMITTED:Z = true

.field public static final DEFAULT_HSTS_ENFORCED:Z


# instance fields
.field private mAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/security/net/config/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnchorsLock:Ljava/lang/Object;

.field private final mCertificatesEntryRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation
.end field

.field private final mCleartextTrafficPermitted:Z

.field private final mHstsEnforced:Z

.field private final mPins:Landroid/security/net/config/PinSet;

.field private mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

.field private final mTrustManagerLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(ZZLandroid/security/net/config/PinSet;Ljava/util/List;)V
    .locals 2
    .param p1, "cleartextTrafficPermitted"    # Z
    .param p2, "hstsEnforced"    # Z
    .param p3, "pins"    # Landroid/security/net/config/PinSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/security/net/config/PinSet;",
            "Ljava/util/List",
            "<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 51
    .local p4, "certificatesEntryRefs":Ljava/util/List;, "Ljava/util/List<Landroid/security/net/config/CertificatesEntryRef;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchorsLock:Ljava/lang/Object;

    #@a
    .line 49
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManagerLock:Ljava/lang/Object;

    #@11
    .line 53
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCleartextTrafficPermitted:Z

    #@13
    .line 54
    iput-boolean p2, p0, Landroid/security/net/config/NetworkSecurityConfig;->mHstsEnforced:Z

    #@15
    .line 55
    iput-object p3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mPins:Landroid/security/net/config/PinSet;

    #@17
    .line 56
    iput-object p4, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    #@19
    .line 60
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    #@1b
    new-instance v1, Landroid/security/net/config/NetworkSecurityConfig$1;

    #@1d
    invoke-direct {v1, p0}, Landroid/security/net/config/NetworkSecurityConfig$1;-><init>(Landroid/security/net/config/NetworkSecurityConfig;)V

    #@20
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@23
    .line 52
    return-void
.end method

.method synthetic constructor <init>(ZZLandroid/security/net/config/PinSet;Ljava/util/List;Landroid/security/net/config/NetworkSecurityConfig;)V
    .locals 0
    .param p1, "cleartextTrafficPermitted"    # Z
    .param p2, "hstsEnforced"    # Z
    .param p3, "pins"    # Landroid/security/net/config/PinSet;
    .param p4, "certificatesEntryRefs"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/security/net/config/NetworkSecurityConfig;-><init>(ZZLandroid/security/net/config/PinSet;Ljava/util/List;)V

    #@3
    return-void
.end method

.method public static final getDefaultBuilder(I)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 5
    .param p0, "targetSdkVersion"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 178
    new-instance v1, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@3
    invoke-direct {v1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;-><init>()V

    #@6
    .line 179
    const/4 v2, 0x1

    #@7
    .line 178
    invoke-virtual {v1, v2}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, v4}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setHstsEnforced(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@e
    move-result-object v1

    #@f
    .line 183
    new-instance v2, Landroid/security/net/config/CertificatesEntryRef;

    #@11
    invoke-static {}, Landroid/security/net/config/SystemCertificateSource;->getInstance()Landroid/security/net/config/SystemCertificateSource;

    #@14
    move-result-object v3

    #@15
    invoke-direct {v2, v3, v4}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;Z)V

    #@18
    .line 178
    invoke-virtual {v1, v2}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@1b
    move-result-object v0

    #@1c
    .line 186
    .local v0, "builder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    const/16 v1, 0x17

    #@1e
    if-gt p0, v1, :cond_0

    #@20
    .line 189
    new-instance v1, Landroid/security/net/config/CertificatesEntryRef;

    #@22
    invoke-static {}, Landroid/security/net/config/UserCertificateSource;->getInstance()Landroid/security/net/config/UserCertificateSource;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2, v4}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;Z)V

    #@29
    .line 188
    invoke-virtual {v0, v1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@2c
    .line 191
    :cond_0
    return-object v0
.end method


# virtual methods
.method public findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 144
    new-instance v0, Landroid/util/ArraySet;

    #@2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 145
    .local v0, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "ref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/security/net/config/CertificatesEntryRef;

    #@17
    .line 146
    .local v1, "ref":Landroid/security/net/config/CertificatesEntryRef;
    invoke-virtual {v1, p1}, Landroid/security/net/config/CertificatesEntryRef;->findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    #@1a
    move-result-object v3

    #@1b
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@1e
    goto :goto_0

    #@1f
    .line 148
    .end local v1    # "ref":Landroid/security/net/config/CertificatesEntryRef;
    :cond_0
    return-object v0
.end method

.method public findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 133
    iget-object v3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v2

    #@7
    .local v2, "ref$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/security/net/config/CertificatesEntryRef;

    #@13
    .line 134
    .local v1, "ref":Landroid/security/net/config/CertificatesEntryRef;
    invoke-virtual {v1, p1}, Landroid/security/net/config/CertificatesEntryRef;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    #@16
    move-result-object v0

    #@17
    .line 135
    .local v0, "anchor":Landroid/security/net/config/TrustAnchor;
    if-eqz v0, :cond_0

    #@19
    .line 136
    return-object v0

    #@1a
    .line 139
    .end local v0    # "anchor":Landroid/security/net/config/TrustAnchor;
    .end local v1    # "ref":Landroid/security/net/config/CertificatesEntryRef;
    :cond_1
    return-object v4
.end method

.method public findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 122
    iget-object v3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v2

    #@7
    .local v2, "ref$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/security/net/config/CertificatesEntryRef;

    #@13
    .line 123
    .local v1, "ref":Landroid/security/net/config/CertificatesEntryRef;
    invoke-virtual {v1, p1}, Landroid/security/net/config/CertificatesEntryRef;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    #@16
    move-result-object v0

    #@17
    .line 124
    .local v0, "anchor":Landroid/security/net/config/TrustAnchor;
    if-eqz v0, :cond_0

    #@19
    .line 125
    return-object v0

    #@1a
    .line 128
    .end local v0    # "anchor":Landroid/security/net/config/TrustAnchor;
    .end local v1    # "ref":Landroid/security/net/config/CertificatesEntryRef;
    :cond_1
    return-object v4
.end method

.method public getPins()Landroid/security/net/config/PinSet;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mPins:Landroid/security/net/config/PinSet;

    #@2
    return-object v0
.end method

.method public getTrustAnchors()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/security/net/config/TrustAnchor;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 73
    iget-object v9, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchorsLock:Ljava/lang/Object;

    #@2
    monitor-enter v9

    #@3
    .line 74
    :try_start_0
    iget-object v8, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    #@5
    if-eqz v8, :cond_0

    #@7
    .line 75
    iget-object v8, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v9

    #@a
    return-object v8

    #@b
    .line 82
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/ArrayMap;

    #@d
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@10
    .line 83
    .local v2, "anchorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;Landroid/security/net/config/TrustAnchor;>;"
    iget-object v8, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    #@12
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v7

    #@16
    .local v7, "ref$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v8

    #@1a
    if-eqz v8, :cond_3

    #@1c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v6

    #@20
    check-cast v6, Landroid/security/net/config/CertificatesEntryRef;

    #@22
    .line 84
    .local v6, "ref":Landroid/security/net/config/CertificatesEntryRef;
    invoke-virtual {v6}, Landroid/security/net/config/CertificatesEntryRef;->getTrustAnchors()Ljava/util/Set;

    #@25
    move-result-object v4

    #@26
    .line 85
    .local v4, "anchors":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/TrustAnchor;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v1

    #@2a
    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v8

    #@2e
    if-eqz v8, :cond_1

    #@30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Landroid/security/net/config/TrustAnchor;

    #@36
    .line 86
    .local v0, "anchor":Landroid/security/net/config/TrustAnchor;
    iget-object v5, v0, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    #@38
    .line 87
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@3b
    move-result v8

    #@3c
    if-nez v8, :cond_2

    #@3e
    .line 88
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 73
    .end local v0    # "anchor":Landroid/security/net/config/TrustAnchor;
    .end local v1    # "anchor$iterator":Ljava/util/Iterator;
    .end local v2    # "anchorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;Landroid/security/net/config/TrustAnchor;>;"
    .end local v4    # "anchors":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/TrustAnchor;>;"
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "ref":Landroid/security/net/config/CertificatesEntryRef;
    .end local v7    # "ref$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    #@43
    monitor-exit v9

    #@44
    throw v8

    #@45
    .line 92
    .restart local v2    # "anchorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;Landroid/security/net/config/TrustAnchor;>;"
    .restart local v7    # "ref$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_2
    new-instance v3, Landroid/util/ArraySet;

    #@47
    invoke-interface {v2}, Ljava/util/Map;->size()I

    #@4a
    move-result v8

    #@4b
    invoke-direct {v3, v8}, Landroid/util/ArraySet;-><init>(I)V

    #@4e
    .line 93
    .local v3, "anchors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/security/net/config/TrustAnchor;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@51
    move-result-object v8

    #@52
    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@55
    .line 94
    iput-object v3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    #@57
    .line 95
    iget-object v8, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    monitor-exit v9

    #@5a
    return-object v8
.end method

.method public getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;
    .locals 2

    #@0
    .prologue
    .line 112
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManagerLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 113
    :try_start_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 114
    new-instance v0, Landroid/security/net/config/NetworkSecurityTrustManager;

    #@9
    invoke-direct {v0, p0}, Landroid/security/net/config/NetworkSecurityTrustManager;-><init>(Landroid/security/net/config/NetworkSecurityConfig;)V

    #@c
    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

    #@e
    .line 116
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 112
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public handleTrustStorageUpdate()V
    .locals 4

    #@0
    .prologue
    .line 152
    iget-object v3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchorsLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 153
    const/4 v2, 0x0

    #@4
    :try_start_0
    iput-object v2, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    #@6
    .line 154
    iget-object v2, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "ref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/security/net/config/CertificatesEntryRef;

    #@18
    .line 155
    .local v0, "ref":Landroid/security/net/config/CertificatesEntryRef;
    invoke-virtual {v0}, Landroid/security/net/config/CertificatesEntryRef;->handleTrustStorageUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .line 152
    .end local v0    # "ref":Landroid/security/net/config/CertificatesEntryRef;
    .end local v1    # "ref$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1d
    monitor-exit v3

    #@1e
    throw v2

    #@1f
    .restart local v1    # "ref$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@20
    .line 158
    invoke-virtual {p0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Landroid/security/net/config/NetworkSecurityTrustManager;->handleTrustStorageUpdate()V

    #@27
    .line 151
    return-void
.end method

.method public isCleartextTrafficPermitted()Z
    .locals 1

    #@0
    .prologue
    .line 100
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCleartextTrafficPermitted:Z

    #@2
    return v0
.end method

.method public isHstsEnforced()Z
    .locals 1

    #@0
    .prologue
    .line 104
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mHstsEnforced:Z

    #@2
    return v0
.end method
