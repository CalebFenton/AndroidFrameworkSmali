.class public Lcom/android/server/am/AppTimeTracker;
.super Ljava/lang/Object;
.source "AppTimeTracker.java"


# instance fields
.field private final mPackageTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/MutableLong;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/app/PendingIntent;

.field private mStartedPackage:Ljava/lang/String;

.field private mStartedPackageTime:Landroid/util/MutableLong;

.field private mStartedTime:J

.field private mTotalTime:J


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    #@a
    .line 45
    iput-object p1, p0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    #@c
    .line 44
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/server/am/AppTimeTracker;->stop()V

    #@3
    .line 82
    new-instance v1, Landroid/os/Bundle;

    #@5
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@8
    .line 83
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v5, "android.activity.usage_time"

    #@b
    iget-wide v6, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    #@d
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@10
    .line 84
    new-instance v4, Landroid/os/Bundle;

    #@12
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@15
    .line 85
    .local v4, "pkgs":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@1a
    move-result v5

    #@1b
    add-int/lit8 v3, v5, -0x1

    #@1d
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    #@1f
    .line 86
    iget-object v5, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    #@21
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@24
    move-result-object v5

    #@25
    check-cast v5, Ljava/lang/String;

    #@27
    iget-object v6, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    #@29
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2c
    move-result-object v6

    #@2d
    check-cast v6, Landroid/util/MutableLong;

    #@2f
    iget-wide v6, v6, Landroid/util/MutableLong;->value:J

    #@31
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@34
    .line 85
    add-int/lit8 v3, v3, -0x1

    #@36
    goto :goto_0

    #@37
    .line 88
    :cond_0
    const-string/jumbo v5, "android.usage_time_packages"

    #@3a
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@3d
    .line 89
    new-instance v2, Landroid/content/Intent;

    #@3f
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@42
    .line 90
    .local v2, "fillinIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@45
    .line 92
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    #@47
    const/4 v6, 0x0

    #@48
    invoke-virtual {v5, p1, v6, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 80
    :goto_1
    return-void

    #@4c
    .line 93
    :catch_0
    move-exception v0

    #@4d
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "details"    # Z

    #@0
    .prologue
    .line 105
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v1, "mReceiver="

    #@6
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    #@b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e
    .line 106
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    const-string/jumbo v1, "mTotalTime="

    #@14
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    .line 107
    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    #@19
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1c
    .line 108
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@1f
    .line 109
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    #@22
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@25
    move-result v1

    #@26
    if-ge v0, v1, :cond_0

    #@28
    .line 110
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    const-string/jumbo v1, "mPackageTime:"

    #@2e
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    #@33
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Ljava/lang/String;

    #@39
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    .line 111
    const-string/jumbo v1, "="

    #@3f
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    .line 112
    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    #@44
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Landroid/util/MutableLong;

    #@4a
    iget-wide v2, v1, Landroid/util/MutableLong;->value:J

    #@4c
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@4f
    .line 113
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@52
    .line 109
    add-int/lit8 v0, v0, 0x1

    #@54
    goto :goto_0

    #@55
    .line 115
    :cond_0
    if-eqz p3, :cond_1

    #@57
    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    #@59
    const-wide/16 v4, 0x0

    #@5b
    cmp-long v1, v2, v4

    #@5d
    if-eqz v1, :cond_1

    #@5f
    .line 116
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    const-string/jumbo v1, "mStartedTime="

    #@65
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6b
    move-result-wide v2

    #@6c
    iget-wide v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    #@6e
    invoke-static {v2, v3, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@71
    .line 118
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@74
    .line 119
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    const-string/jumbo v1, "mStartedPackage="

    #@7a
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d
    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    #@7f
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@82
    .line 104
    :cond_1
    return-void
.end method

.method public dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "details"    # Z

    #@0
    .prologue
    .line 98
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "AppTimeTracker #"

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 99
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@c
    move-result v0

    #@d
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    .line 100
    const-string/jumbo v0, ":"

    #@17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v1, "  "

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/am/AppTimeTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    #@31
    .line 97
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v2

    #@6
    .line 50
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    #@8
    cmp-long v4, v4, v8

    #@a
    if-nez v4, :cond_0

    #@c
    .line 51
    iput-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    #@e
    .line 53
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    #@10
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v4

    #@14
    if-nez v4, :cond_2

    #@16
    .line 54
    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 55
    iget-wide v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    #@1c
    sub-long v0, v2, v4

    #@1e
    .line 56
    .local v0, "elapsedTime":J
    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    #@20
    iget-wide v6, v4, Landroid/util/MutableLong;->value:J

    #@22
    add-long/2addr v6, v0

    #@23
    iput-wide v6, v4, Landroid/util/MutableLong;->value:J

    #@25
    .line 57
    iget-wide v4, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    #@27
    add-long/2addr v4, v0

    #@28
    iput-wide v4, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    #@2a
    .line 59
    .end local v0    # "elapsedTime":J
    :cond_1
    iput-object p1, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    #@2c
    .line 60
    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    #@2e
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    check-cast v4, Landroid/util/MutableLong;

    #@34
    iput-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    #@36
    .line 61
    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    #@38
    if-nez v4, :cond_2

    #@3a
    .line 62
    new-instance v4, Landroid/util/MutableLong;

    #@3c
    invoke-direct {v4, v8, v9}, Landroid/util/MutableLong;-><init>(J)V

    #@3f
    iput-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    #@41
    .line 63
    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    #@43
    iget-object v5, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    #@45
    invoke-virtual {v4, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 48
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 69
    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    #@3
    const-wide/16 v4, 0x0

    #@5
    cmp-long v2, v2, v4

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v2

    #@d
    iget-wide v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    #@f
    sub-long v0, v2, v4

    #@11
    .line 71
    .local v0, "elapsedTime":J
    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    #@13
    add-long/2addr v2, v0

    #@14
    iput-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    #@16
    .line 72
    iget-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 73
    iget-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    #@1c
    iget-wide v4, v2, Landroid/util/MutableLong;->value:J

    #@1e
    add-long/2addr v4, v0

    #@1f
    iput-wide v4, v2, Landroid/util/MutableLong;->value:J

    #@21
    .line 75
    :cond_0
    iput-object v6, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    #@23
    .line 76
    iput-object v6, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    #@25
    .line 68
    .end local v0    # "elapsedTime":J
    :cond_1
    return-void
.end method
