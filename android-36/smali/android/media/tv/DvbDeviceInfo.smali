.class public final Landroid/media/tv/DvbDeviceInfo;
.super Ljava/lang/Object;
.source "DvbDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o TAG:Ljava/lang/String; = "DvbDeviceInfo"


# instance fields
.field private final greylist-max-o mAdapterId:I

.field private final greylist-max-o mDeviceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/media/tv/DvbDeviceInfo$1;

    invoke-direct {v0}, Landroid/media/tv/DvbDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/DvbDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "adapterId"    # I
    .param p2, "deviceId"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Landroid/media/tv/DvbDeviceInfo;->mAdapterId:I

    .line 71
    iput p2, p0, Landroid/media/tv/DvbDeviceInfo;->mDeviceId:I

    .line 72
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/DvbDeviceInfo;->mAdapterId:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/DvbDeviceInfo;->mDeviceId:I

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/DvbDeviceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/DvbDeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAdapterId()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/media/tv/DvbDeviceInfo;->mAdapterId:I

    return v0
.end method

.method public whitelist getDeviceId()I
    .registers 2

    .line 89
    iget v0, p0, Landroid/media/tv/DvbDeviceInfo;->mDeviceId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    iget v0, p0, Landroid/media/tv/DvbDeviceInfo;->mAdapterId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Landroid/media/tv/DvbDeviceInfo;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void
.end method
