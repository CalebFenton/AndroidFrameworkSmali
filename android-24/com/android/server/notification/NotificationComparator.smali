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
    .locals 12
    .param p1, "left"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "right"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    #@3
    move-result v0

    #@4
    .line 29
    .local v0, "leftImportance":I
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    #@7
    move-result v4

    #@8
    .line 30
    .local v4, "rightImportance":I
    if-eq v0, v4, :cond_0

    #@a
    .line 32
    invoke-static {v0, v4}, Ljava/lang/Integer;->compare(II)I

    #@d
    move-result v8

    #@e
    mul-int/lit8 v8, v8, -0x1

    #@10
    return v8

    #@11
    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    #@14
    move-result v1

    #@15
    .line 37
    .local v1, "leftPackagePriority":I
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    #@18
    move-result v5

    #@19
    .line 38
    .local v5, "rightPackagePriority":I
    if-eq v1, v5, :cond_1

    #@1b
    .line 40
    invoke-static {v1, v5}, Ljava/lang/Integer;->compare(II)I

    #@1e
    move-result v8

    #@1f
    mul-int/lit8 v8, v8, -0x1

    #@21
    return v8

    #@22
    .line 43
    :cond_1
    iget-object v8, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@24
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@27
    move-result-object v8

    #@28
    iget v3, v8, Landroid/app/Notification;->priority:I

    #@2a
    .line 44
    .local v3, "leftPriority":I
    iget-object v8, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2c
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@2f
    move-result-object v8

    #@30
    iget v7, v8, Landroid/app/Notification;->priority:I

    #@32
    .line 45
    .local v7, "rightPriority":I
    if-eq v3, v7, :cond_2

    #@34
    .line 47
    invoke-static {v3, v7}, Ljava/lang/Integer;->compare(II)I

    #@37
    move-result v8

    #@38
    mul-int/lit8 v8, v8, -0x1

    #@3a
    return v8

    #@3b
    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    #@3e
    move-result v2

    #@3f
    .line 51
    .local v2, "leftPeople":F
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    #@42
    move-result v6

    #@43
    .line 52
    .local v6, "rightPeople":F
    cmpl-float v8, v2, v6

    #@45
    if-eqz v8, :cond_3

    #@47
    .line 54
    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    #@4a
    move-result v8

    #@4b
    mul-int/lit8 v8, v8, -0x1

    #@4d
    return v8

    #@4e
    .line 58
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    #@51
    move-result-wide v8

    #@52
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    #@55
    move-result-wide v10

    #@56
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Long;->compare(JJ)I

    #@59
    move-result v8

    #@5a
    mul-int/lit8 v8, v8, -0x1

    #@5c
    return v8
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
