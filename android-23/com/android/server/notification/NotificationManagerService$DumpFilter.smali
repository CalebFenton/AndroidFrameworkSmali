.class public final Lcom/android/server/notification/NotificationManagerService$DumpFilter;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DumpFilter"
.end annotation


# instance fields
.field public filtered:Z

.field public pkgFilter:Ljava/lang/String;

.field public redact:Z

.field public since:J

.field public stats:Z

.field public zen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 3501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3502
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    #@6
    .line 3507
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    #@9
    .line 3501
    return-void
.end method

.method public static parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 3510
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@3
    invoke-direct {v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;-><init>()V

    #@6
    .line 3511
    .local v2, "filter":Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    const/4 v1, 0x0

    #@7
    .local v1, "ai":I
    :goto_0
    array-length v3, p0

    #@8
    if-ge v1, v3, :cond_9

    #@a
    .line 3512
    aget-object v0, p0, v1

    #@c
    .line 3513
    .local v0, "a":Ljava/lang/String;
    const-string/jumbo v3, "--noredact"

    #@f
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_0

    #@15
    const-string/jumbo v3, "--reveal"

    #@18
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_2

    #@1e
    .line 3514
    :cond_0
    const/4 v3, 0x0

    #@1f
    iput-boolean v3, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    #@21
    .line 3511
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 3515
    :cond_2
    const-string/jumbo v3, "p"

    #@27
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_3

    #@2d
    const-string/jumbo v3, "pkg"

    #@30
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v3

    #@34
    if-nez v3, :cond_3

    #@36
    const-string/jumbo v3, "--package"

    #@39
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_5

    #@3f
    .line 3516
    :cond_3
    array-length v3, p0

    #@40
    add-int/lit8 v3, v3, -0x1

    #@42
    if-ge v1, v3, :cond_1

    #@44
    .line 3517
    add-int/lit8 v1, v1, 0x1

    #@46
    .line 3518
    aget-object v3, p0, v1

    #@48
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    iput-object v3, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    #@52
    .line 3519
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    #@54
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_4

    #@5a
    .line 3520
    const/4 v3, 0x0

    #@5b
    iput-object v3, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    #@5d
    goto :goto_1

    #@5e
    .line 3522
    :cond_4
    iput-boolean v6, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    #@60
    goto :goto_1

    #@61
    .line 3525
    :cond_5
    const-string/jumbo v3, "--zen"

    #@64
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v3

    #@68
    if-nez v3, :cond_6

    #@6a
    const-string/jumbo v3, "zen"

    #@6d
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v3

    #@71
    if-eqz v3, :cond_7

    #@73
    .line 3526
    :cond_6
    iput-boolean v6, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    #@75
    .line 3527
    iput-boolean v6, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    #@77
    goto :goto_1

    #@78
    .line 3528
    :cond_7
    const-string/jumbo v3, "--stats"

    #@7b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v3

    #@7f
    if-eqz v3, :cond_1

    #@81
    .line 3529
    iput-boolean v6, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    #@83
    .line 3530
    array-length v3, p0

    #@84
    add-int/lit8 v3, v3, -0x1

    #@86
    if-ge v1, v3, :cond_8

    #@88
    .line 3531
    add-int/lit8 v1, v1, 0x1

    #@8a
    .line 3532
    aget-object v3, p0, v1

    #@8c
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@8f
    move-result-object v3

    #@90
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@93
    move-result-wide v4

    #@94
    iput-wide v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    #@96
    goto :goto_1

    #@97
    .line 3534
    :cond_8
    const-wide/16 v4, 0x0

    #@99
    iput-wide v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    #@9b
    goto :goto_1

    #@9c
    .line 3538
    .end local v0    # "a":Ljava/lang/String;
    :cond_9
    return-object v2
.end method


# virtual methods
.method public matches(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3548
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    #@3
    if-nez v1, :cond_0

    #@5
    return v0

    #@6
    .line 3549
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    #@8
    if-eqz v1, :cond_1

    #@a
    :goto_0
    return v0

    #@b
    :cond_1
    if-eqz p1, :cond_2

    #@d
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    #@14
    move-result v0

    #@15
    goto :goto_0

    #@16
    :cond_2
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method public matches(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3542
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    #@3
    if-nez v1, :cond_0

    #@5
    return v0

    #@6
    .line 3543
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    #@8
    if-eqz v1, :cond_2

    #@a
    :cond_1
    :goto_0
    return v0

    #@b
    :cond_2
    if-eqz p1, :cond_3

    #@d
    .line 3544
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_1

    #@17
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    goto :goto_0

    #@20
    .line 3543
    :cond_3
    const/4 v0, 0x0

    #@21
    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3553
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    #@3
    if-nez v1, :cond_0

    #@5
    return v0

    #@6
    .line 3554
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    #@8
    if-eqz v1, :cond_1

    #@a
    :goto_0
    return v0

    #@b
    :cond_1
    if-eqz p1, :cond_2

    #@d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@16
    move-result v0

    #@17
    goto :goto_0

    #@18
    :cond_2
    const/4 v0, 0x0

    #@19
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x27

    #@2
    .line 3559
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "stats"

    #@9
    :goto_0
    return-object v0

    #@a
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    const-string/jumbo v0, "zen"

    #@11
    goto :goto_0

    #@12
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    goto :goto_0
.end method
