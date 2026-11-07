.class public final Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "TrustedCertificateKeyStoreSpi.java"


# instance fields
.field private final blacklist store:Lcom/android/org/conscrypt/TrustedCertificateStore;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 36
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;->store:Lcom/android/org/conscrypt/TrustedCertificateStore;

    return-void
.end method


# virtual methods
.method public whitelist test-api engineAliases()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;->store:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->aliases()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;->store:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;->store:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3
    .param p1, "c"    # Ljava/security/cert/Certificate;

    .line 118
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;->store:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 48
    if-eqz p1, :cond_4

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;->store:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .line 40
    if-eqz p1, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 105
    if-eqz p1, :cond_4

    .line 108
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C

    .line 128
    if-nez p1, :cond_3

    .line 131
    return-void

    .line 129
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;

    .line 77
    if-nez p1, :cond_a

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;

    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api engineSize()I
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;->store:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->aliases()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
