.class public final Landroid/media/RemoteDisplayState;
.super Ljava/lang/Object;
.source "RemoteDisplayState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteDisplayState$RemoteDisplayInfo;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/RemoteDisplayState;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DISCOVERY_MODE_ACTIVE:I = 0x2

.field public static final greylist-max-o DISCOVERY_MODE_NONE:I = 0x0

.field public static final greylist-max-o DISCOVERY_MODE_PASSIVE:I = 0x1

.field public static final greylist-max-o SERVICE_INTERFACE:Ljava/lang/String; = "com.android.media.remotedisplay.RemoteDisplayProvider"


# instance fields
.field public final greylist-max-r displays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/RemoteDisplayState$RemoteDisplayInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 80
    new-instance v0, Landroid/media/RemoteDisplayState$1;

    invoke-direct {v0}, Landroid/media/RemoteDisplayState$1;-><init>()V

    sput-object v0, Landroid/media/RemoteDisplayState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isValid()Z
    .registers 5

    .line 58
    iget-object v0, p0, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 59
    return v1

    .line 61
    :cond_6
    iget-object v0, p0, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 62
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_21

    .line 63
    iget-object v3, p0, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    invoke-virtual {v3}, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->isValid()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 64
    return v1

    .line 62
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 67
    .end local v2    # "i":I
    :cond_21
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget-object v0, p0, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 78
    return-void
.end method
