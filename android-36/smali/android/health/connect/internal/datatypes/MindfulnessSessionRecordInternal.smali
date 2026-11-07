.class public final Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;
.super Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
.source "MindfulnessSessionRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x29
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<",
        "Landroid/health/connect/datatypes/MindfulnessSessionRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mMindfulnessSessionType:I

.field private blacklist mNotes:Ljava/lang/String;

.field private blacklist mTitle:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getMindfulnessSessionType()I
    .registers 2

    .line 79
    iget v0, p0, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->mMindfulnessSessionType:I

    return v0
.end method

.method public blacklist getNotes()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->mNotes:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->mMindfulnessSessionType:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->mTitle:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->mNotes:Ljava/lang/String;

    .line 43
    return-void
.end method

.method blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 47
    iget v0, p0, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->mMindfulnessSessionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->mNotes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public blacklist setMindfulnessSessionType(I)Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;
    .registers 2
    .param p1, "mindfulnessSessionType"    # I

    .line 87
    iput p1, p0, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->mMindfulnessSessionType:I

    .line 88
    return-object p0
.end method

.method public blacklist setNotes(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;
    .registers 2
    .param p1, "notes"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->mNotes:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public blacklist setTitle(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->mTitle:Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/MindfulnessSessionRecord;
    .registers 6

    .line 54
    new-instance v0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;

    .line 56
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    iget v4, p0, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->mMindfulnessSessionType:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;I)V

    .line 58
    .local v0, "builder":Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 59
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;

    .line 62
    :cond_20
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 63
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;

    .line 66
    :cond_2d
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 67
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;

    .line 70
    :cond_3a
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->getNotes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 71
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->setNotes(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;

    .line 74
    :cond_47
    invoke-virtual {v0}, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/MindfulnessSessionRecord;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 30
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/MindfulnessSessionRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/MindfulnessSessionRecord;

    move-result-object v0

    return-object v0
.end method
