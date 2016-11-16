.class public abstract Lsun/security/provider/certpath/CertStoreHelper;
.super Ljava/lang/Object;
.source "CertStoreHelper.java"


# static fields
.field private static final NUM_TYPES:I = 0x2

.field private static cache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/provider/certpath/CertStoreHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final classMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Lsun/security/util/Cache;
    .locals 1

    #@0
    sget-object v0, Lsun/security/provider/certpath/CertStoreHelper;->cache:Lsun/security/util/Cache;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 54
    new-instance v0, Ljava/util/HashMap;

    #@3
    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    #@6
    sput-object v0, Lsun/security/provider/certpath/CertStoreHelper;->classMap:Ljava/util/Map;

    #@8
    .line 56
    sget-object v0, Lsun/security/provider/certpath/CertStoreHelper;->classMap:Ljava/util/Map;

    #@a
    .line 57
    const-string/jumbo v1, "LDAP"

    #@d
    .line 58
    const-string/jumbo v2, "sun.security.provider.certpath.ldap.LDAPCertStoreHelper"

    #@10
    .line 56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 59
    sget-object v0, Lsun/security/provider/certpath/CertStoreHelper;->classMap:Ljava/util/Map;

    #@15
    .line 60
    const-string/jumbo v1, "SSLServer"

    #@18
    .line 61
    const-string/jumbo v2, "sun.security.provider.certpath.ssl.SSLServerCertStoreHelper"

    #@1b
    .line 59
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 64
    invoke-static {v3}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    #@21
    move-result-object v0

    #@22
    .line 63
    sput-object v0, Lsun/security/provider/certpath/CertStoreHelper;->cache:Lsun/security/util/Cache;

    #@24
    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lsun/security/provider/certpath/CertStoreHelper;
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    sget-object v3, Lsun/security/provider/certpath/CertStoreHelper;->cache:Lsun/security/util/Cache;

    #@2
    invoke-virtual {v3, p0}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Lsun/security/provider/certpath/CertStoreHelper;

    #@8
    .line 70
    .local v2, "helper":Lsun/security/provider/certpath/CertStoreHelper;
    if-eqz v2, :cond_0

    #@a
    .line 71
    return-object v2

    #@b
    .line 73
    :cond_0
    sget-object v3, Lsun/security/provider/certpath/CertStoreHelper;->classMap:Ljava/util/Map;

    #@d
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/String;

    #@13
    .line 74
    .local v0, "cl":Ljava/lang/String;
    if-nez v0, :cond_1

    #@15
    .line 75
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    #@17
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    const-string/jumbo v5, " not available"

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v3

    #@2f
    .line 79
    :cond_1
    :try_start_0
    new-instance v3, Lsun/security/provider/certpath/CertStoreHelper$1;

    #@31
    invoke-direct {v3, v0, p0}, Lsun/security/provider/certpath/CertStoreHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 78
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    .end local v2    # "helper":Lsun/security/provider/certpath/CertStoreHelper;
    check-cast v2, Lsun/security/provider/certpath/CertStoreHelper;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 93
    .restart local v2    # "helper":Lsun/security/provider/certpath/CertStoreHelper;
    return-object v2

    #@3b
    .line 94
    .end local v2    # "helper":Lsun/security/provider/certpath/CertStoreHelper;
    :catch_0
    move-exception v1

    #@3c
    .line 95
    .local v1, "e":Ljava/security/PrivilegedActionException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    #@3e
    new-instance v4, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    const-string/jumbo v5, " not available"

    #@4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    .line 96
    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@55
    move-result-object v5

    #@56
    .line 95
    invoke-direct {v3, v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@59
    throw v3
.end method

.method static isCausedByNetworkIssue(Ljava/lang/String;Ljava/security/cert/CertStoreException;)Z
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "cse"    # Ljava/security/cert/CertStoreException;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 101
    const-string/jumbo v4, "LDAP"

    #@4
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_1

    #@a
    .line 105
    :cond_0
    :try_start_0
    invoke-static {p0}, Lsun/security/provider/certpath/CertStoreHelper;->getInstance(Ljava/lang/String;)Lsun/security/provider/certpath/CertStoreHelper;

    #@d
    move-result-object v0

    #@e
    .line 106
    .local v0, "csh":Lsun/security/provider/certpath/CertStoreHelper;
    invoke-virtual {v0, p1}, Lsun/security/provider/certpath/CertStoreHelper;->isCausedByNetworkIssue(Ljava/security/cert/CertStoreException;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v3

    #@12
    return v3

    #@13
    .line 101
    .end local v0    # "csh":Lsun/security/provider/certpath/CertStoreHelper;
    :cond_1
    const-string/jumbo v4, "SSLServer"

    #@16
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_0

    #@1c
    const-string/jumbo v4, "URI"

    #@1f
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_3

    #@25
    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@28
    move-result-object v2

    #@29
    .line 112
    .local v2, "t":Ljava/lang/Throwable;
    if-eqz v2, :cond_2

    #@2b
    instance-of v3, v2, Ljava/io/IOException;

    #@2d
    :cond_2
    return v3

    #@2e
    .line 107
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    #@2f
    .line 108
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    return v3

    #@30
    .line 115
    .end local v1    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :cond_3
    return v3
.end method


# virtual methods
.method public abstract getCertStore(Ljava/net/URI;)Ljava/security/cert/CertStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method public abstract isCausedByNetworkIssue(Ljava/security/cert/CertStoreException;)Z
.end method

.method public abstract wrap(Ljava/security/cert/X509CRLSelector;Ljava/util/Collection;Ljava/lang/String;)Ljava/security/cert/X509CRLSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRLSelector;",
            "Ljava/util/Collection",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/security/cert/X509CRLSelector;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract wrap(Ljava/security/cert/X509CertSelector;Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)Ljava/security/cert/X509CertSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
