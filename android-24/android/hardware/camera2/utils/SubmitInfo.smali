.class public Landroid/hardware/camera2/utils/SubmitInfo;
.super Ljava/lang/Object;
.source "SubmitInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/SubmitInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/utils/SubmitInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLastFrameNumber:J

.field private mRequestId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 47
    new-instance v0, Landroid/hardware/camera2/utils/SubmitInfo$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/camera2/utils/SubmitInfo$1;-><init>()V

    #@5
    .line 46
    sput-object v0, Landroid/hardware/camera2/utils/SubmitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mRequestId:I

    #@6
    .line 38
    const-wide/16 v0, -0x1

    #@8
    iput-wide v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mLastFrameNumber:J

    #@a
    .line 36
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "lastFrameNumber"    # J

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput p1, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mRequestId:I

    #@5
    .line 43
    iput-wide p2, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mLastFrameNumber:J

    #@7
    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/utils/SubmitInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/utils/SubmitInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/SubmitInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLastFrameNumber()J
    .locals 2

    #@0
    .prologue
    .line 103
    iget-wide v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mLastFrameNumber:J

    #@2
    return-wide v0
.end method

.method public getRequestId()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mRequestId:I

    #@2
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mRequestId:I

    #@6
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mLastFrameNumber:J

    #@c
    .line 74
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 70
    iget v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mRequestId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 71
    iget-wide v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mLastFrameNumber:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 69
    return-void
.end method
