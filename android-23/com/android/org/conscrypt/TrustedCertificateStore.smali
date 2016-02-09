.class public final Lcom/android/org/conscrypt/TrustedCertificateStore;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    }
.end annotation


# static fields
.field private static final CERT_FACTORY:Ljava/security/cert/CertificateFactory;

.field private static final PREFIX_SYSTEM:Ljava/lang/String; = "system:"

.field private static final PREFIX_USER:Ljava/lang/String; = "user:"

.field private static defaultCaCertsAddedDir:Ljava/io/File;

.field private static defaultCaCertsDeletedDir:Ljava/io/File;

.field private static defaultCaCertsSystemDir:Ljava/io/File;


# instance fields
.field private final addedDir:Ljava/io/File;

.field private final deletedDir:Ljava/io/File;

.field private final systemDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 99
    const-string/jumbo v3, "ANDROID_ROOT"

    #@3
    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 100
    .local v1, "ANDROID_ROOT":Ljava/lang/String;
    const-string/jumbo v3, "ANDROID_DATA"

    #@a
    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 101
    .local v0, "ANDROID_DATA":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    const-string/jumbo v5, "/etc/security/cacerts"

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@27
    sput-object v3, Lcom/android/org/conscrypt/TrustedCertificateStore;->defaultCaCertsSystemDir:Ljava/io/File;

    #@29
    .line 102
    new-instance v3, Ljava/io/File;

    #@2b
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    const-string/jumbo v5, "/misc/keychain"

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@42
    invoke-static {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    #@45
    .line 105
    :try_start_0
    const-string/jumbo v3, "X509"

    #@48
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@4b
    move-result-object v3

    #@4c
    sput-object v3, Lcom/android/org/conscrypt/TrustedCertificateStore;->CERT_FACTORY:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 82
    return-void

    #@4f
    .line 106
    :catch_0
    move-exception v2

    #@50
    .line 107
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/AssertionError;

    #@52
    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@55
    throw v3
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 121
    sget-object v0, Lcom/android/org/conscrypt/TrustedCertificateStore;->defaultCaCertsSystemDir:Ljava/io/File;

    #@2
    sget-object v1, Lcom/android/org/conscrypt/TrustedCertificateStore;->defaultCaCertsAddedDir:Ljava/io/File;

    #@4
    sget-object v2, Lcom/android/org/conscrypt/TrustedCertificateStore;->defaultCaCertsDeletedDir:Ljava/io/File;

    #@6
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    #@9
    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "addedDir"    # Ljava/io/File;
    .param p3, "deletedDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 125
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    #@5
    .line 126
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    #@7
    .line 127
    iput-object p3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    #@9
    .line 124
    return-void
.end method

.method private addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 243
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/io/File;->list()[Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 244
    .local v2, "files":[Ljava/lang/String;
    if-nez v2, :cond_0

    #@6
    .line 245
    return-void

    #@7
    .line 247
    :cond_0
    const/4 v3, 0x0

    #@8
    array-length v4, v2

    #@9
    :goto_0
    if-ge v3, v4, :cond_2

    #@b
    aget-object v1, v2, v3

    #@d
    .line 248
    .local v1, "filename":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 249
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_1

    #@24
    .line 250
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@27
    .line 247
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 242
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "filename":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private containsAlias(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "includeDeletedSystem"    # Z

    #@0
    .prologue
    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private static convertToOpenSSLIfNeeded(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 403
    if-nez p0, :cond_0

    #@3
    .line 404
    return-object v1

    #@4
    .line 407
    :cond_0
    instance-of v1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 408
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@a
    .end local p0    # "cert":Ljava/security/cert/X509Certificate;
    return-object p0

    #@b
    .line 412
    .restart local p0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 413
    :catch_0
    move-exception v0

    #@15
    .line 414
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateException;

    #@17
    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw v1
.end method

.method private file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "index"    # I

    #@0
    .prologue
    .line 502
    new-instance v0, Ljava/io/File;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const/16 v2, 0x2e

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1c
    return-object v0
.end method

.method private fileForAlias(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 151
    if-nez p1, :cond_0

    #@3
    .line 152
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "alias == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 155
    :cond_0
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSystem(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 156
    new-instance v0, Ljava/io/File;

    #@14
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    #@16
    const-string/jumbo v2, "system:"

    #@19
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@24
    .line 162
    .local v0, "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_1

    #@2a
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_4

    #@30
    .line 164
    :cond_1
    return-object v3

    #@31
    .line 157
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_3

    #@37
    .line 158
    new-instance v0, Ljava/io/File;

    #@39
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    #@3b
    const-string/jumbo v2, "user:"

    #@3e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@41
    move-result v2

    #@42
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@49
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    #@4a
    .line 160
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    return-object v3

    #@4b
    .line 166
    .restart local v0    # "file":Ljava/io/File;
    :cond_4
    return-object v0
.end method

.method private findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p3, "selector"    # Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p4, "desiredReturnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    #@1
    .line 457
    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->hash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 458
    .local v2, "hash":Ljava/lang/String;
    const/4 v3, 0x0

    #@6
    .line 459
    .local v3, "index":I
    :goto_0
    invoke-direct {p0, p1, v2, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    #@9
    move-result-object v1

    #@a
    .line 460
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_2

    #@10
    .line 462
    const-class v4, Ljava/lang/Boolean;

    #@12
    if-ne p4, v4, :cond_0

    #@14
    .line 463
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@16
    return-object v4

    #@17
    .line 465
    :cond_0
    const-class v4, Ljava/io/File;

    #@19
    if-ne p4, v4, :cond_1

    #@1b
    .line 469
    return-object v1

    #@1c
    .line 471
    :cond_1
    return-object v5

    #@1d
    .line 473
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_4

    #@23
    .line 458
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@25
    goto :goto_0

    #@26
    .line 476
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;

    #@29
    move-result-object v0

    #@2a
    .line 477
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_3

    #@2c
    .line 481
    invoke-interface {p3, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;->match(Ljava/security/cert/X509Certificate;)Z

    #@2f
    move-result v4

    #@30
    if-eqz v4, :cond_3

    #@32
    .line 482
    const-class v4, Ljava/security/cert/X509Certificate;

    #@34
    if-ne p4, v4, :cond_5

    #@36
    .line 483
    return-object v0

    #@37
    .line 485
    :cond_5
    const-class v4, Ljava/lang/Boolean;

    #@39
    if-ne p4, v4, :cond_6

    #@3b
    .line 486
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@3d
    return-object v4

    #@3e
    .line 488
    :cond_6
    const-class v4, Ljava/io/File;

    #@40
    if-ne p4, v4, :cond_7

    #@42
    .line 489
    return-object v1

    #@43
    .line 491
    :cond_7
    new-instance v4, Ljava/lang/AssertionError;

    #@45
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@48
    throw v4
.end method

.method private hash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 497
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_NAME_hash_old(Ljavax/security/auth/x500/X500Principal;)I

    #@3
    move-result v0

    #@4
    .line 498
    .local v0, "hash":I
    const/4 v1, 0x0

    #@5
    const/16 v2, 0x8

    #@7
    invoke-static {v0, v1, v2}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method private isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .param p1, "x"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private static isSelfIssuedCertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Z
    .locals 4
    .param p0, "cert"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 393
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    #@4
    move-result-wide v0

    #@5
    .line 394
    .local v0, "ctx":J
    invoke-static {v0, v1, v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_check_issued(JJ)I

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_0

    #@b
    const/4 v2, 0x1

    #@c
    :cond_0
    return v2
.end method

.method public static final isSystem(Ljava/lang/String;)Z
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 88
    const-string/jumbo v0, "system:"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method private isTombstone(Ljava/io/File;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/io/File;->length()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-nez v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public static final isUser(Ljava/lang/String;)Z
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    const-string/jumbo v0, "user:"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method private readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 174
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 175
    return-object v5

    #@8
    .line 177
    :cond_0
    const/4 v2, 0x0

    #@9
    .line 179
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    #@b
    new-instance v4, Ljava/io/FileInputStream;

    #@d
    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@10
    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 180
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    sget-object v4, Lcom/android/org/conscrypt/TrustedCertificateStore;->CERT_FACTORY:Ljava/security/cert/CertificateFactory;

    #@15
    invoke-virtual {v4, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1b
    .line 188
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e
    .line 180
    return-object v4

    #@1f
    .line 183
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    #@20
    .line 188
    .end local v2    # "is":Ljava/io/InputStream;
    .local v1, "e":Ljava/security/cert/CertificateException;
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@23
    .line 186
    return-object v5

    #@24
    .line 181
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    #@25
    .line 188
    .end local v2    # "is":Ljava/io/InputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@28
    .line 182
    return-object v5

    #@29
    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    #@2a
    .line 188
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2d
    .line 187
    throw v4

    #@2e
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    #@2f
    move-object v2, v3

    #@30
    .end local v3    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    goto :goto_2

    #@31
    .line 181
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v0

    #@32
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@33
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_1

    #@34
    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v1

    #@35
    .restart local v1    # "e":Ljava/security/cert/CertificateException;
    move-object v2, v3

    #@36
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method private removeUnnecessaryTombstones(Ljava/lang/String;)V
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 580
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 581
    new-instance v4, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v4, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v4

    #@c
    .line 583
    :cond_0
    const/16 v4, 0x2e

    #@e
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    #@11
    move-result v0

    #@12
    .line 584
    .local v0, "dotIndex":I
    const/4 v4, -0x1

    #@13
    if-ne v0, v4, :cond_1

    #@15
    .line 585
    new-instance v4, Ljava/lang/AssertionError;

    #@17
    invoke-direct {v4, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1a
    throw v4

    #@1b
    .line 588
    :cond_1
    const-string/jumbo v4, "user:"

    #@1e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@21
    move-result v4

    #@22
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 589
    .local v2, "hash":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    #@28
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2f
    move-result v3

    #@30
    .line 591
    .local v3, "lastTombstoneIndex":I
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    #@32
    add-int/lit8 v5, v3, 0x1

    #@34
    invoke-direct {p0, v4, v2, v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;->file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_3

    #@3e
    .line 592
    return-void

    #@3f
    .line 602
    .local v1, "file":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    #@41
    .line 594
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    if-ltz v3, :cond_4

    #@43
    .line 595
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    #@45
    invoke-direct {p0, v4, v2, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    #@48
    move-result-object v1

    #@49
    .line 596
    .restart local v1    # "file":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    #@4c
    move-result v4

    #@4d
    if-nez v4, :cond_5

    #@4f
    .line 579
    .end local v1    # "file":Ljava/io/File;
    :cond_4
    return-void

    #@50
    .line 599
    .restart local v1    # "file":Ljava/io/File;
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@53
    move-result v4

    #@54
    if-nez v4, :cond_2

    #@56
    .line 600
    new-instance v4, Ljava/io/IOException;

    #@58
    new-instance v5, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v6, "Could not remove "

    #@60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v4
.end method

.method public static setDefaultUserDirectory(Ljava/io/File;)V
    .locals 2
    .param p0, "root"    # Ljava/io/File;

    #@0
    .prologue
    .line 112
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "cacerts-added"

    #@5
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/org/conscrypt/TrustedCertificateStore;->defaultCaCertsAddedDir:Ljava/io/File;

    #@a
    .line 113
    new-instance v0, Ljava/io/File;

    #@c
    const-string/jumbo v1, "cacerts-removed"

    #@f
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@12
    sput-object v0, Lcom/android/org/conscrypt/TrustedCertificateStore;->defaultCaCertsDeletedDir:Ljava/io/File;

    #@14
    .line 111
    return-void
.end method

.method private writeCertificate(Ljava/io/File;Ljava/security/cert/X509Certificate;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 194
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    .line 195
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@9
    .line 196
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    #@c
    .line 197
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    #@f
    .line 198
    const/4 v1, 0x0

    #@10
    .line 200
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    #@12
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 201
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@18
    .end local v1    # "os":Ljava/io/OutputStream;
    move-result-object v3

    #@19
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1c
    .line 203
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1f
    .line 205
    invoke-virtual {p1, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    #@22
    .line 193
    return-void

    #@23
    .line 202
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    #@24
    .line 203
    .end local v1    # "os":Ljava/io/OutputStream;
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@27
    .line 202
    throw v3

    #@28
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    #@29
    move-object v1, v2

    #@2a
    .end local v2    # "os":Ljava/io/OutputStream;
    .local v1, "os":Ljava/io/OutputStream;
    goto :goto_0
.end method


# virtual methods
.method public aliases()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 230
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 231
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "user:"

    #@8
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    #@a
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    #@d
    .line 232
    const-string/jumbo v1, "system:"

    #@10
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    #@12
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    #@15
    .line 233
    return-object v0
.end method

.method public allSystemAliases()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 256
    new-instance v3, Ljava/util/HashSet;

    #@2
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 257
    .local v3, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    #@7
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 258
    .local v2, "files":[Ljava/lang/String;
    if-nez v2, :cond_0

    #@d
    .line 259
    return-object v3

    #@e
    .line 261
    :cond_0
    const/4 v4, 0x0

    #@f
    array-length v5, v2

    #@10
    :goto_0
    if-ge v4, v5, :cond_2

    #@12
    aget-object v1, v2, v4

    #@14
    .line 262
    .local v1, "filename":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v7, "system:"

    #@1c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 263
    .local v0, "alias":Ljava/lang/String;
    const/4 v6, 0x1

    #@29
    invoke-direct {p0, v0, v6}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;Z)Z

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_1

    #@2f
    .line 264
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@32
    .line 261
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@34
    goto :goto_0

    #@35
    .line 267
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "filename":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public containsAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 271
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public deleteCertificateEntry(Ljava/lang/String;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 547
    if-nez p1, :cond_0

    #@2
    .line 548
    return-void

    #@3
    .line 550
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->fileForAlias(Ljava/lang/String;)Ljava/io/File;

    #@6
    move-result-object v2

    #@7
    .line 551
    .local v2, "file":Ljava/io/File;
    if-nez v2, :cond_1

    #@9
    .line 552
    return-void

    #@a
    .line 554
    :cond_1
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSystem(Ljava/lang/String;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_4

    #@10
    .line 555
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;

    #@13
    move-result-object v0

    #@14
    .line 556
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_2

    #@16
    .line 558
    return-void

    #@17
    .line 560
    :cond_2
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    #@19
    invoke-virtual {p0, v3, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    #@1c
    move-result-object v1

    #@1d
    .line 561
    .local v1, "deleted":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_3

    #@23
    .line 563
    return-void

    #@24
    .line 566
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->writeCertificate(Ljava/io/File;Ljava/security/cert/X509Certificate;)V

    #@27
    .line 567
    return-void

    #@28
    .line 569
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "deleted":Ljava/io/File;
    :cond_4
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_5

    #@2e
    .line 572
    new-instance v3, Ljava/io/FileOutputStream;

    #@30
    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@33
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    #@36
    .line 573
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->removeUnnecessaryTombstones(Ljava/lang/String;)V

    #@39
    .line 574
    return-void

    #@3a
    .line 546
    :cond_5
    return-void
.end method

.method public findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 7
    .param p1, "c"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 369
    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateStore$3;

    #@3
    invoke-direct {v1, p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore$3;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    #@6
    .line 380
    .local v1, "selector":Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@9
    move-result-object v0

    #@a
    .line 381
    .local v0, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    #@c
    const-class v5, Ljava/security/cert/X509Certificate;

    #@e
    invoke-direct {p0, v4, v0, v1, v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Ljava/security/cert/X509Certificate;

    #@14
    .line 382
    .local v3, "user":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_0

    #@16
    .line 383
    return-object v3

    #@17
    .line 385
    :cond_0
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    #@19
    const-class v5, Ljava/security/cert/X509Certificate;

    #@1b
    invoke-direct {p0, v4, v0, v1, v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@21
    .line 386
    .local v2, "system":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_1

    #@23
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_2

    #@29
    .line 389
    :cond_1
    return-object v6

    #@2a
    .line 387
    :cond_2
    return-object v2
.end method

.method public getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "includeDeletedSystem"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 136
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->fileForAlias(Ljava/lang/String;)Ljava/io/File;

    #@4
    move-result-object v1

    #@5
    .line 137
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    #@7
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 138
    :cond_0
    return-object v3

    #@14
    .line 140
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;

    #@17
    move-result-object v0

    #@18
    .line 141
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_4

    #@1a
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSystem(Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 142
    if-eqz p2, :cond_3

    #@22
    .line 147
    :cond_2
    return-object v0

    #@23
    .line 143
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    #@26
    move-result v2

    #@27
    .line 141
    if-eqz v2, :cond_2

    #@29
    .line 145
    :cond_4
    return-object v3
.end method

.method public getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 279
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getCertificateAlias(Ljava/security/cert/Certificate;Z)Ljava/lang/String;
    .locals 5
    .param p1, "c"    # Ljava/security/cert/Certificate;
    .param p2, "includeDeletedSystem"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 283
    if-eqz p1, :cond_0

    #@3
    instance-of v3, p1, Ljava/security/cert/X509Certificate;

    #@5
    if-eqz v3, :cond_0

    #@7
    move-object v2, p1

    #@8
    .line 286
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@a
    .line 287
    .local v2, "x":Ljava/security/cert/X509Certificate;
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    #@c
    invoke-virtual {p0, v3, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    #@f
    move-result-object v1

    #@10
    .line 288
    .local v1, "user":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "user:"

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    return-object v3

    #@2f
    .line 284
    .end local v1    # "user":Ljava/io/File;
    .end local v2    # "x":Ljava/security/cert/X509Certificate;
    :cond_0
    return-object v4

    #@30
    .line 291
    .restart local v1    # "user":Ljava/io/File;
    .restart local v2    # "x":Ljava/security/cert/X509Certificate;
    :cond_1
    if-nez p2, :cond_2

    #@32
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_2

    #@38
    .line 292
    return-object v4

    #@39
    .line 294
    :cond_2
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    #@3b
    invoke-virtual {p0, v3, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    #@3e
    move-result-object v0

    #@3f
    .line 295
    .local v0, "system":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_3

    #@45
    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v4, "system:"

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    return-object v3

    #@5e
    .line 298
    :cond_3
    return-object v4
.end method

.method public getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 3
    .param p1, "leaf"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 431
    new-instance v1, Ljava/util/LinkedHashSet;

    #@2
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    #@5
    .line 432
    .local v1, "chain":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->convertToOpenSSLIfNeeded(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@8
    move-result-object v0

    #@9
    .line 433
    .local v0, "cert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@c
    .line 436
    :goto_0
    invoke-static {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSelfIssuedCertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 446
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@14
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@17
    return-object v2

    #@18
    .line 439
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->convertToOpenSSLIfNeeded(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@1f
    move-result-object v0

    #@20
    .line 440
    if-eqz v0, :cond_0

    #@22
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_0

    #@28
    .line 443
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_0
.end method

.method public getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "x"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 319
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore$1;

    #@2
    invoke-direct {v0, p0, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore$1;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    #@5
    .line 325
    .local v0, "selector":Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@8
    move-result-object v1

    #@9
    const-class v2, Ljava/io/File;

    #@b
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/io/File;

    #@11
    return-object v1
.end method

.method public getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 215
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 216
    return-object v6

    #@8
    .line 218
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->fileForAlias(Ljava/lang/String;)Ljava/io/File;

    #@b
    move-result-object v0

    #@c
    .line 219
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_1

    #@e
    .line 220
    return-object v6

    #@f
    .line 222
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    #@12
    move-result-wide v2

    #@13
    .line 223
    .local v2, "time":J
    const-wide/16 v4, 0x0

    #@15
    cmp-long v1, v2, v4

    #@17
    if-nez v1, :cond_2

    #@19
    .line 224
    return-object v6

    #@1a
    .line 226
    :cond_2
    new-instance v1, Ljava/util/Date;

    #@1c
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@1f
    return-object v1
.end method

.method public getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 7
    .param p1, "c"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 339
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore$2;

    #@3
    invoke-direct {v0, p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore$2;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    #@6
    .line 345
    .local v0, "selector":Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    #@8
    .line 346
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@b
    move-result-object v4

    #@c
    .line 348
    const-class v5, Ljava/security/cert/X509Certificate;

    #@e
    .line 345
    invoke-direct {p0, v3, v4, v0, v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@14
    .line 349
    .local v2, "user":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    #@16
    .line 350
    return-object v2

    #@17
    .line 352
    :cond_0
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    #@19
    .line 353
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@1c
    move-result-object v4

    #@1d
    .line 355
    const-class v5, Ljava/security/cert/X509Certificate;

    #@1f
    .line 352
    invoke-direct {p0, v3, v4, v0, v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@25
    .line 356
    .local v1, "system":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_1

    #@27
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 359
    :cond_1
    return-object v6

    #@2e
    .line 357
    :cond_2
    return-object v1
.end method

.method public installCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 6
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 512
    if-nez p1, :cond_0

    #@2
    .line 513
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "cert == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 515
    :cond_0
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    #@d
    invoke-virtual {p0, v3, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    #@10
    move-result-object v1

    #@11
    .line 516
    .local v1, "system":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 517
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    #@19
    invoke-virtual {p0, v3, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    #@1c
    move-result-object v0

    #@1d
    .line 518
    .local v0, "deleted":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_2

    #@23
    .line 521
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_1

    #@29
    .line 522
    new-instance v3, Ljava/io/IOException;

    #@2b
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v5, "Could not remove "

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@42
    throw v3

    #@43
    .line 524
    :cond_1
    return-void

    #@44
    .line 528
    :cond_2
    return-void

    #@45
    .line 530
    .end local v0    # "deleted":Ljava/io/File;
    :cond_3
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    #@47
    invoke-virtual {p0, v3, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    #@4a
    move-result-object v2

    #@4b
    .line 531
    .local v2, "user":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_4

    #@51
    .line 533
    return-void

    #@52
    .line 536
    :cond_4
    invoke-direct {p0, v2, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->writeCertificate(Ljava/io/File;Ljava/security/cert/X509Certificate;)V

    #@55
    .line 511
    return-void
.end method

.method public isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public userAliases()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 237
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 238
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "user:"

    #@8
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    #@a
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    #@d
    .line 239
    return-object v0
.end method
