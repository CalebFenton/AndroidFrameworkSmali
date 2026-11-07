.class public final Landroid/service/credentials/BeginCreateCredentialResponse$Builder;
.super Ljava/lang/Object;
.source "BeginCreateCredentialResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/credentials/BeginCreateCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCreateEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/credentials/CreateEntry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteCreateEntry:Landroid/service/credentials/RemoteEntry;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/credentials/BeginCreateCredentialResponse$Builder;->mCreateEntries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist addCreateEntry(Landroid/service/credentials/CreateEntry;)Landroid/service/credentials/BeginCreateCredentialResponse$Builder;
    .registers 4
    .param p1, "createEntry"    # Landroid/service/credentials/CreateEntry;

    .line 126
    iget-object v0, p0, Landroid/service/credentials/BeginCreateCredentialResponse$Builder;->mCreateEntries:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/credentials/CreateEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-object p0
.end method

.method public whitelist build()Landroid/service/credentials/BeginCreateCredentialResponse;
    .registers 4

    .line 163
    new-instance v0, Landroid/service/credentials/BeginCreateCredentialResponse;

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    iget-object v2, p0, Landroid/service/credentials/BeginCreateCredentialResponse$Builder;->mCreateEntries:Ljava/util/List;

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    iget-object v2, p0, Landroid/service/credentials/BeginCreateCredentialResponse$Builder;->mRemoteCreateEntry:Landroid/service/credentials/RemoteEntry;

    invoke-direct {v0, v1, v2}, Landroid/service/credentials/BeginCreateCredentialResponse;-><init>(Landroid/content/pm/ParceledListSlice;Landroid/service/credentials/RemoteEntry;)V

    return-object v0
.end method

.method public whitelist setCreateEntries(Ljava/util/List;)Landroid/service/credentials/BeginCreateCredentialResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/credentials/CreateEntry;",
            ">;)",
            "Landroid/service/credentials/BeginCreateCredentialResponse$Builder;"
        }
    .end annotation

    .line 114
    .local p1, "createEntries":Ljava/util/List;, "Ljava/util/List<Landroid/service/credentials/CreateEntry;>;"
    const-string v0, "createEntries"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 115
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/service/credentials/BeginCreateCredentialResponse$Builder;->mCreateEntries:Ljava/util/List;

    .line 117
    return-object p0
.end method

.method public whitelist setRemoteCreateEntry(Landroid/service/credentials/RemoteEntry;)Landroid/service/credentials/BeginCreateCredentialResponse$Builder;
    .registers 2
    .param p1, "remoteCreateEntry"    # Landroid/service/credentials/RemoteEntry;

    .line 155
    iput-object p1, p0, Landroid/service/credentials/BeginCreateCredentialResponse$Builder;->mRemoteCreateEntry:Landroid/service/credentials/RemoteEntry;

    .line 156
    return-object p0
.end method
