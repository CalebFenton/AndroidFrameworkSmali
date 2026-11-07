.class public Landroid/security/keystore2/AndroidKeyStoreKey;
.super Ljava/lang/Object;
.source "AndroidKeyStoreKey.java"

# interfaces
.implements Ljava/security/Key;


# instance fields
.field private final blacklist mAlgorithm:Ljava/lang/String;

.field private final blacklist mAuthorizations:[Landroid/system/keystore2/Authorization;

.field private final blacklist mDescriptor:Landroid/system/keystore2/KeyDescriptor;

.field private final blacklist mKeyId:J

.field private final blacklist mSecurityLevel:Landroid/security/KeyStoreSecurityLevel;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .registers 7
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "keyId"    # J
    .param p4, "authorizations"    # [Landroid/system/keystore2/Authorization;
    .param p5, "algorithm"    # Ljava/lang/String;
    .param p6, "securityLevel"    # Landroid/security/KeyStoreSecurityLevel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mDescriptor:Landroid/system/keystore2/KeyDescriptor;

    .line 61
    iput-wide p2, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    .line 62
    iput-object p4, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mAuthorizations:[Landroid/system/keystore2/Authorization;

    .line 63
    iput-object p5, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    .line 64
    iput-object p6, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mSecurityLevel:Landroid/security/KeyStoreSecurityLevel;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 119
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 120
    return v0

    .line 122
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 123
    return v1

    .line 125
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 126
    return v1

    .line 128
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 129
    .local v2, "other":Landroid/security/keystore2/AndroidKeyStoreKey;
    iget-wide v3, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    iget-wide v5, v2, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    return v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getAuthorizations()[Landroid/system/keystore2/Authorization;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mAuthorizations:[Landroid/system/keystore2/Authorization;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;
    .registers 4

    .line 72
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 73
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 74
    const/4 v1, 0x4

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 75
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 76
    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 77
    return-object v0
.end method

.method blacklist getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mSecurityLevel:Landroid/security/KeyStoreSecurityLevel;

    return-object v0
.end method

.method blacklist getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mDescriptor:Landroid/system/keystore2/KeyDescriptor;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 108
    const/16 v0, 0x1f

    .line 109
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 111
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 112
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-wide v3, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v1, v3

    .line 113
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    const-wide/16 v5, -0x1

    and-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 114
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method
