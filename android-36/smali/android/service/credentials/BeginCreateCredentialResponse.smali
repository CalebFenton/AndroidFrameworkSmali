.class public final Landroid/service/credentials/BeginCreateCredentialResponse;
.super Ljava/lang/Object;
.source "BeginCreateCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/credentials/BeginCreateCredentialResponse$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/credentials/BeginCreateCredentialResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCreateEntries:Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/credentials/CreateEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRemoteCreateEntry:Landroid/service/credentials/RemoteEntry;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/service/credentials/BeginCreateCredentialResponse$1;

    invoke-direct {v0}, Landroid/service/credentials/BeginCreateCredentialResponse$1;-><init>()V

    sput-object v0, Landroid/service/credentials/BeginCreateCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 45
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/service/credentials/BeginCreateCredentialResponse;-><init>(Landroid/content/pm/ParceledListSlice;Landroid/service/credentials/RemoteEntry;)V

    .line 47
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/pm/ParceledListSlice;Landroid/service/credentials/RemoteEntry;)V
    .registers 6
    .param p2, "remoteCreateEntry"    # Landroid/service/credentials/RemoteEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/credentials/CreateEntry;",
            ">;",
            "Landroid/service/credentials/RemoteEntry;",
            ")V"
        }
    .end annotation

    .line 81
    .local p1, "createEntries":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/credentials/CreateEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroid/service/credentials/BeginCreateCredentialResponse;->mCreateEntries:Landroid/content/pm/ParceledListSlice;

    .line 83
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/service/credentials/BeginCreateCredentialResponse;->mCreateEntries:Landroid/content/pm/ParceledListSlice;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 85
    iput-object p2, p0, Landroid/service/credentials/BeginCreateCredentialResponse;->mRemoteCreateEntry:Landroid/service/credentials/RemoteEntry;

    .line 86
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    const-class v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    iput-object v0, p0, Landroid/service/credentials/BeginCreateCredentialResponse;->mCreateEntries:Landroid/content/pm/ParceledListSlice;

    .line 52
    sget-object v0, Landroid/service/credentials/RemoteEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/credentials/RemoteEntry;

    iput-object v0, p0, Landroid/service/credentials/BeginCreateCredentialResponse;->mRemoteCreateEntry:Landroid/service/credentials/RemoteEntry;

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/credentials/BeginCreateCredentialResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/credentials/BeginCreateCredentialResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCreateEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/credentials/CreateEntry;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Landroid/service/credentials/BeginCreateCredentialResponse;->mCreateEntries:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRemoteCreateEntry()Landroid/service/credentials/RemoteEntry;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/service/credentials/BeginCreateCredentialResponse;->mRemoteCreateEntry:Landroid/service/credentials/RemoteEntry;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 57
    iget-object v0, p0, Landroid/service/credentials/BeginCreateCredentialResponse;->mCreateEntries:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 58
    iget-object v0, p0, Landroid/service/credentials/BeginCreateCredentialResponse;->mRemoteCreateEntry:Landroid/service/credentials/RemoteEntry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 59
    return-void
.end method
