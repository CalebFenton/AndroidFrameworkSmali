.class public final Landroid/service/credentials/BeginGetCredentialResponse;
.super Ljava/lang/Object;
.source "BeginGetCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/credentials/BeginGetCredentialResponse$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/credentials/BeginGetCredentialResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActions:Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/credentials/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAuthenticationEntries:Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/credentials/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCredentialEntries:Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/credentials/CredentialEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRemoteCredentialEntry:Landroid/service/credentials/RemoteEntry;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Landroid/service/credentials/BeginGetCredentialResponse$1;

    invoke-direct {v0}, Landroid/service/credentials/BeginGetCredentialResponse$1;-><init>()V

    sput-object v0, Landroid/service/credentials/BeginGetCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 55
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/service/credentials/BeginGetCredentialResponse;-><init>(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/service/credentials/RemoteEntry;)V

    .line 59
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/service/credentials/RemoteEntry;)V
    .registers 5
    .param p4, "remoteCredentialEntry"    # Landroid/service/credentials/RemoteEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/credentials/CredentialEntry;",
            ">;",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/credentials/Action;",
            ">;",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/credentials/Action;",
            ">;",
            "Landroid/service/credentials/RemoteEntry;",
            ")V"
        }
    .end annotation

    .line 65
    .local p1, "credentialEntries":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/credentials/CredentialEntry;>;"
    .local p2, "authenticationEntries":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/credentials/Action;>;"
    .local p3, "actions":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/credentials/Action;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mCredentialEntries:Landroid/content/pm/ParceledListSlice;

    .line 67
    iput-object p2, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mAuthenticationEntries:Landroid/content/pm/ParceledListSlice;

    .line 68
    iput-object p3, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mActions:Landroid/content/pm/ParceledListSlice;

    .line 69
    iput-object p4, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mRemoteCredentialEntry:Landroid/service/credentials/RemoteEntry;

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/service/credentials/RemoteEntry;Landroid/service/credentials/BeginGetCredentialResponse-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/credentials/BeginGetCredentialResponse;-><init>(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/service/credentials/RemoteEntry;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-class v0, Landroid/content/pm/ParceledListSlice;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mCredentialEntries:Landroid/content/pm/ParceledListSlice;

    .line 75
    const-class v0, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mAuthenticationEntries:Landroid/content/pm/ParceledListSlice;

    .line 77
    const-class v0, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mActions:Landroid/content/pm/ParceledListSlice;

    .line 79
    sget-object v0, Landroid/service/credentials/RemoteEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/credentials/RemoteEntry;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mRemoteCredentialEntry:Landroid/service/credentials/RemoteEntry;

    .line 80
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/credentials/BeginGetCredentialResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/credentials/BeginGetCredentialResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/credentials/Action;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mActions:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAuthenticationActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/credentials/Action;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mAuthenticationEntries:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCredentialEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/credentials/CredentialEntry;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mCredentialEntries:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRemoteCredentialEntry()Landroid/service/credentials/RemoteEntry;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mRemoteCredentialEntry:Landroid/service/credentials/RemoteEntry;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 102
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mCredentialEntries:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mAuthenticationEntries:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mActions:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mRemoteCredentialEntry:Landroid/service/credentials/RemoteEntry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 106
    return-void
.end method
