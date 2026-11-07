.class public Landroid/security/identity/CredentialDataRequest;
.super Ljava/lang/Object;
.source "CredentialDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/CredentialDataRequest$Builder;
    }
.end annotation


# instance fields
.field blacklist mAllowUsingExhaustedKeys:Z

.field blacklist mAllowUsingExpiredKeys:Z

.field blacklist mDeviceSignedEntriesToRequest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mIncrementUseCount:Z

.field blacklist mIssuerSignedEntriesToRequest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mReaderSignature:[B

.field blacklist mRequestMessage:[B


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/identity/CredentialDataRequest;->mDeviceSignedEntriesToRequest:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/identity/CredentialDataRequest;->mIssuerSignedEntriesToRequest:Ljava/util/Map;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/identity/CredentialDataRequest;->mAllowUsingExhaustedKeys:Z

    .line 112
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/security/identity/CredentialDataRequest;->mAllowUsingExpiredKeys:Z

    .line 113
    iput-boolean v0, p0, Landroid/security/identity/CredentialDataRequest;->mIncrementUseCount:Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/identity/CredentialDataRequest;->mRequestMessage:[B

    .line 115
    iput-object v0, p0, Landroid/security/identity/CredentialDataRequest;->mReaderSignature:[B

    .line 30
    return-void
.end method


# virtual methods
.method public whitelist getDeviceSignedEntriesToRequest()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest;->mDeviceSignedEntriesToRequest:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getIssuerSignedEntriesToRequest()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest;->mIssuerSignedEntriesToRequest:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getReaderSignature()[B
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest;->mReaderSignature:[B

    return-object v0
.end method

.method public whitelist getRequestMessage()[B
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest;->mRequestMessage:[B

    return-object v0
.end method

.method public whitelist isAllowUsingExhaustedKeys()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Landroid/security/identity/CredentialDataRequest;->mAllowUsingExhaustedKeys:Z

    return v0
.end method

.method public whitelist isAllowUsingExpiredKeys()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Landroid/security/identity/CredentialDataRequest;->mAllowUsingExpiredKeys:Z

    return v0
.end method

.method public whitelist isIncrementUseCount()Z
    .registers 2

    .line 82
    iget-boolean v0, p0, Landroid/security/identity/CredentialDataRequest;->mIncrementUseCount:Z

    return v0
.end method
