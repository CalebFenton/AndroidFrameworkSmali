.class public final Landroid/credentials/selection/GetCredentialProviderInfo$Builder;
.super Ljava/lang/Object;
.source "GetCredentialProviderInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/selection/GetCredentialProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActionChips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAuthenticationEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/AuthenticationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCredentialEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProviderName:Ljava/lang/String;

.field private blacklist mRemoteEntry:Landroid/credentials/selection/Entry;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "providerName"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mCredentialEntries:Ljava/util/List;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mActionChips:Ljava/util/List;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mAuthenticationEntries:Ljava/util/List;

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    .line 157
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mProviderName:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/credentials/selection/GetCredentialProviderInfo;
    .registers 7

    .line 198
    new-instance v0, Landroid/credentials/selection/GetCredentialProviderInfo;

    iget-object v1, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mProviderName:Ljava/lang/String;

    iget-object v2, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mCredentialEntries:Ljava/util/List;

    iget-object v3, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mActionChips:Ljava/util/List;

    iget-object v4, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mAuthenticationEntries:Ljava/util/List;

    iget-object v5, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    invoke-direct/range {v0 .. v5}, Landroid/credentials/selection/GetCredentialProviderInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/credentials/selection/Entry;)V

    return-object v0
.end method

.method public whitelist setActionChips(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;)",
            "Landroid/credentials/selection/GetCredentialProviderInfo$Builder;"
        }
    .end annotation

    .line 170
    .local p1, "actionChips":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/Entry;>;"
    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mActionChips:Ljava/util/List;

    .line 171
    return-object p0
.end method

.method public whitelist setAuthenticationEntries(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/selection/AuthenticationEntry;",
            ">;)",
            "Landroid/credentials/selection/GetCredentialProviderInfo$Builder;"
        }
    .end annotation

    .line 178
    .local p1, "authenticationEntry":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/AuthenticationEntry;>;"
    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mAuthenticationEntries:Ljava/util/List;

    .line 179
    return-object p0
.end method

.method public whitelist setCredentialEntries(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;)",
            "Landroid/credentials/selection/GetCredentialProviderInfo$Builder;"
        }
    .end annotation

    .line 163
    .local p1, "credentialEntries":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/Entry;>;"
    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mCredentialEntries:Ljava/util/List;

    .line 164
    return-object p0
.end method

.method public whitelist setRemoteEntry(Landroid/credentials/selection/Entry;)Landroid/credentials/selection/GetCredentialProviderInfo$Builder;
    .registers 2
    .param p1, "remoteEntry"    # Landroid/credentials/selection/Entry;

    .line 191
    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    .line 192
    return-object p0
.end method
