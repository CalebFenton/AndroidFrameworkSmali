.class public final Landroid/health/connect/exportimport/ScheduledExportStatus;
.super Ljava/lang/Object;
.source "ScheduledExportStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;,
        Landroid/health/connect/exportimport/ScheduledExportStatus$DataExportError;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/exportimport/ScheduledExportStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DATA_EXPORT_ERROR_CLEARING_LOG_TABLES:I = 0x4

.field public static final blacklist DATA_EXPORT_ERROR_CLEARING_PHR_TABLES:I = 0x5

.field public static final blacklist DATA_EXPORT_ERROR_NONE:I = 0x0

.field public static final blacklist DATA_EXPORT_ERROR_UNKNOWN:I = 0x1

.field public static final blacklist DATA_EXPORT_ERROR_UNSPECIFIED:I = -0x1

.field public static final blacklist DATA_EXPORT_LOST_FILE_ACCESS:I = 0x2

.field public static final blacklist DATA_EXPORT_STARTED:I = 0x3


# instance fields
.field private final blacklist mDataExportError:I

.field private final blacklist mLastExportAppName:Ljava/lang/String;

.field private final blacklist mLastExportFileName:Ljava/lang/String;

.field private final blacklist mLastFailedExportTime:Ljava/time/Instant;

.field private final blacklist mLastSuccessfulExportTime:Ljava/time/Instant;

.field private final blacklist mNextExportAppName:Ljava/lang/String;

.field private final blacklist mNextExportFileName:Ljava/lang/String;

.field private final blacklist mNextExportSequentialNumber:I

.field private final blacklist mPeriodInDays:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Landroid/health/connect/exportimport/ScheduledExportStatus$1;

    invoke-direct {v0}, Landroid/health/connect/exportimport/ScheduledExportStatus$1;-><init>()V

    sput-object v0, Landroid/health/connect/exportimport/ScheduledExportStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 215
    .local v0, "timestamp":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_10

    move-object v4, v5

    goto :goto_14

    :cond_10
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    :goto_14
    iput-object v4, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastSuccessfulExportTime:Ljava/time/Instant;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 217
    .local v6, "lastFailedExportTimestamp":J
    nop

    .line 218
    cmp-long v2, v0, v2

    if-nez v2, :cond_20

    goto :goto_24

    :cond_20
    invoke-static {v6, v7}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v5

    :goto_24
    iput-object v5, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastFailedExportTime:Ljava/time/Instant;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mDataExportError:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mPeriodInDays:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastExportFileName:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastExportAppName:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mNextExportFileName:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mNextExportAppName:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mNextExportSequentialNumber:I

    .line 226
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/exportimport/ScheduledExportStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/exportimport/ScheduledExportStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/time/Instant;Ljava/time/Instant;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "lastSuccessfulExportTime"    # Ljava/time/Instant;
    .param p2, "lastFailedExportTime"    # Ljava/time/Instant;
    .param p3, "dataExportError"    # I
    .param p4, "periodInDays"    # I
    .param p5, "lastExportFileName"    # Ljava/lang/String;
    .param p6, "lastExportAppName"    # Ljava/lang/String;
    .param p7, "nextExportFileName"    # Ljava/lang/String;
    .param p8, "nextExportAppName"    # Ljava/lang/String;
    .param p9, "nextExportSequentialNumber"    # I

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastSuccessfulExportTime:Ljava/time/Instant;

    .line 136
    iput-object p2, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastFailedExportTime:Ljava/time/Instant;

    .line 137
    iput p3, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mDataExportError:I

    .line 138
    iput p4, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mPeriodInDays:I

    .line 139
    iput-object p5, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastExportFileName:Ljava/lang/String;

    .line 140
    iput-object p6, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastExportAppName:Ljava/lang/String;

    .line 141
    iput-object p7, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mNextExportFileName:Ljava/lang/String;

    .line 142
    iput-object p8, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mNextExportAppName:Ljava/lang/String;

    .line 143
    iput p9, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mNextExportSequentialNumber:I

    .line 144
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/time/Instant;Ljava/time/Instant;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/health/connect/exportimport/ScheduledExportStatus-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/health/connect/exportimport/ScheduledExportStatus;-><init>(Ljava/time/Instant;Ljava/time/Instant;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataExportError()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mDataExportError:I

    return v0
.end method

.method public blacklist getLastExportAppName()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastExportAppName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLastExportFileName()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastExportFileName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLastFailedExportTime()Ljava/time/Instant;
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastFailedExportTime:Ljava/time/Instant;

    return-object v0
.end method

.method public blacklist getLastSuccessfulExportTime()Ljava/time/Instant;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastSuccessfulExportTime:Ljava/time/Instant;

    return-object v0
.end method

.method public blacklist getNextExportAppName()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mNextExportAppName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNextExportFileName()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mNextExportFileName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNextExportSequentialNumber()I
    .registers 2

    .line 205
    iget v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mNextExportSequentialNumber:I

    return v0
.end method

.method public blacklist getPeriodInDays()I
    .registers 2

    .line 176
    iget v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mPeriodInDays:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 230
    nop

    .line 231
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastSuccessfulExportTime:Ljava/time/Instant;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    move-wide v3, v1

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastSuccessfulExportTime:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    .line 230
    :goto_f
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastFailedExportTime:Ljava/time/Instant;

    if-nez v0, :cond_17

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastFailedExportTime:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    :goto_1d
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    iget v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mDataExportError:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mPeriodInDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastExportFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mLastExportAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mNextExportFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mNextExportAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget v0, p0, Landroid/health/connect/exportimport/ScheduledExportStatus;->mNextExportSequentialNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    return-void
.end method
