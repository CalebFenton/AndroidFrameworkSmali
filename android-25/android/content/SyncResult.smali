.class public final Landroid/content/SyncResult;
.super Ljava/lang/Object;
.source "SyncResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncResult$1;
    }
.end annotation


# static fields
.field public static final ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public databaseError:Z

.field public delayUntil:J

.field public fullSyncRequested:Z

.field public moreRecordsToGet:Z

.field public partialSyncUnavailable:Z

.field public final stats:Landroid/content/SyncStats;

.field public final syncAlreadyInProgress:Z

.field public tooManyDeletions:Z

.field public tooManyRetries:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 101
    new-instance v0, Landroid/content/SyncResult;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroid/content/SyncResult;-><init>(Z)V

    #@6
    sput-object v0, Landroid/content/SyncResult;->ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

    #@8
    .line 228
    new-instance v0, Landroid/content/SyncResult$1;

    #@a
    invoke-direct {v0}, Landroid/content/SyncResult$1;-><init>()V

    #@d
    sput-object v0, Landroid/content/SyncResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 119
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/content/SyncResult;-><init>(Z)V

    #@4
    .line 118
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    move v0, v1

    #@c
    :goto_0
    iput-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    #@e
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    move v0, v1

    #@15
    :goto_1
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    #@17
    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    move v0, v1

    #@1e
    :goto_2
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    #@20
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_3

    #@26
    move v0, v1

    #@27
    :goto_3
    iput-boolean v0, p0, Landroid/content/SyncResult;->databaseError:Z

    #@29
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_4

    #@2f
    move v0, v1

    #@30
    :goto_4
    iput-boolean v0, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    #@32
    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_5

    #@38
    move v0, v1

    #@39
    :goto_5
    iput-boolean v0, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    #@3b
    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_6

    #@41
    :goto_6
    iput-boolean v1, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    #@43
    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@46
    move-result-wide v0

    #@47
    iput-wide v0, p0, Landroid/content/SyncResult;->delayUntil:J

    #@49
    .line 147
    new-instance v0, Landroid/content/SyncStats;

    #@4b
    invoke-direct {v0, p1}, Landroid/content/SyncStats;-><init>(Landroid/os/Parcel;)V

    #@4e
    iput-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@50
    .line 138
    return-void

    #@51
    :cond_0
    move v0, v2

    #@52
    .line 139
    goto :goto_0

    #@53
    :cond_1
    move v0, v2

    #@54
    .line 140
    goto :goto_1

    #@55
    :cond_2
    move v0, v2

    #@56
    .line 141
    goto :goto_2

    #@57
    :cond_3
    move v0, v2

    #@58
    .line 142
    goto :goto_3

    #@59
    :cond_4
    move v0, v2

    #@5a
    .line 143
    goto :goto_4

    #@5b
    :cond_5
    move v0, v2

    #@5c
    .line 144
    goto :goto_5

    #@5d
    :cond_6
    move v1, v2

    #@5e
    .line 145
    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/SyncResult;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/SyncResult;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "syncAlreadyInProgress"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 128
    iput-boolean p1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    #@6
    .line 129
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    #@8
    .line 130
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    #@a
    .line 131
    iput-boolean v0, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    #@c
    .line 132
    iput-boolean v0, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    #@e
    .line 133
    iput-boolean v0, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    #@10
    .line 134
    const-wide/16 v0, 0x0

    #@12
    iput-wide v0, p0, Landroid/content/SyncResult;->delayUntil:J

    #@14
    .line 135
    new-instance v0, Landroid/content/SyncStats;

    #@16
    invoke-direct {v0}, Landroid/content/SyncStats;-><init>()V

    #@19
    iput-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@1b
    .line 127
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 214
    iget-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@7
    .line 216
    const-string/jumbo v1, "you are not allowed to clear the ALREADY_IN_PROGRESS SyncStats"

    #@a
    .line 215
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 218
    :cond_0
    iput-boolean v1, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    #@10
    .line 219
    iput-boolean v1, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    #@12
    .line 220
    iput-boolean v1, p0, Landroid/content/SyncResult;->databaseError:Z

    #@14
    .line 221
    iput-boolean v1, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    #@16
    .line 222
    iput-boolean v1, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    #@18
    .line 223
    iput-boolean v1, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    #@1a
    .line 224
    const-wide/16 v0, 0x0

    #@1c
    iput-wide v0, p0, Landroid/content/SyncResult;->delayUntil:J

    #@1e
    .line 225
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@20
    invoke-virtual {v0}, Landroid/content/SyncStats;->clear()V

    #@23
    .line 213
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 239
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasError()Z
    .locals 1

    #@0
    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasSoftError()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasHardError()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public hasHardError()Z
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 166
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@4
    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    #@6
    cmp-long v0, v0, v2

    #@8
    if-gtz v0, :cond_0

    #@a
    .line 167
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@c
    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    #@e
    cmp-long v0, v0, v2

    #@10
    if-lez v0, :cond_1

    #@12
    .line 166
    :cond_0
    const/4 v0, 0x1

    #@13
    :goto_0
    return v0

    #@14
    .line 168
    :cond_1
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@16
    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    #@18
    cmp-long v0, v0, v2

    #@1a
    if-gtz v0, :cond_0

    #@1c
    .line 169
    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    #@1e
    .line 166
    if-nez v0, :cond_0

    #@20
    .line 170
    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    #@22
    .line 166
    if-nez v0, :cond_0

    #@24
    .line 171
    iget-boolean v0, p0, Landroid/content/SyncResult;->databaseError:Z

    #@26
    goto :goto_0
.end method

.method public hasSoftError()Z
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 187
    iget-boolean v1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@7
    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    #@9
    const-wide/16 v4, 0x0

    #@b
    cmp-long v1, v2, v4

    #@d
    if-lez v1, :cond_1

    #@f
    :cond_0
    :goto_0
    return v0

    #@10
    :cond_1
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public madeSomeProgress()Z
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const-wide/16 v4, 0x0

    #@3
    .line 204
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@5
    iget-wide v2, v1, Landroid/content/SyncStats;->numDeletes:J

    #@7
    cmp-long v1, v2, v4

    #@9
    if-lez v1, :cond_0

    #@b
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 205
    :cond_0
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@11
    iget-wide v2, v1, Landroid/content/SyncStats;->numInserts:J

    #@13
    cmp-long v1, v2, v4

    #@15
    if-lez v1, :cond_2

    #@17
    .line 204
    :cond_1
    :goto_0
    return v0

    #@18
    .line 206
    :cond_2
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@1a
    iget-wide v2, v1, Landroid/content/SyncStats;->numUpdates:J

    #@1c
    cmp-long v1, v2, v4

    #@1e
    if-gtz v1, :cond_1

    #@20
    const/4 v0, 0x0

    #@21
    goto :goto_0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 285
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 287
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 288
    const-string/jumbo v1, "f1"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    .line 290
    :cond_0
    iget-boolean v1, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 291
    const-string/jumbo v1, "r1"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b
    .line 293
    :cond_1
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasHardError()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 294
    const-string/jumbo v1, "X1"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    .line 296
    :cond_2
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@29
    iget-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    #@2b
    cmp-long v1, v2, v4

    #@2d
    if-lez v1, :cond_3

    #@2f
    .line 297
    const-string/jumbo v1, "e"

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@35
    move-result-object v1

    #@36
    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@38
    iget-wide v2, v2, Landroid/content/SyncStats;->numParseExceptions:J

    #@3a
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@3d
    .line 299
    :cond_3
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@3f
    iget-wide v2, v1, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    #@41
    cmp-long v1, v2, v4

    #@43
    if-lez v1, :cond_4

    #@45
    .line 300
    const-string/jumbo v1, "c"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4b
    move-result-object v1

    #@4c
    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@4e
    iget-wide v2, v2, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    #@50
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@53
    .line 302
    :cond_4
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@55
    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    #@57
    cmp-long v1, v2, v4

    #@59
    if-lez v1, :cond_5

    #@5b
    .line 303
    const-string/jumbo v1, "a"

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@61
    move-result-object v1

    #@62
    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@64
    iget-wide v2, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    #@66
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@69
    .line 305
    :cond_5
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    #@6b
    if-eqz v1, :cond_6

    #@6d
    .line 306
    const-string/jumbo v1, "D1"

    #@70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@73
    .line 308
    :cond_6
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    #@75
    if-eqz v1, :cond_7

    #@77
    .line 309
    const-string/jumbo v1, "R1"

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7d
    .line 311
    :cond_7
    iget-boolean v1, p0, Landroid/content/SyncResult;->databaseError:Z

    #@7f
    if-eqz v1, :cond_8

    #@81
    .line 312
    const-string/jumbo v1, "b1"

    #@84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@87
    .line 314
    :cond_8
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasSoftError()Z

    #@8a
    move-result v1

    #@8b
    if-eqz v1, :cond_9

    #@8d
    .line 315
    const-string/jumbo v1, "x1"

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@93
    .line 317
    :cond_9
    iget-boolean v1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    #@95
    if-eqz v1, :cond_a

    #@97
    .line 318
    const-string/jumbo v1, "l1"

    #@9a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9d
    .line 320
    :cond_a
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@9f
    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    #@a1
    cmp-long v1, v2, v4

    #@a3
    if-lez v1, :cond_b

    #@a5
    .line 321
    const-string/jumbo v1, "I"

    #@a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ab
    move-result-object v1

    #@ac
    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@ae
    iget-wide v2, v2, Landroid/content/SyncStats;->numIoExceptions:J

    #@b0
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@b3
    .line 323
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@b6
    move-result-object v1

    #@b7
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 257
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SyncResult:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 258
    iget-boolean v1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 259
    const-string/jumbo v1, " syncAlreadyInProgress: "

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-boolean v2, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b
    .line 261
    :cond_0
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    #@1d
    if-eqz v1, :cond_1

    #@1f
    const-string/jumbo v1, " tooManyDeletions: "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget-boolean v2, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    .line 262
    :cond_1
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    #@2d
    if-eqz v1, :cond_2

    #@2f
    const-string/jumbo v1, " tooManyRetries: "

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    iget-boolean v2, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3b
    .line 263
    :cond_2
    iget-boolean v1, p0, Landroid/content/SyncResult;->databaseError:Z

    #@3d
    if-eqz v1, :cond_3

    #@3f
    const-string/jumbo v1, " databaseError: "

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    iget-boolean v2, p0, Landroid/content/SyncResult;->databaseError:Z

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4b
    .line 264
    :cond_3
    iget-boolean v1, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    #@4d
    if-eqz v1, :cond_4

    #@4f
    const-string/jumbo v1, " fullSyncRequested: "

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    iget-boolean v2, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5b
    .line 265
    :cond_4
    iget-boolean v1, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    #@5d
    if-eqz v1, :cond_5

    #@5f
    .line 266
    const-string/jumbo v1, " partialSyncUnavailable: "

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    iget-boolean v2, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    #@68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6b
    .line 268
    :cond_5
    iget-boolean v1, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    #@6d
    if-eqz v1, :cond_6

    #@6f
    const-string/jumbo v1, " moreRecordsToGet: "

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    iget-boolean v2, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7b
    .line 269
    :cond_6
    iget-wide v2, p0, Landroid/content/SyncResult;->delayUntil:J

    #@7d
    const-wide/16 v4, 0x0

    #@7f
    cmp-long v1, v2, v4

    #@81
    if-lez v1, :cond_7

    #@83
    const-string/jumbo v1, " delayUntil: "

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    iget-wide v2, p0, Landroid/content/SyncResult;->delayUntil:J

    #@8c
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8f
    .line 270
    :cond_7
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v1

    #@98
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 243
    iget-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 244
    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    move v0, v1

    #@f
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 245
    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    move v0, v1

    #@17
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 246
    iget-boolean v0, p0, Landroid/content/SyncResult;->databaseError:Z

    #@1c
    if-eqz v0, :cond_3

    #@1e
    move v0, v1

    #@1f
    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 247
    iget-boolean v0, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    #@24
    if-eqz v0, :cond_4

    #@26
    move v0, v1

    #@27
    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 248
    iget-boolean v0, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    #@2c
    if-eqz v0, :cond_5

    #@2e
    move v0, v1

    #@2f
    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 249
    iget-boolean v0, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    #@34
    if-eqz v0, :cond_6

    #@36
    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 250
    iget-wide v0, p0, Landroid/content/SyncResult;->delayUntil:J

    #@3b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@3e
    .line 251
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@40
    invoke-virtual {v0, p1, p2}, Landroid/content/SyncStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@43
    .line 242
    return-void

    #@44
    :cond_0
    move v0, v2

    #@45
    .line 243
    goto :goto_0

    #@46
    :cond_1
    move v0, v2

    #@47
    .line 244
    goto :goto_1

    #@48
    :cond_2
    move v0, v2

    #@49
    .line 245
    goto :goto_2

    #@4a
    :cond_3
    move v0, v2

    #@4b
    .line 246
    goto :goto_3

    #@4c
    :cond_4
    move v0, v2

    #@4d
    .line 247
    goto :goto_4

    #@4e
    :cond_5
    move v0, v2

    #@4f
    .line 248
    goto :goto_5

    #@50
    :cond_6
    move v1, v2

    #@51
    .line 249
    goto :goto_6
.end method
