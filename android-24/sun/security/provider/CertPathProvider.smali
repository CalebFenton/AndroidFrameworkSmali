.class public final Lsun/security/provider/CertPathProvider;
.super Ljava/security/Provider;
.source "CertPathProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 38
    const-string/jumbo v0, "CertPathProvider"

    #@3
    const-string/jumbo v1, "Provider of CertPathBuilder and CertPathVerifier"

    #@6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@8
    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    #@b
    .line 41
    const-string/jumbo v0, "CertPathBuilder.PKIX"

    #@e
    const-string/jumbo v1, "sun.security.provider.certpath.SunCertPathBuilder"

    #@11
    invoke-virtual {p0, v0, v1}, Lsun/security/provider/CertPathProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 42
    const-string/jumbo v0, "CertPathBuilder.PKIX ImplementedIn"

    #@17
    const-string/jumbo v1, "Software"

    #@1a
    invoke-virtual {p0, v0, v1}, Lsun/security/provider/CertPathProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 43
    const-string/jumbo v0, "CertPathBuilder.PKIX ValidationAlgorithm"

    #@20
    const-string/jumbo v1, "RFC3280"

    #@23
    invoke-virtual {p0, v0, v1}, Lsun/security/provider/CertPathProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 46
    const-string/jumbo v0, "CertPathValidator.PKIX"

    #@29
    const-string/jumbo v1, "sun.security.provider.certpath.PKIXCertPathValidator"

    #@2c
    invoke-virtual {p0, v0, v1}, Lsun/security/provider/CertPathProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 47
    const-string/jumbo v0, "CertPathValidator.PKIX ImplementedIn"

    #@32
    const-string/jumbo v1, "Software"

    #@35
    invoke-virtual {p0, v0, v1}, Lsun/security/provider/CertPathProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 48
    const-string/jumbo v0, "CertPathValidator.PKIX ValidationAlgorithm"

    #@3b
    const-string/jumbo v1, "RFC3280"

    #@3e
    invoke-virtual {p0, v0, v1}, Lsun/security/provider/CertPathProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 37
    return-void
.end method
