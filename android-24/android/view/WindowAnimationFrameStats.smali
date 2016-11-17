.class public final Landroid/view/WindowAnimationFrameStats;
.super Landroid/view/FrameStats;
.source "WindowAnimationFrameStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowAnimationFrameStats$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/WindowAnimationFrameStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 83
    new-instance v0, Landroid/view/WindowAnimationFrameStats$1;

    #@2
    invoke-direct {v0}, Landroid/view/WindowAnimationFrameStats$1;-><init>()V

    #@5
    .line 82
    sput-object v0, Landroid/view/WindowAnimationFrameStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Landroid/view/FrameStats;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Landroid/view/FrameStats;-><init>()V

    #@3
    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/view/WindowAnimationFrameStats;->mRefreshPeriodNano:J

    #@9
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/view/WindowAnimationFrameStats;->mFramesPresentedTimeNano:[J

    #@f
    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/WindowAnimationFrameStats;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/WindowAnimationFrameStats;-><init>(Landroid/os/Parcel;)V

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

.method public init(J[J)V
    .locals 1
    .param p1, "refreshPeriodNano"    # J
    .param p3, "framesPresentedTimeNano"    # [J

    #@0
    .prologue
    .line 51
    iput-wide p1, p0, Landroid/view/WindowAnimationFrameStats;->mRefreshPeriodNano:J

    #@2
    .line 52
    iput-object p3, p0, Landroid/view/WindowAnimationFrameStats;->mFramesPresentedTimeNano:[J

    #@4
    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 74
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "WindowAnimationFrameStats["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 75
    const-string/jumbo v1, "frameCount:"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p0}, Landroid/view/WindowAnimationFrameStats;->getFrameCount()I

    #@15
    move-result v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    .line 76
    const-string/jumbo v1, ", fromTimeNano:"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p0}, Landroid/view/WindowAnimationFrameStats;->getStartTimeNano()J

    #@23
    move-result-wide v2

    #@24
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@27
    .line 77
    const-string/jumbo v1, ", toTimeNano:"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {p0}, Landroid/view/WindowAnimationFrameStats;->getEndTimeNano()J

    #@31
    move-result-wide v2

    #@32
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@35
    .line 78
    const/16 v1, 0x5d

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    .line 79
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
    .line 67
    iget-wide v0, p0, Landroid/view/WindowAnimationFrameStats;->mRefreshPeriodNano:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 68
    iget-object v0, p0, Landroid/view/WindowAnimationFrameStats;->mFramesPresentedTimeNano:[J

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    #@a
    .line 66
    return-void
.end method
