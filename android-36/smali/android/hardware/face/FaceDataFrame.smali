.class public final Landroid/hardware/face/FaceDataFrame;
.super Ljava/lang/Object;
.source "FaceDataFrame.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/face/FaceDataFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAcquiredInfo:I

.field private final blacklist mDistance:F

.field private final blacklist mIsCancellable:Z

.field private final blacklist mPan:F

.field private final blacklist mTilt:F

.field private final blacklist mVendorCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 158
    new-instance v0, Landroid/hardware/face/FaceDataFrame$1;

    invoke-direct {v0}, Landroid/hardware/face/FaceDataFrame$1;-><init>()V

    sput-object v0, Landroid/hardware/face/FaceDataFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Landroid/hardware/face/FaceDataFrame;->mAcquiredInfo:I

    .line 75
    iput p2, p0, Landroid/hardware/face/FaceDataFrame;->mVendorCode:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mPan:F

    .line 77
    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mTilt:F

    .line 78
    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mDistance:F

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/face/FaceDataFrame;->mIsCancellable:Z

    .line 80
    return-void
.end method

.method public constructor blacklist <init>(IIFFFZ)V
    .registers 7
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I
    .param p3, "pan"    # F
    .param p4, "tilt"    # F
    .param p5, "distance"    # F
    .param p6, "isCancellable"    # Z

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Landroid/hardware/face/FaceDataFrame;->mAcquiredInfo:I

    .line 59
    iput p2, p0, Landroid/hardware/face/FaceDataFrame;->mVendorCode:I

    .line 60
    iput p3, p0, Landroid/hardware/face/FaceDataFrame;->mPan:F

    .line 61
    iput p4, p0, Landroid/hardware/face/FaceDataFrame;->mTilt:F

    .line 62
    iput p5, p0, Landroid/hardware/face/FaceDataFrame;->mDistance:F

    .line 63
    iput-boolean p6, p0, Landroid/hardware/face/FaceDataFrame;->mIsCancellable:Z

    .line 64
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mAcquiredInfo:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mVendorCode:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mPan:F

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mTilt:F

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mDistance:F

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/face/FaceDataFrame;->mIsCancellable:Z

    .line 141
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/face/FaceDataFrame-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceDataFrame;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAcquiredInfo()I
    .registers 2

    .line 89
    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mAcquiredInfo:I

    return v0
.end method

.method public blacklist getDistance()F
    .registers 2

    .line 124
    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mDistance:F

    return v0
.end method

.method public blacklist getPan()F
    .registers 2

    .line 108
    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mPan:F

    return v0
.end method

.method public blacklist getTilt()F
    .registers 2

    .line 116
    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mTilt:F

    return v0
.end method

.method public blacklist getVendorCode()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mVendorCode:I

    return v0
.end method

.method public blacklist isCancellable()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Landroid/hardware/face/FaceDataFrame;->mIsCancellable:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 150
    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mAcquiredInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mVendorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mPan:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 153
    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mTilt:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 154
    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mDistance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 155
    iget-boolean v0, p0, Landroid/hardware/face/FaceDataFrame;->mIsCancellable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 156
    return-void
.end method
