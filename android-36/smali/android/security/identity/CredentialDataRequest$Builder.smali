.class public final Landroid/security/identity/CredentialDataRequest$Builder;
.super Ljava/lang/Object;
.source "CredentialDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/CredentialDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mData:Landroid/security/identity/CredentialDataRequest;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Landroid/security/identity/CredentialDataRequest;

    invoke-direct {v0}, Landroid/security/identity/CredentialDataRequest;-><init>()V

    iput-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    .line 128
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/security/identity/CredentialDataRequest;
    .registers 2

    .line 251
    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    return-object v0
.end method

.method public whitelist setAllowUsingExhaustedKeys(Z)Landroid/security/identity/CredentialDataRequest$Builder;
    .registers 3
    .param p1, "allowUsingExhaustedKeys"    # Z

    .line 171
    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-boolean p1, v0, Landroid/security/identity/CredentialDataRequest;->mAllowUsingExhaustedKeys:Z

    .line 172
    return-object p0
.end method

.method public whitelist setAllowUsingExpiredKeys(Z)Landroid/security/identity/CredentialDataRequest$Builder;
    .registers 3
    .param p1, "allowUsingExpiredKeys"    # Z

    .line 194
    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-boolean p1, v0, Landroid/security/identity/CredentialDataRequest;->mAllowUsingExpiredKeys:Z

    .line 195
    return-object p0
.end method

.method public whitelist setDeviceSignedEntriesToRequest(Ljava/util/Map;)Landroid/security/identity/CredentialDataRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/security/identity/CredentialDataRequest$Builder;"
        }
    .end annotation

    .line 137
    .local p1, "entriesToRequest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-object p1, v0, Landroid/security/identity/CredentialDataRequest;->mDeviceSignedEntriesToRequest:Ljava/util/Map;

    .line 138
    return-object p0
.end method

.method public whitelist setIncrementUseCount(Z)Landroid/security/identity/CredentialDataRequest$Builder;
    .registers 3
    .param p1, "incrementUseCount"    # Z

    .line 213
    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-boolean p1, v0, Landroid/security/identity/CredentialDataRequest;->mIncrementUseCount:Z

    .line 214
    return-object p0
.end method

.method public whitelist setIssuerSignedEntriesToRequest(Ljava/util/Map;)Landroid/security/identity/CredentialDataRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/security/identity/CredentialDataRequest$Builder;"
        }
    .end annotation

    .line 149
    .local p1, "entriesToRequest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-object p1, v0, Landroid/security/identity/CredentialDataRequest;->mIssuerSignedEntriesToRequest:Ljava/util/Map;

    .line 150
    return-object p0
.end method

.method public whitelist setReaderSignature([B)Landroid/security/identity/CredentialDataRequest$Builder;
    .registers 3
    .param p1, "readerSignature"    # [B

    .line 241
    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-object p1, v0, Landroid/security/identity/CredentialDataRequest;->mReaderSignature:[B

    .line 242
    return-object p0
.end method

.method public whitelist setRequestMessage([B)Landroid/security/identity/CredentialDataRequest$Builder;
    .registers 3
    .param p1, "requestMessage"    # [B

    .line 227
    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-object p1, v0, Landroid/security/identity/CredentialDataRequest;->mRequestMessage:[B

    .line 228
    return-object p0
.end method
