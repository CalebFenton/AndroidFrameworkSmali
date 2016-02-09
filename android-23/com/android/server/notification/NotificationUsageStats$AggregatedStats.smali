.class Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AggregatedStats"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mCreated:J

.field private mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

.field public numAutoCancel:I

.field public numBlocked:I

.field public numForegroundService:I

.field public numInterrupt:I

.field public numOngoing:I

.field public numPeopleCacheHit:I

.field public numPeopleCacheMiss:I

.field public numPostedByApp:I

.field public numPriorityHigh:I

.field public numPriorityLow:I

.field public numPriorityMax:I

.field public numPriorityMin:I

.field public numPrivate:I

.field public numRemovedByApp:I

.field public numSecret:I

.field public numUpdatedByApp:I

.field public numWithActions:I

.field public numWithBigPicture:I

.field public numWithBigText:I

.field public numWithInbox:I

.field public numWithInfoText:I

.field public numWithLargeIcon:I

.field public numWithMediaSession:I

.field public numWithStaredPeople:I

.field public numWithSubText:I

.field public numWithText:I

.field public numWithTitle:I

.field public numWithValidPeople:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 317
    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    #@5
    .line 318
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    #@7
    .line 319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mCreated:J

    #@d
    .line 316
    return-void
.end method

.method private maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0
    .param p1, "dump"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 522
    if-lez p3, :cond_0

    #@2
    .line 523
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@5
    .line 521
    :cond_0
    return-void
.end method

.method private toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # Ljava/lang/String;

    #@0
    .prologue
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "AggregatedStats{\n"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 474
    const-string/jumbo v1, "  key=\'"

    #@17
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 474
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    #@1d
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 474
    const-string/jumbo v1, "\',\n"

    #@24
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 475
    const-string/jumbo v1, "  numPostedByApp="

    #@2f
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 475
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    #@35
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 475
    const-string/jumbo v1, ",\n"

    #@3c
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 476
    const-string/jumbo v1, "  numUpdatedByApp="

    #@47
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    .line 476
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    #@4d
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    .line 476
    const-string/jumbo v1, ",\n"

    #@54
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    .line 477
    const-string/jumbo v1, "  numRemovedByApp="

    #@5f
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    .line 477
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    #@65
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    .line 477
    const-string/jumbo v1, ",\n"

    #@6c
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 478
    const-string/jumbo v1, "  numPeopleCacheHit="

    #@77
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    .line 478
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    #@7d
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 478
    const-string/jumbo v1, ",\n"

    #@84
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    .line 479
    const-string/jumbo v1, "  numWithStaredPeople="

    #@8f
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    .line 479
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    #@95
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@98
    move-result-object v0

    #@99
    .line 479
    const-string/jumbo v1, ",\n"

    #@9c
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v0

    #@a0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v0

    #@a4
    .line 480
    const-string/jumbo v1, "  numWithValidPeople="

    #@a7
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v0

    #@ab
    .line 480
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    #@ad
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    .line 480
    const-string/jumbo v1, ",\n"

    #@b4
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v0

    #@b8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v0

    #@bc
    .line 481
    const-string/jumbo v1, "  numPeopleCacheMiss="

    #@bf
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v0

    #@c3
    .line 481
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    #@c5
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v0

    #@c9
    .line 481
    const-string/jumbo v1, ",\n"

    #@cc
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v0

    #@d0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v0

    #@d4
    .line 482
    const-string/jumbo v1, "  numBlocked="

    #@d7
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v0

    #@db
    .line 482
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    #@dd
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v0

    #@e1
    .line 482
    const-string/jumbo v1, ",\n"

    #@e4
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v0

    #@e8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v0

    #@ec
    .line 483
    const-string/jumbo v1, "}"

    #@ef
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v0

    #@f3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v0

    #@f7
    return-object v0
.end method


# virtual methods
.method public countApiUse(Lcom/android/server/notification/NotificationRecord;)V
    .locals 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 323
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@3
    move-result-object v2

    #@4
    .line 324
    .local v2, "n":Landroid/app/Notification;
    iget-object v3, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 325
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    #@a
    add-int/lit8 v3, v3, 0x1

    #@c
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    #@e
    .line 328
    :cond_0
    iget v3, v2, Landroid/app/Notification;->flags:I

    #@10
    and-int/lit8 v3, v3, 0x40

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 329
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    #@16
    add-int/lit8 v3, v3, 0x1

    #@18
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    #@1a
    .line 332
    :cond_1
    iget v3, v2, Landroid/app/Notification;->flags:I

    #@1c
    and-int/lit8 v3, v3, 0x2

    #@1e
    if-eqz v3, :cond_2

    #@20
    .line 333
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    #@22
    add-int/lit8 v3, v3, 0x1

    #@24
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    #@26
    .line 336
    :cond_2
    iget v3, v2, Landroid/app/Notification;->flags:I

    #@28
    and-int/lit8 v3, v3, 0x10

    #@2a
    if-eqz v3, :cond_3

    #@2c
    .line 337
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    #@2e
    add-int/lit8 v3, v3, 0x1

    #@30
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    #@32
    .line 340
    :cond_3
    iget v3, v2, Landroid/app/Notification;->defaults:I

    #@34
    and-int/lit8 v3, v3, 0x1

    #@36
    if-nez v3, :cond_4

    #@38
    .line 341
    iget v3, v2, Landroid/app/Notification;->defaults:I

    #@3a
    and-int/lit8 v3, v3, 0x2

    #@3c
    if-eqz v3, :cond_7

    #@3e
    .line 343
    :cond_4
    :goto_0
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    #@40
    add-int/lit8 v3, v3, 0x1

    #@42
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    #@44
    .line 346
    :cond_5
    iget v3, v2, Landroid/app/Notification;->visibility:I

    #@46
    packed-switch v3, :pswitch_data_0

    #@49
    .line 355
    :goto_1
    iget v3, v2, Landroid/app/Notification;->priority:I

    #@4b
    packed-switch v3, :pswitch_data_1

    #@4e
    .line 370
    :goto_2
    :pswitch_0
    iget-object v3, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@50
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@53
    move-result-object v3

    #@54
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v1

    #@58
    .local v1, "Key$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v3

    #@5c
    if-eqz v3, :cond_10

    #@5e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v0

    #@62
    check-cast v0, Ljava/lang/String;

    #@64
    .line 371
    .local v0, "Key":Ljava/lang/String;
    const-string/jumbo v3, "android.bigText"

    #@67
    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    #@69
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v3

    #@6d
    if-eqz v3, :cond_8

    #@6f
    .line 372
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    #@71
    add-int/lit8 v3, v3, 0x1

    #@73
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    #@75
    goto :goto_3

    #@76
    .line 342
    .end local v0    # "Key":Ljava/lang/String;
    .end local v1    # "Key$iterator":Ljava/util/Iterator;
    :cond_7
    iget-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@78
    if-nez v3, :cond_4

    #@7a
    iget-object v3, v2, Landroid/app/Notification;->vibrate:[J

    #@7c
    if-eqz v3, :cond_5

    #@7e
    goto :goto_0

    #@7f
    .line 348
    :pswitch_1
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    #@81
    add-int/lit8 v3, v3, 0x1

    #@83
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    #@85
    goto :goto_1

    #@86
    .line 351
    :pswitch_2
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    #@88
    add-int/lit8 v3, v3, 0x1

    #@8a
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    #@8c
    goto :goto_1

    #@8d
    .line 357
    :pswitch_3
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMax:I

    #@8f
    add-int/lit8 v3, v3, 0x1

    #@91
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMax:I

    #@93
    goto :goto_2

    #@94
    .line 360
    :pswitch_4
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityHigh:I

    #@96
    add-int/lit8 v3, v3, 0x1

    #@98
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityHigh:I

    #@9a
    goto :goto_2

    #@9b
    .line 363
    :pswitch_5
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityLow:I

    #@9d
    add-int/lit8 v3, v3, 0x1

    #@9f
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityLow:I

    #@a1
    goto :goto_2

    #@a2
    .line 366
    :pswitch_6
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMin:I

    #@a4
    add-int/lit8 v3, v3, 0x1

    #@a6
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMin:I

    #@a8
    goto :goto_2

    #@a9
    .line 373
    .restart local v0    # "Key":Ljava/lang/String;
    .restart local v1    # "Key$iterator":Ljava/util/Iterator;
    :cond_8
    const-string/jumbo v3, "android.picture"

    #@ac
    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    #@ae
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v3

    #@b2
    if-eqz v3, :cond_9

    #@b4
    .line 374
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    #@b6
    add-int/lit8 v3, v3, 0x1

    #@b8
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    #@ba
    goto :goto_3

    #@bb
    .line 375
    :cond_9
    const-string/jumbo v3, "android.largeIcon"

    #@be
    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    #@c0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c3
    move-result v3

    #@c4
    if-eqz v3, :cond_a

    #@c6
    .line 376
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    #@c8
    add-int/lit8 v3, v3, 0x1

    #@ca
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    #@cc
    goto :goto_3

    #@cd
    .line 377
    :cond_a
    const-string/jumbo v3, "android.textLines"

    #@d0
    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    #@d2
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d5
    move-result v3

    #@d6
    if-eqz v3, :cond_b

    #@d8
    .line 378
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    #@da
    add-int/lit8 v3, v3, 0x1

    #@dc
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    #@de
    goto/16 :goto_3

    #@e0
    .line 379
    :cond_b
    const-string/jumbo v3, "android.mediaSession"

    #@e3
    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    #@e5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e8
    move-result v3

    #@e9
    if-eqz v3, :cond_c

    #@eb
    .line 380
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    #@ed
    add-int/lit8 v3, v3, 0x1

    #@ef
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    #@f1
    goto/16 :goto_3

    #@f3
    .line 381
    :cond_c
    const-string/jumbo v3, "android.title"

    #@f6
    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    #@f8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fb
    move-result v3

    #@fc
    if-eqz v3, :cond_d

    #@fe
    .line 382
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    #@100
    add-int/lit8 v3, v3, 0x1

    #@102
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    #@104
    goto/16 :goto_3

    #@106
    .line 383
    :cond_d
    const-string/jumbo v3, "android.text"

    #@109
    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    #@10b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10e
    move-result v3

    #@10f
    if-eqz v3, :cond_e

    #@111
    .line 384
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    #@113
    add-int/lit8 v3, v3, 0x1

    #@115
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    #@117
    goto/16 :goto_3

    #@119
    .line 385
    :cond_e
    const-string/jumbo v3, "android.subText"

    #@11c
    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    #@11e
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@121
    move-result v3

    #@122
    if-eqz v3, :cond_f

    #@124
    .line 386
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    #@126
    add-int/lit8 v3, v3, 0x1

    #@128
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    #@12a
    goto/16 :goto_3

    #@12c
    .line 387
    :cond_f
    const-string/jumbo v3, "android.infoText"

    #@12f
    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    #@131
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@134
    move-result v3

    #@135
    if-eqz v3, :cond_6

    #@137
    .line 388
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    #@139
    add-int/lit8 v3, v3, 0x1

    #@13b
    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    #@13d
    goto/16 :goto_3

    #@13f
    .line 322
    .end local v0    # "Key":Ljava/lang/String;
    :cond_10
    return-void

    #@140
    .line 346
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    #@148
    .line 355
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    #@0
    .prologue
    .line 464
    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    .line 463
    return-void
.end method

.method public dumpJson()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 487
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    .line 488
    .local v0, "dump":Lorg/json/JSONObject;
    const-string/jumbo v1, "key"

    #@8
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@d
    .line 489
    const-string/jumbo v1, "duration"

    #@10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@13
    move-result-wide v2

    #@14
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mCreated:J

    #@16
    sub-long/2addr v2, v4

    #@17
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@1a
    .line 490
    const-string/jumbo v1, "numPostedByApp"

    #@1d
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    #@1f
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@22
    .line 491
    const-string/jumbo v1, "numUpdatedByApp"

    #@25
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    #@27
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@2a
    .line 492
    const-string/jumbo v1, "numRemovedByApp"

    #@2d
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    #@2f
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@32
    .line 493
    const-string/jumbo v1, "numPeopleCacheHit"

    #@35
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    #@37
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@3a
    .line 494
    const-string/jumbo v1, "numPeopleCacheMiss"

    #@3d
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    #@3f
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@42
    .line 495
    const-string/jumbo v1, "numWithStaredPeople"

    #@45
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    #@47
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@4a
    .line 496
    const-string/jumbo v1, "numWithValidPeople"

    #@4d
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    #@4f
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@52
    .line 497
    const-string/jumbo v1, "numBlocked"

    #@55
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    #@57
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@5a
    .line 498
    const-string/jumbo v1, "numWithActions"

    #@5d
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    #@5f
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@62
    .line 499
    const-string/jumbo v1, "numPrivate"

    #@65
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    #@67
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@6a
    .line 500
    const-string/jumbo v1, "numSecret"

    #@6d
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    #@6f
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@72
    .line 501
    const-string/jumbo v1, "numPriorityMax"

    #@75
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMax:I

    #@77
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@7a
    .line 502
    const-string/jumbo v1, "numPriorityHigh"

    #@7d
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityHigh:I

    #@7f
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@82
    .line 503
    const-string/jumbo v1, "numPriorityLow"

    #@85
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityLow:I

    #@87
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@8a
    .line 504
    const-string/jumbo v1, "numPriorityMin"

    #@8d
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMin:I

    #@8f
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@92
    .line 505
    const-string/jumbo v1, "numInterrupt"

    #@95
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    #@97
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@9a
    .line 506
    const-string/jumbo v1, "numWithBigText"

    #@9d
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    #@9f
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@a2
    .line 507
    const-string/jumbo v1, "numWithBigPicture"

    #@a5
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    #@a7
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@aa
    .line 508
    const-string/jumbo v1, "numForegroundService"

    #@ad
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    #@af
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@b2
    .line 509
    const-string/jumbo v1, "numOngoing"

    #@b5
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    #@b7
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@ba
    .line 510
    const-string/jumbo v1, "numAutoCancel"

    #@bd
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    #@bf
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@c2
    .line 511
    const-string/jumbo v1, "numWithLargeIcon"

    #@c5
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    #@c7
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@ca
    .line 512
    const-string/jumbo v1, "numWithInbox"

    #@cd
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    #@cf
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@d2
    .line 513
    const-string/jumbo v1, "numWithMediaSession"

    #@d5
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    #@d7
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@da
    .line 514
    const-string/jumbo v1, "numWithTitle"

    #@dd
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    #@df
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@e2
    .line 515
    const-string/jumbo v1, "numWithText"

    #@e5
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    #@e7
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@ea
    .line 516
    const-string/jumbo v1, "numWithSubText"

    #@ed
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    #@ef
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@f2
    .line 517
    const-string/jumbo v1, "numWithInfoText"

    #@f5
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    #@f7
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    #@fa
    .line 518
    return-object v0
.end method

.method public emit()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 394
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 395
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@7
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    #@9
    invoke-direct {v0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@c
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@e
    .line 398
    :cond_0
    const-string/jumbo v0, "note_post"

    #@11
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    #@13
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@15
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    #@17
    sub-int/2addr v1, v2

    #@18
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@1b
    .line 399
    const-string/jumbo v0, "note_update"

    #@1e
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    #@20
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@22
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    #@24
    sub-int/2addr v1, v2

    #@25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@28
    .line 400
    const-string/jumbo v0, "note_remove"

    #@2b
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    #@2d
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@2f
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    #@31
    sub-int/2addr v1, v2

    #@32
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@35
    .line 401
    const-string/jumbo v0, "note_with_people"

    #@38
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    #@3a
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@3c
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    #@3e
    sub-int/2addr v1, v2

    #@3f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@42
    .line 402
    const-string/jumbo v0, "note_with_stars"

    #@45
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    #@47
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@49
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    #@4b
    sub-int/2addr v1, v2

    #@4c
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@4f
    .line 403
    const-string/jumbo v0, "people_cache_hit"

    #@52
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    #@54
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@56
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    #@58
    sub-int/2addr v1, v2

    #@59
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@5c
    .line 404
    const-string/jumbo v0, "people_cache_miss"

    #@5f
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    #@61
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@63
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    #@65
    sub-int/2addr v1, v2

    #@66
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@69
    .line 405
    const-string/jumbo v0, "note_blocked"

    #@6c
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    #@6e
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@70
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    #@72
    sub-int/2addr v1, v2

    #@73
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@76
    .line 406
    const-string/jumbo v0, "note_with_actions"

    #@79
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    #@7b
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@7d
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    #@7f
    sub-int/2addr v1, v2

    #@80
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@83
    .line 407
    const-string/jumbo v0, "note_private"

    #@86
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    #@88
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@8a
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    #@8c
    sub-int/2addr v1, v2

    #@8d
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@90
    .line 408
    const-string/jumbo v0, "note_secret"

    #@93
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    #@95
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@97
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    #@99
    sub-int/2addr v1, v2

    #@9a
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@9d
    .line 409
    const-string/jumbo v0, "note_prio_max"

    #@a0
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMax:I

    #@a2
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@a4
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMax:I

    #@a6
    sub-int/2addr v1, v2

    #@a7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@aa
    .line 410
    const-string/jumbo v0, "note_prio_high"

    #@ad
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityHigh:I

    #@af
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@b1
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityHigh:I

    #@b3
    sub-int/2addr v1, v2

    #@b4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@b7
    .line 411
    const-string/jumbo v0, "note_prio_low"

    #@ba
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityLow:I

    #@bc
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@be
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityLow:I

    #@c0
    sub-int/2addr v1, v2

    #@c1
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@c4
    .line 412
    const-string/jumbo v0, "note_prio_min"

    #@c7
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMin:I

    #@c9
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@cb
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMin:I

    #@cd
    sub-int/2addr v1, v2

    #@ce
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@d1
    .line 413
    const-string/jumbo v0, "note_interupt"

    #@d4
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    #@d6
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@d8
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    #@da
    sub-int/2addr v1, v2

    #@db
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@de
    .line 414
    const-string/jumbo v0, "note_big_text"

    #@e1
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    #@e3
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@e5
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    #@e7
    sub-int/2addr v1, v2

    #@e8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@eb
    .line 415
    const-string/jumbo v0, "note_big_pic"

    #@ee
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    #@f0
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@f2
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    #@f4
    sub-int/2addr v1, v2

    #@f5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@f8
    .line 416
    const-string/jumbo v0, "note_fg"

    #@fb
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    #@fd
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@ff
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    #@101
    sub-int/2addr v1, v2

    #@102
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@105
    .line 417
    const-string/jumbo v0, "note_ongoing"

    #@108
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    #@10a
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@10c
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    #@10e
    sub-int/2addr v1, v2

    #@10f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@112
    .line 418
    const-string/jumbo v0, "note_auto"

    #@115
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    #@117
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@119
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    #@11b
    sub-int/2addr v1, v2

    #@11c
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@11f
    .line 419
    const-string/jumbo v0, "note_large_icon"

    #@122
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    #@124
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@126
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    #@128
    sub-int/2addr v1, v2

    #@129
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@12c
    .line 420
    const-string/jumbo v0, "note_inbox"

    #@12f
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    #@131
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@133
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    #@135
    sub-int/2addr v1, v2

    #@136
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@139
    .line 421
    const-string/jumbo v0, "note_media"

    #@13c
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    #@13e
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@140
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    #@142
    sub-int/2addr v1, v2

    #@143
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@146
    .line 422
    const-string/jumbo v0, "note_title"

    #@149
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    #@14b
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@14d
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    #@14f
    sub-int/2addr v1, v2

    #@150
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@153
    .line 423
    const-string/jumbo v0, "note_text"

    #@156
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    #@158
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@15a
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    #@15c
    sub-int/2addr v1, v2

    #@15d
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@160
    .line 424
    const-string/jumbo v0, "note_sub_text"

    #@163
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    #@165
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@167
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    #@169
    sub-int/2addr v1, v2

    #@16a
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@16d
    .line 425
    const-string/jumbo v0, "note_info_text"

    #@170
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    #@172
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@174
    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    #@176
    sub-int/2addr v1, v2

    #@177
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    #@17a
    .line 427
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@17c
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    #@17e
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    #@180
    .line 428
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@182
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    #@184
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    #@186
    .line 429
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@188
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    #@18a
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    #@18c
    .line 430
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@18e
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    #@190
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    #@192
    .line 431
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@194
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    #@196
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    #@198
    .line 432
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@19a
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    #@19c
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    #@19e
    .line 433
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1a0
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    #@1a2
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    #@1a4
    .line 434
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1a6
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    #@1a8
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    #@1aa
    .line 435
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1ac
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    #@1ae
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    #@1b0
    .line 436
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1b2
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    #@1b4
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    #@1b6
    .line 437
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1b8
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    #@1ba
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    #@1bc
    .line 438
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1be
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMax:I

    #@1c0
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMax:I

    #@1c2
    .line 439
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1c4
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityHigh:I

    #@1c6
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityHigh:I

    #@1c8
    .line 440
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1ca
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityLow:I

    #@1cc
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityLow:I

    #@1ce
    .line 441
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1d0
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMin:I

    #@1d2
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMin:I

    #@1d4
    .line 442
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1d6
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    #@1d8
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    #@1da
    .line 443
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1dc
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    #@1de
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    #@1e0
    .line 444
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1e2
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    #@1e4
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    #@1e6
    .line 445
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1e8
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    #@1ea
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    #@1ec
    .line 446
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1ee
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    #@1f0
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    #@1f2
    .line 447
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1f4
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    #@1f6
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    #@1f8
    .line 448
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1fa
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    #@1fc
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    #@1fe
    .line 449
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@200
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    #@202
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    #@204
    .line 450
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@206
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    #@208
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    #@20a
    .line 451
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@20c
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    #@20e
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    #@210
    .line 452
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@212
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    #@214
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    #@216
    .line 453
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@218
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    #@21a
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    #@21c
    .line 454
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@21e
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    #@220
    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    #@222
    .line 393
    return-void
.end method

.method maybeCount(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 458
    if-lez p2, :cond_0

    #@2
    .line 459
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    #@4
    invoke-static {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@7
    .line 457
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 469
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method
