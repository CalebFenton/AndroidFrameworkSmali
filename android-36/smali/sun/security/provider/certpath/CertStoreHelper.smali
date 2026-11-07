.class public abstract Lsun/security/provider/certpath/CertStoreHelper;
.super Ljava/lang/Object;
.source "CertStoreHelper.java"


# static fields
.field private static final blacklist NUM_TYPES:I = 0x2

.field private static blacklist cache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache<",
            "Ljava/lang/String;",
            "Lsun/security/provider/certpath/CertStoreHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist classMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetcache()Lsun/security/util/Cache;
    .registers 1

    sget-object v0, Lsun/security/provider/certpath/CertStoreHelper;->cache:Lsun/security/util/Cache;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 54
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lsun/security/provider/certpath/CertStoreHelper;->classMap:Ljava/util/Map;

    .line 56
    sget-object v0, Lsun/security/provider/certpath/CertStoreHelper;->classMap:Ljava/util/Map;

    const-string v2, "LDAP"

    const-string v3, "sun.security.provider.certpath.ldap.LDAPCertStoreHelper"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lsun/security/provider/certpath/CertStoreHelper;->classMap:Ljava/util/Map;

    const-string v2, "SSLServer"

    const-string v3, "sun.security.provider.certpath.ssl.SSLServerCertStoreHelper"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    nop

    .line 64
    invoke-static {v1}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/CertStoreHelper;->cache:Lsun/security/util/Cache;

    .line 63
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/String;)Lsun/security/provider/certpath/CertStoreHelper;
    .registers 7
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 69
    sget-object v0, Lsun/security/provider/certpath/CertStoreHelper;->cache:Lsun/security/util/Cache;

    invoke-virtual {v0, p0}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/CertStoreHelper;

    .line 70
    .local v0, "helper":Lsun/security/provider/certpath/CertStoreHelper;
    if-eqz v0, :cond_b

    .line 71
    return-object v0

    .line 73
    :cond_b
    sget-object v1, Lsun/security/provider/certpath/CertStoreHelper;->classMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "cl":Ljava/lang/String;
    const-string v2, " not available"

    if-eqz v1, :cond_3f

    .line 78
    :try_start_17
    new-instance v3, Lsun/security/provider/certpath/CertStoreHelper$1;

    invoke-direct {v3, v1, p0}, Lsun/security/provider/certpath/CertStoreHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/provider/certpath/CertStoreHelper;
    :try_end_22
    .catch Ljava/security/PrivilegedActionException; {:try_start_17 .. :try_end_22} :catch_23

    .line 93
    .end local v0    # "helper":Lsun/security/provider/certpath/CertStoreHelper;
    .local v3, "helper":Lsun/security/provider/certpath/CertStoreHelper;
    return-object v3

    .line 94
    .end local v3    # "helper":Lsun/security/provider/certpath/CertStoreHelper;
    .restart local v0    # "helper":Lsun/security/provider/certpath/CertStoreHelper;
    :catch_23
    move-exception v3

    .line 95
    .local v3, "e":Ljava/security/PrivilegedActionException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {v3}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 75
    .end local v3    # "e":Ljava/security/PrivilegedActionException;
    :cond_3f
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static blacklist isCausedByNetworkIssue(Ljava/lang/String;Ljava/security/cert/CertStoreException;)Z
    .registers 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "cse"    # Ljava/security/cert/CertStoreException;

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_46

    :cond_9
    goto :goto_28

    :sswitch_a
    const-string v0, "SSLServer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_29

    :sswitch_14
    const-string v0, "LDAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_29

    :sswitch_1e
    const-string v0, "URI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_29

    :goto_28
    const/4 v0, -0x1

    :goto_29
    packed-switch v0, :pswitch_data_54

    .line 115
    return v2

    .line 111
    :pswitch_2d
    invoke-virtual {p1}, Ljava/security/cert/CertStoreException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 112
    .local v0, "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_38

    instance-of v3, v0, Ljava/io/IOException;

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v1, v2

    :goto_39
    return v1

    .line 105
    .end local v0    # "t":Ljava/lang/Throwable;
    :pswitch_3a
    :try_start_3a
    invoke-static {p0}, Lsun/security/provider/certpath/CertStoreHelper;->getInstance(Ljava/lang/String;)Lsun/security/provider/certpath/CertStoreHelper;

    move-result-object v0

    .line 106
    .local v0, "csh":Lsun/security/provider/certpath/CertStoreHelper;
    invoke-virtual {v0, p1}, Lsun/security/provider/certpath/CertStoreHelper;->isCausedByNetworkIssue(Ljava/security/cert/CertStoreException;)Z

    move-result v1
    :try_end_42
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3a .. :try_end_42} :catch_43

    return v1

    .line 107
    .end local v0    # "csh":Lsun/security/provider/certpath/CertStoreHelper;
    :catch_43
    move-exception v0

    .line 108
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    return v2

    nop

    :sswitch_data_46
    .sparse-switch
        0x1494c -> :sswitch_1e
        0x2393a7 -> :sswitch_14
        0x7f23c4f -> :sswitch_a
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_3a
        :pswitch_2d
    .end packed-switch
.end method


# virtual methods
.method public abstract blacklist getCertStore(Ljava/net/URI;)Ljava/security/cert/CertStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method public abstract blacklist isCausedByNetworkIssue(Ljava/security/cert/CertStoreException;)Z
.end method

.method public abstract blacklist wrap(Ljava/security/cert/X509CRLSelector;Ljava/util/Collection;Ljava/lang/String;)Ljava/security/cert/X509CRLSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRLSelector;",
            "Ljava/util/Collection<",
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

.method public abstract blacklist wrap(Ljava/security/cert/X509CertSelector;Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)Ljava/security/cert/X509CertSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
