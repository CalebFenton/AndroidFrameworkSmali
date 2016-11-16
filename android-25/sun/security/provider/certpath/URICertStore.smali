.class Lsun/security/provider/certpath/URICertStore;
.super Ljava/security/cert/CertStoreSpi;
.source "URICertStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/URICertStore$UCS;,
        Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0xb9

.field private static final CHECK_INTERVAL:I = 0x7530

.field private static final CRL_CONNECT_TIMEOUT:I

.field private static final DEFAULT_CRL_CONNECT_TIMEOUT:I = 0x3a98

.field private static final certStoreCache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private certs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private crl:Ljava/security/cert/X509CRL;

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private lastChecked:J

.field private lastModified:J

.field private ldap:Z

.field private ldapCertStore:Ljava/security/cert/CertStore;

.field private ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

.field private ldapPath:Ljava/lang/String;

.field private uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 91
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@9
    .line 134
    invoke-static {}, Lsun/security/provider/certpath/URICertStore;->initializeTimeout()I

    #@c
    move-result v0

    #@d
    sput v0, Lsun/security/provider/certpath/URICertStore;->CRL_CONNECT_TIMEOUT:I

    #@f
    .line 188
    const/16 v0, 0xb9

    #@11
    invoke-static {v0}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    #@14
    move-result-object v0

    #@15
    sput-object v0, Lsun/security/provider/certpath/URICertStore;->certStoreCache:Lsun/security/util/Cache;

    #@17
    .line 89
    return-void
.end method

.method constructor <init>(Ljava/security/cert/CertStoreParameters;)V
    .locals 5
    .param p1, "params"    # Ljava/security/cert/CertStoreParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 159
    invoke-direct {p0, p1}, Ljava/security/cert/CertStoreSpi;-><init>(Ljava/security/cert/CertStoreParameters;)V

    #@5
    .line 104
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@8
    move-result-object v1

    #@9
    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    #@b
    .line 120
    iput-boolean v3, p0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    #@d
    .line 160
    instance-of v1, p1, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    #@f
    if-nez v1, :cond_0

    #@11
    .line 161
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    #@13
    .line 162
    const-string/jumbo v2, "params must be instanceof URICertStoreParameters"

    #@16
    .line 161
    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 164
    :cond_0
    nop

    #@1b
    nop

    #@1c
    .end local p1    # "params":Ljava/security/cert/CertStoreParameters;
    invoke-static {p1}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->-get0(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/net/URI;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    #@22
    .line 166
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    #@24
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, "ldap"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_1

    #@37
    .line 167
    iput-boolean v4, p0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    #@39
    .line 168
    const-string/jumbo v1, "LDAP"

    #@3c
    invoke-static {v1}, Lsun/security/provider/certpath/CertStoreHelper;->getInstance(Ljava/lang/String;)Lsun/security/provider/certpath/CertStoreHelper;

    #@3f
    move-result-object v1

    #@40
    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    #@42
    .line 169
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    #@44
    iget-object v2, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    #@46
    invoke-virtual {v1, v2}, Lsun/security/provider/certpath/CertStoreHelper;->getCertStore(Ljava/net/URI;)Ljava/security/cert/CertStore;

    #@49
    move-result-object v1

    #@4a
    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapCertStore:Ljava/security/cert/CertStore;

    #@4c
    .line 170
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    #@4e
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    #@54
    .line 172
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    #@56
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@59
    move-result v1

    #@5a
    const/16 v2, 0x2f

    #@5c
    if-ne v1, v2, :cond_1

    #@5e
    .line 173
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    #@60
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    #@66
    .line 177
    :cond_1
    :try_start_0
    const-string/jumbo v1, "X.509"

    #@69
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@6c
    move-result-object v1

    #@6d
    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    .line 158
    return-void

    #@70
    .line 178
    :catch_0
    move-exception v0

    #@71
    .line 179
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@73
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    #@76
    throw v1
.end method

.method static declared-synchronized getInstance(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/security/cert/CertStore;
    .locals 5
    .param p0, "params"    # Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    const-class v2, Lsun/security/provider/certpath/URICertStore;

    #@2
    monitor-enter v2

    #@3
    .line 191
    :try_start_0
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 192
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "CertStore URI:"

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-static {p0}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->-get0(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/net/URI;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@24
    .line 194
    :cond_0
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->certStoreCache:Lsun/security/util/Cache;

    #@26
    invoke-virtual {v1, p0}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Ljava/security/cert/CertStore;

    #@2c
    .line 195
    .local v0, "ucs":Ljava/security/cert/CertStore;
    if-nez v0, :cond_2

    #@2e
    .line 196
    new-instance v0, Lsun/security/provider/certpath/URICertStore$UCS;

    #@30
    .end local v0    # "ucs":Ljava/security/cert/CertStore;
    new-instance v1, Lsun/security/provider/certpath/URICertStore;

    #@32
    invoke-direct {v1, p0}, Lsun/security/provider/certpath/URICertStore;-><init>(Ljava/security/cert/CertStoreParameters;)V

    #@35
    const-string/jumbo v3, "URI"

    #@38
    const/4 v4, 0x0

    #@39
    invoke-direct {v0, v1, v4, v3, p0}, Lsun/security/provider/certpath/URICertStore$UCS;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V

    #@3c
    .line 197
    .restart local v0    # "ucs":Ljava/security/cert/CertStore;
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->certStoreCache:Lsun/security/util/Cache;

    #@3e
    invoke-virtual {v1, p0, v0}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    :cond_1
    :goto_0
    monitor-exit v2

    #@42
    .line 203
    return-object v0

    #@43
    .line 199
    :cond_2
    :try_start_1
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@45
    if-eqz v1, :cond_1

    #@47
    .line 200
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@49
    const-string/jumbo v3, "URICertStore.getInstance: cache hit"

    #@4c
    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    goto :goto_0

    #@50
    .end local v0    # "ucs":Ljava/security/cert/CertStore;
    :catchall_0
    move-exception v1

    #@51
    monitor-exit v2

    #@52
    throw v1
.end method

.method static getInstance(Lsun/security/x509/AccessDescription;)Ljava/security/cert/CertStore;
    .locals 7
    .param p0, "ad"    # Lsun/security/x509/AccessDescription;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 211
    invoke-virtual {p0}, Lsun/security/x509/AccessDescription;->getAccessMethod()Lsun/security/util/ObjectIdentifier;

    #@4
    move-result-object v3

    #@5
    .line 212
    sget-object v4, Lsun/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 211
    invoke-virtual {v3, v4}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 213
    return-object v6

    #@e
    .line 215
    :cond_0
    invoke-virtual {p0}, Lsun/security/x509/AccessDescription;->getAccessLocation()Lsun/security/x509/GeneralName;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@15
    move-result-object v1

    #@16
    .line 216
    .local v1, "gn":Lsun/security/x509/GeneralNameInterface;
    instance-of v3, v1, Lsun/security/x509/URIName;

    #@18
    if-nez v3, :cond_1

    #@1a
    .line 217
    return-object v6

    #@1b
    .line 219
    :cond_1
    nop

    #@1c
    nop

    #@1d
    .end local v1    # "gn":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v1}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    #@20
    move-result-object v2

    #@21
    .line 222
    .local v2, "uri":Ljava/net/URI;
    :try_start_0
    new-instance v3, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    #@23
    invoke-direct {v3, v2}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;-><init>(Ljava/net/URI;)V

    #@26
    .line 221
    invoke-static {v3}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/security/cert/CertStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result-object v3

    #@2a
    return-object v3

    #@2b
    .line 223
    :catch_0
    move-exception v0

    #@2c
    .line 224
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@2e
    if-eqz v3, :cond_2

    #@30
    .line 225
    sget-object v3, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@32
    new-instance v4, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v5, "exception creating CertStore: "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@49
    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    #@4c
    .line 228
    :cond_2
    return-object v6
.end method

.method private static getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 1
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "selector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRL;",
            "Ljava/security/cert/CRLSelector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 441
    if-eqz p1, :cond_0

    #@2
    if-eqz p0, :cond_1

    #@4
    invoke-interface {p1, p0}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 442
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 444
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method private static getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 4
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 330
    .local p0, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    if-nez p1, :cond_0

    #@2
    .line 331
    return-object p0

    #@3
    .line 333
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@5
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@8
    move-result v3

    #@9
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@c
    .line 334
    .local v2, "matchedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "cert$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@1c
    .line 335
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p1, v0}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 336
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_0

    #@26
    .line 339
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_2
    return-object v2
.end method

.method private static initializeTimeout()I
    .locals 3

    #@0
    .prologue
    .line 143
    new-instance v1, Lsun/security/action/GetIntegerAction;

    #@2
    const-string/jumbo v2, "com.sun.security.crl.timeout"

    #@5
    invoke-direct {v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    #@8
    .line 142
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Integer;

    #@e
    .line 144
    .local v0, "tmp":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v1

    #@14
    if-gez v1, :cond_1

    #@16
    .line 145
    :cond_0
    const/16 v1, 0x3a98

    #@18
    return v1

    #@19
    .line 149
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v1

    #@1d
    mul-int/lit16 v1, v1, 0x3e8

    #@1f
    return v1
.end method


# virtual methods
.method public declared-synchronized engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 21
    .param p1, "selector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CRLSelector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 361
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-boolean v15, v0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    #@5
    if-eqz v15, :cond_0

    #@7
    .line 362
    move-object/from16 v0, p1

    #@9
    check-cast v0, Ljava/security/cert/X509CRLSelector;

    #@b
    move-object v14, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 364
    .local v14, "xsel":Ljava/security/cert/X509CRLSelector;
    :try_start_1
    move-object/from16 v0, p0

    #@e
    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    #@10
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    #@14
    move-object/from16 v16, v0

    #@16
    const/16 v17, 0x0

    #@18
    move-object/from16 v0, v17

    #@1a
    move-object/from16 v1, v16

    #@1c
    invoke-virtual {v15, v14, v0, v1}, Lsun/security/provider/certpath/CertStoreHelper;->wrap(Ljava/security/cert/X509CRLSelector;Ljava/util/Collection;Ljava/lang/String;)Ljava/security/cert/X509CRLSelector;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    move-result-object v14

    #@20
    .line 372
    :try_start_2
    move-object/from16 v0, p0

    #@22
    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->ldapCertStore:Ljava/security/cert/CertStore;

    #@24
    invoke-virtual {v15, v14}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    :try_end_2
    .catch Ljava/security/cert/CertStoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    move-result-object v15

    #@28
    monitor-exit p0

    #@29
    return-object v15

    #@2a
    .line 365
    :catch_0
    move-exception v9

    #@2b
    .line 366
    .local v9, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v15, Ljava/security/cert/CertStoreException;

    #@2d
    invoke-direct {v15, v9}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    #@30
    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@31
    .end local v9    # "ioe":Ljava/io/IOException;
    .end local v14    # "xsel":Ljava/security/cert/X509CRLSelector;
    :catchall_0
    move-exception v15

    #@32
    monitor-exit p0

    #@33
    throw v15

    #@34
    .line 373
    .restart local v14    # "xsel":Ljava/security/cert/X509CRLSelector;
    :catch_1
    move-exception v5

    #@35
    .line 374
    .local v5, "cse":Ljava/security/cert/CertStoreException;
    :try_start_4
    new-instance v15, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    #@37
    const-string/jumbo v16, "LDAP"

    #@3a
    move-object/from16 v0, v16

    #@3c
    invoke-direct {v15, v0, v5}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;-><init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V

    #@3f
    throw v15

    #@40
    .line 381
    .end local v5    # "cse":Ljava/security/cert/CertStoreException;
    .end local v14    # "xsel":Ljava/security/cert/X509CRLSelector;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@43
    move-result-wide v12

    #@44
    .line 382
    .local v12, "time":J
    move-object/from16 v0, p0

    #@46
    iget-wide v0, v0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J

    #@48
    move-wide/from16 v16, v0

    #@4a
    sub-long v16, v12, v16

    #@4c
    const-wide/16 v18, 0x7530

    #@4e
    cmp-long v15, v16, v18

    #@50
    if-gez v15, :cond_2

    #@52
    .line 383
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@54
    if-eqz v15, :cond_1

    #@56
    .line 384
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@58
    const-string/jumbo v16, "Returning CRL from cache"

    #@5b
    invoke-virtual/range {v15 .. v16}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@5e
    .line 386
    :cond_1
    move-object/from16 v0, p0

    #@60
    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    #@62
    move-object/from16 v0, p1

    #@64
    invoke-static {v15, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@67
    move-result-object v15

    #@68
    monitor-exit p0

    #@69
    return-object v15

    #@6a
    .line 388
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    #@6c
    iput-wide v12, v0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@6e
    .line 390
    :try_start_6
    move-object/from16 v0, p0

    #@70
    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    #@72
    invoke-virtual {v15}, Ljava/net/URI;->toURL()Ljava/net/URL;

    #@75
    move-result-object v15

    #@76
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@79
    move-result-object v4

    #@7a
    .line 391
    .local v4, "connection":Ljava/net/URLConnection;
    move-object/from16 v0, p0

    #@7c
    iget-wide v0, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    #@7e
    move-wide/from16 v16, v0

    #@80
    const-wide/16 v18, 0x0

    #@82
    cmp-long v15, v16, v18

    #@84
    if-eqz v15, :cond_3

    #@86
    .line 392
    move-object/from16 v0, p0

    #@88
    iget-wide v0, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    #@8a
    move-wide/from16 v16, v0

    #@8c
    move-wide/from16 v0, v16

    #@8e
    invoke-virtual {v4, v0, v1}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    #@91
    .line 394
    :cond_3
    move-object/from16 v0, p0

    #@93
    iget-wide v10, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    #@95
    .line 395
    .local v10, "oldLastModified":J
    sget v15, Lsun/security/provider/certpath/URICertStore;->CRL_CONNECT_TIMEOUT:I

    #@97
    invoke-virtual {v4, v15}, Ljava/net/URLConnection;->setConnectTimeout(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@9a
    .line 396
    const/16 v16, 0x0

    #@9c
    const/4 v8, 0x0

    #@9d
    .local v8, "in":Ljava/io/InputStream;
    :try_start_7
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@a0
    move-result-object v8

    #@a1
    .line 397
    .local v8, "in":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/net/URLConnection;->getLastModified()J

    #@a4
    move-result-wide v18

    #@a5
    move-wide/from16 v0, v18

    #@a7
    move-object/from16 v2, p0

    #@a9
    iput-wide v0, v2, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    #@ab
    .line 398
    const-wide/16 v18, 0x0

    #@ad
    cmp-long v15, v10, v18

    #@af
    if-eqz v15, :cond_c

    #@b1
    .line 399
    move-object/from16 v0, p0

    #@b3
    iget-wide v0, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    #@b5
    move-wide/from16 v18, v0

    #@b7
    cmp-long v15, v10, v18

    #@b9
    if-nez v15, :cond_8

    #@bb
    .line 400
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@bd
    if-eqz v15, :cond_4

    #@bf
    .line 401
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@c1
    const-string/jumbo v17, "Not modified, using cached copy"

    #@c4
    move-object/from16 v0, v17

    #@c6
    invoke-virtual {v15, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@c9
    .line 403
    :cond_4
    move-object/from16 v0, p0

    #@cb
    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    #@cd
    move-object/from16 v0, p1

    #@cf
    invoke-static {v15, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@d2
    move-result-object v15

    #@d3
    .line 420
    if-eqz v8, :cond_5

    #@d5
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@d8
    :cond_5
    :goto_0
    if-eqz v16, :cond_7

    #@da
    :try_start_9
    throw v16
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@db
    .line 422
    .end local v4    # "connection":Ljava/net/URLConnection;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v10    # "oldLastModified":J
    :catch_2
    move-exception v6

    #@dc
    .line 423
    .local v6, "e":Ljava/lang/Exception;
    :try_start_a
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@de
    if-eqz v15, :cond_6

    #@e0
    .line 424
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@e2
    const-string/jumbo v16, "Exception fetching CRL:"

    #@e5
    invoke-virtual/range {v15 .. v16}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@e8
    .line 425
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    #@eb
    .line 428
    :cond_6
    const-wide/16 v16, 0x0

    #@ed
    move-wide/from16 v0, v16

    #@ef
    move-object/from16 v2, p0

    #@f1
    iput-wide v0, v2, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    #@f3
    .line 429
    const/4 v15, 0x0

    #@f4
    move-object/from16 v0, p0

    #@f6
    iput-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    #@f8
    .line 430
    new-instance v15, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    #@fa
    const-string/jumbo v16, "URI"

    #@fd
    .line 431
    new-instance v17, Ljava/security/cert/CertStoreException;

    #@ff
    move-object/from16 v0, v17

    #@101
    invoke-direct {v0, v6}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    #@104
    .line 430
    invoke-direct/range {v15 .. v17}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;-><init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V

    #@107
    throw v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@108
    .line 420
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "connection":Ljava/net/URLConnection;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v10    # "oldLastModified":J
    :catch_3
    move-exception v16

    #@109
    goto :goto_0

    #@10a
    :cond_7
    monitor-exit p0

    #@10b
    .line 403
    return-object v15

    #@10c
    .line 404
    :cond_8
    :try_start_b
    instance-of v15, v4, Ljava/net/HttpURLConnection;

    #@10e
    if-eqz v15, :cond_c

    #@110
    .line 406
    move-object v0, v4

    #@111
    nop

    #@112
    nop

    #@113
    move-object v7, v0

    #@114
    .line 407
    .local v7, "hconn":Ljava/net/HttpURLConnection;
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@117
    move-result v15

    #@118
    .line 408
    const/16 v17, 0x130

    #@11a
    .line 407
    move/from16 v0, v17

    #@11c
    if-ne v15, v0, :cond_c

    #@11e
    .line 409
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@120
    if-eqz v15, :cond_9

    #@122
    .line 410
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@124
    const-string/jumbo v17, "Not modified, using cached copy"

    #@127
    move-object/from16 v0, v17

    #@129
    invoke-virtual {v15, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@12c
    .line 412
    :cond_9
    move-object/from16 v0, p0

    #@12e
    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    #@130
    move-object/from16 v0, p1

    #@132
    invoke-static {v15, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@135
    move-result-object v15

    #@136
    .line 420
    if-eqz v8, :cond_a

    #@138
    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@13b
    :cond_a
    :goto_1
    if-eqz v16, :cond_b

    #@13d
    :try_start_d
    throw v16
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@13e
    :catch_4
    move-exception v16

    #@13f
    goto :goto_1

    #@140
    :cond_b
    monitor-exit p0

    #@141
    .line 412
    return-object v15

    #@142
    .line 416
    .end local v7    # "hconn":Ljava/net/HttpURLConnection;
    :cond_c
    :try_start_e
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@144
    if-eqz v15, :cond_d

    #@146
    .line 417
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@148
    const-string/jumbo v17, "Downloading new CRL..."

    #@14b
    move-object/from16 v0, v17

    #@14d
    invoke-virtual {v15, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@150
    .line 419
    :cond_d
    move-object/from16 v0, p0

    #@152
    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->factory:Ljava/security/cert/CertificateFactory;

    #@154
    invoke-virtual {v15, v8}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    #@157
    move-result-object v15

    #@158
    check-cast v15, Ljava/security/cert/X509CRL;

    #@15a
    move-object/from16 v0, p0

    #@15c
    iput-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    #@15e
    .line 420
    if-eqz v8, :cond_e

    #@160
    :try_start_f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@163
    :cond_e
    :goto_2
    if-eqz v16, :cond_12

    #@165
    :try_start_10
    throw v16
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@166
    :catch_5
    move-exception v16

    #@167
    goto :goto_2

    #@168
    .end local v8    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v15

    #@169
    :try_start_11
    throw v15
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    #@16a
    :catchall_1
    move-exception v16

    #@16b
    move-object/from16 v20, v16

    #@16d
    move-object/from16 v16, v15

    #@16f
    move-object/from16 v15, v20

    #@171
    :goto_3
    if-eqz v8, :cond_f

    #@173
    :try_start_12
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    #@176
    :cond_f
    :goto_4
    if-eqz v16, :cond_11

    #@178
    :try_start_13
    throw v16

    #@179
    :catch_7
    move-exception v17

    #@17a
    if-nez v16, :cond_10

    #@17c
    move-object/from16 v16, v17

    #@17e
    goto :goto_4

    #@17f
    :cond_10
    move-object/from16 v0, v16

    #@181
    move-object/from16 v1, v17

    #@183
    if-eq v0, v1, :cond_f

    #@185
    invoke-virtual/range {v16 .. v17}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@188
    goto :goto_4

    #@189
    :cond_11
    throw v15

    #@18a
    .line 421
    .restart local v8    # "in":Ljava/io/InputStream;
    :cond_12
    move-object/from16 v0, p0

    #@18c
    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    #@18e
    move-object/from16 v0, p1

    #@190
    invoke-static {v15, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@193
    move-result-object v15

    #@194
    monitor-exit p0

    #@195
    return-object v15

    #@196
    .line 420
    .end local v8    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v15

    #@197
    goto :goto_3
.end method

.method public declared-synchronized engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 17
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 251
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-boolean v12, v0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    #@5
    if-eqz v12, :cond_0

    #@7
    .line 252
    move-object/from16 v0, p1

    #@9
    check-cast v0, Ljava/security/cert/X509CertSelector;

    #@b
    move-object v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 254
    .local v7, "xsel":Ljava/security/cert/X509CertSelector;
    :try_start_1
    move-object/from16 v0, p0

    #@e
    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    #@10
    invoke-virtual {v7}, Ljava/security/cert/X509CertSelector;->getSubject()Ljavax/security/auth/x500/X500Principal;

    #@13
    move-result-object v13

    #@14
    move-object/from16 v0, p0

    #@16
    iget-object v14, v0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    #@18
    invoke-virtual {v12, v7, v13, v14}, Lsun/security/provider/certpath/CertStoreHelper;->wrap(Ljava/security/cert/X509CertSelector;Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)Ljava/security/cert/X509CertSelector;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    move-result-object v7

    #@1c
    .line 262
    :try_start_2
    move-object/from16 v0, p0

    #@1e
    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->ldapCertStore:Ljava/security/cert/CertStore;

    #@20
    invoke-virtual {v12, v7}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    move-result-object v12

    #@24
    monitor-exit p0

    #@25
    .line 261
    return-object v12

    #@26
    .line 255
    :catch_0
    move-exception v6

    #@27
    .line 256
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v12, Ljava/security/cert/CertStoreException;

    #@29
    invoke-direct {v12, v6}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    #@2c
    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v7    # "xsel":Ljava/security/cert/X509CertSelector;
    :catchall_0
    move-exception v12

    #@2e
    monitor-exit p0

    #@2f
    throw v12

    #@30
    .line 268
    :cond_0
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@33
    move-result-wide v10

    #@34
    .line 269
    .local v10, "time":J
    move-object/from16 v0, p0

    #@36
    iget-wide v12, v0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J

    #@38
    sub-long v12, v10, v12

    #@3a
    const-wide/16 v14, 0x7530

    #@3c
    cmp-long v12, v12, v14

    #@3e
    if-gez v12, :cond_2

    #@40
    .line 270
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@42
    if-eqz v12, :cond_1

    #@44
    .line 271
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@46
    const-string/jumbo v13, "Returning certificates from cache"

    #@49
    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@4c
    .line 273
    :cond_1
    move-object/from16 v0, p0

    #@4e
    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    #@50
    move-object/from16 v0, p1

    #@52
    invoke-static {v12, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@55
    move-result-object v12

    #@56
    monitor-exit p0

    #@57
    return-object v12

    #@58
    .line 275
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    #@5a
    iput-wide v10, v0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@5c
    .line 277
    :try_start_6
    move-object/from16 v0, p0

    #@5e
    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    #@60
    invoke-virtual {v12}, Ljava/net/URI;->toURL()Ljava/net/URL;

    #@63
    move-result-object v12

    #@64
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@67
    move-result-object v2

    #@68
    .line 278
    .local v2, "connection":Ljava/net/URLConnection;
    move-object/from16 v0, p0

    #@6a
    iget-wide v12, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    #@6c
    const-wide/16 v14, 0x0

    #@6e
    cmp-long v12, v12, v14

    #@70
    if-eqz v12, :cond_3

    #@72
    .line 279
    move-object/from16 v0, p0

    #@74
    iget-wide v12, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    #@76
    invoke-virtual {v2, v12, v13}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    #@79
    .line 281
    :cond_3
    move-object/from16 v0, p0

    #@7b
    iget-wide v8, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@7d
    .line 282
    .local v8, "oldLastModified":J
    const/4 v13, 0x0

    #@7e
    const/4 v5, 0x0

    #@7f
    .local v5, "in":Ljava/io/InputStream;
    :try_start_7
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@82
    move-result-object v5

    #@83
    .line 283
    .local v5, "in":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getLastModified()J

    #@86
    move-result-wide v14

    #@87
    move-object/from16 v0, p0

    #@89
    iput-wide v14, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    #@8b
    .line 284
    const-wide/16 v14, 0x0

    #@8d
    cmp-long v12, v8, v14

    #@8f
    if-eqz v12, :cond_c

    #@91
    .line 285
    move-object/from16 v0, p0

    #@93
    iget-wide v14, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    #@95
    cmp-long v12, v8, v14

    #@97
    if-nez v12, :cond_8

    #@99
    .line 286
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@9b
    if-eqz v12, :cond_4

    #@9d
    .line 287
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@9f
    const-string/jumbo v14, "Not modified, using cached copy"

    #@a2
    invoke-virtual {v12, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@a5
    .line 289
    :cond_4
    move-object/from16 v0, p0

    #@a7
    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    #@a9
    move-object/from16 v0, p1

    #@ab
    invoke-static {v12, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@ae
    move-result-object v12

    #@af
    .line 308
    if-eqz v5, :cond_5

    #@b1
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@b4
    :cond_5
    :goto_0
    if-eqz v13, :cond_7

    #@b6
    :try_start_9
    throw v13
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@b7
    .line 310
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v8    # "oldLastModified":J
    :catch_1
    move-exception v3

    #@b8
    .line 311
    .local v3, "e":Ljava/lang/Exception;
    :try_start_a
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@ba
    if-eqz v12, :cond_6

    #@bc
    .line 312
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@be
    const-string/jumbo v13, "Exception fetching certificates:"

    #@c1
    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@c4
    .line 313
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    #@c7
    .line 317
    :cond_6
    const-wide/16 v12, 0x0

    #@c9
    move-object/from16 v0, p0

    #@cb
    iput-wide v12, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    #@cd
    .line 318
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@d0
    move-result-object v12

    #@d1
    move-object/from16 v0, p0

    #@d3
    iput-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    #@d5
    .line 319
    move-object/from16 v0, p0

    #@d7
    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@d9
    monitor-exit p0

    #@da
    return-object v12

    #@db
    .line 308
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v8    # "oldLastModified":J
    :catch_2
    move-exception v13

    #@dc
    goto :goto_0

    #@dd
    :cond_7
    monitor-exit p0

    #@de
    .line 289
    return-object v12

    #@df
    .line 290
    :cond_8
    :try_start_b
    instance-of v12, v2, Ljava/net/HttpURLConnection;

    #@e1
    if-eqz v12, :cond_c

    #@e3
    .line 292
    move-object v0, v2

    #@e4
    nop

    #@e5
    nop

    #@e6
    move-object v4, v0

    #@e7
    .line 293
    .local v4, "hconn":Ljava/net/HttpURLConnection;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@ea
    move-result v12

    #@eb
    .line 294
    const/16 v14, 0x130

    #@ed
    .line 293
    if-ne v12, v14, :cond_c

    #@ef
    .line 295
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@f1
    if-eqz v12, :cond_9

    #@f3
    .line 296
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@f5
    const-string/jumbo v14, "Not modified, using cached copy"

    #@f8
    invoke-virtual {v12, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@fb
    .line 298
    :cond_9
    move-object/from16 v0, p0

    #@fd
    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    #@ff
    move-object/from16 v0, p1

    #@101
    invoke-static {v12, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@104
    move-result-object v12

    #@105
    .line 308
    if-eqz v5, :cond_a

    #@107
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@10a
    :cond_a
    :goto_1
    if-eqz v13, :cond_b

    #@10c
    :try_start_d
    throw v13
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@10d
    :catch_3
    move-exception v13

    #@10e
    goto :goto_1

    #@10f
    :cond_b
    monitor-exit p0

    #@110
    .line 298
    return-object v12

    #@111
    .line 302
    .end local v4    # "hconn":Ljava/net/HttpURLConnection;
    :cond_c
    :try_start_e
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@113
    if-eqz v12, :cond_d

    #@115
    .line 303
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    #@117
    const-string/jumbo v14, "Downloading new certificates..."

    #@11a
    invoke-virtual {v12, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@11d
    .line 307
    :cond_d
    move-object/from16 v0, p0

    #@11f
    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->factory:Ljava/security/cert/CertificateFactory;

    #@121
    invoke-virtual {v12, v5}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    #@124
    move-result-object v12

    #@125
    .line 306
    move-object/from16 v0, p0

    #@127
    iput-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    #@129
    .line 308
    if-eqz v5, :cond_e

    #@12b
    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@12e
    :cond_e
    :goto_2
    if-eqz v13, :cond_12

    #@130
    :try_start_10
    throw v13
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@131
    :catch_4
    move-exception v13

    #@132
    goto :goto_2

    #@133
    .end local v5    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v12

    #@134
    :try_start_11
    throw v12
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    #@135
    :catchall_1
    move-exception v13

    #@136
    move-object/from16 v16, v13

    #@138
    move-object v13, v12

    #@139
    move-object/from16 v12, v16

    #@13b
    :goto_3
    if-eqz v5, :cond_f

    #@13d
    :try_start_12
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    #@140
    :cond_f
    :goto_4
    if-eqz v13, :cond_11

    #@142
    :try_start_13
    throw v13

    #@143
    :catch_6
    move-exception v14

    #@144
    if-nez v13, :cond_10

    #@146
    move-object v13, v14

    #@147
    goto :goto_4

    #@148
    :cond_10
    if-eq v13, v14, :cond_f

    #@14a
    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@14d
    goto :goto_4

    #@14e
    :cond_11
    throw v12

    #@14f
    .line 309
    .restart local v5    # "in":Ljava/io/InputStream;
    :cond_12
    move-object/from16 v0, p0

    #@151
    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    #@153
    move-object/from16 v0, p1

    #@155
    invoke-static {v12, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@158
    move-result-object v12

    #@159
    monitor-exit p0

    #@15a
    return-object v12

    #@15b
    .line 308
    .end local v5    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v12

    #@15c
    goto :goto_3
.end method
