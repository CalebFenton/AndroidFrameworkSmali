.class public Landroid/hardware/camera2/impl/CaptureResultExtras;
.super Ljava/lang/Object;
.source "CaptureResultExtras.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CaptureResultExtras$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/impl/CaptureResultExtras;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private afTriggerId:I

.field private frameNumber:J

.field private partialResultCount:I

.field private precaptureTriggerId:I

.field private requestId:I

.field private subsequenceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 33
    new-instance v0, Landroid/hardware/camera2/impl/CaptureResultExtras$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/camera2/impl/CaptureResultExtras$1;-><init>()V

    #@5
    .line 32
    sput-object v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 24
    return-void
.end method

.method public constructor <init>(IIIIJI)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "subsequenceId"    # I
    .param p3, "afTriggerId"    # I
    .param p4, "precaptureTriggerId"    # I
    .param p5, "frameNumber"    # J
    .param p7, "partialResultCount"    # I

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput p1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    #@5
    .line 53
    iput p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    #@7
    .line 54
    iput p3, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    #@9
    .line 55
    iput p4, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    #@b
    .line 56
    iput-wide p5, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    #@d
    .line 57
    iput p7, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    #@f
    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 62
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAfTriggerId()I
    .locals 1

    #@0
    .prologue
    .line 93
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    #@2
    return v0
.end method

.method public getFrameNumber()J
    .locals 2

    #@0
    .prologue
    .line 101
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    #@2
    return-wide v0
.end method

.method public getPartialResultCount()I
    .locals 1

    #@0
    .prologue
    .line 105
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    #@2
    return v0
.end method

.method public getPrecaptureTriggerId()I
    .locals 1

    #@0
    .prologue
    .line 97
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    #@2
    return v0
.end method

.method public getRequestId()I
    .locals 1

    #@0
    .prologue
    .line 85
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    #@2
    return v0
.end method

.method public getSubsequenceId()I
    .locals 1

    #@0
    .prologue
    .line 89
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    #@2
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    #@6
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    #@c
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    #@12
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    #@18
    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1b
    move-result-wide v0

    #@1c
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    #@1e
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    #@24
    .line 75
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 67
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 68
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 69
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 70
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 71
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    .line 72
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 66
    return-void
.end method
