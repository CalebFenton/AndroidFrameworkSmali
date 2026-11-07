.class public abstract Lsun/security/provider/certpath/CertPathHelper;
.super Ljava/lang/Object;
.source "CertPathHelper.java"


# static fields
.field protected static blacklist instance:Lsun/security/provider/certpath/CertPathHelper;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static blacklist setDateAndTime(Ljava/security/cert/X509CRLSelector;Ljava/util/Date;J)V
    .registers 5
    .param p0, "sel"    # Ljava/security/cert/X509CRLSelector;
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "skew"    # J

    .line 68
    sget-object v0, Lsun/security/provider/certpath/CertPathHelper;->instance:Lsun/security/provider/certpath/CertPathHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/security/provider/certpath/CertPathHelper;->implSetDateAndTime(Ljava/security/cert/X509CRLSelector;Ljava/util/Date;J)V

    .line 69
    return-void
.end method

.method static blacklist setPathToNames(Ljava/security/cert/X509CertSelector;Ljava/util/Set;)V
    .registers 3
    .param p0, "sel"    # Ljava/security/cert/X509CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CertSelector;",
            "Ljava/util/Set<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "names":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/GeneralNameInterface;>;"
    sget-object v0, Lsun/security/provider/certpath/CertPathHelper;->instance:Lsun/security/provider/certpath/CertPathHelper;

    invoke-virtual {v0, p0, p1}, Lsun/security/provider/certpath/CertPathHelper;->implSetPathToNames(Ljava/security/cert/X509CertSelector;Ljava/util/Set;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected abstract blacklist implSetDateAndTime(Ljava/security/cert/X509CRLSelector;Ljava/util/Date;J)V
.end method

.method protected abstract blacklist implSetPathToNames(Ljava/security/cert/X509CertSelector;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CertSelector;",
            "Ljava/util/Set<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;)V"
        }
    .end annotation
.end method
