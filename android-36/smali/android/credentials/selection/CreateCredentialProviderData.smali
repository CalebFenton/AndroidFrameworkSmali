.class public final Landroid/credentials/selection/CreateCredentialProviderData;
.super Landroid/credentials/selection/ProviderData;
.source "CreateCredentialProviderData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/selection/CreateCredentialProviderData$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/selection/CreateCredentialProviderData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRemoteEntry:Landroid/credentials/selection/Entry;

.field private final blacklist mSaveEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 100
    new-instance v0, Landroid/credentials/selection/CreateCredentialProviderData$1;

    invoke-direct {v0}, Landroid/credentials/selection/CreateCredentialProviderData$1;-><init>()V

    sput-object v0, Landroid/credentials/selection/CreateCredentialProviderData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0, p1}, Landroid/credentials/selection/ProviderData;-><init>(Landroid/os/Parcel;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "credentialEntries":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/Entry;>;"
    sget-object v1, Landroid/credentials/selection/Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 80
    iput-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderData;->mSaveEntries:Ljava/util/List;

    .line 81
    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/credentials/selection/CreateCredentialProviderData;->mSaveEntries:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 83
    sget-object v1, Landroid/credentials/selection/Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/credentials/selection/Entry;

    .line 84
    .local v1, "remoteEntry":Landroid/credentials/selection/Entry;
    iput-object v1, p0, Landroid/credentials/selection/CreateCredentialProviderData;->mRemoteEntry:Landroid/credentials/selection/Entry;

    .line 85
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/selection/CreateCredentialProviderData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/selection/CreateCredentialProviderData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;Landroid/credentials/selection/Entry;)V
    .registers 5
    .param p1, "providerFlattenedComponentName"    # Ljava/lang/String;
    .param p3, "remoteEntry"    # Landroid/credentials/selection/Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;",
            "Landroid/credentials/selection/Entry;",
            ")V"
        }
    .end annotation

    .line 49
    .local p2, "saveEntries":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/Entry;>;"
    invoke-direct {p0, p1}, Landroid/credentials/selection/ProviderData;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderData;->mSaveEntries:Ljava/util/List;

    .line 51
    iput-object p3, p0, Landroid/credentials/selection/CreateCredentialProviderData;->mRemoteEntry:Landroid/credentials/selection/Entry;

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRemoteEntry()Landroid/credentials/selection/Entry;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderData;->mRemoteEntry:Landroid/credentials/selection/Entry;

    return-object v0
.end method

.method public blacklist getSaveEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderData;->mSaveEntries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist toCreateCredentialProviderInfo()Landroid/credentials/selection/CreateCredentialProviderInfo;
    .registers 5

    .line 61
    new-instance v0, Landroid/credentials/selection/CreateCredentialProviderInfo;

    .line 62
    invoke-virtual {p0}, Landroid/credentials/selection/CreateCredentialProviderData;->getProviderFlattenedComponentName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/credentials/selection/CreateCredentialProviderData;->mSaveEntries:Ljava/util/List;

    iget-object v3, p0, Landroid/credentials/selection/CreateCredentialProviderData;->mRemoteEntry:Landroid/credentials/selection/Entry;

    invoke-direct {v0, v1, v2, v3}, Landroid/credentials/selection/CreateCredentialProviderInfo;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/credentials/selection/Entry;)V

    .line 61
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    invoke-super {p0, p1, p2}, Landroid/credentials/selection/ProviderData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 90
    iget-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderData;->mSaveEntries:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 91
    iget-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderData;->mRemoteEntry:Landroid/credentials/selection/Entry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 92
    return-void
.end method
