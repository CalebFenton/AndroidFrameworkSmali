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
.field public static final blacklist DEFAULT_CERTIFICATE_TRANSPARENCY_VERIFICATION_REQUIRED:Z = false

.field public static final greylist-max-o DEFAULT_CLEARTEXT_TRAFFIC_PERMITTED:Z = true

.field public static final greylist-max-o DEFAULT_HSTS_ENFORCED:Z = false


# instance fields
.field private greylist-max-o mAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/security/net/config/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mAnchorsLock:Ljava/lang/Object;

.field private final blacklist mCertificateTransparencyVerificationRequired:Z

.field private final greylist-max-o mCertificatesEntryRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCleartextTrafficPermitted:Z

.field private final greylist-max-o mHstsEnforced:Z

.field private final greylist-max-o mPins:Landroid/security/net/config/PinSet;

.field private greylist-max-o mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

.field private final greylist-max-o mTrustManagerLock:Ljava/lang/Object;


# direct methods
.method private constructor blacklist <init>(ZZZLandroid/security/net/config/PinSet;Ljava/util/List;)V
    .registers 8
    .param p1, "cleartextTrafficPermitted"    # Z
    .param p2, "hstsEnforced"    # Z
    .param p3, "certificateTransparencyVerificationRequired"    # Z
    .param p4, "pins"    # Landroid/security/net/config/PinSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Landroid/security/net/config/PinSet;",
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p5, "certificatesEntryRefs":Ljava/util/List;, "Ljava/util/List<Landroid/security/net/config/CertificatesEntryRef;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchorsLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManagerLock:Ljava/lang/Object;

    .line 60
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCleartextTrafficPermitted:Z

    .line 61
    iput-boolean p2, p0, Landroid/security/net/config/NetworkSecurityConfig;->mHstsEnforced:Z

    .line 62
    iput-boolean p3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificateTransparencyVerificationRequired:Z

    .line 63
    iput-object p4, p0, Landroid/security/net/config/NetworkSecurityConfig;->mPins:Landroid/security/net/config/PinSet;

    .line 64
    iput-object p5, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    .line 68
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    new-instance v1, Landroid/security/net/config/NetworkSecurityConfig$1;

    invoke-direct {v1, p0}, Landroid/security/net/config/NetworkSecurityConfig$1;-><init>(Landroid/security/net/config/NetworkSecurityConfig;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 78
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZZLandroid/security/net/config/PinSet;Ljava/util/List;Landroid/security/net/config/NetworkSecurityConfig-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/security/net/config/NetworkSecurityConfig;-><init>(ZZZLandroid/security/net/config/PinSet;Ljava/util/List;)V

    return-void
.end method

.method public static greylist-max-o getDefaultBuilder(Landroid/content/pm/ApplicationInfo;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 8
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 195
    new-instance v0, Landroid/security/net/config/CertificatesEntryRef;

    .line 196
    invoke-static {}, Landroid/security/net/config/SystemCertificateSource;->getInstance()Landroid/security/net/config/SystemCertificateSource;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;ZZ)V

    .line 197
    .local v0, "systemRef":Landroid/security/net/config/CertificatesEntryRef;
    new-instance v1, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;-><init>()V

    .line 198
    invoke-virtual {v1, v2}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setHstsEnforced(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v1

    .line 199
    invoke-virtual {v1, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v1

    .line 200
    .local v1, "builder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    iget v3, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1c

    const/4 v5, 0x1

    if-ge v3, v4, :cond_26

    .line 201
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3

    if-nez v3, :cond_26

    move v3, v5

    goto :goto_27

    :cond_26
    move v3, v2

    .line 202
    .local v3, "cleartextTrafficPermitted":Z
    :goto_27
    invoke-virtual {v1, v3}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 205
    iget v4, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x17

    if-gt v4, v6, :cond_42

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v4

    if-nez v4, :cond_42

    .line 207
    new-instance v4, Landroid/security/net/config/CertificatesEntryRef;

    .line 208
    invoke-static {}, Landroid/security/net/config/UserCertificateSource;->getInstance()Landroid/security/net/config/UserCertificateSource;

    move-result-object v6

    invoke-direct {v4, v6, v2, v5}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;ZZ)V

    .line 207
    invoke-virtual {v1, v4}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 210
    :cond_42
    return-object v1
.end method


# virtual methods
.method public greylist-max-o findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 6
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 157
    .local v0, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/net/config/CertificatesEntryRef;

    .line 158
    .local v2, "ref":Landroid/security/net/config/CertificatesEntryRef;
    invoke-virtual {v2, p1}, Landroid/security/net/config/CertificatesEntryRef;->findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 159
    .end local v2    # "ref":Landroid/security/net/config/CertificatesEntryRef;
    goto :goto_b

    .line 160
    :cond_1f
    return-object v0
.end method

.method public greylist-max-o findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;
    .registers 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 145
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/net/config/CertificatesEntryRef;

    .line 146
    .local v1, "ref":Landroid/security/net/config/CertificatesEntryRef;
    invoke-virtual {v1, p1}, Landroid/security/net/config/CertificatesEntryRef;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v2

    .line 147
    .local v2, "anchor":Landroid/security/net/config/TrustAnchor;
    if-eqz v2, :cond_19

    .line 148
    return-object v2

    .line 150
    .end local v1    # "ref":Landroid/security/net/config/CertificatesEntryRef;
    .end local v2    # "anchor":Landroid/security/net/config/TrustAnchor;
    :cond_19
    goto :goto_6

    .line 151
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;
    .registers 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 134
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/net/config/CertificatesEntryRef;

    .line 135
    .local v1, "ref":Landroid/security/net/config/CertificatesEntryRef;
    invoke-virtual {v1, p1}, Landroid/security/net/config/CertificatesEntryRef;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v2

    .line 136
    .local v2, "anchor":Landroid/security/net/config/TrustAnchor;
    if-eqz v2, :cond_19

    .line 137
    return-object v2

    .line 139
    .end local v1    # "ref":Landroid/security/net/config/CertificatesEntryRef;
    .end local v2    # "anchor":Landroid/security/net/config/TrustAnchor;
    :cond_19
    goto :goto_6

    .line 140
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getPins()Landroid/security/net/config/PinSet;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mPins:Landroid/security/net/config/PinSet;

    return-object v0
.end method

.method public greylist-max-o getTrustAnchors()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/security/net/config/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchorsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_3
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    if-eqz v1, :cond_b

    .line 83
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 90
    :cond_b
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 91
    .local v1, "anchorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;Landroid/security/net/config/TrustAnchor;>;"
    iget-object v2, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/net/config/CertificatesEntryRef;

    .line 92
    .local v3, "ref":Landroid/security/net/config/CertificatesEntryRef;
    invoke-virtual {v3}, Landroid/security/net/config/CertificatesEntryRef;->getTrustAnchors()Ljava/util/Set;

    move-result-object v4

    .line 93
    .local v4, "anchors":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/TrustAnchor;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/security/net/config/TrustAnchor;

    .line 94
    .local v6, "anchor":Landroid/security/net/config/TrustAnchor;
    iget-object v7, v6, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    .line 95
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_41

    .line 96
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v6    # "anchor":Landroid/security/net/config/TrustAnchor;
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    :cond_41
    goto :goto_2a

    .line 99
    .end local v3    # "ref":Landroid/security/net/config/CertificatesEntryRef;
    .end local v4    # "anchors":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/TrustAnchor;>;"
    :cond_42
    goto :goto_16

    .line 100
    :cond_43
    new-instance v2, Landroid/util/ArraySet;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 101
    .local v2, "anchors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/security/net/config/TrustAnchor;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 102
    iput-object v2, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    .line 103
    iget-object v3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    monitor-exit v0

    return-object v3

    .line 104
    .end local v1    # "anchorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;Landroid/security/net/config/TrustAnchor;>;"
    .end local v2    # "anchors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/security/net/config/TrustAnchor;>;"
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public greylist-max-o getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;
    .registers 3

    .line 124
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

    if-nez v1, :cond_e

    .line 126
    new-instance v1, Landroid/security/net/config/NetworkSecurityTrustManager;

    invoke-direct {v1, p0}, Landroid/security/net/config/NetworkSecurityTrustManager;-><init>(Landroid/security/net/config/NetworkSecurityConfig;)V

    iput-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

    .line 128
    :cond_e
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

    monitor-exit v0

    return-object v1

    .line 129
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .registers 4

    .line 164
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchorsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    .line 166
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/net/config/CertificatesEntryRef;

    .line 167
    .local v2, "ref":Landroid/security/net/config/CertificatesEntryRef;
    invoke-virtual {v2}, Landroid/security/net/config/CertificatesEntryRef;->handleTrustStorageUpdate()V

    .line 168
    .end local v2    # "ref":Landroid/security/net/config/CertificatesEntryRef;
    goto :goto_c

    .line 169
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_25

    .line 170
    invoke-virtual {p0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->handleTrustStorageUpdate()V

    .line 171
    return-void

    .line 169
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public blacklist isCertificateTransparencyVerificationRequired()Z
    .registers 2

    .line 116
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificateTransparencyVerificationRequired:Z

    return v0
.end method

.method public greylist-max-o isCleartextTrafficPermitted()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCleartextTrafficPermitted:Z

    return v0
.end method

.method public greylist-max-o isHstsEnforced()Z
    .registers 2

    .line 112
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mHstsEnforced:Z

    return v0
.end method
