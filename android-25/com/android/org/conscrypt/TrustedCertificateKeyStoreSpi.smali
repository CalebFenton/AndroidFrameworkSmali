.class public final Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "TrustedCertificateKeyStoreSpi.java"


# instance fields
.field private final store:Lcom/android/org/conscrypt/TrustedCertificateStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    #@3
    .line 33
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@5
    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;->store:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@a
    .line 31
    return-void
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;->store:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->aliases()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;->store:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;->store:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;->store:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 45
    if-nez p1, :cond_0

    #@3
    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "alias == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 48
    :cond_0
    return-object v0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;->store:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCreationDate(Ljava/lang/String;)Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 37
    if-nez p1, :cond_0

    #@3
    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "alias == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 40
    :cond_0
    return-object v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 102
    if-nez p1, :cond_0

    #@2
    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "alias == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 105
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C

    #@0
    .prologue
    .line 125
    if-eqz p1, :cond_0

    #@2
    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@4
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@7
    throw v0

    #@8
    .line 124
    :cond_0
    return-void
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 74
    if-nez p1, :cond_0

    #@2
    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "alias == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 77
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@d
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@10
    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public engineSize()I
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;->store:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->aliases()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C

    #@0
    .prologue
    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
