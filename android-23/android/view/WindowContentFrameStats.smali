.class public final Landroid/view/WindowContentFrameStats;
.super Landroid/view/FrameStats;
.source "WindowContentFrameStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowContentFrameStats$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/WindowContentFrameStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFramesPostedTimeNano:[J

.field private mFramesReadyTimeNano:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 141
    new-instance v0, Landroid/view/WindowContentFrameStats$1;

    #@2
    invoke-direct {v0}, Landroid/view/WindowContentFrameStats$1;-><init>()V

    #@5
    .line 140
    sput-object v0, Landroid/view/WindowContentFrameStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Landroid/view/FrameStats;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Landroid/view/FrameStats;-><init>()V

    #@3
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/view/WindowContentFrameStats;->mRefreshPeriodNano:J

    #@9
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPostedTimeNano:[J

    #@f
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPresentedTimeNano:[J

    #@15
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesReadyTimeNano:[J

    #@1b
    .line 71
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/WindowContentFrameStats;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/WindowContentFrameStats;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 118
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getFramePostedTimeNano(I)J
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPostedTimeNano:[J

    #@2
    if-nez v0, :cond_0

    #@4
    .line 92
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 94
    :cond_0
    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPostedTimeNano:[J

    #@c
    aget-wide v0, v0, p1

    #@e
    return-wide v0
.end method

.method public getFrameReadyTimeNano(I)J
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesReadyTimeNano:[J

    #@2
    if-nez v0, :cond_0

    #@4
    .line 111
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 113
    :cond_0
    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesReadyTimeNano:[J

    #@c
    aget-wide v0, v0, p1

    #@e
    return-wide v0
.end method

.method public init(J[J[J[J)V
    .locals 1
    .param p1, "refreshPeriodNano"    # J
    .param p3, "framesPostedTimeNano"    # [J
    .param p4, "framesPresentedTimeNano"    # [J
    .param p5, "framesReadyTimeNano"    # [J

    #@0
    .prologue
    .line 65
    iput-wide p1, p0, Landroid/view/WindowContentFrameStats;->mRefreshPeriodNano:J

    #@2
    .line 66
    iput-object p3, p0, Landroid/view/WindowContentFrameStats;->mFramesPostedTimeNano:[J

    #@4
    .line 67
    iput-object p4, p0, Landroid/view/WindowContentFrameStats;->mFramesPresentedTimeNano:[J

    #@6
    .line 68
    iput-object p5, p0, Landroid/view/WindowContentFrameStats;->mFramesReadyTimeNano:[J

    #@8
    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 132
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "WindowContentFrameStats["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 133
    const-string/jumbo v1, "frameCount:"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p0}, Landroid/view/WindowContentFrameStats;->getFrameCount()I

    #@15
    move-result v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    .line 134
    const-string/jumbo v1, ", fromTimeNano:"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p0}, Landroid/view/WindowContentFrameStats;->getStartTimeNano()J

    #@23
    move-result-wide v2

    #@24
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@27
    .line 135
    const-string/jumbo v1, ", toTimeNano:"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {p0}, Landroid/view/WindowContentFrameStats;->getEndTimeNano()J

    #@31
    move-result-wide v2

    #@32
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@35
    .line 136
    const/16 v1, 0x5d

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 123
    iget-wide v0, p0, Landroid/view/WindowContentFrameStats;->mRefreshPeriodNano:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 124
    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPostedTimeNano:[J

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    #@a
    .line 125
    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesPresentedTimeNano:[J

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    #@f
    .line 126
    iget-object v0, p0, Landroid/view/WindowContentFrameStats;->mFramesReadyTimeNano:[J

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    #@14
    .line 122
    return-void
.end method
