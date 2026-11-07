.class Ljava/security/cert/CertPathHelperImpl;
.super Lsun/security/provider/certpath/CertPathHelper;
.source "CertPathHelperImpl.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lsun/security/provider/certpath/CertPathHelper;-><init>()V

    .line 44
    return-void
.end method

.method static declared-synchronized blacklist initialize()V
    .registers 2

    const-class v0, Ljava/security/cert/CertPathHelperImpl;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v1, Lsun/security/provider/certpath/CertPathHelper;->instance:Lsun/security/provider/certpath/CertPathHelper;

    if-nez v1, :cond_e

    .line 54
    new-instance v1, Ljava/security/cert/CertPathHelperImpl;

    invoke-direct {v1}, Ljava/security/cert/CertPathHelperImpl;-><init>()V

    sput-object v1, Lsun/security/provider/certpath/CertPathHelper;->instance:Lsun/security/provider/certpath/CertPathHelper;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 56
    :cond_e
    monitor-exit v0

    return-void

    .line 52
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method


# virtual methods
.method protected blacklist implSetDateAndTime(Ljava/security/cert/X509CRLSelector;Ljava/util/Date;J)V
    .registers 5
    .param p1, "sel"    # Ljava/security/cert/X509CRLSelector;
    .param p2, "date"    # Ljava/util/Date;
    .param p3, "skew"    # J

    .line 64
    invoke-virtual {p1, p2, p3, p4}, Ljava/security/cert/X509CRLSelector;->setDateAndTime(Ljava/util/Date;J)V

    .line 65
    return-void
.end method

.method protected blacklist implSetPathToNames(Ljava/security/cert/X509CertSelector;Ljava/util/Set;)V
    .registers 3
    .param p1, "sel"    # Ljava/security/cert/X509CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CertSelector;",
            "Ljava/util/Set<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p2, "names":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/GeneralNameInterface;>;"
    invoke-virtual {p1, p2}, Ljava/security/cert/X509CertSelector;->setPathToNamesInternal(Ljava/util/Set;)V

    .line 61
    return-void
.end method
