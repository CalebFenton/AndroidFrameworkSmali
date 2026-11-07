.class public final Landroid/media/internal/exo/metadata/mp4/SlowMotionData;
.super Ljava/lang/Object;
.source "SlowMotionData.java"

# interfaces
.implements Landroid/media/internal/exo/metadata/Metadata$Entry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/metadata/mp4/SlowMotionData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 172
    new-instance v0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$1;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;",
            ">;)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    .line 137
    invoke-static {p1}, Landroid/media/internal/exo/metadata/mp4/SlowMotionData;->doSegmentsOverlap(Ljava/util/List;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroid/media/internal/exo/util/Assertions;->checkArgument(Z)V

    return-void
.end method

.method private static blacklist doSegmentsOverlap(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;",
            ">;)Z"
        }
    .end annotation

    .line 188
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 191
    :cond_8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;

    iget-wide v2, v0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    const/4 v0, 0x1

    move v4, v0

    .line 192
    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_30

    .line 193
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;

    iget-wide v5, v5, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    cmp-long v2, v5, v2

    if-gez v2, :cond_25

    return v0

    .line 196
    :cond_25
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;

    iget-wide v2, v2, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_30
    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_1a

    .line 150
    const-class v0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_1a

    .line 153
    :cond_f
    check-cast p1, Landroid/media/internal/exo/metadata/mp4/SlowMotionData;

    .line 154
    iget-object p0, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    iget-object p1, p1, Landroid/media/internal/exo/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 159
    iget-object p0, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SlowMotion: segments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 169
    iget-object p0, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
