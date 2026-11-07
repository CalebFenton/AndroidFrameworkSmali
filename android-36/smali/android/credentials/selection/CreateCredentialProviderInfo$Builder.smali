.class public final Landroid/credentials/selection/CreateCredentialProviderInfo$Builder;
.super Ljava/lang/Object;
.source "CreateCredentialProviderInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/selection/CreateCredentialProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mProviderName:Ljava/lang/String;

.field private blacklist mRemoteEntry:Landroid/credentials/selection/Entry;

.field private blacklist mSaveEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "providerName"    # Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderInfo$Builder;->mSaveEntries:Ljava/util/List;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderInfo$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    .line 117
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderInfo$Builder;->mProviderName:Ljava/lang/String;

    .line 118
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/credentials/selection/CreateCredentialProviderInfo;
    .registers 5

    .line 143
    new-instance v0, Landroid/credentials/selection/CreateCredentialProviderInfo;

    iget-object v1, p0, Landroid/credentials/selection/CreateCredentialProviderInfo$Builder;->mProviderName:Ljava/lang/String;

    iget-object v2, p0, Landroid/credentials/selection/CreateCredentialProviderInfo$Builder;->mSaveEntries:Ljava/util/List;

    iget-object v3, p0, Landroid/credentials/selection/CreateCredentialProviderInfo$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    invoke-direct {v0, v1, v2, v3}, Landroid/credentials/selection/CreateCredentialProviderInfo;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/credentials/selection/Entry;)V

    return-object v0
.end method

.method public whitelist setRemoteEntry(Landroid/credentials/selection/Entry;)Landroid/credentials/selection/CreateCredentialProviderInfo$Builder;
    .registers 2
    .param p1, "remoteEntry"    # Landroid/credentials/selection/Entry;

    .line 136
    iput-object p1, p0, Landroid/credentials/selection/CreateCredentialProviderInfo$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    .line 137
    return-object p0
.end method

.method public whitelist setSaveEntries(Ljava/util/List;)Landroid/credentials/selection/CreateCredentialProviderInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;)",
            "Landroid/credentials/selection/CreateCredentialProviderInfo$Builder;"
        }
    .end annotation

    .line 123
    .local p1, "credentialEntries":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/Entry;>;"
    iput-object p1, p0, Landroid/credentials/selection/CreateCredentialProviderInfo$Builder;->mSaveEntries:Ljava/util/List;

    .line 124
    return-object p0
.end method
