.class public Lcom/android/org/conscrypt/PinListEntry;
.super Ljava/lang/Object;
.source "PinListEntry.java"


# instance fields
.field private final certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private final cn:Ljava/lang/String;

.field private final enforcing:Z

.field private final pinnedFingerprints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/org/conscrypt/TrustedCertificateStore;)V
    .locals 3
    .param p1, "entry"    # Ljava/lang/String;
    .param p2, "store"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/PinEntryException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    new-instance v1, Ljava/util/HashSet;

    #@5
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/org/conscrypt/PinListEntry;->pinnedFingerprints:Ljava/util/Set;

    #@a
    .line 57
    if-nez p1, :cond_0

    #@c
    .line 58
    new-instance v1, Ljava/lang/NullPointerException;

    #@e
    const-string/jumbo v2, "entry == null"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 60
    :cond_0
    iput-object p2, p0, Lcom/android/org/conscrypt/PinListEntry;->certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@17
    .line 65
    const-string/jumbo v1, "[=,|]"

    #@1a
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 67
    .local v0, "values":[Ljava/lang/String;
    array-length v1, v0

    #@1f
    const/4 v2, 0x3

    #@20
    if-ge v1, v2, :cond_1

    #@22
    .line 68
    new-instance v1, Lcom/android/org/conscrypt/PinEntryException;

    #@24
    const-string/jumbo v2, "Received malformed pin entry"

    #@27
    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/PinEntryException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 71
    :cond_1
    const/4 v1, 0x0

    #@2c
    aget-object v1, v0, v1

    #@2e
    iput-object v1, p0, Lcom/android/org/conscrypt/PinListEntry;->cn:Ljava/lang/String;

    #@30
    .line 72
    const/4 v1, 0x1

    #@31
    aget-object v1, v0, v1

    #@33
    invoke-static {v1}, Lcom/android/org/conscrypt/PinListEntry;->enforcementValueFromString(Ljava/lang/String;)Z

    #@36
    move-result v1

    #@37
    iput-boolean v1, p0, Lcom/android/org/conscrypt/PinListEntry;->enforcing:Z

    #@39
    .line 74
    array-length v1, v0

    #@3a
    const/4 v2, 0x2

    #@3b
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@3e
    move-result-object v1

    #@3f
    check-cast v1, [Ljava/lang/String;

    #@41
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/PinListEntry;->addPins([Ljava/lang/String;)V

    #@44
    .line 56
    return-void
.end method

.method private addPins([Ljava/lang/String;)V
    .locals 3
    .param p1, "pins"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 122
    const/4 v1, 0x0

    #@1
    array-length v2, p1

    #@2
    :goto_0
    if-ge v1, v2, :cond_0

    #@4
    aget-object v0, p1, v1

    #@6
    .line 123
    .local v0, "pin":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/conscrypt/PinListEntry;->validatePin(Ljava/lang/String;)V

    #@9
    .line 122
    add-int/lit8 v1, v1, 0x1

    #@b
    goto :goto_0

    #@c
    .line 125
    .end local v0    # "pin":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/PinListEntry;->pinnedFingerprints:Ljava/util/Set;

    #@e
    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@11
    .line 121
    return-void
.end method

.method private chainContainsUserCert(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v3, 0x0

    #@1
    .line 142
    iget-object v2, p0, Lcom/android/org/conscrypt/PinListEntry;->certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 143
    return v3

    #@6
    .line 145
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "cert$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_2

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@16
    .line 146
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    iget-object v2, p0, Lcom/android/org/conscrypt/PinListEntry;->certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@18
    invoke-virtual {v2, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 147
    const/4 v2, 0x1

    #@1f
    return v2

    #@20
    .line 150
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_2
    return v3
.end method

.method private static enforcementValueFromString(Ljava/lang/String;)Z
    .locals 2
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/PinEntryException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    const-string/jumbo v0, "true"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 79
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 80
    :cond_0
    const-string/jumbo v0, "false"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 81
    const/4 v0, 0x0

    #@15
    return v0

    #@16
    .line 83
    :cond_1
    new-instance v0, Lcom/android/org/conscrypt/PinEntryException;

    #@18
    const-string/jumbo v1, "Enforcement status is not a valid value"

    #@1b
    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/PinEntryException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0
.end method

.method private static getFingerprint(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 5
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 112
    :try_start_0
    const-string/jumbo v4, "SHA512"

    #@3
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v0

    #@7
    .line 113
    .local v0, "dgst":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@a
    move-result-object v4

    #@b
    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    #@e
    move-result-object v2

    #@f
    .line 114
    .local v2, "encoded":[B
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    #@12
    move-result-object v3

    #@13
    .line 115
    .local v3, "fingerprint":[B
    const/4 v4, 0x0

    #@14
    invoke-static {v3, v4}, Ljava/lang/IntegralToString;->bytesToHexString([BZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v4

    #@18
    return-object v4

    #@19
    .line 116
    .end local v0    # "dgst":Ljava/security/MessageDigest;
    .end local v2    # "encoded":[B
    .end local v3    # "fingerprint":[B
    :catch_0
    move-exception v1

    #@1a
    .line 117
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/AssertionError;

    #@1c
    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1f
    throw v4
.end method

.method private logPinFailure(Ljava/util/List;Z)V
    .locals 2
    .param p2, "containsUserCert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 154
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lcom/android/org/conscrypt/PinListEntry;->cn:Ljava/lang/String;

    #@2
    iget-boolean v1, p0, Lcom/android/org/conscrypt/PinListEntry;->enforcing:Z

    #@4
    invoke-static {v0, p2, v1, p1}, Lcom/android/org/conscrypt/PinFailureLogger;->log(Ljava/lang/String;ZZLjava/util/List;)V

    #@7
    .line 153
    return-void
.end method

.method private static validatePin(Ljava/lang/String;)V
    .locals 3
    .param p0, "pin"    # Ljava/lang/String;

    #@0
    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    const/16 v2, 0x80

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "Pin is not a valid length"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 135
    :cond_0
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    #@13
    const/16 v2, 0x10

    #@15
    invoke-direct {v1, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 128
    return-void

    #@19
    .line 136
    :catch_0
    move-exception v0

    #@1a
    .line 137
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v2, "Pin is not a valid hex string"

    #@1f
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@22
    throw v1
.end method


# virtual methods
.method public getCommonName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/org/conscrypt/PinListEntry;->cn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEnforcing()Z
    .locals 1

    #@0
    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/org/conscrypt/PinListEntry;->enforcing:Z

    #@2
    return v0
.end method

.method public isChainValid(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v4, 0x1

    #@1
    .line 97
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/PinListEntry;->chainContainsUserCert(Ljava/util/List;)Z

    #@4
    move-result v2

    #@5
    .line 98
    .local v2, "containsUserCert":Z
    if-nez v2, :cond_1

    #@7
    .line 99
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "cert$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@17
    .line 100
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/conscrypt/PinListEntry;->getFingerprint(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 101
    .local v3, "fingerprint":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/org/conscrypt/PinListEntry;->pinnedFingerprints:Ljava/util/Set;

    #@1d
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_0

    #@23
    .line 102
    return v4

    #@24
    .line 106
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "cert$iterator":Ljava/util/Iterator;
    .end local v3    # "fingerprint":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/org/conscrypt/PinListEntry;->logPinFailure(Ljava/util/List;Z)V

    #@27
    .line 107
    iget-boolean v5, p0, Lcom/android/org/conscrypt/PinListEntry;->enforcing:Z

    #@29
    if-eqz v5, :cond_2

    #@2b
    .end local v2    # "containsUserCert":Z
    :goto_0
    return v2

    #@2c
    .restart local v2    # "containsUserCert":Z
    :cond_2
    move v2, v4

    #@2d
    goto :goto_0
.end method
