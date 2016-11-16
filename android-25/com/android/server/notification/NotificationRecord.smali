.class public final Lcom/android/server/notification/NotificationRecord;
.super Ljava/lang/Object;
.source "NotificationRecord.java"


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "NotificationRecord"


# instance fields
.field isCanceled:Z

.field public isUpdate:Z

.field private mAuthoritativeRank:I

.field private mContactAffinity:F

.field private final mContext:Landroid/content/Context;

.field private mCreationTimeMs:J

.field private mGlobalSortKey:Ljava/lang/String;

.field private mImportance:I

.field private mImportanceExplanation:Ljava/lang/CharSequence;

.field private mIntercept:Z

.field mIsSeen:Z

.field final mOriginalFlags:I

.field private mPackagePriority:I

.field private mPackageVisibility:I

.field private mPeopleExplanation:Ljava/lang/String;

.field private mRankingTimeMs:J

.field private mRecentlyIntrusive:Z

.field private mSuppressedVisualEffects:I

.field private mUpdateTimeMs:J

.field private mUserExplanation:Ljava/lang/String;

.field private mUserImportance:I

.field private mVisibleSinceMs:J

.field final sbn:Landroid/service/notification/StatusBarNotification;

.field stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "NotificationRecord"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/notification/NotificationRecord;->DBG:Z

    #@a
    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    #@0
    .prologue
    const/16 v0, -0x3e8

    #@2
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 96
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserImportance:I

    #@7
    .line 97
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    #@9
    .line 98
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanation:Ljava/lang/CharSequence;

    #@c
    .line 100
    const/4 v0, 0x0

    #@d
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    #@f
    .line 107
    iput-object p2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@11
    .line 108
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@14
    move-result-object v0

    #@15
    iget v0, v0, Landroid/app/Notification;->flags:I

    #@17
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    #@19
    .line 109
    const-wide/16 v0, 0x0

    #@1b
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->calculateRankingTimeMs(J)J

    #@1e
    move-result-wide v0

    #@1f
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    #@21
    .line 110
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    #@24
    move-result-wide v0

    #@25
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    #@27
    .line 111
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    #@29
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    #@2b
    .line 112
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    #@2d
    .line 113
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@2f
    invoke-direct {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;-><init>()V

    #@32
    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@34
    .line 114
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->defaultImportance()I

    #@37
    move-result v0

    #@38
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    #@3a
    .line 105
    return-void
.end method

.method private applyUserImportance()V
    .locals 2

    #@0
    .prologue
    .line 377
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserImportance:I

    #@2
    const/16 v1, -0x3e8

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 378
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserImportance:I

    #@8
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    #@a
    .line 379
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->getUserExplanation()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanation:Ljava/lang/CharSequence;

    #@10
    .line 376
    :cond_0
    return-void
.end method

.method private calculateRankingTimeMs(J)J
    .locals 9
    .param p1, "previousRankingTimeMs"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 483
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@5
    move-result-object v0

    #@6
    .line 485
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
    .line 486
    iget-wide v2, v0, Landroid/app/Notification;->when:J

    #@1a
    return-wide v2

    #@1b
    .line 490
    :cond_0
    cmp-long v1, p1, v6

    #@1d
    if-lez v1, :cond_1

    #@1f
    .line 491
    return-wide p1

    #@20
    .line 493
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@22
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    #@25
    move-result-wide v2

    #@26
    return-wide v2
.end method

.method private defaultImportance()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 118
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@3
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@6
    move-result-object v2

    #@7
    .line 119
    .local v2, "n":Landroid/app/Notification;
    const/4 v0, 0x3

    #@8
    .line 122
    .local v0, "importance":I
    iget v3, v2, Landroid/app/Notification;->flags:I

    #@a
    and-int/lit16 v3, v3, 0x80

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 123
    iput v4, v2, Landroid/app/Notification;->priority:I

    #@10
    .line 126
    :cond_0
    iget v3, v2, Landroid/app/Notification;->priority:I

    #@12
    packed-switch v3, :pswitch_data_0

    #@15
    .line 143
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@17
    iput v0, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    #@19
    .line 145
    iget v3, v2, Landroid/app/Notification;->defaults:I

    #@1b
    and-int/lit8 v3, v3, 0x1

    #@1d
    if-nez v3, :cond_1

    #@1f
    .line 146
    iget v3, v2, Landroid/app/Notification;->defaults:I

    #@21
    and-int/lit8 v3, v3, 0x2

    #@23
    if-eqz v3, :cond_5

    #@25
    .line 145
    :cond_1
    const/4 v1, 0x1

    #@26
    .line 149
    .local v1, "isNoisy":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@28
    iput-boolean v1, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    #@2a
    .line 151
    if-nez v1, :cond_2

    #@2c
    if-le v0, v4, :cond_2

    #@2e
    .line 152
    const/4 v0, 0x2

    #@2f
    .line 155
    :cond_2
    if-eqz v1, :cond_3

    #@31
    .line 156
    const/4 v3, 0x3

    #@32
    if-ge v0, v3, :cond_3

    #@34
    .line 157
    const/4 v0, 0x3

    #@35
    .line 161
    :cond_3
    iget-object v3, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@37
    if-eqz v3, :cond_4

    #@39
    .line 162
    const/4 v0, 0x5

    #@3a
    .line 165
    :cond_4
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@3c
    iput v0, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    #@3e
    .line 166
    return v0

    #@3f
    .line 128
    .end local v1    # "isNoisy":Z
    :pswitch_0
    const/4 v0, 0x1

    #@40
    .line 129
    goto :goto_0

    #@41
    .line 131
    :pswitch_1
    const/4 v0, 0x2

    #@42
    .line 132
    goto :goto_0

    #@43
    .line 134
    :pswitch_2
    const/4 v0, 0x3

    #@44
    .line 135
    goto :goto_0

    #@45
    .line 137
    :pswitch_3
    const/4 v0, 0x4

    #@46
    .line 138
    goto :goto_0

    #@47
    .line 140
    :pswitch_4
    const/4 v0, 0x5

    #@48
    .line 141
    goto :goto_0

    #@49
    .line 147
    :cond_5
    iget-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@4b
    if-nez v3, :cond_1

    #@4d
    .line 148
    iget-object v3, v2, Landroid/app/Notification;->vibrate:[J

    #@4f
    if-eqz v3, :cond_6

    #@51
    const/4 v1, 0x1

    #@52
    .restart local v1    # "isNoisy":Z
    goto :goto_1

    #@53
    .end local v1    # "isNoisy":Z
    :cond_6
    const/4 v1, 0x0

    #@54
    .restart local v1    # "isNoisy":Z
    goto :goto_1

    #@55
    .line 126
    nop

    #@56
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getPeopleExplanation()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleExplanation:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 371
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    #@6
    const v1, 0x10405de

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 370
    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleExplanation:Ljava/lang/String;

    #@f
    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleExplanation:Ljava/lang/String;

    #@11
    return-object v0
.end method

.method private getUserExplanation()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserExplanation:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 363
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    #@6
    const v1, 0x10405dd

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 362
    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserExplanation:Ljava/lang/String;

    #@f
    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserExplanation:Ljava/lang/String;

    #@11
    return-object v0
.end method

.method static idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "baseContext"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    #@0
    .prologue
    .line 291
    if-eqz p1, :cond_0

    #@2
    .line 293
    const/4 v4, 0x0

    #@3
    :try_start_0
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v0

    #@7
    .line 301
    .local v0, "c":Landroid/content/Context;
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v3

    #@b
    .line 303
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
    .line 294
    .end local v0    # "c":Landroid/content/Context;
    .end local v3    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    #@11
    .line 295
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    #@12
    .restart local v0    # "c":Landroid/content/Context;
    goto :goto_0

    #@13
    .line 298
    .end local v0    # "c":Landroid/content/Context;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    #@14
    .restart local v0    # "c":Landroid/content/Context;
    goto :goto_0

    #@15
    .line 304
    .restart local v3    # "r":Landroid/content/res/Resources;
    :catch_1
    move-exception v2

    #@16
    .line 305
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
    .line 171
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    #@2
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    #@4
    .line 172
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    #@6
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    #@8
    .line 173
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    #@a
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    #@c
    .line 174
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    #@e
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    #@10
    .line 175
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    #@12
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    #@14
    .line 176
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
    .line 177
    iget-wide v0, p1, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    #@20
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    #@22
    .line 178
    iget-wide v0, p1, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    #@24
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    #@26
    .line 179
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@28
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    if-eqz v0, :cond_0

    #@2e
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@30
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_1

    #@36
    .line 170
    :cond_0
    :goto_0
    return-void

    #@37
    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@39
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@3b
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0, v1}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    #@42
    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 17
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "baseContext"    # Landroid/content/Context;
    .param p4, "redact"    # Z

    #@0
    .prologue
    .line 193
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@4
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@7
    move-result-object v10

    #@8
    .line 194
    .local v10, "notification":Landroid/app/Notification;
    invoke-virtual {v10}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@b
    move-result-object v5

    #@c
    .line 195
    .local v5, "icon":Landroid/graphics/drawable/Icon;
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v6

    #@10
    .line 196
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
    .line 197
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
    .line 199
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
    .line 200
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
    .line 201
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
    .line 202
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
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v12

    #@ce
    move-object/from16 v0, p1

    #@d0
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d3
    .line 203
    new-instance v12, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    move-object/from16 v0, p2

    #@da
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v12

    #@de
    const-string/jumbo v13, "  key="

    #@e1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v12

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@e9
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@ec
    move-result-object v13

    #@ed
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v12

    #@f1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v12

    #@f5
    move-object/from16 v0, p1

    #@f7
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@fa
    .line 204
    new-instance v12, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    move-object/from16 v0, p2

    #@101
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v12

    #@105
    const-string/jumbo v13, "  seen="

    #@108
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v12

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget-boolean v13, v0, Lcom/android/server/notification/NotificationRecord;->mIsSeen:Z

    #@110
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@113
    move-result-object v12

    #@114
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@117
    move-result-object v12

    #@118
    move-object/from16 v0, p1

    #@11a
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11d
    .line 205
    new-instance v12, Ljava/lang/StringBuilder;

    #@11f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@122
    move-object/from16 v0, p2

    #@124
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v12

    #@128
    const-string/jumbo v13, "  groupKey="

    #@12b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v12

    #@12f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    #@132
    move-result-object v13

    #@133
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v12

    #@137
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v12

    #@13b
    move-object/from16 v0, p1

    #@13d
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@140
    .line 206
    new-instance v12, Ljava/lang/StringBuilder;

    #@142
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@145
    move-object/from16 v0, p2

    #@147
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v12

    #@14b
    const-string/jumbo v13, "  contentIntent="

    #@14e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v12

    #@152
    iget-object v13, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@154
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v12

    #@158
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v12

    #@15c
    move-object/from16 v0, p1

    #@15e
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@161
    .line 207
    new-instance v12, Ljava/lang/StringBuilder;

    #@163
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@166
    move-object/from16 v0, p2

    #@168
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v12

    #@16c
    const-string/jumbo v13, "  deleteIntent="

    #@16f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    move-result-object v12

    #@173
    iget-object v13, v10, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@175
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v12

    #@179
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17c
    move-result-object v12

    #@17d
    move-object/from16 v0, p1

    #@17f
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@182
    .line 208
    new-instance v12, Ljava/lang/StringBuilder;

    #@184
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@187
    move-object/from16 v0, p2

    #@189
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v12

    #@18d
    const-string/jumbo v13, "  tickerText="

    #@190
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v12

    #@194
    iget-object v13, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@196
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v12

    #@19a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19d
    move-result-object v12

    #@19e
    move-object/from16 v0, p1

    #@1a0
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a3
    .line 209
    new-instance v12, Ljava/lang/StringBuilder;

    #@1a5
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1a8
    move-object/from16 v0, p2

    #@1aa
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v12

    #@1ae
    const-string/jumbo v13, "  contentView="

    #@1b1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v12

    #@1b5
    iget-object v13, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@1b7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v12

    #@1bb
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1be
    move-result-object v12

    #@1bf
    move-object/from16 v0, p1

    #@1c1
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c4
    .line 210
    new-instance v12, Ljava/lang/StringBuilder;

    #@1c6
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1c9
    move-object/from16 v0, p2

    #@1cb
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v12

    #@1cf
    const-string/jumbo v13, "  defaults=0x%08x flags=0x%08x"

    #@1d2
    const/4 v14, 0x2

    #@1d3
    new-array v14, v14, [Ljava/lang/Object;

    #@1d5
    .line 211
    iget v15, v10, Landroid/app/Notification;->defaults:I

    #@1d7
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1da
    move-result-object v15

    #@1db
    const/16 v16, 0x0

    #@1dd
    aput-object v15, v14, v16

    #@1df
    iget v15, v10, Landroid/app/Notification;->flags:I

    #@1e1
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e4
    move-result-object v15

    #@1e5
    const/16 v16, 0x1

    #@1e7
    aput-object v15, v14, v16

    #@1e9
    .line 210
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1ec
    move-result-object v13

    #@1ed
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v12

    #@1f1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f4
    move-result-object v12

    #@1f5
    move-object/from16 v0, p1

    #@1f7
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1fa
    .line 212
    new-instance v12, Ljava/lang/StringBuilder;

    #@1fc
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1ff
    move-object/from16 v0, p2

    #@201
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v12

    #@205
    const-string/jumbo v13, "  sound="

    #@208
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v12

    #@20c
    iget-object v13, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@20e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v12

    #@212
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@215
    move-result-object v12

    #@216
    move-object/from16 v0, p1

    #@218
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@21b
    .line 213
    new-instance v12, Ljava/lang/StringBuilder;

    #@21d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@220
    move-object/from16 v0, p2

    #@222
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v12

    #@226
    const-string/jumbo v13, "  audioStreamType="

    #@229
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22c
    move-result-object v12

    #@22d
    iget v13, v10, Landroid/app/Notification;->audioStreamType:I

    #@22f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@232
    move-result-object v12

    #@233
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@236
    move-result-object v12

    #@237
    move-object/from16 v0, p1

    #@239
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@23c
    .line 214
    new-instance v12, Ljava/lang/StringBuilder;

    #@23e
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@241
    move-object/from16 v0, p2

    #@243
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v12

    #@247
    const-string/jumbo v13, "  audioAttributes="

    #@24a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24d
    move-result-object v12

    #@24e
    iget-object v13, v10, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@250
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@253
    move-result-object v12

    #@254
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@257
    move-result-object v12

    #@258
    move-object/from16 v0, p1

    #@25a
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25d
    .line 215
    new-instance v12, Ljava/lang/StringBuilder;

    #@25f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@262
    move-object/from16 v0, p2

    #@264
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@267
    move-result-object v12

    #@268
    const-string/jumbo v13, "  color=0x%08x"

    #@26b
    const/4 v14, 0x1

    #@26c
    new-array v14, v14, [Ljava/lang/Object;

    #@26e
    iget v15, v10, Landroid/app/Notification;->color:I

    #@270
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@273
    move-result-object v15

    #@274
    const/16 v16, 0x0

    #@276
    aput-object v15, v14, v16

    #@278
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27b
    move-result-object v13

    #@27c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27f
    move-result-object v12

    #@280
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@283
    move-result-object v12

    #@284
    move-object/from16 v0, p1

    #@286
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@289
    .line 216
    new-instance v12, Ljava/lang/StringBuilder;

    #@28b
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@28e
    move-object/from16 v0, p2

    #@290
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@293
    move-result-object v12

    #@294
    const-string/jumbo v13, "  vibrate="

    #@297
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29a
    move-result-object v12

    #@29b
    iget-object v13, v10, Landroid/app/Notification;->vibrate:[J

    #@29d
    invoke-static {v13}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    #@2a0
    move-result-object v13

    #@2a1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a4
    move-result-object v12

    #@2a5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a8
    move-result-object v12

    #@2a9
    move-object/from16 v0, p1

    #@2ab
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2ae
    .line 217
    new-instance v12, Ljava/lang/StringBuilder;

    #@2b0
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@2b3
    move-object/from16 v0, p2

    #@2b5
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b8
    move-result-object v12

    #@2b9
    const-string/jumbo v13, "  led=0x%08x onMs=%d offMs=%d"

    #@2bc
    const/4 v14, 0x3

    #@2bd
    new-array v14, v14, [Ljava/lang/Object;

    #@2bf
    .line 218
    iget v15, v10, Landroid/app/Notification;->ledARGB:I

    #@2c1
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c4
    move-result-object v15

    #@2c5
    const/16 v16, 0x0

    #@2c7
    aput-object v15, v14, v16

    #@2c9
    iget v15, v10, Landroid/app/Notification;->ledOnMS:I

    #@2cb
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2ce
    move-result-object v15

    #@2cf
    const/16 v16, 0x1

    #@2d1
    aput-object v15, v14, v16

    #@2d3
    iget v15, v10, Landroid/app/Notification;->ledOffMS:I

    #@2d5
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d8
    move-result-object v15

    #@2d9
    const/16 v16, 0x2

    #@2db
    aput-object v15, v14, v16

    #@2dd
    .line 217
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2e0
    move-result-object v13

    #@2e1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e4
    move-result-object v12

    #@2e5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e8
    move-result-object v12

    #@2e9
    move-object/from16 v0, p1

    #@2eb
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2ee
    .line 219
    iget-object v12, v10, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@2f0
    if-eqz v12, :cond_4

    #@2f2
    iget-object v12, v10, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@2f4
    array-length v12, v12

    #@2f5
    if-lez v12, :cond_4

    #@2f7
    .line 220
    new-instance v12, Ljava/lang/StringBuilder;

    #@2f9
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@2fc
    move-object/from16 v0, p2

    #@2fe
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@301
    move-result-object v12

    #@302
    const-string/jumbo v13, "  actions={"

    #@305
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@308
    move-result-object v12

    #@309
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30c
    move-result-object v12

    #@30d
    move-object/from16 v0, p1

    #@30f
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@312
    .line 221
    iget-object v12, v10, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@314
    array-length v2, v12

    #@315
    .line 222
    .local v2, "N":I
    const/4 v4, 0x0

    #@316
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    #@318
    .line 223
    iget-object v12, v10, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@31a
    aget-object v3, v12, v4

    #@31c
    .line 224
    .local v3, "action":Landroid/app/Notification$Action;
    if-eqz v3, :cond_1

    #@31e
    .line 225
    const-string/jumbo v13, "%s    [%d] \"%s\" -> %s"

    #@321
    const/4 v12, 0x4

    #@322
    new-array v14, v12, [Ljava/lang/Object;

    #@324
    .line 226
    const/4 v12, 0x0

    #@325
    aput-object p2, v14, v12

    #@327
    .line 227
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32a
    move-result-object v12

    #@32b
    const/4 v15, 0x1

    #@32c
    aput-object v12, v14, v15

    #@32e
    .line 228
    iget-object v12, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@330
    const/4 v15, 0x2

    #@331
    aput-object v12, v14, v15

    #@333
    .line 229
    iget-object v12, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@335
    if-nez v12, :cond_2

    #@337
    const-string/jumbo v12, "null"

    #@33a
    :goto_1
    const/4 v15, 0x3

    #@33b
    aput-object v12, v14, v15

    #@33d
    .line 225
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@340
    move-result-object v12

    #@341
    move-object/from16 v0, p1

    #@343
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@346
    .line 222
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@348
    goto :goto_0

    #@349
    .line 229
    :cond_2
    iget-object v12, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@34b
    invoke-virtual {v12}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    #@34e
    move-result-object v12

    #@34f
    goto :goto_1

    #@350
    .line 233
    .end local v3    # "action":Landroid/app/Notification$Action;
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    #@352
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@355
    move-object/from16 v0, p2

    #@357
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35a
    move-result-object v12

    #@35b
    const-string/jumbo v13, "  }"

    #@35e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@361
    move-result-object v12

    #@362
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@365
    move-result-object v12

    #@366
    move-object/from16 v0, p1

    #@368
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36b
    .line 235
    .end local v2    # "N":I
    .end local v4    # "i":I
    :cond_4
    iget-object v12, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@36d
    if-eqz v12, :cond_b

    #@36f
    iget-object v12, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@371
    invoke-virtual {v12}, Landroid/os/Bundle;->size()I

    #@374
    move-result v12

    #@375
    if-lez v12, :cond_b

    #@377
    .line 236
    new-instance v12, Ljava/lang/StringBuilder;

    #@379
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@37c
    move-object/from16 v0, p2

    #@37e
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@381
    move-result-object v12

    #@382
    const-string/jumbo v13, "  extras={"

    #@385
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@388
    move-result-object v12

    #@389
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38c
    move-result-object v12

    #@38d
    move-object/from16 v0, p1

    #@38f
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@392
    .line 237
    iget-object v12, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@394
    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@397
    move-result-object v12

    #@398
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@39b
    move-result-object v9

    #@39c
    .local v9, "key$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@39f
    move-result v12

    #@3a0
    if-eqz v12, :cond_a

    #@3a2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a5
    move-result-object v8

    #@3a6
    check-cast v8, Ljava/lang/String;

    #@3a8
    .line 238
    .local v8, "key":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    #@3aa
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@3ad
    move-object/from16 v0, p2

    #@3af
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b2
    move-result-object v12

    #@3b3
    const-string/jumbo v13, "    "

    #@3b6
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b9
    move-result-object v12

    #@3ba
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bd
    move-result-object v12

    #@3be
    const-string/jumbo v13, "="

    #@3c1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c4
    move-result-object v12

    #@3c5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c8
    move-result-object v12

    #@3c9
    move-object/from16 v0, p1

    #@3cb
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ce
    .line 239
    iget-object v12, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@3d0
    invoke-virtual {v12, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@3d3
    move-result-object v11

    #@3d4
    .line 240
    .local v11, "val":Ljava/lang/Object;
    if-nez v11, :cond_5

    #@3d6
    .line 241
    const-string/jumbo v12, "null"

    #@3d9
    move-object/from16 v0, p1

    #@3db
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3de
    goto :goto_2

    #@3df
    .line 243
    :cond_5
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3e2
    move-result-object v12

    #@3e3
    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@3e6
    move-result-object v12

    #@3e7
    move-object/from16 v0, p1

    #@3e9
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ec
    .line 244
    if-eqz p4, :cond_7

    #@3ee
    instance-of v12, v11, Ljava/lang/CharSequence;

    #@3f0
    if-nez v12, :cond_6

    #@3f2
    instance-of v12, v11, Ljava/lang/String;

    #@3f4
    if-eqz v12, :cond_7

    #@3f6
    .line 263
    .end local v11    # "val":Ljava/lang/Object;
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@3f9
    goto :goto_2

    #@3fa
    .line 246
    .restart local v11    # "val":Ljava/lang/Object;
    :cond_7
    instance-of v12, v11, Landroid/graphics/Bitmap;

    #@3fc
    if-eqz v12, :cond_8

    #@3fe
    .line 247
    const-string/jumbo v13, " (%dx%d)"

    #@401
    const/4 v12, 0x2

    #@402
    new-array v14, v12, [Ljava/lang/Object;

    #@404
    move-object v12, v11

    #@405
    .line 248
    check-cast v12, Landroid/graphics/Bitmap;

    #@407
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    #@40a
    move-result v12

    #@40b
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40e
    move-result-object v12

    #@40f
    const/4 v15, 0x0

    #@410
    aput-object v12, v14, v15

    #@412
    .line 249
    check-cast v11, Landroid/graphics/Bitmap;

    #@414
    .end local v11    # "val":Ljava/lang/Object;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    #@417
    move-result v12

    #@418
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41b
    move-result-object v12

    #@41c
    const/4 v15, 0x1

    #@41d
    aput-object v12, v14, v15

    #@41f
    .line 247
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@422
    move-result-object v12

    #@423
    move-object/from16 v0, p1

    #@425
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@428
    goto :goto_3

    #@429
    .line 250
    .restart local v11    # "val":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@42c
    move-result-object v12

    #@42d
    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    #@430
    move-result v12

    #@431
    if-eqz v12, :cond_9

    #@433
    .line 251
    invoke-static {v11}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@436
    move-result v2

    #@437
    .line 252
    .restart local v2    # "N":I
    new-instance v12, Ljava/lang/StringBuilder;

    #@439
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@43c
    const-string/jumbo v13, " ("

    #@43f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@442
    move-result-object v12

    #@443
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@446
    move-result-object v12

    #@447
    const-string/jumbo v13, ")"

    #@44a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44d
    move-result-object v12

    #@44e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@451
    move-result-object v12

    #@452
    move-object/from16 v0, p1

    #@454
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@457
    .line 253
    if-nez p4, :cond_6

    #@459
    .line 254
    const/4 v7, 0x0

    #@45a
    .local v7, "j":I
    :goto_4
    if-ge v7, v2, :cond_6

    #@45c
    .line 255
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@45f
    .line 256
    const-string/jumbo v12, "%s      [%d] %s"

    #@462
    const/4 v13, 0x3

    #@463
    new-array v13, v13, [Ljava/lang/Object;

    #@465
    .line 257
    const/4 v14, 0x0

    #@466
    aput-object p2, v13, v14

    #@468
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46b
    move-result-object v14

    #@46c
    const/4 v15, 0x1

    #@46d
    aput-object v14, v13, v15

    #@46f
    invoke-static {v11, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    #@472
    move-result-object v14

    #@473
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@476
    move-result-object v14

    #@477
    const/4 v15, 0x2

    #@478
    aput-object v14, v13, v15

    #@47a
    .line 256
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@47d
    move-result-object v12

    #@47e
    move-object/from16 v0, p1

    #@480
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@483
    .line 254
    add-int/lit8 v7, v7, 0x1

    #@485
    goto :goto_4

    #@486
    .line 261
    .end local v2    # "N":I
    .end local v7    # "j":I
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    #@488
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@48b
    const-string/jumbo v13, " ("

    #@48e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@491
    move-result-object v12

    #@492
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@495
    move-result-object v13

    #@496
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@499
    move-result-object v12

    #@49a
    const-string/jumbo v13, ")"

    #@49d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a0
    move-result-object v12

    #@4a1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a4
    move-result-object v12

    #@4a5
    move-object/from16 v0, p1

    #@4a7
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4aa
    goto/16 :goto_3

    #@4ac
    .line 266
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "val":Ljava/lang/Object;
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    #@4ae
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@4b1
    move-object/from16 v0, p2

    #@4b3
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b6
    move-result-object v12

    #@4b7
    const-string/jumbo v13, "  }"

    #@4ba
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4bd
    move-result-object v12

    #@4be
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c1
    move-result-object v12

    #@4c2
    move-object/from16 v0, p1

    #@4c4
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c7
    .line 268
    .end local v9    # "key$iterator":Ljava/util/Iterator;
    :cond_b
    new-instance v12, Ljava/lang/StringBuilder;

    #@4c9
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@4cc
    move-object/from16 v0, p2

    #@4ce
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d1
    move-result-object v12

    #@4d2
    const-string/jumbo v13, "  stats="

    #@4d5
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d8
    move-result-object v12

    #@4d9
    move-object/from16 v0, p0

    #@4db
    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@4dd
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->toString()Ljava/lang/String;

    #@4e0
    move-result-object v13

    #@4e1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e4
    move-result-object v12

    #@4e5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e8
    move-result-object v12

    #@4e9
    move-object/from16 v0, p1

    #@4eb
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4ee
    .line 269
    new-instance v12, Ljava/lang/StringBuilder;

    #@4f0
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@4f3
    move-object/from16 v0, p2

    #@4f5
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f8
    move-result-object v12

    #@4f9
    const-string/jumbo v13, "  mContactAffinity="

    #@4fc
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ff
    move-result-object v12

    #@500
    move-object/from16 v0, p0

    #@502
    iget v13, v0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    #@504
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@507
    move-result-object v12

    #@508
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50b
    move-result-object v12

    #@50c
    move-object/from16 v0, p1

    #@50e
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@511
    .line 270
    new-instance v12, Ljava/lang/StringBuilder;

    #@513
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@516
    move-object/from16 v0, p2

    #@518
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51b
    move-result-object v12

    #@51c
    const-string/jumbo v13, "  mRecentlyIntrusive="

    #@51f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@522
    move-result-object v12

    #@523
    move-object/from16 v0, p0

    #@525
    iget-boolean v13, v0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    #@527
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@52a
    move-result-object v12

    #@52b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52e
    move-result-object v12

    #@52f
    move-object/from16 v0, p1

    #@531
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@534
    .line 271
    new-instance v12, Ljava/lang/StringBuilder;

    #@536
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@539
    move-object/from16 v0, p2

    #@53b
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53e
    move-result-object v12

    #@53f
    const-string/jumbo v13, "  mPackagePriority="

    #@542
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@545
    move-result-object v12

    #@546
    move-object/from16 v0, p0

    #@548
    iget v13, v0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    #@54a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54d
    move-result-object v12

    #@54e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@551
    move-result-object v12

    #@552
    move-object/from16 v0, p1

    #@554
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@557
    .line 272
    new-instance v12, Ljava/lang/StringBuilder;

    #@559
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@55c
    move-object/from16 v0, p2

    #@55e
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@561
    move-result-object v12

    #@562
    const-string/jumbo v13, "  mPackageVisibility="

    #@565
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@568
    move-result-object v12

    #@569
    move-object/from16 v0, p0

    #@56b
    iget v13, v0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    #@56d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@570
    move-result-object v12

    #@571
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@574
    move-result-object v12

    #@575
    move-object/from16 v0, p1

    #@577
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@57a
    .line 273
    new-instance v12, Ljava/lang/StringBuilder;

    #@57c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@57f
    move-object/from16 v0, p2

    #@581
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@584
    move-result-object v12

    #@585
    const-string/jumbo v13, "  mUserImportance="

    #@588
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58b
    move-result-object v12

    #@58c
    .line 274
    move-object/from16 v0, p0

    #@58e
    iget v13, v0, Lcom/android/server/notification/NotificationRecord;->mUserImportance:I

    #@590
    invoke-static {v13}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    #@593
    move-result-object v13

    #@594
    .line 273
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@597
    move-result-object v12

    #@598
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59b
    move-result-object v12

    #@59c
    move-object/from16 v0, p1

    #@59e
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a1
    .line 275
    new-instance v12, Ljava/lang/StringBuilder;

    #@5a3
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@5a6
    move-object/from16 v0, p2

    #@5a8
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ab
    move-result-object v12

    #@5ac
    const-string/jumbo v13, "  mImportance="

    #@5af
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b2
    move-result-object v12

    #@5b3
    .line 276
    move-object/from16 v0, p0

    #@5b5
    iget v13, v0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    #@5b7
    invoke-static {v13}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    #@5ba
    move-result-object v13

    #@5bb
    .line 275
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5be
    move-result-object v12

    #@5bf
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c2
    move-result-object v12

    #@5c3
    move-object/from16 v0, p1

    #@5c5
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5c8
    .line 277
    new-instance v12, Ljava/lang/StringBuilder;

    #@5ca
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@5cd
    move-object/from16 v0, p2

    #@5cf
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d2
    move-result-object v12

    #@5d3
    const-string/jumbo v13, "  mImportanceExplanation="

    #@5d6
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d9
    move-result-object v12

    #@5da
    move-object/from16 v0, p0

    #@5dc
    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanation:Ljava/lang/CharSequence;

    #@5de
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@5e1
    move-result-object v12

    #@5e2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e5
    move-result-object v12

    #@5e6
    move-object/from16 v0, p1

    #@5e8
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5eb
    .line 278
    new-instance v12, Ljava/lang/StringBuilder;

    #@5ed
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@5f0
    move-object/from16 v0, p2

    #@5f2
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f5
    move-result-object v12

    #@5f6
    const-string/jumbo v13, "  mIntercept="

    #@5f9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5fc
    move-result-object v12

    #@5fd
    move-object/from16 v0, p0

    #@5ff
    iget-boolean v13, v0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    #@601
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@604
    move-result-object v12

    #@605
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@608
    move-result-object v12

    #@609
    move-object/from16 v0, p1

    #@60b
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60e
    .line 279
    new-instance v12, Ljava/lang/StringBuilder;

    #@610
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@613
    move-object/from16 v0, p2

    #@615
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@618
    move-result-object v12

    #@619
    const-string/jumbo v13, "  mGlobalSortKey="

    #@61c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61f
    move-result-object v12

    #@620
    move-object/from16 v0, p0

    #@622
    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    #@624
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@627
    move-result-object v12

    #@628
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62b
    move-result-object v12

    #@62c
    move-object/from16 v0, p1

    #@62e
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@631
    .line 280
    new-instance v12, Ljava/lang/StringBuilder;

    #@633
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@636
    move-object/from16 v0, p2

    #@638
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63b
    move-result-object v12

    #@63c
    const-string/jumbo v13, "  mRankingTimeMs="

    #@63f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@642
    move-result-object v12

    #@643
    move-object/from16 v0, p0

    #@645
    iget-wide v14, v0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    #@647
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@64a
    move-result-object v12

    #@64b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64e
    move-result-object v12

    #@64f
    move-object/from16 v0, p1

    #@651
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@654
    .line 281
    new-instance v12, Ljava/lang/StringBuilder;

    #@656
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@659
    move-object/from16 v0, p2

    #@65b
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65e
    move-result-object v12

    #@65f
    const-string/jumbo v13, "  mCreationTimeMs="

    #@662
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@665
    move-result-object v12

    #@666
    move-object/from16 v0, p0

    #@668
    iget-wide v14, v0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    #@66a
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@66d
    move-result-object v12

    #@66e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@671
    move-result-object v12

    #@672
    move-object/from16 v0, p1

    #@674
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@677
    .line 282
    new-instance v12, Ljava/lang/StringBuilder;

    #@679
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@67c
    move-object/from16 v0, p2

    #@67e
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@681
    move-result-object v12

    #@682
    const-string/jumbo v13, "  mVisibleSinceMs="

    #@685
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@688
    move-result-object v12

    #@689
    move-object/from16 v0, p0

    #@68b
    iget-wide v14, v0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    #@68d
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@690
    move-result-object v12

    #@691
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@694
    move-result-object v12

    #@695
    move-object/from16 v0, p1

    #@697
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@69a
    .line 283
    new-instance v12, Ljava/lang/StringBuilder;

    #@69c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@69f
    move-object/from16 v0, p2

    #@6a1
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a4
    move-result-object v12

    #@6a5
    const-string/jumbo v13, "  mUpdateTimeMs="

    #@6a8
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6ab
    move-result-object v12

    #@6ac
    move-object/from16 v0, p0

    #@6ae
    iget-wide v14, v0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    #@6b0
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6b3
    move-result-object v12

    #@6b4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b7
    move-result-object v12

    #@6b8
    move-object/from16 v0, p1

    #@6ba
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6bd
    .line 284
    new-instance v12, Ljava/lang/StringBuilder;

    #@6bf
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@6c2
    move-object/from16 v0, p2

    #@6c4
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c7
    move-result-object v12

    #@6c8
    const-string/jumbo v13, "  mSuppressedVisualEffects= "

    #@6cb
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6ce
    move-result-object v12

    #@6cf
    move-object/from16 v0, p0

    #@6d1
    iget v13, v0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    #@6d3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d6
    move-result-object v12

    #@6d7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6da
    move-result-object v12

    #@6db
    move-object/from16 v0, p1

    #@6dd
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6e0
    .line 192
    return-void
.end method

.method public getAuthoritativeRank()I
    .locals 1

    #@0
    .prologue
    .line 519
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mAuthoritativeRank:I

    #@2
    return v0
.end method

.method public getContactAffinity()F
    .locals 1

    #@0
    .prologue
    .line 328
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    #@2
    return v0
.end method

.method public getExposureMs(J)I
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    .line 461
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
    .line 186
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
    .line 445
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
    .line 501
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGroupKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getImportance()I
    .locals 1

    #@0
    .prologue
    .line 396
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    #@2
    return v0
.end method

.method public getImportanceExplanation()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanation:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 188
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
    .line 453
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
    .line 185
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
    .line 344
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    #@2
    return v0
.end method

.method public getPackageVisibilityOverride()I
    .locals 1

    #@0
    .prologue
    .line 352
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    #@2
    return v0
.end method

.method public getRankingTimeMs()J
    .locals 2

    #@0
    .prologue
    .line 437
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    #@2
    return-wide v0
.end method

.method public getSuppressedVisualEffects()I
    .locals 1

    #@0
    .prologue
    .line 417
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    #@2
    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    #@0
    .prologue
    .line 187
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
    .line 190
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getUserImportance()I
    .locals 1

    #@0
    .prologue
    .line 384
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserImportance:I

    #@2
    return v0
.end method

.method public isAudioAttributesUsage(I)Z
    .locals 3
    .param p1, "usage"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 429
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@4
    move-result-object v2

    #@5
    iget-object v0, v2, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@7
    .line 430
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
    .line 425
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
    .line 421
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

.method public isImportanceFromUser()Z
    .locals 2

    #@0
    .prologue
    .line 527
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    #@2
    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mUserImportance:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isIntercepted()Z
    .locals 1

    #@0
    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    #@2
    return v0
.end method

.method public isRecentlyIntrusive()Z
    .locals 1

    #@0
    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    #@2
    return v0
.end method

.method public isSeen()Z
    .locals 1

    #@0
    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsSeen:Z

    #@2
    return v0
.end method

.method public setAuthoritativeRank(I)V
    .locals 0
    .param p1, "authoritativeRank"    # I

    #@0
    .prologue
    .line 515
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mAuthoritativeRank:I

    #@2
    .line 514
    return-void
.end method

.method public setContactAffinity(F)V
    .locals 3
    .param p1, "contactAffinity"    # F

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 320
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    #@3
    .line 321
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 322
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    #@9
    const/high16 v1, 0x3f000000    # 0.5f

    #@b
    cmpl-float v0, v0, v1

    #@d
    if-lez v0, :cond_0

    #@f
    .line 323
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->getPeopleExplanation()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, v2, v0}, Lcom/android/server/notification/NotificationRecord;->setImportance(ILjava/lang/CharSequence;)V

    #@16
    .line 319
    :cond_0
    return-void
.end method

.method public setGlobalSortKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "globalSortKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    #@2
    .line 496
    return-void
.end method

.method public setImportance(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "importance"    # I
    .param p2, "explanation"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 388
    const/16 v0, -0x3e8

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 389
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    #@6
    .line 390
    iput-object p2, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanation:Ljava/lang/CharSequence;

    #@8
    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->applyUserImportance()V

    #@b
    .line 387
    return-void
.end method

.method public setIntercepted(Z)Z
    .locals 1
    .param p1, "intercept"    # Z

    #@0
    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    #@2
    .line 405
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    #@4
    return v0
.end method

.method public setPackagePriority(I)V
    .locals 0
    .param p1, "packagePriority"    # I

    #@0
    .prologue
    .line 340
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    #@2
    .line 339
    return-void
.end method

.method public setPackageVisibilityOverride(I)V
    .locals 0
    .param p1, "packageVisibility"    # I

    #@0
    .prologue
    .line 348
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    #@2
    .line 347
    return-void
.end method

.method public setRecentlyIntrusive(Z)V
    .locals 0
    .param p1, "recentlyIntrusive"    # Z

    #@0
    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    #@2
    .line 331
    return-void
.end method

.method public setSeen()V
    .locals 1

    #@0
    .prologue
    .line 511
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsSeen:Z

    #@3
    .line 510
    return-void
.end method

.method public setSuppressedVisualEffects(I)V
    .locals 0
    .param p1, "effects"    # I

    #@0
    .prologue
    .line 413
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    #@2
    .line 412
    return-void
.end method

.method public setUserImportance(I)V
    .locals 0
    .param p1, "importance"    # I

    #@0
    .prologue
    .line 356
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mUserImportance:I

    #@2
    .line 357
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->applyUserImportance()V

    #@5
    .line 355
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
    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v6

    #@5
    .line 469
    .local v6, "now":J
    if-eqz p1, :cond_0

    #@7
    move-wide v0, v6

    #@8
    :goto_0
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    #@a
    .line 470
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@c
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onVisibilityChanged(Z)V

    #@f
    .line 471
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    if-eqz p1, :cond_1

    #@15
    const/4 v1, 0x1

    #@16
    .line 472
    :goto_1
    iget-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    #@18
    sub-long v2, v6, v2

    #@1a
    long-to-int v2, v2

    #@1b
    .line 473
    iget-wide v8, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    #@1d
    sub-long v8, v6, v8

    #@1f
    long-to-int v3, v8

    #@20
    move v5, p2

    #@21
    .line 471
    invoke-static/range {v0 .. v5}, Lcom/android/server/EventLogTags;->writeNotificationVisibility(Ljava/lang/String;IIIII)V

    #@24
    .line 467
    return-void

    #@25
    .line 469
    :cond_0
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    #@27
    goto :goto_0

    #@28
    :cond_1
    move v1, v4

    #@29
    .line 471
    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 312
    const-string/jumbo v0, "NotificationRecord(0x%08x: pkg=%s user=%s id=%d tag=%s importance=%d key=%s: %s)"

    #@3
    .line 311
    const/16 v1, 0x8

    #@5
    new-array v1, v1, [Ljava/lang/Object;

    #@7
    .line 313
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
    .line 314
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
    .line 315
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
    iget v2, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    #@3c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f
    move-result-object v2

    #@40
    const/4 v3, 0x5

    #@41
    aput-object v2, v1, v3

    #@43
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@45
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    const/4 v3, 0x6

    #@4a
    aput-object v2, v1, v3

    #@4c
    .line 316
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@4e
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@51
    move-result-object v2

    #@52
    const/4 v3, 0x7

    #@53
    aput-object v2, v1, v3

    #@55
    .line 311
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    return-object v0
.end method
