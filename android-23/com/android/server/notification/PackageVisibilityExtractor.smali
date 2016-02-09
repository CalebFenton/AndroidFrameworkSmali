.class public Lcom/android/server/notification/PackageVisibilityExtractor;
.super Ljava/lang/Object;
.source "PackageVisibilityExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "PackageVisibilityExtractor"


# instance fields
.field private mConfig:Lcom/android/server/notification/RankingConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    #@0
    .prologue
    .line 27
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 32
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_1

    #@9
    .line 34
    :cond_0
    return-object v4

    #@a
    .line 37
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/PackageVisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    #@c
    if-nez v1, :cond_2

    #@e
    .line 39
    return-object v4

    #@f
    .line 42
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/PackageVisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    #@11
    .line 43
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@13
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@19
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    #@1c
    move-result v3

    #@1d
    .line 42
    invoke-interface {v1, v2, v3}, Lcom/android/server/notification/RankingConfig;->getPackageVisibilityOverride(Ljava/lang/String;I)I

    #@20
    move-result v0

    #@21
    .line 44
    .local v0, "packageVisibility":I
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setPackageVisibilityOverride(I)V

    #@24
    .line 46
    return-object v4
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    #@0
    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/notification/PackageVisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    #@2
    .line 50
    return-void
.end method
