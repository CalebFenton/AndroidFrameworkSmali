.class public final Landroid/credentials/CredentialOption$Builder;
.super Ljava/lang/Object;
.source "CredentialOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CredentialOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowedProviders:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCandidateQueryData:Landroid/os/Bundle;

.field private blacklist mCredentialRetrievalData:Landroid/os/Bundle;

.field private blacklist mIsSystemProviderRequired:Z

.field private blacklist mType:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "credentialRetrievalData"    # Landroid/os/Bundle;
    .param p3, "candidateQueryData"    # Landroid/os/Bundle;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/credentials/CredentialOption$Builder;->mIsSystemProviderRequired:Z

    .line 258
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/credentials/CredentialOption$Builder;->mAllowedProviders:Landroid/util/ArraySet;

    .line 272
    const-string/jumbo v0, "type must not be null, or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/CredentialOption$Builder;->mType:Ljava/lang/String;

    .line 274
    const-string v0, "credentialRetrievalData must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/credentials/CredentialOption$Builder;->mCredentialRetrievalData:Landroid/os/Bundle;

    .line 276
    const-string v0, "candidateQueryData must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/credentials/CredentialOption$Builder;->mCandidateQueryData:Landroid/os/Bundle;

    .line 278
    return-void
.end method


# virtual methods
.method public whitelist addAllowedProvider(Landroid/content/ComponentName;)Landroid/credentials/CredentialOption$Builder;
    .registers 4
    .param p1, "allowedProvider"    # Landroid/content/ComponentName;

    .line 308
    iget-object v0, p0, Landroid/credentials/CredentialOption$Builder;->mAllowedProviders:Landroid/util/ArraySet;

    const-string v1, "allowedProvider must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 310
    return-object p0
.end method

.method public whitelist build()Landroid/credentials/CredentialOption;
    .registers 8

    .line 343
    new-instance v0, Landroid/credentials/CredentialOption;

    iget-object v1, p0, Landroid/credentials/CredentialOption$Builder;->mType:Ljava/lang/String;

    iget-object v2, p0, Landroid/credentials/CredentialOption$Builder;->mCredentialRetrievalData:Landroid/os/Bundle;

    iget-object v3, p0, Landroid/credentials/CredentialOption$Builder;->mCandidateQueryData:Landroid/os/Bundle;

    iget-boolean v4, p0, Landroid/credentials/CredentialOption$Builder;->mIsSystemProviderRequired:Z

    iget-object v5, p0, Landroid/credentials/CredentialOption$Builder;->mAllowedProviders:Landroid/util/ArraySet;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/credentials/CredentialOption;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/util/ArraySet;Landroid/credentials/CredentialOption-IA;)V

    return-object v0
.end method

.method public whitelist setAllowedProviders(Ljava/util/Set;)Landroid/credentials/CredentialOption$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/credentials/CredentialOption$Builder;"
        }
    .end annotation

    .line 331
    .local p1, "allowedProviders":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v0, "allowedProviders"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 334
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/credentials/CredentialOption$Builder;->mAllowedProviders:Landroid/util/ArraySet;

    .line 335
    return-object p0
.end method

.method public whitelist setIsSystemProviderRequired(Z)Landroid/credentials/CredentialOption$Builder;
    .registers 2
    .param p1, "isSystemProviderRequired"    # Z

    .line 287
    iput-boolean p1, p0, Landroid/credentials/CredentialOption$Builder;->mIsSystemProviderRequired:Z

    .line 288
    return-object p0
.end method
