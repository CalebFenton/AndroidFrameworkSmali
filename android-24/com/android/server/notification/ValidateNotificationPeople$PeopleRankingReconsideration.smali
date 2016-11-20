.class Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
.super Lcom/android/server/notification/RankingReconsideration;
.source "ValidateNotificationPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ValidateNotificationPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeopleRankingReconsideration"
.end annotation


# instance fields
.field private mContactAffinity:F

.field private final mContext:Landroid/content/Context;

.field private final mPendingLookups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecord:Lcom/android/server/notification/NotificationRecord;

.field final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 432
    .local p4, "pendingLookups":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@2
    .line 433
    invoke-direct {p0, p3}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;)V

    #@5
    .line 429
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    #@8
    .line 434
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    #@a
    .line 435
    iput-object p4, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    #@c
    .line 432
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "pendingLookups"    # Ljava/util/LinkedList;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V

    #@3
    return-void
.end method


# virtual methods
.method public applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .param p1, "operand"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 486
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    #@3
    move-result v0

    #@4
    .line 487
    .local v0, "affinityBound":F
    iget v1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    #@6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    #@9
    move-result v1

    #@a
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setContactAffinity(F)V

    #@d
    .line 488
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get1()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    const-string/jumbo v1, "ValidateNoPeople"

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "final affinity: "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    #@25
    move-result v3

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 485
    :cond_0
    return-void
.end method

.method public getContactAffinity()F
    .locals 1

    #@0
    .prologue
    .line 492
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    #@2
    return v0
.end method

.method public setRecord(Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    #@2
    .line 495
    return-void
.end method

.method public work()V
    .locals 14

    #@0
    .prologue
    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v4

    #@4
    .line 441
    .local v4, "start":J
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get1()Z

    #@7
    move-result v9

    #@8
    if-eqz v9, :cond_0

    #@a
    const-string/jumbo v9, "ValidateNoPeople"

    #@d
    new-instance v10, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v11, "Executing: validation for: "

    #@15
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v10

    #@19
    iget-object v11, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mKey:Ljava/lang/String;

    #@1b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v10

    #@1f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v10

    #@23
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 442
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@29
    move-result-wide v6

    #@2a
    .line 443
    .local v6, "timeStartMs":J
    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    #@2c
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v2

    #@30
    .local v2, "handle$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v9

    #@34
    if-eqz v9, :cond_a

    #@36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Ljava/lang/String;

    #@3c
    .line 444
    .local v1, "handle":Ljava/lang/String;
    const/4 v3, 0x0

    #@3d
    .line 445
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@40
    move-result-object v8

    #@41
    .line 446
    .local v8, "uri":Landroid/net/Uri;
    const-string/jumbo v9, "tel"

    #@44
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@47
    move-result-object v10

    #@48
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v9

    #@4c
    if-eqz v9, :cond_4

    #@4e
    .line 447
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@51
    move-result v9

    #@52
    if-eqz v9, :cond_2

    #@54
    const-string/jumbo v9, "ValidateNoPeople"

    #@57
    new-instance v10, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v11, "checking telephone URI: "

    #@5f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v10

    #@63
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v10

    #@67
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v10

    #@6b
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 448
    :cond_2
    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@70
    iget-object v10, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    #@72
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@75
    move-result-object v11

    #@76
    invoke-static {v9, v10, v11}, Lcom/android/server/notification/ValidateNotificationPeople;->-wrap1(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    #@79
    move-result-object v3

    #@7a
    .line 459
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    :goto_1
    if-eqz v3, :cond_9

    #@7c
    .line 460
    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@7e
    invoke-static {v9}, Lcom/android/server/notification/ValidateNotificationPeople;->-get4(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    #@81
    move-result-object v10

    #@82
    monitor-enter v10

    #@83
    .line 461
    :try_start_0
    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@85
    iget-object v11, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    #@87
    invoke-virtual {v11}, Landroid/content/Context;->getUserId()I

    #@8a
    move-result v11

    #@8b
    invoke-static {v9, v11, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->-wrap3(Lcom/android/server/notification/ValidateNotificationPeople;ILjava/lang/String;)Ljava/lang/String;

    #@8e
    move-result-object v0

    #@8f
    .line 462
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@91
    invoke-static {v9}, Lcom/android/server/notification/ValidateNotificationPeople;->-get4(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    #@94
    move-result-object v9

    #@95
    invoke-virtual {v9, v0, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@98
    monitor-exit v10

    #@99
    .line 464
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@9c
    move-result v9

    #@9d
    if-eqz v9, :cond_3

    #@9f
    const-string/jumbo v9, "ValidateNoPeople"

    #@a2
    new-instance v10, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v11, "lookup contactAffinity is "

    #@aa
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v10

    #@ae
    invoke-virtual {v3}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    #@b1
    move-result v11

    #@b2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v10

    #@b6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v10

    #@ba
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@bd
    .line 465
    :cond_3
    iget v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    #@bf
    invoke-virtual {v3}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    #@c2
    move-result v10

    #@c3
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    #@c6
    move-result v9

    #@c7
    iput v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    #@c9
    goto/16 :goto_0

    #@cb
    .line 449
    .end local v0    # "cacheKey":Ljava/lang/String;
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    :cond_4
    const-string/jumbo v9, "mailto"

    #@ce
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@d1
    move-result-object v10

    #@d2
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d5
    move-result v9

    #@d6
    if-eqz v9, :cond_6

    #@d8
    .line 450
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@db
    move-result v9

    #@dc
    if-eqz v9, :cond_5

    #@de
    const-string/jumbo v9, "ValidateNoPeople"

    #@e1
    new-instance v10, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    const-string/jumbo v11, "checking mailto URI: "

    #@e9
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v10

    #@ed
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v10

    #@f1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v10

    #@f5
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f8
    .line 451
    :cond_5
    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@fa
    iget-object v10, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    #@fc
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@ff
    move-result-object v11

    #@100
    invoke-static {v9, v10, v11}, Lcom/android/server/notification/ValidateNotificationPeople;->-wrap0(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    #@103
    move-result-object v3

    #@104
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    goto/16 :goto_1

    #@106
    .line 452
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    :cond_6
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    #@108
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@10b
    move-result-object v9

    #@10c
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@10f
    move-result v9

    #@110
    if-eqz v9, :cond_8

    #@112
    .line 453
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@115
    move-result v9

    #@116
    if-eqz v9, :cond_7

    #@118
    const-string/jumbo v9, "ValidateNoPeople"

    #@11b
    new-instance v10, Ljava/lang/StringBuilder;

    #@11d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@120
    const-string/jumbo v11, "checking lookup URI: "

    #@123
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v10

    #@127
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v10

    #@12b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v10

    #@12f
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@132
    .line 454
    :cond_7
    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@134
    iget-object v10, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    #@136
    invoke-static {v9, v10, v8}, Lcom/android/server/notification/ValidateNotificationPeople;->-wrap2(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    #@139
    move-result-object v3

    #@13a
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    goto/16 :goto_1

    #@13c
    .line 456
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    :cond_8
    new-instance v3, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    #@13e
    .end local v3    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    invoke-direct {v3}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    #@141
    .line 457
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    const-string/jumbo v9, "ValidateNoPeople"

    #@144
    new-instance v10, Ljava/lang/StringBuilder;

    #@146
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@149
    const-string/jumbo v11, "unsupported URI "

    #@14c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v10

    #@150
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v10

    #@154
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v10

    #@158
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15b
    goto/16 :goto_1

    #@15d
    .line 460
    :catchall_0
    move-exception v9

    #@15e
    monitor-exit v10

    #@15f
    throw v9

    #@160
    .line 467
    :cond_9
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@163
    move-result v9

    #@164
    if-eqz v9, :cond_1

    #@166
    const-string/jumbo v9, "ValidateNoPeople"

    #@169
    const-string/jumbo v10, "lookupResult is null"

    #@16c
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@16f
    goto/16 :goto_0

    #@171
    .line 470
    .end local v1    # "handle":Ljava/lang/String;
    .end local v3    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_a
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@174
    move-result v9

    #@175
    if-eqz v9, :cond_b

    #@177
    .line 471
    const-string/jumbo v9, "ValidateNoPeople"

    #@17a
    new-instance v10, Ljava/lang/StringBuilder;

    #@17c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@17f
    const-string/jumbo v11, "Validation finished in "

    #@182
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v10

    #@186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@189
    move-result-wide v12

    #@18a
    sub-long/2addr v12, v6

    #@18b
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v10

    #@18f
    .line 472
    const-string/jumbo v11, "ms"

    #@192
    .line 471
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v10

    #@196
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@199
    move-result-object v10

    #@19a
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19d
    .line 475
    :cond_b
    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    #@19f
    if-eqz v9, :cond_c

    #@1a1
    .line 476
    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@1a3
    invoke-static {v9}, Lcom/android/server/notification/ValidateNotificationPeople;->-get5(Lcom/android/server/notification/ValidateNotificationPeople;)Lcom/android/server/notification/NotificationUsageStats;

    #@1a6
    move-result-object v11

    #@1a7
    iget-object v12, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    #@1a9
    iget v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    #@1ab
    const/4 v10, 0x0

    #@1ac
    cmpl-float v9, v9, v10

    #@1ae
    if-lez v9, :cond_d

    #@1b0
    const/4 v9, 0x1

    #@1b1
    .line 477
    :goto_2
    iget v10, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    #@1b3
    const/high16 v13, 0x3f800000    # 1.0f

    #@1b5
    cmpl-float v10, v10, v13

    #@1b7
    if-nez v10, :cond_e

    #@1b9
    const/4 v10, 0x1

    #@1ba
    :goto_3
    const/4 v13, 0x0

    #@1bb
    .line 476
    invoke-virtual {v11, v12, v9, v10, v13}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    #@1be
    .line 480
    :cond_c
    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@1c0
    invoke-static {v9}, Lcom/android/server/notification/ValidateNotificationPeople;->-get2(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/content/Context;

    #@1c3
    move-result-object v9

    #@1c4
    const-string/jumbo v10, "validate_people_lookup_latency"

    #@1c7
    .line 481
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1ca
    move-result-wide v12

    #@1cb
    sub-long/2addr v12, v4

    #@1cc
    long-to-int v11, v12

    #@1cd
    .line 480
    invoke-static {v9, v10, v11}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@1d0
    .line 439
    return-void

    #@1d1
    .line 476
    :cond_d
    const/4 v9, 0x0

    #@1d2
    goto :goto_2

    #@1d3
    .line 477
    :cond_e
    const/4 v10, 0x0

    #@1d4
    goto :goto_3
.end method
