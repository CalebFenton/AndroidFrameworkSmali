.class Lsun/security/provider/certpath/URICertStore;
.super Ljava/security/cert/CertStoreSpi;
.source "URICertStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;,
        Lsun/security/provider/certpath/URICertStore$UCS;
    }
.end annotation


# static fields
.field private static final blacklist CACHE_SIZE:I = 0xb9

.field private static final blacklist CHECK_INTERVAL:I = 0x7530

.field private static final blacklist CRL_CONNECT_TIMEOUT:I

.field private static final blacklist DEFAULT_CRL_CONNECT_TIMEOUT:I = 0x3a98

.field private static final blacklist certStoreCache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache<",
            "Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field private blacklist certs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist crl:Ljava/security/cert/X509CRL;

.field private final blacklist factory:Ljava/security/cert/CertificateFactory;

.field private blacklist lastChecked:J

.field private blacklist lastModified:J

.field private blacklist ldap:Z

.field private blacklist ldapCertStore:Ljava/security/cert/CertStore;

.field private blacklist ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

.field private blacklist ldapPath:Ljava/lang/String;

.field private blacklist uri:Ljava/net/URI;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 91
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    .line 134
    invoke-static {}, Lsun/security/provider/certpath/URICertStore;->initializeTimeout()I

    move-result v0

    sput v0, Lsun/security/provider/certpath/URICertStore;->CRL_CONNECT_TIMEOUT:I

    .line 188
    const/16 v0, 0xb9

    invoke-static {v0}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/URICertStore;->certStoreCache:Lsun/security/util/Cache;

    return-void
.end method

.method constructor blacklist <init>(Ljava/security/cert/CertStoreParameters;)V
    .registers 6
    .param p1, "params"    # Ljava/security/cert/CertStoreParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1}, Ljava/security/cert/CertStoreSpi;-><init>(Ljava/security/cert/CertStoreParameters;)V

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    .line 160
    instance-of v1, p1, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    if-eqz v1, :cond_6d

    .line 164
    move-object v1, p1

    check-cast v1, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    invoke-static {v1}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->-$$Nest$fgeturi(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    .line 166
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ldap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    .line 168
    const-string v2, "LDAP"

    invoke-static {v2}, Lsun/security/provider/certpath/CertStoreHelper;->getInstance(Ljava/lang/String;)Lsun/security/provider/certpath/CertStoreHelper;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    .line 169
    iget-object v2, p0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    iget-object v3, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Lsun/security/provider/certpath/CertStoreHelper;->getCertStore(Ljava/net/URI;)Ljava/security/cert/CertStore;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/URICertStore;->ldapCertStore:Ljava/security/cert/CertStore;

    .line 170
    iget-object v2, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    .line 172
    iget-object v2, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_5c

    .line 173
    iget-object v0, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    .line 177
    :cond_5c
    :try_start_5c
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/URICertStore;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_64
    .catch Ljava/security/cert/CertificateException; {:try_start_5c .. :try_end_64} :catch_66

    .line 180
    nop

    .line 181
    return-void

    .line 178
    :catch_66
    move-exception v0

    .line 179
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 161
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :cond_6d
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "params must be instanceof URICertStoreParameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static declared-synchronized blacklist getInstance(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/security/cert/CertStore;
    .registers 7
    .param p0, "params"    # Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const-class v0, Lsun/security/provider/certpath/URICertStore;

    monitor-enter v0

    .line 191
    :try_start_3
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_23

    .line 192
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CertStore URI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->-$$Nest$fgeturi(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 194
    :cond_23
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->certStoreCache:Lsun/security/util/Cache;

    invoke-virtual {v1, p0}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertStore;

    .line 195
    .local v1, "ucs":Ljava/security/cert/CertStore;
    if-nez v1, :cond_41

    .line 196
    new-instance v2, Lsun/security/provider/certpath/URICertStore$UCS;

    new-instance v3, Lsun/security/provider/certpath/URICertStore;

    invoke-direct {v3, p0}, Lsun/security/provider/certpath/URICertStore;-><init>(Ljava/security/cert/CertStoreParameters;)V

    const-string v4, "URI"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4, p0}, Lsun/security/provider/certpath/URICertStore$UCS;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V

    move-object v1, v2

    .line 197
    sget-object v2, Lsun/security/provider/certpath/URICertStore;->certStoreCache:Lsun/security/util/Cache;

    invoke-virtual {v2, p0, v1}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4c

    .line 199
    :cond_41
    sget-object v2, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_4c

    .line 200
    sget-object v2, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string v3, "URICertStore.getInstance: cache hit"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4e

    .line 203
    :cond_4c
    :goto_4c
    monitor-exit v0

    return-object v1

    .line 190
    .end local v1    # "ucs":Ljava/security/cert/CertStore;
    .end local p0    # "params":Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;
    :catchall_4e
    move-exception p0

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p0
.end method

.method static blacklist getInstance(Lsun/security/x509/AccessDescription;)Ljava/security/cert/CertStore;
    .registers 8
    .param p0, "ad"    # Lsun/security/x509/AccessDescription;

    .line 211
    invoke-virtual {p0}, Lsun/security/x509/AccessDescription;->getAccessMethod()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lsun/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 213
    return-object v1

    .line 215
    :cond_e
    invoke-virtual {p0}, Lsun/security/x509/AccessDescription;->getAccessLocation()Lsun/security/x509/GeneralName;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 216
    .local v0, "gn":Lsun/security/x509/GeneralNameInterface;
    instance-of v2, v0, Lsun/security/x509/URIName;

    if-nez v2, :cond_1b

    .line 217
    return-object v1

    .line 219
    :cond_1b
    move-object v2, v0

    check-cast v2, Lsun/security/x509/URIName;

    invoke-virtual {v2}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    move-result-object v2

    .line 221
    .local v2, "uri":Ljava/net/URI;
    :try_start_22
    new-instance v3, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    invoke-direct {v3, v2}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;-><init>(Ljava/net/URI;)V

    .line 222
    invoke-static {v3}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2b} :catch_2c

    .line 221
    return-object v1

    .line 223
    :catch_2c
    move-exception v3

    .line 224
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v4, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_4c

    .line 225
    sget-object v4, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception creating CertStore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    :cond_4c
    return-object v1
.end method

.method private static blacklist getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .registers 3
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "selector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRL;",
            "Ljava/security/cert/CRLSelector;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .line 441
    if-eqz p1, :cond_10

    if-eqz p0, :cond_b

    invoke-interface {p1, p0}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_10

    .line 444
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 442
    :cond_10
    :goto_10
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .registers 6
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 330
    .local p0, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    if-nez p1, :cond_3

    .line 331
    return-object p0

    .line 333
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .local v0, "matchedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 335
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p1, v2}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 336
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_25
    goto :goto_10

    .line 339
    :cond_26
    return-object v0
.end method

.method private static blacklist initializeTimeout()I
    .registers 2

    .line 142
    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string v1, "com.sun.security.crl.timeout"

    invoke-direct {v0, v1}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 144
    .local v0, "tmp":Ljava/lang/Integer;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_16

    goto :goto_1d

    .line 149
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    return v1

    .line 145
    :cond_1d
    :goto_1d
    const/16 v1, 0x3a98

    return v1
.end method


# virtual methods
.method public declared-synchronized whitelist test-api engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .registers 14
    .param p1, "selector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CRLSelector;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 361
    :try_start_1
    iget-boolean v0, p0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 362
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRLSelector;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10e

    .line 364
    .local v0, "xsel":Ljava/security/cert/X509CRLSelector;
    :try_start_9
    iget-object v2, p0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    iget-object v3, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lsun/security/provider/certpath/CertStoreHelper;->wrap(Ljava/security/cert/X509CRLSelector;Ljava/util/Collection;Ljava/lang/String;)Ljava/security/cert/X509CRLSelector;

    move-result-object v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_23
    .catchall {:try_start_9 .. :try_end_11} :catchall_10e

    .line 367
    .end local v0    # "xsel":Ljava/security/cert/X509CRLSelector;
    .local v1, "xsel":Ljava/security/cert/X509CRLSelector;
    nop

    .line 372
    :try_start_12
    iget-object v0, p0, Lsun/security/provider/certpath/URICertStore;->ldapCertStore:Ljava/security/cert/CertStore;

    invoke-virtual {v0, v1}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v0
    :try_end_18
    .catch Ljava/security/cert/CertStoreException; {:try_start_12 .. :try_end_18} :catch_1a
    .catchall {:try_start_12 .. :try_end_18} :catchall_10e

    monitor-exit p0

    return-object v0

    .line 373
    .end local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :catch_1a
    move-exception v0

    .line 374
    .local v0, "cse":Ljava/security/cert/CertStoreException;
    :try_start_1b
    new-instance v2, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    const-string v3, "LDAP"

    invoke-direct {v2, v3, v0}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;-><init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V

    throw v2

    .line 365
    .end local v1    # "xsel":Ljava/security/cert/X509CRLSelector;
    .local v0, "xsel":Ljava/security/cert/X509CRLSelector;
    :catch_23
    move-exception v1

    .line 366
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertStoreException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 381
    .end local v0    # "xsel":Ljava/security/cert/X509CRLSelector;
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 382
    .local v2, "time":J
    iget-wide v4, p0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-gez v0, :cond_4b

    .line 383
    sget-object v0, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_43

    .line 384
    sget-object v0, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string v1, "Returning CRL from cache"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 386
    :cond_43
    iget-object v0, p0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    invoke-static {v0, p1}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v0
    :try_end_49
    .catchall {:try_start_1b .. :try_end_49} :catchall_10e

    monitor-exit p0

    return-object v0

    .line 388
    :cond_4b
    :try_start_4b
    iput-wide v2, p0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_10e

    .line 390
    const-wide/16 v4, 0x0

    :try_start_4f
    iget-object v0, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 391
    .local v0, "connection":Ljava/net/URLConnection;
    iget-wide v6, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_64

    .line 392
    iget-wide v6, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    invoke-virtual {v0, v6, v7}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 394
    :cond_64
    iget-wide v6, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 395
    .local v6, "oldLastModified":J
    sget v8, Lsun/security/provider/certpath/URICertStore;->CRL_CONNECT_TIMEOUT:I

    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 396
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_6f} :catch_ee
    .catch Ljava/security/cert/CRLException; {:try_start_4f .. :try_end_6f} :catch_ee
    .catchall {:try_start_4f .. :try_end_6f} :catchall_10e

    .line 397
    .local v8, "in":Ljava/io/InputStream;
    :try_start_6f
    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v9

    iput-wide v9, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_e2

    .line 398
    cmp-long v9, v6, v4

    if-eqz v9, :cond_c0

    .line 399
    :try_start_79
    iget-wide v9, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    cmp-long v9, v6, v9

    if-nez v9, :cond_97

    .line 400
    sget-object v9, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;
    :try_end_81
    .catchall {:try_start_79 .. :try_end_81} :catchall_be

    if-eqz v9, :cond_8a

    .line 401
    :try_start_83
    sget-object v9, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string v10, "Not modified, using cached copy"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_e2

    .line 403
    :cond_8a
    :try_start_8a
    iget-object v9, p0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    invoke-static {v9, p1}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v9
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_be

    .line 420
    if-eqz v8, :cond_95

    :try_start_92
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_ee
    .catch Ljava/security/cert/CRLException; {:try_start_92 .. :try_end_95} :catch_ee
    .catchall {:try_start_92 .. :try_end_95} :catchall_10e

    .line 403
    :cond_95
    monitor-exit p0

    return-object v9

    .line 404
    .restart local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :cond_97
    :try_start_97
    instance-of v9, v0, Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_c0

    .line 406
    move-object v9, v0

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 407
    .local v9, "hconn":Ljava/net/HttpURLConnection;
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v11, 0x130

    if-ne v10, v11, :cond_c0

    .line 409
    sget-object v10, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_b1

    .line 410
    sget-object v10, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string v11, "Not modified, using cached copy"

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 412
    :cond_b1
    iget-object v10, p0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    invoke-static {v10, p1}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v10
    :try_end_b7
    .catchall {:try_start_97 .. :try_end_b7} :catchall_be

    .line 420
    if-eqz v8, :cond_bc

    :try_start_b9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_ee
    .catch Ljava/security/cert/CRLException; {:try_start_b9 .. :try_end_bc} :catch_ee
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_10e

    .line 412
    .end local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :cond_bc
    monitor-exit p0

    return-object v10

    .line 396
    .end local v9    # "hconn":Ljava/net/HttpURLConnection;
    .restart local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :catchall_be
    move-exception v9

    goto :goto_e3

    .line 416
    :cond_c0
    :try_start_c0
    sget-object v9, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;
    :try_end_c2
    .catchall {:try_start_c0 .. :try_end_c2} :catchall_e2

    if-eqz v9, :cond_cb

    .line 417
    :try_start_c4
    sget-object v9, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string v10, "Downloading new CRL..."

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_be

    .line 419
    :cond_cb
    :try_start_cb
    iget-object v9, p0, Lsun/security/provider/certpath/URICertStore;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v9, v8}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509CRL;

    iput-object v9, p0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;
    :try_end_d5
    .catchall {:try_start_cb .. :try_end_d5} :catchall_e2

    .line 420
    if-eqz v8, :cond_da

    :try_start_d7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 421
    .end local v8    # "in":Ljava/io/InputStream;
    .end local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :cond_da
    iget-object v8, p0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    invoke-static {v8, p1}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v1
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_e0} :catch_ee
    .catch Ljava/security/cert/CRLException; {:try_start_d7 .. :try_end_e0} :catch_ee
    .catchall {:try_start_d7 .. :try_end_e0} :catchall_10e

    monitor-exit p0

    return-object v1

    .line 396
    .restart local v8    # "in":Ljava/io/InputStream;
    :catchall_e2
    move-exception v9

    :goto_e3
    if-eqz v8, :cond_ed

    :try_start_e5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_e9

    goto :goto_ed

    :catchall_e9
    move-exception v10

    :try_start_ea
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "time":J
    .end local p1    # "selector":Ljava/security/cert/CRLSelector;
    :cond_ed
    :goto_ed
    throw v9
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ee} :catch_ee
    .catch Ljava/security/cert/CRLException; {:try_start_ea .. :try_end_ee} :catch_ee
    .catchall {:try_start_ea .. :try_end_ee} :catchall_10e

    .line 422
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v6    # "oldLastModified":J
    .end local v8    # "in":Ljava/io/InputStream;
    .restart local v2    # "time":J
    .restart local p1    # "selector":Ljava/security/cert/CRLSelector;
    :catch_ee
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    :try_start_ef
    sget-object v6, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_fd

    .line 424
    sget-object v6, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string v7, "Exception fetching CRL:"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    :cond_fd
    iput-wide v4, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 429
    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    .line 430
    new-instance v1, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    const-string v4, "URI"

    new-instance v5, Ljava/security/cert/CertStoreException;

    invoke-direct {v5, v0}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v1, v4, v5}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;-><init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V

    throw v1

    .line 360
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "time":J
    .end local p1    # "selector":Ljava/security/cert/CRLSelector;
    :catchall_10e
    move-exception p1

    monitor-exit p0
    :try_end_110
    .catchall {:try_start_ef .. :try_end_110} :catchall_10e

    throw p1
.end method

.method public declared-synchronized whitelist test-api engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .registers 13
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 251
    :try_start_1
    iget-boolean v0, p0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    if-eqz v0, :cond_24

    .line 252
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CertSelector;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_fc

    .line 254
    .local v0, "xsel":Ljava/security/cert/X509CertSelector;
    :try_start_8
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    iget-object v3, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lsun/security/provider/certpath/CertStoreHelper;->wrap(Ljava/security/cert/X509CertSelector;Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)Ljava/security/cert/X509CertSelector;

    move-result-object v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14} :catch_1d
    .catchall {:try_start_8 .. :try_end_14} :catchall_fc

    .line 257
    .end local v0    # "xsel":Ljava/security/cert/X509CertSelector;
    .local v1, "xsel":Ljava/security/cert/X509CertSelector;
    nop

    .line 261
    :try_start_15
    iget-object v0, p0, Lsun/security/provider/certpath/URICertStore;->ldapCertStore:Ljava/security/cert/CertStore;

    .line 262
    invoke-virtual {v0, v1}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_fc

    .line 261
    monitor-exit p0

    return-object v0

    .line 255
    .end local v1    # "xsel":Ljava/security/cert/X509CertSelector;
    .end local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    .restart local v0    # "xsel":Ljava/security/cert/X509CertSelector;
    :catch_1d
    move-exception v1

    .line 256
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_1e
    new-instance v2, Ljava/security/cert/CertStoreException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 268
    .end local v0    # "xsel":Ljava/security/cert/X509CertSelector;
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 269
    .local v0, "time":J
    iget-wide v2, p0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gez v2, :cond_45

    .line 270
    sget-object v2, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_3d

    .line 271
    sget-object v2, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string v3, "Returning certificates from cache"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 273
    :cond_3d
    iget-object v2, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    invoke-static {v2, p1}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v2
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_fc

    monitor-exit p0

    return-object v2

    .line 275
    :cond_45
    :try_start_45
    iput-wide v0, p0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_fc

    .line 277
    const-wide/16 v2, 0x0

    :try_start_49
    iget-object v4, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 278
    .local v4, "connection":Ljava/net/URLConnection;
    iget-wide v5, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    cmp-long v5, v5, v2

    if-eqz v5, :cond_5e

    .line 279
    iget-wide v5, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 281
    :cond_5e
    iget-wide v5, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 282
    .local v5, "oldLastModified":J
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_64} :catch_e1
    .catch Ljava/security/cert/CertificateException; {:try_start_49 .. :try_end_64} :catch_e1
    .catchall {:try_start_49 .. :try_end_64} :catchall_fc

    .line 283
    .local v7, "in":Ljava/io/InputStream;
    :try_start_64
    invoke-virtual {v4}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v8

    iput-wide v8, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_d5

    .line 284
    cmp-long v8, v5, v2

    if-eqz v8, :cond_b5

    .line 285
    :try_start_6e
    iget-wide v8, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    cmp-long v8, v5, v8

    if-nez v8, :cond_8c

    .line 286
    sget-object v8, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_b3

    if-eqz v8, :cond_7f

    .line 287
    :try_start_78
    sget-object v8, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string v9, "Not modified, using cached copy"

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_d5

    .line 289
    :cond_7f
    :try_start_7f
    iget-object v8, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    invoke-static {v8, p1}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v8
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_b3

    .line 308
    if-eqz v7, :cond_8a

    :try_start_87
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_e1
    .catch Ljava/security/cert/CertificateException; {:try_start_87 .. :try_end_8a} :catch_e1
    .catchall {:try_start_87 .. :try_end_8a} :catchall_fc

    .line 289
    :cond_8a
    monitor-exit p0

    return-object v8

    .line 290
    .restart local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :cond_8c
    :try_start_8c
    instance-of v8, v4, Ljava/net/HttpURLConnection;

    if-eqz v8, :cond_b5

    .line 292
    move-object v8, v4

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 293
    .local v8, "hconn":Ljava/net/HttpURLConnection;
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0x130

    if-ne v9, v10, :cond_b5

    .line 295
    sget-object v9, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_a6

    .line 296
    sget-object v9, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string v10, "Not modified, using cached copy"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 298
    :cond_a6
    iget-object v9, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    invoke-static {v9, p1}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v9
    :try_end_ac
    .catchall {:try_start_8c .. :try_end_ac} :catchall_b3

    .line 308
    if-eqz v7, :cond_b1

    :try_start_ae
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_e1
    .catch Ljava/security/cert/CertificateException; {:try_start_ae .. :try_end_b1} :catch_e1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_fc

    .line 298
    .end local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :cond_b1
    monitor-exit p0

    return-object v9

    .line 282
    .end local v8    # "hconn":Ljava/net/HttpURLConnection;
    .restart local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :catchall_b3
    move-exception v8

    goto :goto_d6

    .line 302
    :cond_b5
    :try_start_b5
    sget-object v8, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;
    :try_end_b7
    .catchall {:try_start_b5 .. :try_end_b7} :catchall_d5

    if-eqz v8, :cond_c0

    .line 303
    :try_start_b9
    sget-object v8, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string v9, "Downloading new certificates..."

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_b9 .. :try_end_c0} :catchall_b3

    .line 306
    :cond_c0
    :try_start_c0
    iget-object v8, p0, Lsun/security/provider/certpath/URICertStore;->factory:Ljava/security/cert/CertificateFactory;

    .line 307
    invoke-virtual {v8, v7}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;
    :try_end_c8
    .catchall {:try_start_c0 .. :try_end_c8} :catchall_d5

    .line 308
    if-eqz v7, :cond_cd

    :try_start_ca
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 309
    .end local v7    # "in":Ljava/io/InputStream;
    .end local p0    # "this":Lsun/security/provider/certpath/URICertStore;
    :cond_cd
    iget-object v7, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    invoke-static {v7, p1}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v2
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_d3} :catch_e1
    .catch Ljava/security/cert/CertificateException; {:try_start_ca .. :try_end_d3} :catch_e1
    .catchall {:try_start_ca .. :try_end_d3} :catchall_fc

    monitor-exit p0

    return-object v2

    .line 282
    .restart local v7    # "in":Ljava/io/InputStream;
    :catchall_d5
    move-exception v8

    :goto_d6
    if-eqz v7, :cond_e0

    :try_start_d8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_dc

    goto :goto_e0

    :catchall_dc
    move-exception v9

    :try_start_dd
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "time":J
    .end local p1    # "selector":Ljava/security/cert/CertSelector;
    :cond_e0
    :goto_e0
    throw v8
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e1} :catch_e1
    .catch Ljava/security/cert/CertificateException; {:try_start_dd .. :try_end_e1} :catch_e1
    .catchall {:try_start_dd .. :try_end_e1} :catchall_fc

    .line 310
    .end local v4    # "connection":Ljava/net/URLConnection;
    .end local v5    # "oldLastModified":J
    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v0    # "time":J
    .restart local p1    # "selector":Ljava/security/cert/CertSelector;
    :catch_e1
    move-exception v4

    .line 311
    .local v4, "e":Ljava/lang/Exception;
    :try_start_e2
    sget-object v5, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_f0

    .line 312
    sget-object v5, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string v6, "Exception fetching certificates:"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 317
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_f0
    iput-wide v2, p0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 318
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    .line 319
    iget-object v2, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;
    :try_end_fa
    .catchall {:try_start_e2 .. :try_end_fa} :catchall_fc

    monitor-exit p0

    return-object v2

    .line 250
    .end local v0    # "time":J
    .end local p1    # "selector":Ljava/security/cert/CertSelector;
    :catchall_fc
    move-exception p1

    :try_start_fd
    monitor-exit p0
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    throw p1
.end method
