.class public final Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;
.super Ljava/lang/Object;
.source "SlowMotionData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/metadata/mp4/SlowMotionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation


# static fields
.field public static final blacklist BY_START_THEN_END_THEN_DIVISOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist endTimeMs:J

.field public final blacklist speedDivisor:I

.field public final blacklist startTimeMs:J


# direct methods
.method public static synthetic blacklist $r8$lambda$lqiADw-0WB2XMCdWsGFdre4e_QE(Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;)I
    .registers 7

    .line 39
    invoke-static {}, Landroid/media/internal/guava_common/collect/ComparisonChain;->start()Landroid/media/internal/guava_common/collect/ComparisonChain;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    iget-wide v3, p1, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    .line 40
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/internal/guava_common/collect/ComparisonChain;->compare(JJ)Landroid/media/internal/guava_common/collect/ComparisonChain;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    iget-wide v3, p1, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    .line 41
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/internal/guava_common/collect/ComparisonChain;->compare(JJ)Landroid/media/internal/guava_common/collect/ComparisonChain;

    move-result-object v0

    iget p0, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->speedDivisor:I

    iget p1, p1, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->speedDivisor:I

    .line 42
    invoke-virtual {v0, p0, p1}, Landroid/media/internal/guava_common/collect/ComparisonChain;->compare(II)Landroid/media/internal/guava_common/collect/ComparisonChain;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ComparisonChain;->result()I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->BY_START_THEN_END_THEN_DIVISOR:Ljava/util/Comparator;

    .line 109
    new-instance v0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment$1;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJI)V
    .registers 7

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmp-long v0, p1, p3

    if-gez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 65
    :goto_a
    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkArgument(Z)V

    .line 66
    iput-wide p1, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    .line 67
    iput-wide p3, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    .line 68
    iput p5, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->speedDivisor:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    .line 83
    const-class v2, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_29

    .line 86
    :cond_10
    check-cast p1, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;

    .line 87
    iget-wide v2, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    iget-wide v4, p1, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_29

    iget-wide v2, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    iget-wide v4, p1, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_29

    iget p0, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->speedDivisor:I

    iget p1, p1, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->speedDivisor:I

    if-ne p0, p1, :cond_29

    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 94
    iget-wide v0, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget p0, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->speedDivisor:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 73
    iget-wide v0, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget p0, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->speedDivisor:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 73
    const-string v0, "Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d"

    invoke-static {v0, p0}, Landroid/media/internal/exo/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 104
    iget-wide v0, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    iget-wide v0, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget p0, p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->speedDivisor:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
