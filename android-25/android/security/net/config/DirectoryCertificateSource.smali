.class abstract Landroid/security/net/config/DirectoryCertificateSource;
.super Ljava/lang/Object;
.source "DirectoryCertificateSource.java"

# interfaces
.implements Landroid/security/net/config/CertificateSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/DirectoryCertificateSource$CertSelector;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DirectoryCertificateSrc"


# instance fields
.field private final mCertFactory:Ljava/security/cert/CertificateFactory;

.field private mCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDir:Ljava/io/File;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "caDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    new-instance v1, Ljava/lang/Object;

    #@5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mLock:Ljava/lang/Object;

    #@a
    .line 56
    iput-object p1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    #@c
    .line 58
    :try_start_0
    const-string/jumbo v1, "X.509"

    #@f
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 55
    return-void

    #@16
    .line 59
    :catch_0
    move-exception v0

    #@17
    .line 60
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@19
    const-string/jumbo v2, "Failed to obtain X.509 CertificateFactory"

    #@1c
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1f
    throw v1
.end method

.method private findCert(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/security/cert/X509Certificate;
    .locals 7
    .param p1, "subj"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "selector"    # Landroid/security/net/config/DirectoryCertificateSource$CertSelector;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 171
    invoke-direct {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 172
    .local v2, "hash":Ljava/lang/String;
    const/4 v3, 0x0

    #@6
    .local v3, "index":I
    :goto_0
    if-ltz v3, :cond_0

    #@8
    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v4

    #@11
    const-string/jumbo v5, "."

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 174
    .local v1, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    #@22
    iget-object v5, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    #@24
    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@27
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@2a
    move-result v4

    #@2b
    if-nez v4, :cond_1

    #@2d
    .line 191
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_0
    return-object v6

    #@2e
    .line 177
    .restart local v1    # "fileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->isCertMarkedAsRemoved(Ljava/lang/String;)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_3

    #@34
    .line 172
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@36
    goto :goto_0

    #@37
    .line 180
    :cond_3
    invoke-direct {p0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    #@3a
    move-result-object v0

    #@3b
    .line 181
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_2

    #@3d
    .line 184
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {p1, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_2

    #@47
    .line 187
    invoke-interface {p2, v0}, Landroid/security/net/config/DirectoryCertificateSource$CertSelector;->match(Ljava/security/cert/X509Certificate;)Z

    #@4a
    move-result v4

    #@4b
    if-eqz v4, :cond_2

    #@4d
    .line 188
    return-object v0
.end method

.method private findCerts(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/util/Set;
    .locals 7
    .param p1, "subj"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "selector"    # Landroid/security/net/config/DirectoryCertificateSource$CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/x500/X500Principal;",
            "Landroid/security/net/config/DirectoryCertificateSource$CertSelector;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 143
    invoke-direct {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 144
    .local v3, "hash":Ljava/lang/String;
    const/4 v1, 0x0

    #@5
    .line 145
    .local v1, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    const/4 v4, 0x0

    #@6
    .end local v1    # "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .local v4, "index":I
    :goto_0
    if-ltz v4, :cond_0

    #@8
    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v5

    #@11
    const-string/jumbo v6, "."

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 147
    .local v2, "fileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    #@22
    iget-object v6, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    #@24
    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@27
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    #@2a
    move-result v5

    #@2b
    if-nez v5, :cond_1

    #@2d
    .line 167
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_5

    #@2f
    :goto_1
    return-object v1

    #@30
    .line 150
    .restart local v2    # "fileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2}, Landroid/security/net/config/DirectoryCertificateSource;->isCertMarkedAsRemoved(Ljava/lang/String;)Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_3

    #@36
    .line 145
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@38
    goto :goto_0

    #@39
    .line 153
    :cond_3
    invoke-direct {p0, v2}, Landroid/security/net/config/DirectoryCertificateSource;->readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    #@3c
    move-result-object v0

    #@3d
    .line 154
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_2

    #@3f
    .line 157
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {p1, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v5

    #@47
    if-eqz v5, :cond_2

    #@49
    .line 160
    invoke-interface {p2, v0}, Landroid/security/net/config/DirectoryCertificateSource$CertSelector;->match(Ljava/security/cert/X509Certificate;)Z

    #@4c
    move-result v5

    #@4d
    if-eqz v5, :cond_2

    #@4f
    .line 161
    if-nez v1, :cond_4

    #@51
    .line 162
    new-instance v1, Landroid/util/ArraySet;

    #@53
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@56
    .line 164
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@59
    goto :goto_2

    #@5a
    .line 167
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@5d
    move-result-object v1

    #@5e
    goto :goto_1
.end method

.method private getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 195
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_NAME_hash_old(Ljavax/security/auth/x500/X500Principal;)I

    #@3
    move-result v0

    #@4
    .line 196
    .local v0, "hash":I
    const/16 v1, 0x8

    #@6
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/Hex;->intToHexString(II)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method private readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 6
    .param p1, "file"    # Ljava/lang/String;

    #@0
    .prologue
    .line 200
    const/4 v1, 0x0

    #@1
    .line 202
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    #@3
    new-instance v3, Ljava/io/FileInputStream;

    #@5
    new-instance v4, Ljava/io/File;

    #@7
    iget-object v5, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    #@9
    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@f
    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 203
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    iget-object v3, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertFactory:Ljava/security/cert/CertificateFactory;

    #@14
    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1a
    .line 208
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1d
    .line 203
    return-object v3

    #@1e
    .line 204
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@1f
    .line 205
    .end local v1    # "is":Ljava/io/InputStream;
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    const-string/jumbo v3, "DirectoryCertificateSrc"

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "Failed to read certificate from "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    .line 206
    const/4 v3, 0x0

    #@3a
    .line 208
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3d
    .line 206
    return-object v3

    #@3e
    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@3f
    .line 208
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@42
    .line 207
    throw v3

    #@43
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    #@44
    move-object v1, v2

    #@45
    .end local v2    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    goto :goto_1

    #@46
    .line 204
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    #@47
    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v2

    #@48
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method


# virtual methods
.method public findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 2
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
    .line 118
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Landroid/security/net/config/DirectoryCertificateSource$3;

    #@6
    invoke-direct {v1, p0, p1}, Landroid/security/net/config/DirectoryCertificateSource$3;-><init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V

    #@9
    invoke-direct {p0, v0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->findCerts(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/util/Set;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 103
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Landroid/security/net/config/DirectoryCertificateSource$2;

    #@6
    invoke-direct {v1, p0, p1}, Landroid/security/net/config/DirectoryCertificateSource$2;-><init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V

    #@9
    invoke-direct {p0, v0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->findCert(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/security/cert/X509Certificate;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 93
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Landroid/security/net/config/DirectoryCertificateSource$1;

    #@6
    invoke-direct {v1, p0, p1}, Landroid/security/net/config/DirectoryCertificateSource$1;-><init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V

    #@9
    invoke-direct {p0, v0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->findCert(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/security/cert/X509Certificate;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getCertificates()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 69
    iget-object v4, p0, Landroid/security/net/config/DirectoryCertificateSource;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 70
    :try_start_0
    iget-object v3, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 71
    iget-object v3, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v4

    #@a
    return-object v3

    #@b
    .line 74
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/ArraySet;

    #@d
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@10
    .line 75
    .local v2, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v3, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    #@12
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_3

    #@18
    .line 76
    iget-object v3, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    #@1a
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    const/4 v3, 0x0

    #@1f
    array-length v6, v5

    #@20
    :goto_0
    if-ge v3, v6, :cond_3

    #@22
    aget-object v0, v5, v3

    #@24
    .line 77
    .local v0, "caFile":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/security/net/config/DirectoryCertificateSource;->isCertMarkedAsRemoved(Ljava/lang/String;)Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_2

    #@2a
    .line 76
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 80
    :cond_2
    invoke-direct {p0, v0}, Landroid/security/net/config/DirectoryCertificateSource;->readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    #@30
    move-result-object v1

    #@31
    .line 81
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_1

    #@33
    .line 82
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    goto :goto_1

    #@37
    .line 69
    .end local v0    # "caFile":Ljava/lang/String;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :catchall_0
    move-exception v3

    #@38
    monitor-exit v4

    #@39
    throw v3

    #@3a
    .line 86
    .restart local v2    # "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :cond_3
    :try_start_2
    iput-object v2, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    #@3c
    .line 87
    iget-object v3, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    monitor-exit v4

    #@3f
    return-object v3
.end method

.method public handleTrustStorageUpdate()V
    .locals 2

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid/security/net/config/DirectoryCertificateSource;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 134
    const/4 v1, 0x0

    #@4
    :try_start_0
    iput-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 132
    return-void

    #@8
    .line 133
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method protected abstract isCertMarkedAsRemoved(Ljava/lang/String;)Z
.end method
