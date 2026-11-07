.class Lsun/security/util/AnchorCertificates$1;
.super Ljava/lang/Object;
.source "AnchorCertificates.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/AnchorCertificates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 55
    invoke-virtual {p0}, Lsun/security/util/AnchorCertificates$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 11

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lsun/security/util/FilePaths;->cacerts()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "f":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_a
    const-string v2, "JKS"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 62
    .local v2, "cacerts":Ljava/security/KeyStore;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_74

    .line 63
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_15
    invoke-virtual {v2, v3, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 64
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4}, Lsun/security/util/AnchorCertificates;->-$$Nest$sfputcerts(Ljava/util/Set;)V

    .line 65
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4}, Lsun/security/util/AnchorCertificates;->-$$Nest$sfputcertIssuers(Ljava/util/Set;)V

    .line 66
    invoke-virtual {v2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v4

    .line 67
    .local v4, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_2c
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 68
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 70
    .local v5, "alias":Ljava/lang/String;
    const-string v6, " [jdk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 71
    nop

    .line 72
    invoke-virtual {v2, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 73
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    const-string v7, "SHA-256"

    invoke-static {}, Lsun/security/util/AnchorCertificates;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v8

    .line 74
    invoke-static {v7, v6, v8}, Lsun/security/x509/X509CertImpl;->getFingerprint(Ljava/lang/String;Ljava/security/cert/X509Certificate;Lsun/security/util/Debug;)Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "fp":Ljava/lang/String;
    if-eqz v7, :cond_65

    .line 78
    invoke-static {}, Lsun/security/util/AnchorCertificates;->-$$Nest$sfgetcerts()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {}, Lsun/security/util/AnchorCertificates;->-$$Nest$sfgetcertIssuers()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catchall {:try_start_15 .. :try_end_65} :catchall_6a

    .line 82
    .end local v5    # "alias":Ljava/lang/String;
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "fp":Ljava/lang/String;
    :cond_65
    goto :goto_2c

    .line 83
    .end local v4    # "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_66
    :try_start_66
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_74

    .line 89
    .end local v2    # "cacerts":Ljava/security/KeyStore;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_87

    .line 62
    .restart local v2    # "cacerts":Ljava/security/KeyStore;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_6a
    move-exception v4

    :try_start_6b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception v5

    :try_start_70
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "f":Ljava/io/File;
    .end local p0    # "this":Lsun/security/util/AnchorCertificates$1;
    :goto_73
    throw v4
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_74} :catch_74

    .line 84
    .end local v2    # "cacerts":Ljava/security/KeyStore;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "f":Ljava/io/File;
    .restart local p0    # "this":Lsun/security/util/AnchorCertificates$1;
    :catch_74
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lsun/security/util/AnchorCertificates;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v3

    if-eqz v3, :cond_87

    .line 86
    invoke-static {}, Lsun/security/util/AnchorCertificates;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v3

    const-string v4, "Error parsing cacerts"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_87
    :goto_87
    return-object v1
.end method
