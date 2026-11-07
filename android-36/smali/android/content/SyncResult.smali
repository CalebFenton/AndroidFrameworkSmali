.class public final Landroid/content/SyncResult;
.super Ljava/lang/Object;
.source "SyncResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/SyncResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist databaseError:Z

.field public whitelist delayUntil:J

.field public whitelist fullSyncRequested:Z

.field public whitelist moreRecordsToGet:Z

.field public whitelist partialSyncUnavailable:Z

.field public final whitelist stats:Landroid/content/SyncStats;

.field public final whitelist syncAlreadyInProgress:Z

.field public whitelist tooManyDeletions:Z

.field public whitelist tooManyRetries:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 111
    new-instance v0, Landroid/content/SyncResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/SyncResult;-><init>(Z)V

    sput-object v0, Landroid/content/SyncResult;->ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

    .line 238
    new-instance v0, Landroid/content/SyncResult$1;

    invoke-direct {v0}, Landroid/content/SyncResult$1;-><init>()V

    sput-object v0, Landroid/content/SyncResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/SyncResult;-><init>(Z)V

    .line 130
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    move v0, v2

    :goto_24
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v1

    goto :goto_2f

    :cond_2e
    move v0, v2

    :goto_2f
    iput-boolean v0, p0, Landroid/content/SyncResult;->databaseError:Z

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    move v0, v1

    goto :goto_3a

    :cond_39
    move v0, v2

    :goto_3a
    iput-boolean v0, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44

    move v0, v1

    goto :goto_45

    :cond_44
    move v0, v2

    :goto_45
    iput-boolean v0, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v2

    :goto_4f
    iput-boolean v1, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncResult;->delayUntil:J

    .line 157
    new-instance v0, Landroid/content/SyncStats;

    invoke-direct {v0, p1}, Landroid/content/SyncStats;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 158
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/SyncResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/SyncResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Z)V
    .registers 4
    .param p1, "syncAlreadyInProgress"    # Z

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-boolean p1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 140
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 141
    iput-boolean v0, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 142
    iput-boolean v0, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    .line 143
    iput-boolean v0, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncResult;->delayUntil:J

    .line 145
    new-instance v0, Landroid/content/SyncStats;

    invoke-direct {v0}, Landroid/content/SyncStats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 146
    return-void
.end method


# virtual methods
.method public whitelist clear()V
    .registers 3

    .line 224
    iget-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v0, :cond_1b

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 229
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 230
    iput-boolean v0, p0, Landroid/content/SyncResult;->databaseError:Z

    .line 231
    iput-boolean v0, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 232
    iput-boolean v0, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    .line 233
    iput-boolean v0, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    .line 234
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncResult;->delayUntil:J

    .line 235
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v0}, Landroid/content/SyncStats;->clear()V

    .line 236
    return-void

    .line 225
    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "you are not allowed to clear the ALREADY_IN_PROGRESS SyncStats"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasError()Z
    .registers 2

    .line 205
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/content/SyncResult;->hasHardError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist hasHardError()Z
    .registers 5

    .line 176
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_29

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_29

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_29

    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-nez v0, :cond_29

    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-nez v0, :cond_29

    iget-boolean v0, p0, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    return v0
.end method

.method public whitelist hasSoftError()Z
    .registers 5

    .line 197
    iget-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public whitelist madeSomeProgress()Z
    .registers 5

    .line 214
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_21

    :cond_e
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_21

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method

.method public whitelist toDebugString()Ljava/lang/String;
    .registers 8

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v1, :cond_e

    .line 298
    const-string v1, "f1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_e
    iget-boolean v1, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    if-eqz v1, :cond_18

    .line 301
    const-string/jumbo v1, "r1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_18
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasHardError()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 304
    const-string v1, "X1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_23
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3a

    .line 307
    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v2, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 309
    :cond_3a
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_4f

    .line 310
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v2, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 312
    :cond_4f
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_64

    .line 313
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 315
    :cond_64
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v1, :cond_6d

    .line 316
    const-string v1, "D1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_6d
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v1, :cond_76

    .line 319
    const-string v1, "R1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_76
    iget-boolean v1, p0, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v1, :cond_7f

    .line 322
    const-string v1, "b1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_7f
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 325
    const-string/jumbo v1, "x1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_8b
    iget-boolean v1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v1, :cond_95

    .line 328
    const-string/jumbo v1, "l1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_95
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_aa

    .line 331
    const-string v1, "I"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numIoExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 333
    :cond_aa
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SyncResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-boolean v1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v1, :cond_19

    .line 269
    const-string v1, " syncAlreadyInProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 271
    :cond_19
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v1, :cond_28

    const-string v1, " tooManyDeletions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 272
    :cond_28
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v1, :cond_37

    const-string v1, " tooManyRetries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 273
    :cond_37
    iget-boolean v1, p0, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v1, :cond_46

    const-string v1, " databaseError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->databaseError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 274
    :cond_46
    iget-boolean v1, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v1, :cond_55

    const-string v1, " fullSyncRequested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 275
    :cond_55
    iget-boolean v1, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    if-eqz v1, :cond_64

    .line 276
    const-string v1, " partialSyncUnavailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 278
    :cond_64
    iget-boolean v1, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    if-eqz v1, :cond_73

    const-string v1, " moreRecordsToGet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 279
    :cond_73
    iget-wide v1, p0, Landroid/content/SyncResult;->delayUntil:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_86

    const-string v1, " delayUntil: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/SyncResult;->delayUntil:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 280
    :cond_86
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 253
    iget-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-boolean v0, p0, Landroid/content/SyncResult;->databaseError:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-boolean v0, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-boolean v0, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-boolean v0, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget-wide v0, p0, Landroid/content/SyncResult;->delayUntil:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 261
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v0, p1, p2}, Landroid/content/SyncStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 262
    return-void
.end method
