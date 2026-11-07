.class public final Landroid/app/usage/UsageStats;
.super Ljava/lang/Object;
.source "UsageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageStats$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mActivities:Landroid/util/SparseIntArray;

.field public greylist-max-o mAppLaunchCount:I

.field public greylist-max-p mBeginTimeStamp:J

.field public greylist-max-o mChooserCounts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public blacklist mChooserCountsObfuscated:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-p mEndTimeStamp:J

.field public blacklist mForegroundServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public greylist mLastEvent:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist mLastTimeComponentUsed:J

.field public blacklist mLastTimeForegroundServiceUsed:J

.field public greylist-max-p mLastTimeUsed:J

.field public blacklist mLastTimeVisible:J

.field public greylist mLaunchCount:I

.field public greylist-max-p mPackageName:Ljava/lang/String;

.field public blacklist mPackageToken:I

.field public blacklist mTotalTimeForegroundServiceUsed:J

.field public greylist mTotalTimeInForeground:J

.field public blacklist mTotalTimeVisible:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 712
    new-instance v0, Landroid/app/usage/UsageStats$1;

    invoke-direct {v0}, Landroid/app/usage/UsageStats$1;-><init>()V

    sput-object v0, Landroid/app/usage/UsageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageStats;->mPackageToken:I

    .line 149
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    .line 157
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    .line 162
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    .line 174
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/usage/UsageStats;)V
    .registers 4
    .param p1, "stats"    # Landroid/app/usage/UsageStats;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageStats;->mPackageToken:I

    .line 149
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    .line 157
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    .line 162
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    .line 177
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 178
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 179
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 180
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 181
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 182
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 183
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 184
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 185
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 186
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 187
    iget v0, p1, Landroid/app/usage/UsageStats;->mLaunchCount:I

    iput v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .line 188
    iget v0, p1, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iput v0, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 189
    iget v0, p1, Landroid/app/usage/UsageStats;->mLastEvent:I

    iput v0, p0, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 190
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    .line 191
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    .line 192
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 193
    return-void
.end method

.method private blacklist anyForegroundServiceStarted()Z
    .registers 2

    .line 433
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist eventMapToBundle(Landroid/util/ArrayMap;)Landroid/os/Bundle;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 704
    .local p1, "eventMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 705
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 706
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_22

    .line 707
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 706
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 709
    .end local v2    # "i":I
    :cond_22
    return-object v0
.end method

.method private blacklist hasForegroundActivity()Z
    .registers 5

    .line 403
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 404
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_16

    .line 405
    iget-object v2, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 406
    return v3

    .line 404
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 409
    .end local v1    # "i":I
    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist hasVisibleActivity()Z
    .registers 6

    .line 417
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 418
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 419
    iget-object v2, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 420
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_19

    const/4 v4, 0x2

    if-ne v2, v4, :cond_16

    goto :goto_19

    .line 418
    .end local v2    # "type":I
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 422
    .restart local v2    # "type":I
    :cond_19
    :goto_19
    return v3

    .line 425
    .end local v1    # "i":I
    .end local v2    # "type":I
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist incrementServiceTimeUsed(J)V
    .registers 7
    .param p1, "timeStamp"    # J

    .line 464
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_11

    .line 465
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    iget-wide v2, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 467
    iput-wide p1, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 469
    :cond_11
    return-void
.end method

.method private blacklist incrementTimeUsed(J)V
    .registers 7
    .param p1, "timeStamp"    # J

    .line 441
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_11

    .line 442
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget-wide v2, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 443
    iput-wide p1, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 445
    :cond_11
    return-void
.end method

.method private blacklist incrementTimeVisible(J)V
    .registers 7
    .param p1, "timeStamp"    # J

    .line 452
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_11

    .line 453
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    iget-wide v2, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 454
    iput-wide p1, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 456
    :cond_11
    return-void
.end method

.method private blacklist mergeEventMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 331
    .local p1, "left":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p2, "right":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 332
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_39

    .line 333
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 334
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 335
    .local v3, "event":Ljava/lang/Integer;
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 336
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 338
    :cond_33
    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "event":Ljava/lang/Integer;
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 341
    .end local v1    # "i":I
    :cond_39
    return-void
.end method

.method private blacklist mergeEventMap(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .registers 9
    .param p1, "left"    # Landroid/util/SparseIntArray;
    .param p2, "right"    # Landroid/util/SparseIntArray;

    .line 317
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 318
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_27

    .line 319
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 320
    .local v2, "instanceId":I
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 321
    .local v3, "event":I
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    .line 322
    .local v4, "index":I
    if-ltz v4, :cond_21

    .line 323
    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_24

    .line 325
    :cond_21
    invoke-virtual {p1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 318
    .end local v2    # "instanceId":I
    .end local v3    # "event":I
    .end local v4    # "index":I
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 328
    .end local v1    # "i":I
    :cond_27
    return-void
.end method

.method private blacklist updateActivity(Ljava/lang/String;JII)V
    .registers 8
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J
    .param p4, "eventType"    # I
    .param p5, "instanceId"    # I

    .line 480
    const/4 v0, 0x1

    if-eq p4, v0, :cond_f

    const/4 v0, 0x2

    if-eq p4, v0, :cond_f

    const/16 v0, 0x17

    if-eq p4, v0, :cond_f

    const/16 v0, 0x18

    if-eq p4, v0, :cond_f

    .line 484
    return-void

    .line 488
    :cond_f
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 489
    .local v0, "index":I
    if-ltz v0, :cond_2c

    .line 490
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 491
    .local v1, "lastEvent":I
    packed-switch v1, :pswitch_data_5e

    goto :goto_2c

    .line 497
    :pswitch_21
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeVisible(J)V

    .line 498
    goto :goto_2c

    .line 493
    :pswitch_25
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeUsed(J)V

    .line 494
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeVisible(J)V

    .line 495
    nop

    .line 505
    .end local v1    # "lastEvent":I
    :cond_2c
    :goto_2c
    sparse-switch p4, :sswitch_data_66

    goto :goto_5d

    .line 527
    :sswitch_30
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 528
    goto :goto_5d

    .line 518
    :sswitch_36
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasVisibleActivity()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 520
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 522
    :cond_3e
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p5, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 523
    goto :goto_5d

    .line 507
    :sswitch_44
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasVisibleActivity()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 509
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 510
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    goto :goto_57

    .line 511
    :cond_4f
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasForegroundActivity()Z

    move-result v1

    if-nez v1, :cond_57

    .line 513
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 515
    :cond_57
    :goto_57
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p5, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 516
    nop

    .line 532
    :goto_5d
    return-void

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_25
        :pswitch_21
    .end packed-switch

    :sswitch_data_66
    .sparse-switch
        0x1 -> :sswitch_44
        0x2 -> :sswitch_36
        0x17 -> :sswitch_30
        0x18 -> :sswitch_30
    .end sparse-switch
.end method

.method private blacklist updateForegroundService(Ljava/lang/String;JI)V
    .registers 8
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J
    .param p4, "eventType"    # I

    .line 542
    const/16 v0, 0x14

    if-eq p4, v0, :cond_9

    const/16 v0, 0x13

    if-eq p4, v0, :cond_9

    .line 544
    return-void

    .line 546
    :cond_9
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 548
    .local v0, "lastEvent":Ljava/lang/Integer;
    if-eqz v0, :cond_1f

    .line 549
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    :pswitch_1a
    goto :goto_1f

    .line 552
    :pswitch_1b
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementServiceTimeUsed(J)V

    .line 553
    nop

    .line 560
    :cond_1f
    :goto_1f
    packed-switch p4, :pswitch_data_46

    goto :goto_3b

    .line 568
    :pswitch_23
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    goto :goto_3b

    .line 562
    :pswitch_29
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->anyForegroundServiceStarted()Z

    move-result v1

    if-nez v1, :cond_31

    .line 563
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 565
    :cond_31
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    nop

    .line 573
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x13
        :pswitch_1b
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    :pswitch_data_46
    .packed-switch 0x13
        :pswitch_29
        :pswitch_23
    .end packed-switch
.end method

.method private blacklist writeSparseIntArray(Landroid/os/Parcel;Landroid/util/SparseIntArray;)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arr"    # Landroid/util/SparseIntArray;

    .line 695
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 696
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 698
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 701
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method


# virtual methods
.method public whitelist add(Landroid/app/usage/UsageStats;)V
    .registers 13
    .param p1, "right"    # Landroid/app/usage/UsageStats;

    .line 351
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 358
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iget-wide v2, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_48

    .line 361
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    iget-object v1, p1, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v1}, Landroid/app/usage/UsageStats;->mergeEventMap(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 362
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-direct {p0, v0, v1}, Landroid/app/usage/UsageStats;->mergeEventMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 363
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 364
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 365
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 366
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 369
    :cond_48
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 370
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 371
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 372
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 373
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 374
    iget v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    iget v1, p1, Landroid/app/usage/UsageStats;->mLaunchCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .line 375
    iget v0, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iget v1, p1, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 376
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_89

    .line 377
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    goto/16 :goto_102

    .line 378
    :cond_89
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v0, :cond_102

    .line 379
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 380
    .local v0, "chooserCountsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_94
    if-ge v1, v0, :cond_102

    .line 381
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 382
    .local v2, "action":Ljava/lang/String;
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 383
    .local v3, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f9

    iget-object v4, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_b7

    goto :goto_f9

    .line 387
    :cond_b7
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 388
    .local v4, "annotationSize":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_bc
    if-ge v5, v4, :cond_ff

    .line 389
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 390
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 391
    .local v7, "rightValue":I
    iget-object v8, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 392
    .local v8, "leftValue":I
    iget-object v9, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    add-int v10, v8, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "rightValue":I
    .end local v8    # "leftValue":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_bc

    .line 384
    .end local v4    # "annotationSize":I
    .end local v5    # "j":I
    :cond_f9
    :goto_f9
    iget-object v4, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    nop

    .line 380
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_ff
    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    .line 396
    .end local v0    # "chooserCountsSize":I
    .end local v1    # "i":I
    :cond_102
    :goto_102
    return-void

    .line 352
    :cond_103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t merge UsageStats for package \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with UsageStats for package \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 656
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAppLaunchCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 313
    iget v0, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    return v0
.end method

.method public whitelist getFirstTimeStamp()J
    .registers 3

    .line 217
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    return-wide v0
.end method

.method public whitelist getLastTimeAnyComponentUsed()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 292
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    return-wide v0
.end method

.method public whitelist getLastTimeForegroundServiceUsed()J
    .registers 3

    .line 271
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    return-wide v0
.end method

.method public blacklist getLastTimePackageUsed()J
    .registers 9

    .line 301
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v2, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iget-wide v4, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iget-wide v6, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 303
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 302
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 301
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastTimeStamp()J
    .registers 3

    .line 227
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    return-wide v0
.end method

.method public whitelist getLastTimeUsed()J
    .registers 3

    .line 236
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    return-wide v0
.end method

.method public whitelist getLastTimeVisible()J
    .registers 3

    .line 244
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    return-wide v0
.end method

.method public greylist-max-o getObfuscatedForInstantApp()Landroid/app/usage/UsageStats;
    .registers 3

    .line 199
    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0, p0}, Landroid/app/usage/UsageStats;-><init>(Landroid/app/usage/UsageStats;)V

    .line 201
    .local v0, "ret":Landroid/app/usage/UsageStats;
    const-string v1, "android.instant_app"

    iput-object v1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 203
    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTotalTimeForegroundServiceUsed()J
    .registers 3

    .line 278
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    return-wide v0
.end method

.method public whitelist getTotalTimeInForeground()J
    .registers 3

    .line 252
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    return-wide v0
.end method

.method public whitelist getTotalTimeVisible()J
    .registers 3

    .line 261
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    return-wide v0
.end method

.method public blacklist update(Ljava/lang/String;JII)V
    .registers 9
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J
    .param p4, "eventType"    # I
    .param p5, "instanceId"    # I

    .line 586
    sparse-switch p4, :sswitch_data_c4

    move v0, p5

    move p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "className":Ljava/lang/String;
    .end local p4    # "eventType":I
    .local v0, "instanceId":I
    .local p2, "className":Ljava/lang/String;
    .local p3, "timeStamp":J
    .local p5, "eventType":I
    goto/16 :goto_b8

    .line 642
    .end local v0    # "instanceId":I
    .end local p3    # "timeStamp":J
    .restart local p1    # "className":Ljava/lang/String;
    .local p2, "timeStamp":J
    .restart local p4    # "eventType":I
    .local p5, "instanceId":I
    :sswitch_a
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 643
    move v0, p5

    move p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    goto/16 :goto_b8

    .line 619
    :sswitch_13
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 620
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeUsed(J)V

    .line 622
    :cond_1c
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasVisibleActivity()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 623
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeVisible(J)V

    .line 625
    :cond_25
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->anyForegroundServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 626
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementServiceTimeUsed(J)V

    move v0, p5

    move p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    goto/16 :goto_b8

    .line 625
    :cond_35
    move v0, p5

    move p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    goto/16 :goto_b8

    .line 608
    :sswitch_3c
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->anyForegroundServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 609
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementServiceTimeUsed(J)V

    move v0, p5

    move p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    goto/16 :goto_b8

    .line 608
    :cond_4c
    move v0, p5

    move p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    goto/16 :goto_b8

    .line 613
    :sswitch_53
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 614
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    move v0, p5

    move p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    goto/16 :goto_b8

    .line 604
    :sswitch_65
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/usage/UsageStats;->updateForegroundService(Ljava/lang/String;JI)V

    .line 605
    move v0, p5

    move p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    goto/16 :goto_b8

    .line 630
    :sswitch_6f
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 631
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeUsed(J)V

    goto :goto_7b

    .line 633
    :cond_79
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 635
    :goto_7b
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasVisibleActivity()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 636
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeVisible(J)V

    move v0, p5

    move p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_b8

    .line 638
    :cond_8a
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 640
    move v0, p5

    move p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_b8

    .line 595
    :sswitch_92
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 596
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeUsed(J)V

    .line 598
    :cond_9b
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasVisibleActivity()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 599
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeVisible(J)V

    move v0, p5

    move p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_b8

    .line 598
    :cond_aa
    move v0, p5

    move p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_b8

    .line 591
    :sswitch_b0
    invoke-direct/range {p0 .. p5}, Landroid/app/usage/UsageStats;->updateActivity(Ljava/lang/String;JII)V

    .line 592
    move v0, p5

    move p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 647
    .end local p1    # "className":Ljava/lang/String;
    .end local p4    # "eventType":I
    .restart local v0    # "instanceId":I
    .local p2, "className":Ljava/lang/String;
    .restart local p3    # "timeStamp":J
    .local p5, "eventType":I
    :goto_b8
    iput-wide p3, p1, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 649
    const/4 v1, 0x1

    if-ne p5, v1, :cond_c2

    .line 650
    iget v2, p1, Landroid/app/usage/UsageStats;->mLaunchCount:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .line 652
    :cond_c2
    return-void

    nop

    :sswitch_data_c4
    .sparse-switch
        0x1 -> :sswitch_b0
        0x2 -> :sswitch_b0
        0x3 -> :sswitch_92
        0x7 -> :sswitch_6f
        0x13 -> :sswitch_65
        0x14 -> :sswitch_65
        0x15 -> :sswitch_53
        0x16 -> :sswitch_3c
        0x17 -> :sswitch_b0
        0x18 -> :sswitch_b0
        0x19 -> :sswitch_13
        0x1a -> :sswitch_13
        0x1f -> :sswitch_a
    .end sparse-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 13
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 661
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 662
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 663
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 664
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 665
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 666
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 667
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 668
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 669
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 670
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 671
    iget v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    iget v0, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    iget v0, p0, Landroid/app/usage/UsageStats;->mLastEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 675
    .local v0, "allCounts":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v1, :cond_8b

    .line 676
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 677
    .local v1, "chooserCountSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_51
    if-ge v2, v1, :cond_8b

    .line 678
    iget-object v3, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 679
    .local v3, "action":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 680
    .local v4, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 681
    .local v5, "currentCounts":Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 682
    .local v6, "annotationSize":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_6d
    if-ge v7, v6, :cond_85

    .line 683
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 682
    add-int/lit8 v7, v7, 0x1

    goto :goto_6d

    .line 685
    .end local v7    # "j":I
    :cond_85
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 677
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "currentCounts":Landroid/os/Bundle;
    .end local v6    # "annotationSize":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 688
    .end local v1    # "chooserCountSize":I
    .end local v2    # "i":I
    :cond_8b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 690
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, v1}, Landroid/app/usage/UsageStats;->writeSparseIntArray(Landroid/os/Parcel;Landroid/util/SparseIntArray;)V

    .line 691
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-direct {p0, v1}, Landroid/app/usage/UsageStats;->eventMapToBundle(Landroid/util/ArrayMap;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 692
    return-void
.end method
