.class public Landroid/hardware/camera2/utils/SubmitInfo;
.super Ljava/lang/Object;
.source "SubmitInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/utils/SubmitInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mLastFrameNumber:J

.field private greylist-max-o mRequestId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/hardware/camera2/utils/SubmitInfo$1;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/SubmitInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/utils/SubmitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mRequestId:I

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mLastFrameNumber:J

    .line 39
    return-void
.end method

.method public constructor greylist-max-o <init>(IJ)V
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "lastFrameNumber"    # J

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mRequestId:I

    .line 43
    iput-wide p2, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mLastFrameNumber:J

    .line 44
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/utils/SubmitInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 61
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/utils/SubmitInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/SubmitInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getLastFrameNumber()J
    .registers 3

    .line 103
    iget-wide v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mLastFrameNumber:J

    return-wide v0
.end method

.method public greylist-max-o getRequestId()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mRequestId:I

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mRequestId:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mLastFrameNumber:J

    .line 77
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    iget v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-wide v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mLastFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    return-void
.end method
