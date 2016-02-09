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
    .line 30
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
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
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
    .line 37
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
    .line 36
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
    .line 41
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_2

    #@9
    .line 42
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
    .line 43
    :cond_1
    return-object v3

    #@17
    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@1a
    move-result-object v0

    #@1b
    .line 47
    .local v0, "notification":Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->defaults:I

    #@1d
    and-int/lit8 v1, v1, 0x2

    #@1f
    if-nez v1, :cond_3

    #@21
    .line 48
    iget-object v1, v0, Landroid/app/Notification;->vibrate:[J

    #@23
    if-eqz v1, :cond_5

    #@25
    .line 52
    :cond_3
    :goto_0
    const/4 v1, 0x1

    #@26
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setRecentlyIntrusive(Z)V

    #@29
    .line 55
    :cond_4
    new-instance v1, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;

    #@2b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    const-wide/16 v4, 0x2710

    #@31
    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;-><init>(Lcom/android/server/notification/NotificationIntrusivenessExtractor;Ljava/lang/String;J)V

    #@34
    return-object v1

    #@35
    .line 49
    :cond_5
    iget v1, v0, Landroid/app/Notification;->defaults:I

    #@37
    and-int/lit8 v1, v1, 0x1

    #@39
    if-nez v1, :cond_3

    #@3b
    .line 50
    iget-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@3d
    if-nez v1, :cond_3

    #@3f
    .line 51
    iget-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@41
    if-eqz v1, :cond_4

    #@43
    goto :goto_0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    #@0
    .prologue
    .line 69
    return-void
.end method
