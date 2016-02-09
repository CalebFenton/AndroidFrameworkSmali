.class public final Lcom/android/server/notification/NotificationRecord;
.super Ljava/lang/Object;
.source "NotificationRecord.java"


# instance fields
.field isCanceled:Z

.field public isUpdate:Z

.field private mAuthoritativeRank:I

.field private mContactAffinity:F

.field private mCreationTimeMs:J

.field private mGlobalSortKey:Ljava/lang/String;

.field private mIntercept:Z

.field mIsSeen:Z

.field final mOriginalFlags:I

.field private mPackagePriority:I

.field private mPackageVisibility:I

.field private mRankingTimeMs:J

.field private mRecentlyIntrusive:Z

.field private mUpdateTimeMs:J

.field private mVisibleSinceMs:J

.field final sbn:Landroid/service/notification/StatusBarNotification;

.field score:I

.field stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;I)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "score"    # I

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 89
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@5
    .line 90
    iput p2, p0, Lcom/android/server/notification/NotificationRecord;->score:I

    #@7
    .line 91
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@a
    move-result-object v0

    #@b
    iget v0, v0, Landroid/app/Notification;->flags:I

    #@d
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    #@f
    .line 92
    const-wide/16 v0, 0x0

    #@11
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->calculateRankingTimeMs(J)J

    #@14
    move-result-wide v0

    #@15
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    #@17
    .line 93
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    #@1a
    move-result-wide v0

    #@1b
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    #@1d
    .line 94
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    #@1f
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    #@21
    .line 87
    return-void
.end method

.method private calculateRankingTimeMs(J)J
    .locals 9
    .param p1, "previousRankingTimeMs"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 340
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@5
    move-result-object v0

    #@6
    .line 342
    .local v0, "n":Landroid/app/Notification;
    iget-wide v2, v0, Landroid/app/Notification;->when:J

    #@8
    cmp-long v1, v2, v6

    #@a
    if-eqz v1, :cond_0

    #@c
    iget-wide v2, v0, Landroid/app/Notification;->when:J

    #@e
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@10
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    #@13
    move-result-wide v4

    #@14
    cmp-long v1, v2, v4

    #@16
    if-gtz v1, :cond_0

    #@18
    .line 343
    iget-wide v2, v0, Landroid/app/Notification;->when:J

    #@1a
    return-wide v2

    #@1b
    .line 347
    :cond_0
    cmp-long v1, p1, v6

    #@1d
    if-lez v1, :cond_1

    #@1f
    .line 348
    return-wide p1

    #@20
    .line 350
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@22
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    #@25
    move-result-wide v2

    #@26
    return-wide v2
.end method

.method static idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "baseContext"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    #@0
    .prologue
    .line 208
    if-eqz p1, :cond_0

    #@2
    .line 210
    const/4 v4, 0x0

    #@3
    :try_start_0
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v0

    #@7
    .line 218
    .local v0, "c":Landroid/content/Context;
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v3

    #@b
    .line 220
    .local v3, "r":Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@e
    move-result-object v4

    #@f
    return-object v4

    #@10
    .line 211
    .end local v0    # "c":Landroid/content/Context;
    .end local v3    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    #@11
    .line 212
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    #@12
    .restart local v0    # "c":Landroid/content/Context;
    goto :goto_0

    #@13
    .line 215
    .end local v0    # "c":Landroid/content/Context;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    #@14
    .restart local v0    # "c":Landroid/content/Context;
    goto :goto_0

    #@15
    .line 221
    .restart local v3    # "r":Landroid/content/res/Resources;
    :catch_1
    move-exception v2

    #@16
    .line 222
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "<name unknown>"

    #@19
    return-object v4
.end method


# virtual methods
.method public copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V
    .locals 2
    .param p1, "previous"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 99
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    #@2
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    #@4
    .line 100
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    #@6
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    #@8
    .line 101
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    #@a
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    #@c
    .line 102
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    #@e
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    #@10
    .line 103
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    #@12
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    #@14
    .line 104
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    #@17
    move-result-wide v0

    #@18
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->calculateRankingTimeMs(J)J

    #@1b
    move-result-wide v0

    #@1c
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    #@1e
    .line 105
    iget-wide v0, p1, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    #@20
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    #@22
    .line 106
    iget-wide v0, p1, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    #@24
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    #@26
    .line 98
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 17
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "baseContext"    # Landroid/content/Context;
    .param p4, "redact"    # Z

    #@0
    .prologue
    .line 118
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@4
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@7
    move-result-object v10

    #@8
    .line 119
    .local v10, "notification":Landroid/app/Notification;
    invoke-virtual {v10}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@b
    move-result-object v5

    #@c
    .line 120
    .local v5, "icon":Landroid/graphics/drawable/Icon;
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v6

    #@10
    .line 121
    .local v6, "iconStr":Ljava/lang/String;
    if-eqz v5, :cond_0

    #@12
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getType()I

    #@15
    move-result v12

    #@16
    const/4 v13, 0x2

    #@17
    if-ne v12, v13, :cond_0

    #@19
    .line 122
    new-instance v12, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v12

    #@22
    const-string/jumbo v13, " / "

    #@25
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v12

    #@29
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    #@2c
    move-result-object v13

    #@2d
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getResId()I

    #@30
    move-result v14

    #@31
    move-object/from16 v0, p3

    #@33
    invoke-static {v0, v13, v14}, Lcom/android/server/notification/NotificationRecord;->idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    #@36
    move-result-object v13

    #@37
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v12

    #@3b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    .line 124
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    move-object/from16 v0, p2

    #@46
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v12

    #@4a
    move-object/from16 v0, p0

    #@4c
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v12

    #@50
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v12

    #@54
    move-object/from16 v0, p1

    #@56
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@59
    .line 125
    new-instance v12, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    move-object/from16 v0, p2

    #@60
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v12

    #@64
    const-string/jumbo v13, "  uid="

    #@67
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v12

    #@6b
    move-object/from16 v0, p0

    #@6d
    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@6f
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getUid()I

    #@72
    move-result v13

    #@73
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v12

    #@77
    const-string/jumbo v13, " userId="

    #@7a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v12

    #@7e
    move-object/from16 v0, p0

    #@80
    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@82
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    #@85
    move-result v13

    #@86
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v12

    #@8a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v12

    #@8e
    move-object/from16 v0, p1

    #@90
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@93
    .line 126
    new-instance v12, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    move-object/from16 v0, p2

    #@9a
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v12

    #@9e
    const-string/jumbo v13, "  icon="

    #@a1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v12

    #@a5
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v12

    #@a9
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v12

    #@ad
    move-object/from16 v0, p1

    #@af
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b2
    .line 127
    new-instance v12, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    move-object/from16 v0, p2

    #@b9
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v12

    #@bd
    const-string/jumbo v13, "  pri="

    #@c0
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v12

    #@c4
    iget v13, v10, Landroid/app/Notification;->priority:I

    #@c6
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v12

    #@ca
    const-string/jumbo v13, " score="

    #@cd
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v12

    #@d1
    move-object/from16 v0, p0

    #@d3
    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@d5
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getScore()I

    #@d8
    move-result v13

    #@d9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v12

    #@dd
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v12

    #@e1
    move-object/from16 v0, p1

    #@e3
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e6
    .line 128
    new-instance v12, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    move-object/from16 v0, p2

    #@ed
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v12

    #@f1
    const-string/jumbo v13, "  key="

    #@f4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v12

    #@f8
    move-object/from16 v0, p0

    #@fa
    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@fc
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@ff
    move-result-object v13

    #@100
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v12

    #@104
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v12

    #@108
    move-object/from16 v0, p1

    #@10a
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10d
    .line 129
    new-instance v12, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    move-object/from16 v0, p2

    #@114
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v12

    #@118
    const-string/jumbo v13, "  seen="

    #@11b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v12

    #@11f
    move-object/from16 v0, p0

    #@121
    iget-boolean v13, v0, Lcom/android/server/notification/NotificationRecord;->mIsSeen:Z

    #@123
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@126
    move-result-object v12

    #@127
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v12

    #@12b
    move-object/from16 v0, p1

    #@12d
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@130
    .line 130
    new-instance v12, Ljava/lang/StringBuilder;

    #@132
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@135
    move-object/from16 v0, p2

    #@137
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v12

    #@13b
    const-string/jumbo v13, "  groupKey="

    #@13e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v12

    #@142
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    #@145
    move-result-object v13

    #@146
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v12

    #@14a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14d
    move-result-object v12

    #@14e
    move-object/from16 v0, p1

    #@150
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@153
    .line 131
    new-instance v12, Ljava/lang/StringBuilder;

    #@155
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@158
    move-object/from16 v0, p2

    #@15a
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v12

    #@15e
    const-string/jumbo v13, "  contentIntent="

    #@161
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v12

    #@165
    iget-object v13, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@167
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v12

    #@16b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16e
    move-result-object v12

    #@16f
    move-object/from16 v0, p1

    #@171
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@174
    .line 132
    new-instance v12, Ljava/lang/StringBuilder;

    #@176
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@179
    move-object/from16 v0, p2

    #@17b
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v12

    #@17f
    const-string/jumbo v13, "  deleteIntent="

    #@182
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v12

    #@186
    iget-object v13, v10, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@188
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v12

    #@18c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18f
    move-result-object v12

    #@190
    move-object/from16 v0, p1

    #@192
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@195
    .line 133
    new-instance v12, Ljava/lang/StringBuilder;

    #@197
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@19a
    move-object/from16 v0, p2

    #@19c
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v12

    #@1a0
    const-string/jumbo v13, "  tickerText="

    #@1a3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v12

    #@1a7
    iget-object v13, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@1a9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v12

    #@1ad
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b0
    move-result-object v12

    #@1b1
    move-object/from16 v0, p1

    #@1b3
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b6
    .line 134
    new-instance v12, Ljava/lang/StringBuilder;

    #@1b8
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1bb
    move-object/from16 v0, p2

    #@1bd
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v12

    #@1c1
    const-string/jumbo v13, "  contentView="

    #@1c4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v12

    #@1c8
    iget-object v13, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@1ca
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v12

    #@1ce
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d1
    move-result-object v12

    #@1d2
    move-object/from16 v0, p1

    #@1d4
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d7
    .line 135
    new-instance v12, Ljava/lang/StringBuilder;

    #@1d9
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1dc
    move-object/from16 v0, p2

    #@1de
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v12

    #@1e2
    const-string/jumbo v13, "  defaults=0x%08x flags=0x%08x"

    #@1e5
    const/4 v14, 0x2

    #@1e6
    new-array v14, v14, [Ljava/lang/Object;

    #@1e8
    .line 136
    iget v15, v10, Landroid/app/Notification;->defaults:I

    #@1ea
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1ed
    move-result-object v15

    #@1ee
    const/16 v16, 0x0

    #@1f0
    aput-object v15, v14, v16

    #@1f2
    iget v15, v10, Landroid/app/Notification;->flags:I

    #@1f4
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f7
    move-result-object v15

    #@1f8
    const/16 v16, 0x1

    #@1fa
    aput-object v15, v14, v16

    #@1fc
    .line 135
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1ff
    move-result-object v13

    #@200
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@203
    move-result-object v12

    #@204
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@207
    move-result-object v12

    #@208
    move-object/from16 v0, p1

    #@20a
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20d
    .line 137
    new-instance v12, Ljava/lang/StringBuilder;

    #@20f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@212
    move-object/from16 v0, p2

    #@214
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@217
    move-result-object v12

    #@218
    const-string/jumbo v13, "  sound="

    #@21b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21e
    move-result-object v12

    #@21f
    iget-object v13, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@221
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@224
    move-result-object v12

    #@225
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@228
    move-result-object v12

    #@229
    move-object/from16 v0, p1

    #@22b
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22e
    .line 138
    new-instance v12, Ljava/lang/StringBuilder;

    #@230
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@233
    move-object/from16 v0, p2

    #@235
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@238
    move-result-object v12

    #@239
    const-string/jumbo v13, "  audioStreamType="

    #@23c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v12

    #@240
    iget v13, v10, Landroid/app/Notification;->audioStreamType:I

    #@242
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@245
    move-result-object v12

    #@246
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@249
    move-result-object v12

    #@24a
    move-object/from16 v0, p1

    #@24c
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24f
    .line 139
    new-instance v12, Ljava/lang/StringBuilder;

    #@251
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@254
    move-object/from16 v0, p2

    #@256
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@259
    move-result-object v12

    #@25a
    const-string/jumbo v13, "  audioAttributes="

    #@25d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@260
    move-result-object v12

    #@261
    iget-object v13, v10, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@263
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@266
    move-result-object v12

    #@267
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26a
    move-result-object v12

    #@26b
    move-object/from16 v0, p1

    #@26d
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@270
    .line 140
    new-instance v12, Ljava/lang/StringBuilder;

    #@272
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@275
    move-object/from16 v0, p2

    #@277
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27a
    move-result-object v12

    #@27b
    const-string/jumbo v13, "  color=0x%08x"

    #@27e
    const/4 v14, 0x1

    #@27f
    new-array v14, v14, [Ljava/lang/Object;

    #@281
    iget v15, v10, Landroid/app/Notification;->color:I

    #@283
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@286
    move-result-object v15

    #@287
    const/16 v16, 0x0

    #@289
    aput-object v15, v14, v16

    #@28b
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28e
    move-result-object v13

    #@28f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@292
    move-result-object v12

    #@293
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@296
    move-result-object v12

    #@297
    move-object/from16 v0, p1

    #@299
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29c
    .line 141
    new-instance v12, Ljava/lang/StringBuilder;

    #@29e
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@2a1
    move-object/from16 v0, p2

    #@2a3
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a6
    move-result-object v12

    #@2a7
    const-string/jumbo v13, "  vibrate="

    #@2aa
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ad
    move-result-object v12

    #@2ae
    iget-object v13, v10, Landroid/app/Notification;->vibrate:[J

    #@2b0
    invoke-static {v13}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    #@2b3
    move-result-object v13

    #@2b4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b7
    move-result-object v12

    #@2b8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2bb
    move-result-object v12

    #@2bc
    move-object/from16 v0, p1

    #@2be
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c1
    .line 142
    new-instance v12, Ljava/lang/StringBuilder;

    #@2c3
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@2c6
    move-object/from16 v0, p2

    #@2c8
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cb
    move-result-object v12

    #@2cc
    const-string/jumbo v13, "  led=0x%08x onMs=%d offMs=%d"

    #@2cf
    const/4 v14, 0x3

    #@2d0
    new-array v14, v14, [Ljava/lang/Object;

    #@2d2
    .line 143
    iget v15, v10, Landroid/app/Notification;->ledARGB:I

    #@2d4
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d7
    move-result-object v15

    #@2d8
    const/16 v16, 0x0

    #@2da
    aput-object v15, v14, v16

    #@2dc
    iget v15, v10, Landroid/app/Notification;->ledOnMS:I

    #@2de
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e1
    move-result-object v15

    #@2e2
    const/16 v16, 0x1

    #@2e4
    aput-object v15, v14, v16

    #@2e6
    iget v15, v10, Landroid/app/Notification;->ledOffMS:I

    #@2e8
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2eb
    move-result-object v15

    #@2ec
    const/16 v16, 0x2

    #@2ee
    aput-object v15, v14, v16

    #@2f0
    .line 142
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2f3
    move-result-object v13

    #@2f4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f7
    move-result-object v12

    #@2f8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2fb
    move-result-object v12

    #@2fc
    move-object/from16 v0, p1

    #@2fe
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@301
    .line 144
    iget-object v12, v10, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@303
    if-eqz v12, :cond_2

    #@305
    iget-object v12, v10, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@307
    array-length v12, v12

    #@308
    if-lez v12, :cond_2

    #@30a
    .line 145
    new-instance v12, Ljava/lang/StringBuilder;

    #@30c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@30f
    move-object/from16 v0, p2

    #@311
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@314
    move-result-object v12

    #@315
    const-string/jumbo v13, "  actions={"

    #@318
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31b
    move-result-object v12

    #@31c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31f
    move-result-object v12

    #@320
    move-object/from16 v0, p1

    #@322
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@325
    .line 146
    iget-object v12, v10, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@327
    array-length v2, v12

    #@328
    .line 147
    .local v2, "N":I
    const/4 v4, 0x0

    #@329
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    #@32b
    .line 148
    iget-object v12, v10, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@32d
    aget-object v3, v12, v4

    #@32f
    .line 149
    .local v3, "action":Landroid/app/Notification$Action;
    const-string/jumbo v12, "%s    [%d] \"%s\" -> %s"

    #@332
    const/4 v13, 0x4

    #@333
    new-array v13, v13, [Ljava/lang/Object;

    #@335
    .line 150
    const/4 v14, 0x0

    #@336
    aput-object p2, v13, v14

    #@338
    .line 151
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33b
    move-result-object v14

    #@33c
    const/4 v15, 0x1

    #@33d
    aput-object v14, v13, v15

    #@33f
    .line 152
    iget-object v14, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@341
    const/4 v15, 0x2

    #@342
    aput-object v14, v13, v15

    #@344
    .line 153
    iget-object v14, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@346
    invoke-virtual {v14}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    #@349
    move-result-object v14

    #@34a
    const/4 v15, 0x3

    #@34b
    aput-object v14, v13, v15

    #@34d
    .line 149
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@350
    move-result-object v12

    #@351
    move-object/from16 v0, p1

    #@353
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@356
    .line 147
    add-int/lit8 v4, v4, 0x1

    #@358
    goto :goto_0

    #@359
    .line 156
    .end local v3    # "action":Landroid/app/Notification$Action;
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    #@35b
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@35e
    move-object/from16 v0, p2

    #@360
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@363
    move-result-object v12

    #@364
    const-string/jumbo v13, "  }"

    #@367
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36a
    move-result-object v12

    #@36b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36e
    move-result-object v12

    #@36f
    move-object/from16 v0, p1

    #@371
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@374
    .line 158
    .end local v2    # "N":I
    .end local v4    # "i":I
    :cond_2
    iget-object v12, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@376
    if-eqz v12, :cond_9

    #@378
    iget-object v12, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@37a
    invoke-virtual {v12}, Landroid/os/Bundle;->size()I

    #@37d
    move-result v12

    #@37e
    if-lez v12, :cond_9

    #@380
    .line 159
    new-instance v12, Ljava/lang/StringBuilder;

    #@382
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@385
    move-object/from16 v0, p2

    #@387
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38a
    move-result-object v12

    #@38b
    const-string/jumbo v13, "  extras={"

    #@38e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@391
    move-result-object v12

    #@392
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@395
    move-result-object v12

    #@396
    move-object/from16 v0, p1

    #@398
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39b
    .line 160
    iget-object v12, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@39d
    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@3a0
    move-result-object v12

    #@3a1
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3a4
    move-result-object v9

    #@3a5
    .local v9, "key$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@3a8
    move-result v12

    #@3a9
    if-eqz v12, :cond_8

    #@3ab
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3ae
    move-result-object v8

    #@3af
    check-cast v8, Ljava/lang/String;

    #@3b1
    .line 161
    .local v8, "key":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    #@3b3
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@3b6
    move-object/from16 v0, p2

    #@3b8
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bb
    move-result-object v12

    #@3bc
    const-string/jumbo v13, "    "

    #@3bf
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c2
    move-result-object v12

    #@3c3
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c6
    move-result-object v12

    #@3c7
    const-string/jumbo v13, "="

    #@3ca
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3cd
    move-result-object v12

    #@3ce
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d1
    move-result-object v12

    #@3d2
    move-object/from16 v0, p1

    #@3d4
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d7
    .line 162
    iget-object v12, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@3d9
    invoke-virtual {v12, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@3dc
    move-result-object v11

    #@3dd
    .line 163
    .local v11, "val":Ljava/lang/Object;
    if-nez v11, :cond_3

    #@3df
    .line 164
    const-string/jumbo v12, "null"

    #@3e2
    move-object/from16 v0, p1

    #@3e4
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e7
    goto :goto_1

    #@3e8
    .line 166
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3eb
    move-result-object v12

    #@3ec
    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@3ef
    move-result-object v12

    #@3f0
    move-object/from16 v0, p1

    #@3f2
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f5
    .line 167
    if-eqz p4, :cond_5

    #@3f7
    instance-of v12, v11, Ljava/lang/CharSequence;

    #@3f9
    if-nez v12, :cond_4

    #@3fb
    instance-of v12, v11, Ljava/lang/String;

    #@3fd
    if-eqz v12, :cond_5

    #@3ff
    .line 186
    .end local v11    # "val":Ljava/lang/Object;
    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@402
    goto :goto_1

    #@403
    .line 169
    .restart local v11    # "val":Ljava/lang/Object;
    :cond_5
    instance-of v12, v11, Landroid/graphics/Bitmap;

    #@405
    if-eqz v12, :cond_6

    #@407
    .line 170
    const-string/jumbo v13, " (%dx%d)"

    #@40a
    const/4 v12, 0x2

    #@40b
    new-array v14, v12, [Ljava/lang/Object;

    #@40d
    move-object v12, v11

    #@40e
    .line 171
    check-cast v12, Landroid/graphics/Bitmap;

    #@410
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    #@413
    move-result v12

    #@414
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@417
    move-result-object v12

    #@418
    const/4 v15, 0x0

    #@419
    aput-object v12, v14, v15

    #@41b
    .line 172
    check-cast v11, Landroid/graphics/Bitmap;

    #@41d
    .end local v11    # "val":Ljava/lang/Object;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    #@420
    move-result v12

    #@421
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@424
    move-result-object v12

    #@425
    const/4 v15, 0x1

    #@426
    aput-object v12, v14, v15

    #@428
    .line 170
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@42b
    move-result-object v12

    #@42c
    move-object/from16 v0, p1

    #@42e
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@431
    goto :goto_2

    #@432
    .line 173
    .restart local v11    # "val":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@435
    move-result-object v12

    #@436
    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    #@439
    move-result v12

    #@43a
    if-eqz v12, :cond_7

    #@43c
    .line 174
    invoke-static {v11}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@43f
    move-result v2

    #@440
    .line 175
    .restart local v2    # "N":I
    new-instance v12, Ljava/lang/StringBuilder;

    #@442
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@445
    const-string/jumbo v13, " ("

    #@448
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44b
    move-result-object v12

    #@44c
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44f
    move-result-object v12

    #@450
    const-string/jumbo v13, ")"

    #@453
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@456
    move-result-object v12

    #@457
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45a
    move-result-object v12

    #@45b
    move-object/from16 v0, p1

    #@45d
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@460
    .line 176
    if-nez p4, :cond_4

    #@462
    .line 177
    const/4 v7, 0x0

    #@463
    .local v7, "j":I
    :goto_3
    if-ge v7, v2, :cond_4

    #@465
    .line 178
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@468
    .line 179
    const-string/jumbo v12, "%s      [%d] %s"

    #@46b
    const/4 v13, 0x3

    #@46c
    new-array v13, v13, [Ljava/lang/Object;

    #@46e
    .line 180
    const/4 v14, 0x0

    #@46f
    aput-object p2, v13, v14

    #@471
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@474
    move-result-object v14

    #@475
    const/4 v15, 0x1

    #@476
    aput-object v14, v13, v15

    #@478
    invoke-static {v11, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    #@47b
    move-result-object v14

    #@47c
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@47f
    move-result-object v14

    #@480
    const/4 v15, 0x2

    #@481
    aput-object v14, v13, v15

    #@483
    .line 179
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@486
    move-result-object v12

    #@487
    move-object/from16 v0, p1

    #@489
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48c
    .line 177
    add-int/lit8 v7, v7, 0x1

    #@48e
    goto :goto_3

    #@48f
    .line 184
    .end local v2    # "N":I
    .end local v7    # "j":I
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    #@491
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@494
    const-string/jumbo v13, " ("

    #@497
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49a
    move-result-object v12

    #@49b
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@49e
    move-result-object v13

    #@49f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a2
    move-result-object v12

    #@4a3
    const-string/jumbo v13, ")"

    #@4a6
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a9
    move-result-object v12

    #@4aa
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ad
    move-result-object v12

    #@4ae
    move-object/from16 v0, p1

    #@4b0
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b3
    goto/16 :goto_2

    #@4b5
    .line 189
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "val":Ljava/lang/Object;
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    #@4b7
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@4ba
    move-object/from16 v0, p2

    #@4bc
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4bf
    move-result-object v12

    #@4c0
    const-string/jumbo v13, "  }"

    #@4c3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c6
    move-result-object v12

    #@4c7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ca
    move-result-object v12

    #@4cb
    move-object/from16 v0, p1

    #@4cd
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4d0
    .line 191
    .end local v9    # "key$iterator":Ljava/util/Iterator;
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    #@4d2
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@4d5
    move-object/from16 v0, p2

    #@4d7
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4da
    move-result-object v12

    #@4db
    const-string/jumbo v13, "  stats="

    #@4de
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e1
    move-result-object v12

    #@4e2
    move-object/from16 v0, p0

    #@4e4
    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@4e6
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->toString()Ljava/lang/String;

    #@4e9
    move-result-object v13

    #@4ea
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ed
    move-result-object v12

    #@4ee
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f1
    move-result-object v12

    #@4f2
    move-object/from16 v0, p1

    #@4f4
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f7
    .line 192
    new-instance v12, Ljava/lang/StringBuilder;

    #@4f9
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@4fc
    move-object/from16 v0, p2

    #@4fe
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@501
    move-result-object v12

    #@502
    const-string/jumbo v13, "  mContactAffinity="

    #@505
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@508
    move-result-object v12

    #@509
    move-object/from16 v0, p0

    #@50b
    iget v13, v0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    #@50d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@510
    move-result-object v12

    #@511
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@514
    move-result-object v12

    #@515
    move-object/from16 v0, p1

    #@517
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51a
    .line 193
    new-instance v12, Ljava/lang/StringBuilder;

    #@51c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@51f
    move-object/from16 v0, p2

    #@521
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@524
    move-result-object v12

    #@525
    const-string/jumbo v13, "  mRecentlyIntrusive="

    #@528
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52b
    move-result-object v12

    #@52c
    move-object/from16 v0, p0

    #@52e
    iget-boolean v13, v0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    #@530
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@533
    move-result-object v12

    #@534
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@537
    move-result-object v12

    #@538
    move-object/from16 v0, p1

    #@53a
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@53d
    .line 194
    new-instance v12, Ljava/lang/StringBuilder;

    #@53f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@542
    move-object/from16 v0, p2

    #@544
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@547
    move-result-object v12

    #@548
    const-string/jumbo v13, "  mPackagePriority="

    #@54b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54e
    move-result-object v12

    #@54f
    move-object/from16 v0, p0

    #@551
    iget v13, v0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    #@553
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@556
    move-result-object v12

    #@557
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55a
    move-result-object v12

    #@55b
    move-object/from16 v0, p1

    #@55d
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@560
    .line 195
    new-instance v12, Ljava/lang/StringBuilder;

    #@562
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@565
    move-object/from16 v0, p2

    #@567
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56a
    move-result-object v12

    #@56b
    const-string/jumbo v13, "  mPackageVisibility="

    #@56e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@571
    move-result-object v12

    #@572
    move-object/from16 v0, p0

    #@574
    iget v13, v0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    #@576
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@579
    move-result-object v12

    #@57a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57d
    move-result-object v12

    #@57e
    move-object/from16 v0, p1

    #@580
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@583
    .line 196
    new-instance v12, Ljava/lang/StringBuilder;

    #@585
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@588
    move-object/from16 v0, p2

    #@58a
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58d
    move-result-object v12

    #@58e
    const-string/jumbo v13, "  mIntercept="

    #@591
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@594
    move-result-object v12

    #@595
    move-object/from16 v0, p0

    #@597
    iget-boolean v13, v0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    #@599
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@59c
    move-result-object v12

    #@59d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a0
    move-result-object v12

    #@5a1
    move-object/from16 v0, p1

    #@5a3
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a6
    .line 197
    new-instance v12, Ljava/lang/StringBuilder;

    #@5a8
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@5ab
    move-object/from16 v0, p2

    #@5ad
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b0
    move-result-object v12

    #@5b1
    const-string/jumbo v13, "  mGlobalSortKey="

    #@5b4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b7
    move-result-object v12

    #@5b8
    move-object/from16 v0, p0

    #@5ba
    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    #@5bc
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5bf
    move-result-object v12

    #@5c0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c3
    move-result-object v12

    #@5c4
    move-object/from16 v0, p1

    #@5c6
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5c9
    .line 198
    new-instance v12, Ljava/lang/StringBuilder;

    #@5cb
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@5ce
    move-object/from16 v0, p2

    #@5d0
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d3
    move-result-object v12

    #@5d4
    const-string/jumbo v13, "  mRankingTimeMs="

    #@5d7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5da
    move-result-object v12

    #@5db
    move-object/from16 v0, p0

    #@5dd
    iget-wide v14, v0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    #@5df
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5e2
    move-result-object v12

    #@5e3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e6
    move-result-object v12

    #@5e7
    move-object/from16 v0, p1

    #@5e9
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5ec
    .line 199
    new-instance v12, Ljava/lang/StringBuilder;

    #@5ee
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@5f1
    move-object/from16 v0, p2

    #@5f3
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f6
    move-result-object v12

    #@5f7
    const-string/jumbo v13, "  mCreationTimeMs="

    #@5fa
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5fd
    move-result-object v12

    #@5fe
    move-object/from16 v0, p0

    #@600
    iget-wide v14, v0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    #@602
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@605
    move-result-object v12

    #@606
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@609
    move-result-object v12

    #@60a
    move-object/from16 v0, p1

    #@60c
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60f
    .line 200
    new-instance v12, Ljava/lang/StringBuilder;

    #@611
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@614
    move-object/from16 v0, p2

    #@616
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@619
    move-result-object v12

    #@61a
    const-string/jumbo v13, "  mVisibleSinceMs="

    #@61d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@620
    move-result-object v12

    #@621
    move-object/from16 v0, p0

    #@623
    iget-wide v14, v0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    #@625
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@628
    move-result-object v12

    #@629
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62c
    move-result-object v12

    #@62d
    move-object/from16 v0, p1

    #@62f
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@632
    .line 201
    new-instance v12, Ljava/lang/StringBuilder;

    #@634
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@637
    move-object/from16 v0, p2

    #@639
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63c
    move-result-object v12

    #@63d
    const-string/jumbo v13, "  mUpdateTimeMs="

    #@640
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@643
    move-result-object v12

    #@644
    move-object/from16 v0, p0

    #@646
    iget-wide v14, v0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    #@648
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@64b
    move-result-object v12

    #@64c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64f
    move-result-object v12

    #@650
    move-object/from16 v0, p1

    #@652
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@655
    .line 117
    return-void
.end method

.method public getAuthoritativeRank()I
    .locals 1

    #@0
    .prologue
    .line 376
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mAuthoritativeRank:I

    #@2
    return v0
.end method

.method public getContactAffinity()F
    .locals 1

    #@0
    .prologue
    .line 241
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    #@2
    return v0
.end method

.method public getExposureMs(J)I
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    .line 318
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    #@c
    sub-long v0, p1, v0

    #@e
    long-to-int v0, v0

    #@f
    goto :goto_0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroid/app/Notification;->flags:I

    #@8
    return v0
.end method

.method public getFreshnessMs(J)I
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    .line 302
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    #@2
    sub-long v0, p1, v0

    #@4
    long-to-int v0, v0

    #@5
    return v0
.end method

.method public getGlobalSortKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGroupKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLifespanMs(J)I
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    .line 310
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    #@2
    sub-long v0, p1, v0

    #@4
    long-to-int v0, v0

    #@5
    return v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPackagePriority()I
    .locals 1

    #@0
    .prologue
    .line 257
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    #@2
    return v0
.end method

.method public getPackageVisibilityOverride()I
    .locals 1

    #@0
    .prologue
    .line 265
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    #@2
    return v0
.end method

.method public getRankingTimeMs()J
    .locals 2

    #@0
    .prologue
    .line 294
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    #@2
    return-wide v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUserId()I
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isAudioAttributesUsage(I)Z
    .locals 3
    .param p1, "usage"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 286
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@4
    move-result-object v2

    #@5
    iget-object v0, v2, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@7
    .line 287
    .local v0, "attributes":Landroid/media/AudioAttributes;
    if-eqz v0, :cond_0

    #@9
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    #@c
    move-result v2

    #@d
    if-ne v2, p1, :cond_0

    #@f
    const/4 v1, 0x1

    #@10
    :cond_0
    return v1
.end method

.method public isAudioStream(I)Z
    .locals 1
    .param p1, "stream"    # I

    #@0
    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    #@6
    if-ne v0, p1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    #@6
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isIntercepted()Z
    .locals 1

    #@0
    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    #@2
    return v0
.end method

.method public isRecentlyIntrusive()Z
    .locals 1

    #@0
    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    #@2
    return v0
.end method

.method public isSeen()Z
    .locals 1

    #@0
    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsSeen:Z

    #@2
    return v0
.end method

.method public setAuthoritativeRank(I)V
    .locals 0
    .param p1, "authoritativeRank"    # I

    #@0
    .prologue
    .line 372
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mAuthoritativeRank:I

    #@2
    .line 371
    return-void
.end method

.method public setContactAffinity(F)V
    .locals 0
    .param p1, "contactAffinity"    # F

    #@0
    .prologue
    .line 237
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    #@2
    .line 236
    return-void
.end method

.method public setGlobalSortKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "globalSortKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    #@2
    .line 353
    return-void
.end method

.method public setIntercepted(Z)Z
    .locals 1
    .param p1, "intercept"    # Z

    #@0
    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    #@2
    .line 270
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    #@4
    return v0
.end method

.method public setPackagePriority(I)V
    .locals 0
    .param p1, "packagePriority"    # I

    #@0
    .prologue
    .line 253
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    #@2
    .line 252
    return-void
.end method

.method public setPackageVisibilityOverride(I)V
    .locals 0
    .param p1, "packageVisibility"    # I

    #@0
    .prologue
    .line 261
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    #@2
    .line 260
    return-void
.end method

.method public setRecentlyIntrusive(Z)V
    .locals 0
    .param p1, "recentlyIntrusive"    # Z

    #@0
    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    #@2
    .line 244
    return-void
.end method

.method public setSeen()V
    .locals 1

    #@0
    .prologue
    .line 368
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsSeen:Z

    #@3
    .line 367
    return-void
.end method

.method public setVisibility(ZI)V
    .locals 10
    .param p1, "visible"    # Z
    .param p2, "rank"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v6

    #@5
    .line 326
    .local v6, "now":J
    if-eqz p1, :cond_0

    #@7
    move-wide v0, v6

    #@8
    :goto_0
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    #@a
    .line 327
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@c
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onVisibilityChanged(Z)V

    #@f
    .line 328
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    if-eqz p1, :cond_1

    #@15
    const/4 v1, 0x1

    #@16
    .line 329
    :goto_1
    iget-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    #@18
    sub-long v2, v6, v2

    #@1a
    long-to-int v2, v2

    #@1b
    .line 330
    iget-wide v8, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    #@1d
    sub-long v8, v6, v8

    #@1f
    long-to-int v3, v8

    #@20
    move v5, p2

    #@21
    .line 328
    invoke-static/range {v0 .. v5}, Lcom/android/server/EventLogTags;->writeNotificationVisibility(Ljava/lang/String;IIIII)V

    #@24
    .line 324
    return-void

    #@25
    .line 326
    :cond_0
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    #@27
    goto :goto_0

    #@28
    :cond_1
    move v1, v4

    #@29
    .line 328
    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 229
    const-string/jumbo v0, "NotificationRecord(0x%08x: pkg=%s user=%s id=%d tag=%s score=%d key=%s: %s)"

    #@3
    .line 228
    const/16 v1, 0x8

    #@5
    new-array v1, v1, [Ljava/lang/Object;

    #@7
    .line 230
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v2

    #@f
    const/4 v3, 0x0

    #@10
    aput-object v2, v1, v3

    #@12
    .line 231
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@14
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    const/4 v3, 0x1

    #@19
    aput-object v2, v1, v3

    #@1b
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@1d
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    #@20
    move-result-object v2

    #@21
    const/4 v3, 0x2

    #@22
    aput-object v2, v1, v3

    #@24
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@26
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    #@29
    move-result v2

    #@2a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v2

    #@2e
    const/4 v3, 0x3

    #@2f
    aput-object v2, v1, v3

    #@31
    .line 232
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@33
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    const/4 v3, 0x4

    #@38
    aput-object v2, v1, v3

    #@3a
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@3c
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getScore()I

    #@3f
    move-result v2

    #@40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v2

    #@44
    const/4 v3, 0x5

    #@45
    aput-object v2, v1, v3

    #@47
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@49
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    const/4 v3, 0x6

    #@4e
    aput-object v2, v1, v3

    #@50
    .line 233
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@52
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@55
    move-result-object v2

    #@56
    const/4 v3, 0x7

    #@57
    aput-object v2, v1, v3

    #@59
    .line 228
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    return-object v0
.end method
