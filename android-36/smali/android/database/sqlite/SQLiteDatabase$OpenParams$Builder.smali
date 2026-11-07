.class public final Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase$OpenParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private greylist-max-o mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private greylist-max-o mIdleConnectionTimeout:J

.field private greylist-max-o mJournalMode:Ljava/lang/String;

.field private greylist-max-o mLookasideSlotCount:I

.field private greylist-max-o mLookasideSlotSize:I

.field private greylist-max-o mOpenFlags:I

.field private greylist-max-o mSyncMode:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 3102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3093
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    .line 3094
    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    .line 3095
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    .line 3103
    return-void
.end method

.method public constructor whitelist <init>(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V
    .registers 4
    .param p1, "params"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 3105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3093
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    .line 3094
    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    .line 3095
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    .line 3106
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmLookasideSlotSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    .line 3107
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmLookasideSlotCount(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    .line 3108
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmOpenFlags(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    .line 3109
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmCursorFactory(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 3110
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmErrorHandler(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/DatabaseErrorHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 3111
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmJournalMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mJournalMode:Ljava/lang/String;

    .line 3112
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmSyncMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mSyncMode:Ljava/lang/String;

    .line 3113
    return-void
.end method


# virtual methods
.method public whitelist addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 3
    .param p1, "openFlags"    # I

    .line 3176
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    .line 3177
    return-object p0
.end method

.method public whitelist build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .registers 12

    .line 3294
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    iget v1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    iget v4, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    iget v5, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    iget-wide v6, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    iget-object v8, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mJournalMode:Ljava/lang/String;

    iget-object v9, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mSyncMode:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;-><init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJLjava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase-IA;)V

    return-object v0
.end method

.method public greylist-max-o isWriteAheadLoggingEnabled()Z
    .registers 3

    .line 3149
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist removeOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 4
    .param p1, "openFlags"    # I

    .line 3188
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    .line 3189
    return-object p0
.end method

.method public whitelist setCursorFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 2
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 3214
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 3215
    return-object p0
.end method

.method public whitelist setErrorHandler(Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 2
    .param p1, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 3224
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 3225
    return-object p0
.end method

.method public whitelist setIdleConnectionTimeout(J)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 5
    .param p1, "idleConnectionTimeoutMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3255
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string/jumbo v1, "idle connection timeout cannot be negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3257
    iput-wide p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    .line 3258
    return-object p0
.end method

.method public whitelist setJournalMode(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 2
    .param p1, "journalMode"    # Ljava/lang/String;

    .line 3270
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3271
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mJournalMode:Ljava/lang/String;

    .line 3272
    return-object p0
.end method

.method public whitelist setLookasideConfig(II)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 7
    .param p1, "slotSize"    # I
    .param p2, "slotCount"    # I

    .line 3131
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string/jumbo v3, "lookasideSlotCount cannot be negative"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3133
    if-ltz p2, :cond_11

    move v2, v0

    goto :goto_12

    :cond_11
    move v2, v1

    :goto_12
    const-string/jumbo v3, "lookasideSlotSize cannot be negative"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3135
    if-lez p1, :cond_1c

    if-gtz p2, :cond_22

    :cond_1c
    if-nez p2, :cond_21

    if-nez p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    .line 3137
    :cond_22
    :goto_22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 3135
    const-string v2, "Invalid configuration: %d, %d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3139
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    .line 3140
    iput p2, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    .line 3141
    return-object p0
.end method

.method public whitelist setOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 2
    .param p1, "openFlags"    # I

    .line 3164
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    .line 3165
    return-object p0
.end method

.method public whitelist setSynchronousMode(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 2
    .param p1, "syncMode"    # Ljava/lang/String;

    .line 3283
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3284
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mSyncMode:Ljava/lang/String;

    .line 3285
    return-object p0
.end method

.method public greylist-max-o setWriteAheadLoggingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 3198
    const/high16 v0, 0x20000000

    if-eqz p1, :cond_8

    .line 3199
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    goto :goto_b

    .line 3201
    :cond_8
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->removeOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 3203
    :goto_b
    return-void
.end method
