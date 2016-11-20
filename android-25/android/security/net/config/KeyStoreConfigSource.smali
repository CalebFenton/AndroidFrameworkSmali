.class Landroid/security/net/config/KeyStoreConfigSource;
.super Ljava/lang/Object;
.source "KeyStoreConfigSource.java"

# interfaces
.implements Landroid/security/net/config/ConfigSource;


# instance fields
.field private final mConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 4
    .param p1, "ks"    # Ljava/security/KeyStore;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    new-instance v0, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@5
    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;-><init>()V

    #@8
    .line 35
    new-instance v1, Landroid/security/net/config/CertificatesEntryRef;

    #@a
    new-instance v2, Landroid/security/net/config/KeyStoreCertificateSource;

    #@c
    invoke-direct {v2, p1}, Landroid/security/net/config/KeyStoreCertificateSource;-><init>(Ljava/security/KeyStore;)V

    #@f
    const/4 v3, 0x0

    #@10
    invoke-direct {v1, v2, v3}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;Z)V

    #@13
    .line 32
    invoke-virtual {v0, v1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->build()Landroid/security/net/config/NetworkSecurityConfig;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/security/net/config/KeyStoreConfigSource;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    #@1d
    .line 31
    return-void
.end method


# virtual methods
.method public getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .locals 1

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Landroid/security/net/config/KeyStoreConfigSource;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    #@2
    return-object v0
.end method

.method public getPerDomainConfigs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 41
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
