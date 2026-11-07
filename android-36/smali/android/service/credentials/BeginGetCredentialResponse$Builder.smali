.class public final Landroid/service/credentials/BeginGetCredentialResponse$Builder;
.super Ljava/lang/Object;
.source "BeginGetCredentialResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/credentials/BeginGetCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/credentials/Action;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAuthenticationEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/credentials/Action;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCredentialEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/credentials/CredentialEntry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteCredentialEntry:Landroid/service/credentials/RemoteEntry;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mCredentialEntries:Ljava/util/List;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mAuthenticationEntries:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mActions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist addAction(Landroid/service/credentials/Action;)Landroid/service/credentials/BeginGetCredentialResponse$Builder;
    .registers 4
    .param p1, "action"    # Landroid/service/credentials/Action;

    .line 222
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mActions:Ljava/util/List;

    const-string v1, "action must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/credentials/Action;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    return-object p0
.end method

.method public whitelist addAuthenticationAction(Landroid/service/credentials/Action;)Landroid/service/credentials/BeginGetCredentialResponse$Builder;
    .registers 4
    .param p1, "authenticationAction"    # Landroid/service/credentials/Action;

    .line 206
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mAuthenticationEntries:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/credentials/Action;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-object p0
.end method

.method public whitelist addCredentialEntry(Landroid/service/credentials/CredentialEntry;)Landroid/service/credentials/BeginGetCredentialResponse$Builder;
    .registers 4
    .param p1, "credentialEntry"    # Landroid/service/credentials/CredentialEntry;

    .line 184
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mCredentialEntries:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/credentials/CredentialEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-object p0
.end method

.method public whitelist build()Landroid/service/credentials/BeginGetCredentialResponse;
    .registers 7

    .line 272
    new-instance v0, Landroid/service/credentials/BeginGetCredentialResponse;

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    iget-object v2, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mCredentialEntries:Ljava/util/List;

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    iget-object v3, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mAuthenticationEntries:Ljava/util/List;

    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    iget-object v4, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mActions:Ljava/util/List;

    invoke-direct {v3, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    iget-object v4, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mRemoteCredentialEntry:Landroid/service/credentials/RemoteEntry;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/service/credentials/BeginGetCredentialResponse;-><init>(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/service/credentials/RemoteEntry;Landroid/service/credentials/BeginGetCredentialResponse-IA;)V

    return-object v0
.end method

.method public whitelist setActions(Ljava/util/List;)Landroid/service/credentials/BeginGetCredentialResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/credentials/Action;",
            ">;)",
            "Landroid/service/credentials/BeginGetCredentialResponse$Builder;"
        }
    .end annotation

    .line 233
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/service/credentials/Action;>;"
    const-string v0, "actions"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mActions:Ljava/util/List;

    .line 235
    return-object p0
.end method

.method public whitelist setAuthenticationActions(Ljava/util/List;)Landroid/service/credentials/BeginGetCredentialResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/credentials/Action;",
            ">;)",
            "Landroid/service/credentials/BeginGetCredentialResponse$Builder;"
        }
    .end annotation

    .line 262
    .local p1, "authenticationActions":Ljava/util/List;, "Ljava/util/List<Landroid/service/credentials/Action;>;"
    const-string v0, "authenticationActions"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mAuthenticationEntries:Ljava/util/List;

    .line 265
    return-object p0
.end method

.method public whitelist setCredentialEntries(Ljava/util/List;)Landroid/service/credentials/BeginGetCredentialResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/credentials/CredentialEntry;",
            ">;)",
            "Landroid/service/credentials/BeginGetCredentialResponse$Builder;"
        }
    .end annotation

    .line 247
    .local p1, "credentialEntries":Ljava/util/List;, "Ljava/util/List<Landroid/service/credentials/CredentialEntry;>;"
    const-string v0, "credentialEntries"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mCredentialEntries:Ljava/util/List;

    .line 250
    return-object p0
.end method

.method public whitelist setRemoteCredentialEntry(Landroid/service/credentials/RemoteEntry;)Landroid/service/credentials/BeginGetCredentialResponse$Builder;
    .registers 2
    .param p1, "remoteCredentialEntry"    # Landroid/service/credentials/RemoteEntry;

    .line 173
    iput-object p1, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mRemoteCredentialEntry:Landroid/service/credentials/RemoteEntry;

    .line 174
    return-object p0
.end method
