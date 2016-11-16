.class public Lcom/android/server/notification/NotificationIntrusivenessExtractor;
.super Ljava/lang/Object;
.source "NotificationIntrusivenessExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z

.field private static final HANG_TIME_MS:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "IntrusivenessExtractor"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 31
    const-string/jumbo v0, "IntrusivenessExtractor"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->DBG:Z

    #@a
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    #@0
    .prologue
    .line 38
    sget-boolean v0, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "IntrusivenessExtractor"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Initializing  "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, "."

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 37
    :cond_0
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 42
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_2

    #@9
    .line 43
    :cond_0
    sget-boolean v1, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->DBG:Z

    #@b
    if-eqz v1, :cond_1

    #@d
    const-string/jumbo v1, "IntrusivenessExtractor"

    #@10
    const-string/jumbo v2, "skipping empty notification"

    #@13
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 44
    :cond_1
    return-object v3

    #@17
    .line 47
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    #@1a
    move-result v1

    #@1b
    const/4 v2, 0x3

    #@1c
    if-lt v1, v2, :cond_4

    #@1e
    .line 48
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@21
    move-result-object v0

    #@22
    .line 49
    .local v0, "notification":Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->defaults:I

    #@24
    and-int/lit8 v1, v1, 0x2

    #@26
    if-nez v1, :cond_3

    #@28
    .line 50
    iget-object v1, v0, Landroid/app/Notification;->vibrate:[J

    #@2a
    if-eqz v1, :cond_5

    #@2c
    .line 54
    :cond_3
    :goto_0
    const/4 v1, 0x1

    #@2d
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setRecentlyIntrusive(Z)V

    #@30
    .line 58
    .end local v0    # "notification":Landroid/app/Notification;
    :cond_4
    new-instance v1, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;

    #@32
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    const-wide/16 v4, 0x2710

    #@38
    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;-><init>(Lcom/android/server/notification/NotificationIntrusivenessExtractor;Ljava/lang/String;J)V

    #@3b
    return-object v1

    #@3c
    .line 51
    .restart local v0    # "notification":Landroid/app/Notification;
    :cond_5
    iget v1, v0, Landroid/app/Notification;->defaults:I

    #@3e
    and-int/lit8 v1, v1, 0x1

    #@40
    if-nez v1, :cond_3

    #@42
    .line 52
    iget-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@44
    if-nez v1, :cond_3

    #@46
    .line 53
    iget-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@48
    if-eqz v1, :cond_4

    #@4a
    goto :goto_0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    #@0
    .prologue
    .line 72
    return-void
.end method
