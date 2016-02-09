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
    .line 425
    .local p4, "pendingLookups":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@2
    .line 426
    invoke-direct {p0, p3}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;)V

    #@5
    .line 422
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    #@8
    .line 427
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    #@a
    .line 428
    iput-object p4, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    #@c
    .line 425
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
    .line 475
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    #@3
    move-result v0

    #@4
    .line 476
    .local v0, "affinityBound":F
    iget v1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    #@6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    #@9
    move-result v1

    #@a
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setContactAffinity(F)V

    #@d
    .line 477
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
    .line 474
    :cond_0
    return-void
.end method

.method public getContactAffinity()F
    .locals 1

    #@0
    .prologue
    .line 481
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    #@2
    return v0
.end method

.method public setRecord(Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    #@2
    .line 484
    return-void
.end method

.method public work()V
    .locals 14

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 433
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get1()Z

    #@5
    move-result v7

    #@6
    if-eqz v7, :cond_0

    #@8
    const-string/jumbo v7, "ValidateNoPeople"

    #@b
    new-instance v10, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v11, "Executing: validation for: "

    #@13
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v10

    #@17
    iget-object v11, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mKey:Ljava/lang/String;

    #@19
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v10

    #@1d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v10

    #@21
    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 434
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@27
    move-result-wide v4

    #@28
    .line 435
    .local v4, "timeStartMs":J
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    #@2a
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v2

    #@2e
    .local v2, "handle$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v7

    #@32
    if-eqz v7, :cond_a

    #@34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Ljava/lang/String;

    #@3a
    .line 436
    .local v1, "handle":Ljava/lang/String;
    const/4 v3, 0x0

    #@3b
    .line 437
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@3e
    move-result-object v6

    #@3f
    .line 438
    .local v6, "uri":Landroid/net/Uri;
    const-string/jumbo v7, "tel"

    #@42
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@45
    move-result-object v10

    #@46
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v7

    #@4a
    if-eqz v7, :cond_4

    #@4c
    .line 439
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@4f
    move-result v7

    #@50
    if-eqz v7, :cond_2

    #@52
    const-string/jumbo v7, "ValidateNoPeople"

    #@55
    new-instance v10, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v11, "checking telephone URI: "

    #@5d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v10

    #@61
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v10

    #@65
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v10

    #@69
    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 440
    :cond_2
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@6e
    iget-object v10, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    #@70
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@73
    move-result-object v11

    #@74
    invoke-static {v7, v10, v11}, Lcom/android/server/notification/ValidateNotificationPeople;->-wrap1(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    #@77
    move-result-object v3

    #@78
    .line 451
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    :goto_1
    if-eqz v3, :cond_9

    #@7a
    .line 452
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@7c
    invoke-static {v7}, Lcom/android/server/notification/ValidateNotificationPeople;->-get3(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    #@7f
    move-result-object v10

    #@80
    monitor-enter v10

    #@81
    .line 453
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@83
    iget-object v11, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    #@85
    invoke-virtual {v11}, Landroid/content/Context;->getUserId()I

    #@88
    move-result v11

    #@89
    invoke-static {v7, v11, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->-wrap3(Lcom/android/server/notification/ValidateNotificationPeople;ILjava/lang/String;)Ljava/lang/String;

    #@8c
    move-result-object v0

    #@8d
    .line 454
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@8f
    invoke-static {v7}, Lcom/android/server/notification/ValidateNotificationPeople;->-get3(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    #@92
    move-result-object v7

    #@93
    invoke-virtual {v7, v0, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@96
    monitor-exit v10

    #@97
    .line 456
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@9a
    move-result v7

    #@9b
    if-eqz v7, :cond_3

    #@9d
    const-string/jumbo v7, "ValidateNoPeople"

    #@a0
    new-instance v10, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v11, "lookup contactAffinity is "

    #@a8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v10

    #@ac
    invoke-virtual {v3}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    #@af
    move-result v11

    #@b0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v10

    #@b4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v10

    #@b8
    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    .line 457
    :cond_3
    iget v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    #@bd
    invoke-virtual {v3}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    #@c0
    move-result v10

    #@c1
    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    #@c4
    move-result v7

    #@c5
    iput v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    #@c7
    goto/16 :goto_0

    #@c9
    .line 441
    .end local v0    # "cacheKey":Ljava/lang/String;
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    :cond_4
    const-string/jumbo v7, "mailto"

    #@cc
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@cf
    move-result-object v10

    #@d0
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d3
    move-result v7

    #@d4
    if-eqz v7, :cond_6

    #@d6
    .line 442
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@d9
    move-result v7

    #@da
    if-eqz v7, :cond_5

    #@dc
    const-string/jumbo v7, "ValidateNoPeople"

    #@df
    new-instance v10, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    const-string/jumbo v11, "checking mailto URI: "

    #@e7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v10

    #@eb
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v10

    #@ef
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v10

    #@f3
    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f6
    .line 443
    :cond_5
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@f8
    iget-object v10, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    #@fa
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@fd
    move-result-object v11

    #@fe
    invoke-static {v7, v10, v11}, Lcom/android/server/notification/ValidateNotificationPeople;->-wrap0(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    #@101
    move-result-object v3

    #@102
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    goto/16 :goto_1

    #@104
    .line 444
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    :cond_6
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    #@106
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@109
    move-result-object v7

    #@10a
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@10d
    move-result v7

    #@10e
    if-eqz v7, :cond_8

    #@110
    .line 445
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@113
    move-result v7

    #@114
    if-eqz v7, :cond_7

    #@116
    const-string/jumbo v7, "ValidateNoPeople"

    #@119
    new-instance v10, Ljava/lang/StringBuilder;

    #@11b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@11e
    const-string/jumbo v11, "checking lookup URI: "

    #@121
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v10

    #@125
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v10

    #@129
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12c
    move-result-object v10

    #@12d
    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@130
    .line 446
    :cond_7
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@132
    iget-object v10, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    #@134
    invoke-static {v7, v10, v6}, Lcom/android/server/notification/ValidateNotificationPeople;->-wrap2(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    #@137
    move-result-object v3

    #@138
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    goto/16 :goto_1

    #@13a
    .line 448
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    :cond_8
    new-instance v3, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    #@13c
    .end local v3    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    invoke-direct {v3}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    #@13f
    .line 449
    .local v3, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    const-string/jumbo v7, "ValidateNoPeople"

    #@142
    new-instance v10, Ljava/lang/StringBuilder;

    #@144
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    const-string/jumbo v11, "unsupported URI "

    #@14a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v10

    #@14e
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v10

    #@152
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v10

    #@156
    invoke-static {v7, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@159
    goto/16 :goto_1

    #@15b
    .line 452
    :catchall_0
    move-exception v7

    #@15c
    monitor-exit v10

    #@15d
    throw v7

    #@15e
    .line 459
    :cond_9
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@161
    move-result v7

    #@162
    if-eqz v7, :cond_1

    #@164
    const-string/jumbo v7, "ValidateNoPeople"

    #@167
    const-string/jumbo v10, "lookupResult is null"

    #@16a
    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@16d
    goto/16 :goto_0

    #@16f
    .line 462
    .end local v1    # "handle":Ljava/lang/String;
    .end local v3    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_a
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@172
    move-result v7

    #@173
    if-eqz v7, :cond_b

    #@175
    .line 463
    const-string/jumbo v7, "ValidateNoPeople"

    #@178
    new-instance v10, Ljava/lang/StringBuilder;

    #@17a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@17d
    const-string/jumbo v11, "Validation finished in "

    #@180
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v10

    #@184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@187
    move-result-wide v12

    #@188
    sub-long/2addr v12, v4

    #@189
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v10

    #@18d
    .line 464
    const-string/jumbo v11, "ms"

    #@190
    .line 463
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v10

    #@194
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@197
    move-result-object v10

    #@198
    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19b
    .line 467
    :cond_b
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    #@19d
    if-eqz v7, :cond_c

    #@19f
    .line 468
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@1a1
    invoke-static {v7}, Lcom/android/server/notification/ValidateNotificationPeople;->-get4(Lcom/android/server/notification/ValidateNotificationPeople;)Lcom/android/server/notification/NotificationUsageStats;

    #@1a4
    move-result-object v10

    #@1a5
    iget-object v11, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    #@1a7
    iget v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    #@1a9
    const/4 v12, 0x0

    #@1aa
    cmpl-float v7, v7, v12

    #@1ac
    if-lez v7, :cond_d

    #@1ae
    move v7, v8

    #@1af
    .line 469
    :goto_2
    iget v12, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    #@1b1
    const/high16 v13, 0x3f800000    # 1.0f

    #@1b3
    cmpl-float v12, v12, v13

    #@1b5
    if-nez v12, :cond_e

    #@1b7
    .line 468
    :goto_3
    invoke-virtual {v10, v11, v7, v8, v9}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    #@1ba
    .line 432
    :cond_c
    return-void

    #@1bb
    :cond_d
    move v7, v9

    #@1bc
    .line 468
    goto :goto_2

    #@1bd
    :cond_e
    move v8, v9

    #@1be
    .line 469
    goto :goto_3
.end method
