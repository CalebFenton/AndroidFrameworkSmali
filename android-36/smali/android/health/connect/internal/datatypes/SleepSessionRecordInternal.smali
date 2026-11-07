.class public final Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;
.super Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
.source "SleepSessionRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x26
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<",
        "Landroid/health/connect/datatypes/SleepSessionRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mNotes:Ljava/lang/String;

.field private blacklist mStages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/SleepStageInternal;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTitle:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addSleepStage(Landroid/health/connect/internal/datatypes/SleepStageInternal;)Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;
    .registers 3
    .param p1, "stage"    # Landroid/health/connect/internal/datatypes/SleepStageInternal;

    .line 84
    if-eqz p1, :cond_12

    .line 85
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->mStages:Ljava/util/List;

    if-nez v0, :cond_d

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->mStages:Ljava/util/List;

    .line 88
    :cond_d
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->mStages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_12
    return-object p0
.end method

.method public blacklist getNotes()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->mNotes:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSleepStages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/SleepStageInternal;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->mStages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->mNotes:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->mTitle:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/SleepStageInternal;->populateStagesFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->mStages:Ljava/util/List;

    .line 105
    return-void
.end method

.method public blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 95
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->mNotes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->mStages:Ljava/util/List;

    invoke-static {v0, p1}, Landroid/health/connect/internal/datatypes/SleepStageInternal;->writeStagesToParcel(Ljava/util/List;Landroid/os/Parcel;)V

    .line 98
    return-void
.end method

.method public blacklist setNotes(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;
    .registers 2
    .param p1, "notes"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->mNotes:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public blacklist setSleepStages(Ljava/util/List;)Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/SleepStageInternal;",
            ">;)",
            "Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;"
        }
    .end annotation

    .line 77
    .local p1, "stages":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/SleepStageInternal;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->mStages:Ljava/util/List;

    .line 79
    return-object p0
.end method

.method public blacklist setTitle(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->mTitle:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/SleepSessionRecord;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/SleepSessionRecord;
    .registers 5

    .line 110
    new-instance v0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;

    .line 111
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;)V

    .line 113
    .local v0, "builder":Landroid/health/connect/datatypes/SleepSessionRecord$Builder;
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 114
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/SleepSessionRecord$Builder;

    .line 117
    :cond_1e
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 118
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/SleepSessionRecord$Builder;

    .line 121
    :cond_2b
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->getNotes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 122
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->setNotes(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/SleepSessionRecord$Builder;

    .line 125
    :cond_38
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 126
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/SleepSessionRecord$Builder;

    .line 129
    :cond_45
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->getSleepStages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 130
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/SleepSessionRecordInternal;->mStages:Ljava/util/List;

    invoke-static {v1}, Landroid/health/connect/internal/datatypes/SleepStageInternal;->getExternalStages(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->setStages(Ljava/util/List;)Landroid/health/connect/datatypes/SleepSessionRecord$Builder;

    .line 132
    :cond_54
    invoke-virtual {v0}, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/SleepSessionRecord;

    move-result-object v1

    return-object v1
.end method
