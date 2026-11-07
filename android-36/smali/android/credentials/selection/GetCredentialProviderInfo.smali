.class public final Landroid/credentials/selection/GetCredentialProviderInfo;
.super Ljava/lang/Object;
.source "GetCredentialProviderInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/selection/GetCredentialProviderInfo$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mActionChips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAuthenticationEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/AuthenticationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCredentialEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProviderName:Ljava/lang/String;

.field private final blacklist mRemoteEntry:Landroid/credentials/selection/Entry;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/credentials/selection/Entry;)V
    .registers 7
    .param p1, "providerName"    # Ljava/lang/String;
    .param p5, "remoteEntry"    # Landroid/credentials/selection/Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;",
            "Ljava/util/List<",
            "Landroid/credentials/selection/AuthenticationEntry;",
            ">;",
            "Landroid/credentials/selection/Entry;",
            ")V"
        }
    .end annotation

    .line 76
    .local p2, "credentialEntries":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/Entry;>;"
    .local p3, "actionChips":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/Entry;>;"
    .local p4, "authenticationEntries":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/AuthenticationEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo;->mProviderName:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo;->mCredentialEntries:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo;->mActionChips:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo;->mAuthenticationEntries:Ljava/util/List;

    .line 81
    iput-object p5, p0, Landroid/credentials/selection/GetCredentialProviderInfo;->mRemoteEntry:Landroid/credentials/selection/Entry;

    .line 82
    return-void
.end method


# virtual methods
.method public whitelist getActionChips()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo;->mActionChips:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAuthenticationEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/credentials/selection/AuthenticationEntry;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo;->mAuthenticationEntries:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCredentialEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo;->mCredentialEntries:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getProviderName()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo;->mProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRemoteEntry()Landroid/credentials/selection/Entry;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo;->mRemoteEntry:Landroid/credentials/selection/Entry;

    return-object v0
.end method
