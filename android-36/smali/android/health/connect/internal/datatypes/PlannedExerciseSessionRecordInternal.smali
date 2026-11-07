.class public final Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;
.super Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
.source "PlannedExerciseSessionRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x28
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<",
        "Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mCompletedExerciseSessionId:Ljava/util/UUID;

.field private blacklist mExerciseBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExerciseType:I

.field private blacklist mHasExplicitTime:Z

.field private blacklist mNotes:Ljava/lang/String;

.field private blacklist mTitle:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;-><init>()V

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mExerciseBlocks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist getCompletedExerciseSessionId()Ljava/util/UUID;
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mCompletedExerciseSessionId:Ljava/util/UUID;

    return-object v0
.end method

.method public blacklist getExerciseBlocks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mExerciseBlocks:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getExerciseType()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mExerciseType:I

    return v0
.end method

.method public blacklist getHasExplicitTime()Z
    .registers 2

    .line 113
    iget-boolean v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mHasExplicitTime:Z

    return v0
.end method

.method public blacklist getNotes()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mNotes:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mNotes:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mExerciseType:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mTitle:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mHasExplicitTime:Z

    .line 135
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->readFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mExerciseBlocks:Ljava/util/List;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "uuid":Ljava/lang/String;
    if-nez v0, :cond_26

    const/4 v1, 0x0

    goto :goto_2a

    :cond_26
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    :goto_2a
    iput-object v1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mCompletedExerciseSessionId:Ljava/util/UUID;

    .line 138
    return-void
.end method

.method blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 142
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mNotes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mExerciseType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-boolean v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mHasExplicitTime:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 146
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mExerciseBlocks:Ljava/util/List;

    invoke-static {v0, p1}, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->writeToParcel(Ljava/util/List;Landroid/os/Parcel;)V

    .line 147
    nop

    .line 148
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mCompletedExerciseSessionId:Ljava/util/UUID;

    if-nez v0, :cond_20

    .line 149
    const/4 v0, 0x0

    goto :goto_26

    .line 150
    :cond_20
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mCompletedExerciseSessionId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public blacklist setCompletedExerciseSessionId(Ljava/util/UUID;)Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;
    .registers 2
    .param p1, "id"    # Ljava/util/UUID;

    .line 95
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mCompletedExerciseSessionId:Ljava/util/UUID;

    .line 96
    return-object p0
.end method

.method public blacklist setExerciseBlocks(Ljava/util/List;)Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;",
            ">;)",
            "Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;"
        }
    .end annotation

    .line 88
    .local p1, "blocks":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;>;"
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mExerciseBlocks:Ljava/util/List;

    .line 89
    return-object p0
.end method

.method public blacklist setExerciseType(I)Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;
    .registers 2
    .param p1, "exerciseType"    # I

    .line 125
    iput p1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mExerciseType:I

    .line 126
    return-object p0
.end method

.method public blacklist setHasExplicitTime(Z)Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;
    .registers 2
    .param p1, "hasExplicitTime"    # Z

    .line 80
    iput-boolean p1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mHasExplicitTime:Z

    .line 81
    return-object p0
.end method

.method public blacklist setNotes(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;
    .registers 2
    .param p1, "notes"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mNotes:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public blacklist setTitle(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mTitle:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;
    .registers 7

    .line 157
    iget-boolean v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mHasExplicitTime:Z

    if-eqz v0, :cond_1a

    .line 158
    new-instance v0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;

    .line 159
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->getExerciseType()I

    move-result v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;ILjava/time/Instant;Ljava/time/Instant;)V

    goto :goto_43

    .line 160
    :cond_1a
    new-instance v0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;

    .line 161
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->getExerciseType()I

    move-result v2

    .line 163
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/Instant;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v3

    .line 164
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;ILjava/time/LocalDate;Ljava/time/Duration;)V

    :goto_43
    nop

    .line 166
    .local v0, "builder":Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 167
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;

    .line 169
    :cond_51
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 170
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;

    .line 172
    :cond_5e
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->getNotes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6b

    .line 173
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->setNotes(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;

    .line 175
    :cond_6b
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_78

    .line 176
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;

    .line 178
    :cond_78
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mExerciseBlocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;

    .line 179
    .local v2, "block":Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->toExternalObject()Landroid/health/connect/datatypes/PlannedExerciseBlock;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->addBlock(Landroid/health/connect/datatypes/PlannedExerciseBlock;)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;

    .line 180
    .end local v2    # "block":Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;
    goto :goto_7e

    .line 181
    :cond_92
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mCompletedExerciseSessionId:Ljava/util/UUID;

    if-eqz v1, :cond_9f

    .line 182
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->mCompletedExerciseSessionId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->setCompletedExerciseSessionId(Ljava/lang/String;)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;

    .line 184
    :cond_9f
    invoke-virtual {v0}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 37
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseSessionRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;

    move-result-object v0

    return-object v0
.end method
