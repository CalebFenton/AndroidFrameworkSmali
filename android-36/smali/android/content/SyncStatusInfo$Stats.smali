.class public Landroid/content/SyncStatusInfo$Stats;
.super Ljava/lang/Object;
.source "SyncStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field public greylist-max-o numCancels:I

.field public greylist-max-o numFailures:I

.field public greylist-max-o numSourceFeed:I

.field public greylist-max-o numSourceLocal:I

.field public greylist-max-o numSourceOther:I

.field public greylist-max-o numSourcePeriodic:I

.field public greylist-max-o numSourcePoll:I

.field public greylist-max-o numSourceUser:I

.field public greylist-max-o numSyncs:I

.field public greylist-max-o totalElapsedTime:J


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o clear()V
    .registers 3

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 80
    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 81
    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 82
    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 83
    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 84
    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 85
    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 86
    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 87
    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 88
    return-void
.end method

.method public greylist-max-o copyTo(Landroid/content/SyncStatusInfo$Stats;)V
    .registers 4
    .param p1, "to"    # Landroid/content/SyncStatusInfo$Stats;

    .line 64
    iget-wide v0, p0, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    iput-wide v0, p1, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 65
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 66
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 67
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 68
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 69
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 70
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 71
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 72
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 73
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 74
    return-void
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 116
    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 92
    iget-wide v0, p0, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void
.end method
