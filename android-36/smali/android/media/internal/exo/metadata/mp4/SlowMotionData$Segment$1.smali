.class Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment$1;
.super Ljava/lang/Object;
.source "SlowMotionData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;
    .registers 8

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 117
    new-instance v0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;

    invoke-direct/range {v0 .. v5}, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;-><init>(JJI)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;
    .registers 2

    .line 122
    new-array p0, p1, [Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment$1;->newArray(I)[Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;

    move-result-object p0

    return-object p0
.end method
