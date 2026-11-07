.class public Landroid/service/notification/NotificationListenerFilter;
.super Ljava/lang/Object;
.source "NotificationListenerFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationListenerFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_TYPES:I = 0xf


# instance fields
.field private blacklist mAllowedNotificationTypes:I

.field private blacklist mDisallowedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Landroid/service/notification/NotificationListenerFilter$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerFilter$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationListenerFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0xf

    iput v0, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    .line 45
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/util/ArraySet;)V
    .registers 3
    .param p1, "types"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Landroid/content/pm/VersionedPackage;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/VersionedPackage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    .line 50
    iput-object p2, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    .line 51
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    .line 58
    const-class v0, Landroid/content/pm/VersionedPackage;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    .line 60
    return-void
.end method


# virtual methods
.method public blacklist addPackage(Landroid/content/pm/VersionedPackage;)V
    .registers 3
    .param p1, "pkg"    # Landroid/content/pm/VersionedPackage;

    .line 114
    iget-object v0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public blacklist areAllTypesAllowed()Z
    .registers 3

    .line 86
    const/16 v0, 0xf

    iget v1, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDisallowedPackages()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getTypes()I
    .registers 2

    .line 94
    iget v0, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    return v0
.end method

.method public blacklist isPackageAllowed(Landroid/content/pm/VersionedPackage;)Z
    .registers 3
    .param p1, "pkg"    # Landroid/content/pm/VersionedPackage;

    .line 90
    iget-object v0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist isTypeAllowed(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 82
    iget v0, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist removePackage(Landroid/content/pm/VersionedPackage;)V
    .registers 3
    .param p1, "pkg"    # Landroid/content/pm/VersionedPackage;

    .line 110
    iget-object v0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public blacklist setDisallowedPackages(Landroid/util/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/content/pm/VersionedPackage;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p1, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/VersionedPackage;>;"
    iput-object p1, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    .line 107
    return-void
.end method

.method public blacklist setTypes(I)V
    .registers 2
    .param p1, "types"    # I

    .line 102
    iput p1, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    .line 103
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 64
    iget v0, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object v0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 66
    return-void
.end method
