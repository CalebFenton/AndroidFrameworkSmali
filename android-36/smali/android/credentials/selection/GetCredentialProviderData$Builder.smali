.class public final Landroid/credentials/selection/GetCredentialProviderData$Builder;
.super Ljava/lang/Object;
.source "GetCredentialProviderData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/selection/GetCredentialProviderData;
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

.field private blacklist mProviderFlattenedComponentName:Ljava/lang/String;

.field private blacklist mRemoteEntry:Landroid/credentials/selection/Entry;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "providerFlattenedComponentName"    # Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mCredentialEntries:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mActionChips:Ljava/util/List;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mAuthenticationEntries:Ljava/util/List;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    .line 163
    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mProviderFlattenedComponentName:Ljava/lang/String;

    .line 164
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/credentials/selection/GetCredentialProviderData;
    .registers 7

    .line 198
    new-instance v0, Landroid/credentials/selection/GetCredentialProviderData;

    iget-object v1, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mProviderFlattenedComponentName:Ljava/lang/String;

    iget-object v2, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mCredentialEntries:Ljava/util/List;

    iget-object v3, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mActionChips:Ljava/util/List;

    iget-object v4, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mAuthenticationEntries:Ljava/util/List;

    iget-object v5, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    invoke-direct/range {v0 .. v5}, Landroid/credentials/selection/GetCredentialProviderData;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/credentials/selection/Entry;)V

    return-object v0
.end method

.method public blacklist setActionChips(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;)",
            "Landroid/credentials/selection/GetCredentialProviderData$Builder;"
        }
    .end annotation

    .line 176
    .local p1, "actionChips":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/Entry;>;"
    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mActionChips:Ljava/util/List;

    .line 177
    return-object p0
.end method

.method public blacklist setAuthenticationEntries(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/selection/AuthenticationEntry;",
            ">;)",
            "Landroid/credentials/selection/GetCredentialProviderData$Builder;"
        }
    .end annotation

    .line 184
    .local p1, "authenticationEntry":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/AuthenticationEntry;>;"
    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mAuthenticationEntries:Ljava/util/List;

    .line 185
    return-object p0
.end method

.method public blacklist setCredentialEntries(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;)",
            "Landroid/credentials/selection/GetCredentialProviderData$Builder;"
        }
    .end annotation

    .line 169
    .local p1, "credentialEntries":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/Entry;>;"
    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mCredentialEntries:Ljava/util/List;

    .line 170
    return-object p0
.end method

.method public blacklist setRemoteEntry(Landroid/credentials/selection/Entry;)Landroid/credentials/selection/GetCredentialProviderData$Builder;
    .registers 2
    .param p1, "remoteEntry"    # Landroid/credentials/selection/Entry;

    .line 191
    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    .line 192
    return-object p0
.end method
