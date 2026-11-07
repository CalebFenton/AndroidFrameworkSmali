.class public final Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;
.super Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
.source "ExerciseSessionRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x25
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<",
        "Landroid/health/connect/datatypes/ExerciseSessionRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mExerciseLaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExerciseLapInternal;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExerciseRoute:Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

.field private blacklist mExerciseSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExerciseType:I

.field private blacklist mHasRoute:Z

.field private blacklist mNotes:Ljava/lang/String;

.field private blacklist mPlannedExerciseSessionId:Ljava/util/UUID;

.field private blacklist mTitle:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addRouteLocation(Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;)V
    .registers 4
    .param p1, "location"    # Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    .line 245
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseRoute:Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    if-nez v0, :cond_13

    .line 246
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseRoute:Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mHasRoute:Z

    goto :goto_18

    .line 249
    :cond_13
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseRoute:Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    invoke-virtual {v0, p1}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;->addLocation(Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;)V

    .line 251
    :goto_18
    return-void
.end method

.method public blacklist getExerciseType()I
    .registers 2

    .line 75
    iget v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseType:I

    return v0
.end method

.method public blacklist getLaps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExerciseLapInternal;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseLaps:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getNotes()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mNotes:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPlannedExerciseSessionId()Ljava/util/UUID;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mPlannedExerciseSessionId:Ljava/util/UUID;

    return-object v0
.end method

.method public blacklist getRoute()Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseRoute:Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    return-object v0
.end method

.method public blacklist getSegments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseSegments:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasRoute()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mHasRoute:Z

    return v0
.end method

.method public blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mNotes:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseType:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mTitle:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mHasRoute:Z

    .line 236
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;->readFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseRoute:Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    .line 237
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->populateLapsFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseLaps:Ljava/util/List;

    .line 238
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->populateSegmentsFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseSegments:Ljava/util/List;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "uuid":Ljava/lang/String;
    if-nez v0, :cond_32

    const/4 v1, 0x0

    goto :goto_36

    :cond_32
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    :goto_36
    iput-object v1, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mPlannedExerciseSessionId:Ljava/util/UUID;

    .line 241
    return-void
.end method

.method public blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 218
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mNotes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-boolean v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mHasRoute:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 222
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseRoute:Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    invoke-static {v0, p1}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;->writeToParcel(Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;Landroid/os/Parcel;)V

    .line 223
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseLaps:Ljava/util/List;

    invoke-static {v0, p1}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->writeLapsToParcel(Ljava/util/List;Landroid/os/Parcel;)V

    .line 224
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseSegments:Ljava/util/List;

    invoke-static {v0, p1}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->writeSegmentsToParcel(Ljava/util/List;Landroid/os/Parcel;)V

    .line 225
    nop

    .line 226
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mPlannedExerciseSessionId:Ljava/util/UUID;

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    goto :goto_30

    :cond_2a
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mPlannedExerciseSessionId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public blacklist setExerciseLaps(Ljava/util/List;)Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExerciseLapInternal;",
            ">;)",
            "Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;"
        }
    .end annotation

    .line 139
    .local p1, "exerciseLaps":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/ExerciseLapInternal;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseLaps:Ljava/util/List;

    .line 141
    return-object p0
.end method

.method public blacklist setExerciseSegments(Ljava/util/List;)Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;",
            ">;)",
            "Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;"
        }
    .end annotation

    .line 153
    .local p1, "exerciseSegments":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseSegments:Ljava/util/List;

    .line 155
    return-object p0
.end method

.method public blacklist setExerciseType(I)Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;
    .registers 2
    .param p1, "exerciseType"    # I

    .line 81
    iput p1, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseType:I

    .line 82
    return-object p0
.end method

.method public blacklist setHasRoute(Z)Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;
    .registers 4
    .param p1, "hasRoute"    # Z

    .line 123
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseRoute:Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_7

    goto :goto_f

    .line 124
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HasRoute must be true if the route is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_f
    :goto_f
    iput-boolean p1, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mHasRoute:Z

    .line 127
    return-object p0
.end method

.method public blacklist setNotes(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;
    .registers 2
    .param p1, "notes"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mNotes:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public blacklist setPlannedExerciseSessionId(Ljava/util/UUID;)Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;
    .registers 2
    .param p1, "id"    # Ljava/util/UUID;

    .line 161
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mPlannedExerciseSessionId:Ljava/util/UUID;

    .line 162
    return-object p0
.end method

.method public blacklist setRoute(Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;)Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;
    .registers 3
    .param p1, "route"    # Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    .line 108
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseRoute:Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    .line 109
    if-eqz p1, :cond_7

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mHasRoute:Z

    .line 112
    :cond_7
    return-object p0
.end method

.method public blacklist setTitle(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mTitle:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/ExerciseSessionRecord;
    .registers 6

    .line 177
    new-instance v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;

    .line 179
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->getExerciseType()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;I)V

    .line 181
    .local v0, "builder":Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 182
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;

    .line 185
    :cond_22
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 186
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;

    .line 189
    :cond_2f
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->getNotes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 190
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->setNotes(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;

    .line 193
    :cond_3c
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 194
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;

    .line 197
    :cond_49
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseRoute:Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    if-eqz v1, :cond_56

    .line 198
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseRoute:Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;->toExternalRoute()Landroid/health/connect/datatypes/ExerciseRoute;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->setRoute(Landroid/health/connect/datatypes/ExerciseRoute;)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;

    .line 201
    :cond_56
    iget-boolean v1, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mHasRoute:Z

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->setHasRoute(Z)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;

    .line 203
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->getLaps()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 204
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseLaps:Ljava/util/List;

    invoke-static {v1}, Landroid/health/connect/internal/datatypes/ExerciseLapInternal;->getExternalLaps(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->setLaps(Ljava/util/List;)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;

    .line 207
    :cond_6a
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->getSegments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_79

    .line 208
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mExerciseSegments:Ljava/util/List;

    invoke-static {v1}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->getExternalSegments(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->setSegments(Ljava/util/List;)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;

    .line 211
    :cond_79
    nop

    .line 212
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mPlannedExerciseSessionId:Ljava/util/UUID;

    if-nez v1, :cond_80

    const/4 v1, 0x0

    goto :goto_86

    :cond_80
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->mPlannedExerciseSessionId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    :goto_86
    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->setPlannedExerciseSessionId(Ljava/lang/String;)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;

    .line 213
    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/ExerciseSessionRecord;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 37
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseSessionRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/ExerciseSessionRecord;

    move-result-object v0

    return-object v0
.end method
