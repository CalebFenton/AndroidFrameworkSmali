.class public Lcom/android/server/notification/NotificationComparator;
.super Ljava/lang/Object;
.source "NotificationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/notification/NotificationRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I
    .locals 10
    .param p1, "left"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "right"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    #@3
    move-result v0

    #@4
    .line 29
    .local v0, "leftPackagePriority":I
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    #@7
    move-result v3

    #@8
    .line 30
    .local v3, "rightPackagePriority":I
    if-eq v0, v3, :cond_0

    #@a
    .line 32
    invoke-static {v0, v3}, Ljava/lang/Integer;->compare(II)I

    #@d
    move-result v6

    #@e
    mul-int/lit8 v6, v6, -0x1

    #@10
    return v6

    #@11
    .line 35
    :cond_0
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@13
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getScore()I

    #@16
    move-result v2

    #@17
    .line 36
    .local v2, "leftScore":I
    iget-object v6, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@19
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getScore()I

    #@1c
    move-result v5

    #@1d
    .line 37
    .local v5, "rightScore":I
    if-eq v2, v5, :cond_1

    #@1f
    .line 39
    invoke-static {v2, v5}, Ljava/lang/Integer;->compare(II)I

    #@22
    move-result v6

    #@23
    mul-int/lit8 v6, v6, -0x1

    #@25
    return v6

    #@26
    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    #@29
    move-result v1

    #@2a
    .line 43
    .local v1, "leftPeople":F
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    #@2d
    move-result v4

    #@2e
    .line 44
    .local v4, "rightPeople":F
    cmpl-float v6, v1, v4

    #@30
    if-eqz v6, :cond_2

    #@32
    .line 46
    invoke-static {v1, v4}, Ljava/lang/Float;->compare(FF)I

    #@35
    move-result v6

    #@36
    mul-int/lit8 v6, v6, -0x1

    #@38
    return v6

    #@39
    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    #@3c
    move-result-wide v6

    #@3d
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    #@40
    move-result-wide v8

    #@41
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Long;->compare(JJ)I

    #@44
    move-result v6

    #@45
    mul-int/lit8 v6, v6, -0x1

    #@47
    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 27
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    #@2
    .end local p1    # "left":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    #@4
    .end local p2    # "right":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationComparator;->compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
