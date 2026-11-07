.class public abstract Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
.super Landroid/health/connect/internal/datatypes/RecordInternal;
.source "IntervalRecordInternal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/health/connect/datatypes/IntervalRecord;",
        ">",
        "Landroid/health/connect/internal/datatypes/RecordInternal<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blacklist mEndTime:J

.field private blacklist mEndZoneOffset:I

.field private blacklist mStartTime:J

.field private blacklist mStartZoneOffset:I


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 38
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/RecordInternal;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method blacklist getEndTime()Ljava/time/Instant;
    .registers 3

    .line 98
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mEndTime:J

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEndTimeInMillis()J
    .registers 3

    .line 50
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mEndTime:J

    return-wide v0
.end method

.method blacklist getEndZoneOffset()Ljava/time/ZoneOffset;
    .registers 2

    .line 108
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    iget v0, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mEndZoneOffset:I

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEndZoneOffsetInSeconds()I
    .registers 2

    .line 54
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    iget v0, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mEndZoneOffset:I

    return v0
.end method

.method public blacklist getLocalDate()Ljava/time/LocalDate;
    .registers 3

    .line 123
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRecordTime()J
    .registers 3

    .line 128
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->getEndTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getStartTime()Ljava/time/Instant;
    .registers 3

    .line 78
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mStartTime:J

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStartTimeInMillis()J
    .registers 3

    .line 42
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mStartTime:J

    return-wide v0
.end method

.method blacklist getStartZoneOffset()Ljava/time/ZoneOffset;
    .registers 2

    .line 88
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    iget v0, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mStartZoneOffset:I

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStartZoneOffsetInSeconds()I
    .registers 2

    .line 46
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    iget v0, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mStartZoneOffset:I

    return v0
.end method

.method abstract blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
.end method

.method abstract blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
.end method

.method blacklist populateRecordFrom(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 69
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mStartTime:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mStartZoneOffset:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mEndTime:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mEndZoneOffset:I

    .line 74
    invoke-virtual {p0, p1}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->populateIntervalRecordFrom(Landroid/os/Parcel;)V

    .line 75
    return-void
.end method

.method blacklist populateRecordTo(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 59
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget v0, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mStartZoneOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget v0, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mEndZoneOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {p0, p1}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->populateIntervalRecordTo(Landroid/os/Parcel;)V

    .line 65
    return-void
.end method

.method public blacklist setEndTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
    .registers 3
    .param p1, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 103
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mEndTime:J

    .line 104
    return-object p0
.end method

.method public blacklist setEndZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
    .registers 2
    .param p1, "endZoneOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    iput p1, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mEndZoneOffset:I

    .line 114
    return-object p0
.end method

.method public blacklist setStartTime(J)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
    .registers 3
    .param p1, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 83
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mStartTime:J

    .line 84
    return-object p0
.end method

.method public blacklist setStartZoneOffset(I)Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
    .registers 2
    .param p1, "startZoneOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Landroid/health/connect/internal/datatypes/IntervalRecordInternal;, "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<TT;>;"
    iput p1, p0, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;->mStartZoneOffset:I

    .line 94
    return-object p0
.end method
