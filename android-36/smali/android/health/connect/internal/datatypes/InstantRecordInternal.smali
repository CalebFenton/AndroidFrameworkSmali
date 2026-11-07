.class public abstract Landroid/health/connect/internal/datatypes/InstantRecordInternal;
.super Landroid/health/connect/internal/datatypes/RecordInternal;
.source "InstantRecordInternal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/health/connect/datatypes/InstantRecord;",
        ">",
        "Landroid/health/connect/internal/datatypes/RecordInternal<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blacklist mTime:J

.field private blacklist mZoneOffset:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    .local p0, "this":Landroid/health/connect/internal/datatypes/InstantRecordInternal;, "Landroid/health/connect/internal/datatypes/InstantRecordInternal<TT;>;"
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/RecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getLocalDate()Ljava/time/LocalDate;
    .registers 3

    .line 51
    .local p0, "this":Landroid/health/connect/internal/datatypes/InstantRecordInternal;, "Landroid/health/connect/internal/datatypes/InstantRecordInternal<TT;>;"
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;->getTime()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRecordTime()J
    .registers 3

    .line 72
    .local p0, "this":Landroid/health/connect/internal/datatypes/InstantRecordInternal;, "Landroid/health/connect/internal/datatypes/InstantRecordInternal<TT;>;"
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getTime()Ljava/time/Instant;
    .registers 3

    .line 76
    .local p0, "this":Landroid/health/connect/internal/datatypes/InstantRecordInternal;, "Landroid/health/connect/internal/datatypes/InstantRecordInternal<TT;>;"
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/InstantRecordInternal;->mTime:J

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTimeInMillis()J
    .registers 3

    .line 38
    .local p0, "this":Landroid/health/connect/internal/datatypes/InstantRecordInternal;, "Landroid/health/connect/internal/datatypes/InstantRecordInternal<TT;>;"
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/InstantRecordInternal;->mTime:J

    return-wide v0
.end method

.method blacklist getZoneOffset()Ljava/time/ZoneOffset;
    .registers 2

    .line 90
    .local p0, "this":Landroid/health/connect/internal/datatypes/InstantRecordInternal;, "Landroid/health/connect/internal/datatypes/InstantRecordInternal<TT;>;"
    iget v0, p0, Landroid/health/connect/internal/datatypes/InstantRecordInternal;->mZoneOffset:I

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getZoneOffsetInSeconds()I
    .registers 2

    .line 42
    .local p0, "this":Landroid/health/connect/internal/datatypes/InstantRecordInternal;, "Landroid/health/connect/internal/datatypes/InstantRecordInternal<TT;>;"
    iget v0, p0, Landroid/health/connect/internal/datatypes/InstantRecordInternal;->mZoneOffset:I

    return v0
.end method

.method abstract blacklist populateInstantRecordFrom(Landroid/os/Parcel;)V
.end method

.method abstract blacklist populateInstantRecordTo(Landroid/os/Parcel;)V
.end method

.method blacklist populateRecordFrom(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 56
    .local p0, "this":Landroid/health/connect/internal/datatypes/InstantRecordInternal;, "Landroid/health/connect/internal/datatypes/InstantRecordInternal<TT;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/InstantRecordInternal;->mTime:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/InstantRecordInternal;->mZoneOffset:I

    .line 59
    invoke-virtual {p0, p1}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;->populateInstantRecordFrom(Landroid/os/Parcel;)V

    .line 60
    return-void
.end method

.method blacklist populateRecordTo(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 64
    .local p0, "this":Landroid/health/connect/internal/datatypes/InstantRecordInternal;, "Landroid/health/connect/internal/datatypes/InstantRecordInternal<TT;>;"
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/InstantRecordInternal;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget v0, p0, Landroid/health/connect/internal/datatypes/InstantRecordInternal;->mZoneOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {p0, p1}, Landroid/health/connect/internal/datatypes/InstantRecordInternal;->populateInstantRecordTo(Landroid/os/Parcel;)V

    .line 68
    return-void
.end method

.method public blacklist setTime(J)Landroid/health/connect/internal/datatypes/InstantRecordInternal;
    .registers 3
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/health/connect/internal/datatypes/InstantRecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 85
    .local p0, "this":Landroid/health/connect/internal/datatypes/InstantRecordInternal;, "Landroid/health/connect/internal/datatypes/InstantRecordInternal<TT;>;"
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/InstantRecordInternal;->mTime:J

    .line 86
    return-object p0
.end method

.method public blacklist setZoneOffset(I)Landroid/health/connect/internal/datatypes/InstantRecordInternal;
    .registers 2
    .param p1, "zoneOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/health/connect/internal/datatypes/InstantRecordInternal<",
            "TT;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Landroid/health/connect/internal/datatypes/InstantRecordInternal;, "Landroid/health/connect/internal/datatypes/InstantRecordInternal<TT;>;"
    iput p1, p0, Landroid/health/connect/internal/datatypes/InstantRecordInternal;->mZoneOffset:I

    .line 100
    return-object p0
.end method
