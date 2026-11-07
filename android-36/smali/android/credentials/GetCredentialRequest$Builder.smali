.class public final Landroid/credentials/GetCredentialRequest$Builder;
.super Ljava/lang/Object;
.source "GetCredentialRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/GetCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlwaysSendAppInfoToProvider:Z

.field private blacklist mCredentialOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/CredentialOption;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mData:Landroid/os/Bundle;

.field private blacklist mOrigin:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "data"    # Landroid/os/Bundle;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/GetCredentialRequest$Builder;->mCredentialOptions:Ljava/util/List;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/credentials/GetCredentialRequest$Builder;->mAlwaysSendAppInfoToProvider:Z

    .line 191
    const-string v0, "data must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/credentials/GetCredentialRequest$Builder;->mData:Landroid/os/Bundle;

    .line 192
    return-void
.end method


# virtual methods
.method public whitelist addCredentialOption(Landroid/credentials/CredentialOption;)Landroid/credentials/GetCredentialRequest$Builder;
    .registers 4
    .param p1, "credentialOption"    # Landroid/credentials/CredentialOption;

    .line 199
    iget-object v0, p0, Landroid/credentials/GetCredentialRequest$Builder;->mCredentialOptions:Ljava/util/List;

    const-string v1, "credentialOption must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/credentials/CredentialOption;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-object p0
.end method

.method public whitelist build()Landroid/credentials/GetCredentialRequest;
    .registers 9

    .line 257
    iget-object v0, p0, Landroid/credentials/GetCredentialRequest$Builder;->mCredentialOptions:Ljava/util/List;

    const-string v1, "credentialOptions"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 260
    iget-object v0, p0, Landroid/credentials/GetCredentialRequest$Builder;->mCredentialOptions:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 263
    new-instance v2, Landroid/credentials/GetCredentialRequest;

    iget-object v3, p0, Landroid/credentials/GetCredentialRequest$Builder;->mCredentialOptions:Ljava/util/List;

    iget-object v4, p0, Landroid/credentials/GetCredentialRequest$Builder;->mData:Landroid/os/Bundle;

    iget-boolean v5, p0, Landroid/credentials/GetCredentialRequest$Builder;->mAlwaysSendAppInfoToProvider:Z

    iget-object v6, p0, Landroid/credentials/GetCredentialRequest$Builder;->mOrigin:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/credentials/GetCredentialRequest;-><init>(Ljava/util/List;Landroid/os/Bundle;ZLjava/lang/String;Landroid/credentials/GetCredentialRequest-IA;)V

    return-object v2
.end method

.method public whitelist setAlwaysSendAppInfoToProvider(Z)Landroid/credentials/GetCredentialRequest$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 219
    iput-boolean p1, p0, Landroid/credentials/GetCredentialRequest$Builder;->mAlwaysSendAppInfoToProvider:Z

    .line 220
    return-object p0
.end method

.method public whitelist setCredentialOptions(Ljava/util/List;)Landroid/credentials/GetCredentialRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialOption;",
            ">;)",
            "Landroid/credentials/GetCredentialRequest$Builder;"
        }
    .end annotation

    .line 229
    .local p1, "credentialOptions":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/CredentialOption;>;"
    const-string v0, "credentialOptions"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/credentials/GetCredentialRequest$Builder;->mCredentialOptions:Ljava/util/List;

    .line 233
    return-object p0
.end method

.method public whitelist setOrigin(Ljava/lang/String;)Landroid/credentials/GetCredentialRequest$Builder;
    .registers 2
    .param p1, "origin"    # Ljava/lang/String;

    .line 246
    iput-object p1, p0, Landroid/credentials/GetCredentialRequest$Builder;->mOrigin:Ljava/lang/String;

    .line 247
    return-object p0
.end method
