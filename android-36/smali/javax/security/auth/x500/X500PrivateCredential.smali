.class public final Ljavax/security/auth/x500/X500PrivateCredential;
.super Ljava/lang/Object;
.source "X500PrivateCredential.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field private blacklist alias:Ljava/lang/String;

.field private blacklist cert:Ljava/security/cert/X509Certificate;

.field private blacklist key:Ljava/security/PrivateKey;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "key"    # Ljava/security/PrivateKey;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 60
    iput-object p1, p0, Ljavax/security/auth/x500/X500PrivateCredential;->cert:Ljava/security/cert/X509Certificate;

    .line 61
    iput-object p2, p0, Ljavax/security/auth/x500/X500PrivateCredential;->key:Ljava/security/PrivateKey;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/security/auth/x500/X500PrivateCredential;->alias:Ljava/lang/String;

    .line 63
    return-void

    .line 59
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .registers 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "alias"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    .line 80
    iput-object p1, p0, Ljavax/security/auth/x500/X500PrivateCredential;->cert:Ljava/security/cert/X509Certificate;

    .line 81
    iput-object p2, p0, Ljavax/security/auth/x500/X500PrivateCredential;->key:Ljava/security/PrivateKey;

    .line 82
    iput-object p3, p0, Ljavax/security/auth/x500/X500PrivateCredential;->alias:Ljava/lang/String;

    .line 83
    return-void

    .line 79
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api destroy()V
    .registers 2

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/security/auth/x500/X500PrivateCredential;->cert:Ljava/security/cert/X509Certificate;

    .line 121
    iput-object v0, p0, Ljavax/security/auth/x500/X500PrivateCredential;->key:Ljava/security/PrivateKey;

    .line 122
    iput-object v0, p0, Ljavax/security/auth/x500/X500PrivateCredential;->alias:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public whitelist test-api getAlias()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Ljavax/security/auth/x500/X500PrivateCredential;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 92
    iget-object v0, p0, Ljavax/security/auth/x500/X500PrivateCredential;->cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public whitelist test-api getPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .line 101
    iget-object v0, p0, Ljavax/security/auth/x500/X500PrivateCredential;->key:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public whitelist test-api isDestroyed()Z
    .registers 2

    .line 132
    iget-object v0, p0, Ljavax/security/auth/x500/X500PrivateCredential;->cert:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_e

    iget-object v0, p0, Ljavax/security/auth/x500/X500PrivateCredential;->key:Ljava/security/PrivateKey;

    if-nez v0, :cond_e

    iget-object v0, p0, Ljavax/security/auth/x500/X500PrivateCredential;->alias:Ljava/lang/String;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
