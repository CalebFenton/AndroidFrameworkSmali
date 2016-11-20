.class public final Lcom/android/server/am/BroadcastStats;
.super Ljava/lang/Object;
.source "BroadcastStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastStats$1;,
        Lcom/android/server/am/BroadcastStats$ActionEntry;,
        Lcom/android/server/am/BroadcastStats$PackageEntry;
    }
.end annotation


# static fields
.field static final ACTIONS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/am/BroadcastStats$ActionEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mActions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/BroadcastStats$ActionEntry;",
            ">;"
        }
    .end annotation
.end field

.field mEndRealtime:J

.field mEndUptime:J

.field final mStartRealtime:J

.field final mStartUptime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    new-instance v0, Lcom/android/server/am/BroadcastStats$1;

    #@2
    invoke-direct {v0}, Lcom/android/server/am/BroadcastStats$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/am/BroadcastStats;->ACTIONS_COMPARATOR:Ljava/util/Comparator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    #@a
    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    #@10
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@13
    move-result-wide v0

    #@14
    iput-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    #@16
    .line 64
    return-void
.end method


# virtual methods
.method public addBroadcast(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "srcPackage"    # Ljava/lang/String;
    .param p3, "receiveCount"    # I
    .param p4, "skipCount"    # I
    .param p5, "dispatchTime"    # J

    #@0
    .prologue
    .line 71
    iget-object v2, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/am/BroadcastStats$ActionEntry;

    #@8
    .line 72
    .local v0, "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    if-nez v0, :cond_0

    #@a
    .line 73
    new-instance v0, Lcom/android/server/am/BroadcastStats$ActionEntry;

    #@c
    .end local v0    # "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    invoke-direct {v0, p1}, Lcom/android/server/am/BroadcastStats$ActionEntry;-><init>(Ljava/lang/String;)V

    #@f
    .line 74
    .restart local v0    # "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    iget-object v2, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 76
    :cond_0
    iget v2, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    #@16
    add-int/2addr v2, p3

    #@17
    iput v2, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    #@19
    .line 77
    iget v2, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    #@1b
    add-int/2addr v2, p4

    #@1c
    iput v2, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    #@1e
    .line 78
    iget-wide v2, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    #@20
    add-long/2addr v2, p5

    #@21
    iput-wide v2, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    #@23
    .line 79
    iget-wide v2, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    #@25
    cmp-long v2, v2, p5

    #@27
    if-gez v2, :cond_1

    #@29
    .line 80
    iput-wide p5, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    #@2b
    .line 82
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    #@2d
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Lcom/android/server/am/BroadcastStats$PackageEntry;

    #@33
    .line 83
    .local v1, "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    if-nez v1, :cond_2

    #@35
    .line 84
    new-instance v1, Lcom/android/server/am/BroadcastStats$PackageEntry;

    #@37
    .end local v1    # "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    invoke-direct {v1}, Lcom/android/server/am/BroadcastStats$PackageEntry;-><init>()V

    #@3a
    .line 85
    .restart local v1    # "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    iget-object v2, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    #@3c
    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 87
    :cond_2
    iget v2, v1, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    #@41
    add-int/lit8 v2, v2, 0x1

    #@43
    iput v2, v1, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    #@45
    .line 70
    return-void
.end method

.method public dumpCheckinStats(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 131
    const-string/jumbo v4, "broadcast-stats,1,"

    #@5
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 132
    iget-wide v4, p0, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    #@a
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@d
    .line 133
    const-string/jumbo v4, ","

    #@10
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    .line 134
    iget-wide v4, p0, Lcom/android/server/am/BroadcastStats;->mEndRealtime:J

    #@15
    cmp-long v4, v4, v6

    #@17
    if-nez v4, :cond_1

    #@19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1c
    move-result-wide v4

    #@1d
    :goto_0
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@20
    .line 135
    const-string/jumbo v4, ","

    #@23
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    .line 136
    iget-wide v4, p0, Lcom/android/server/am/BroadcastStats;->mEndUptime:J

    #@28
    cmp-long v4, v4, v6

    #@2a
    if-nez v4, :cond_2

    #@2c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2f
    move-result-wide v4

    #@30
    :goto_1
    iget-wide v6, p0, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    #@32
    sub-long/2addr v4, v6

    #@33
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    #@36
    .line 137
    iget-object v4, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    #@38
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@3b
    move-result v4

    #@3c
    add-int/lit8 v1, v4, -0x1

    #@3e
    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_4

    #@40
    .line 138
    iget-object v4, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    #@42
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Lcom/android/server/am/BroadcastStats$ActionEntry;

    #@48
    .line 139
    .local v0, "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    if-eqz p2, :cond_0

    #@4a
    iget-object v4, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    #@4c
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_3

    #@52
    .line 142
    :cond_0
    const-string/jumbo v4, "a,"

    #@55
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@58
    .line 143
    iget-object v4, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    #@5a
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@5d
    move-result-object v4

    #@5e
    check-cast v4, Ljava/lang/String;

    #@60
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    .line 144
    const-string/jumbo v4, ","

    #@66
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    .line 145
    iget v4, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    #@6b
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    #@6e
    .line 146
    const-string/jumbo v4, ","

    #@71
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    .line 147
    iget v4, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    #@76
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    #@79
    .line 148
    const-string/jumbo v4, ","

    #@7c
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    .line 149
    iget-wide v4, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    #@81
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@84
    .line 150
    const-string/jumbo v4, ","

    #@87
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8a
    .line 151
    iget-wide v4, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    #@8c
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@8f
    .line 152
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@92
    .line 153
    iget-object v4, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    #@94
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@97
    move-result v4

    #@98
    add-int/lit8 v2, v4, -0x1

    #@9a
    .local v2, "j":I
    :goto_3
    if-ltz v2, :cond_3

    #@9c
    .line 154
    const-string/jumbo v4, "p,"

    #@9f
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a2
    .line 155
    iget-object v4, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    #@a4
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@a7
    move-result-object v4

    #@a8
    check-cast v4, Ljava/lang/String;

    #@aa
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ad
    .line 156
    iget-object v4, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    #@af
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@b2
    move-result-object v3

    #@b3
    check-cast v3, Lcom/android/server/am/BroadcastStats$PackageEntry;

    #@b5
    .line 157
    .local v3, "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    const-string/jumbo v4, ","

    #@b8
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bb
    .line 158
    iget v4, v3, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    #@bd
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    #@c0
    .line 159
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@c3
    .line 153
    add-int/lit8 v2, v2, -0x1

    #@c5
    goto :goto_3

    #@c6
    .line 134
    .end local v0    # "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    :cond_1
    iget-wide v4, p0, Lcom/android/server/am/BroadcastStats;->mEndRealtime:J

    #@c8
    goto/16 :goto_0

    #@ca
    .line 136
    :cond_2
    iget-wide v4, p0, Lcom/android/server/am/BroadcastStats;->mEndUptime:J

    #@cc
    goto/16 :goto_1

    #@ce
    .line 137
    .restart local v0    # "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    #@d0
    goto/16 :goto_2

    #@d2
    .line 130
    .end local v0    # "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    :cond_4
    return-void
.end method

.method public dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    const/4 v5, 0x0

    #@1
    .line 92
    .local v5, "printedSomething":Z
    new-instance v0, Ljava/util/ArrayList;

    #@3
    iget-object v6, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v6

    #@9
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@c
    .line 93
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastStats$ActionEntry;>;"
    iget-object v6, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@11
    move-result v6

    #@12
    add-int/lit8 v2, v6, -0x1

    #@14
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    #@16
    .line 94
    iget-object v6, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    #@18
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v6

    #@1c
    check-cast v6, Lcom/android/server/am/BroadcastStats$ActionEntry;

    #@1e
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 93
    add-int/lit8 v2, v2, -0x1

    #@23
    goto :goto_0

    #@24
    .line 96
    :cond_0
    sget-object v6, Lcom/android/server/am/BroadcastStats;->ACTIONS_COMPARATOR:Ljava/util/Comparator;

    #@26
    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@29
    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v6

    #@2d
    add-int/lit8 v2, v6, -0x1

    #@2f
    :goto_1
    if-ltz v2, :cond_3

    #@31
    .line 98
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Lcom/android/server/am/BroadcastStats$ActionEntry;

    #@37
    .line 99
    .local v1, "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    if-eqz p3, :cond_1

    #@39
    iget-object v6, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    #@3b
    invoke-virtual {v6, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_2

    #@41
    .line 102
    :cond_1
    const/4 v5, 0x1

    #@42
    .line 103
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    .line 104
    iget-object v6, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mAction:Ljava/lang/String;

    #@47
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    .line 105
    const-string/jumbo v6, ":"

    #@4d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@50
    .line 106
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53
    .line 107
    const-string/jumbo v6, "  Number received: "

    #@56
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59
    .line 108
    iget v6, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    #@5b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@5e
    .line 109
    const-string/jumbo v6, ", skipped: "

    #@61
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64
    .line 110
    iget v6, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    #@66
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    #@69
    .line 111
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6c
    .line 112
    const-string/jumbo v6, "  Total dispatch time: "

    #@6f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@72
    .line 113
    iget-wide v6, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    #@74
    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@77
    .line 114
    const-string/jumbo v6, ", max: "

    #@7a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d
    .line 115
    iget-wide v6, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    #@7f
    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@82
    .line 116
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@85
    .line 117
    iget-object v6, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    #@87
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@8a
    move-result v6

    #@8b
    add-int/lit8 v3, v6, -0x1

    #@8d
    .local v3, "j":I
    :goto_2
    if-ltz v3, :cond_2

    #@8f
    .line 118
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    .line 119
    const-string/jumbo v6, "  Package "

    #@95
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    .line 120
    iget-object v6, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    #@9a
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@9d
    move-result-object v6

    #@9e
    check-cast v6, Ljava/lang/String;

    #@a0
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a3
    .line 121
    const-string/jumbo v6, ": "

    #@a6
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a9
    .line 122
    iget-object v6, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    #@ab
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@ae
    move-result-object v4

    #@af
    check-cast v4, Lcom/android/server/am/BroadcastStats$PackageEntry;

    #@b1
    .line 123
    .local v4, "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    iget v6, v4, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    #@b3
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@b6
    .line 124
    const-string/jumbo v6, " times"

    #@b9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bc
    .line 117
    add-int/lit8 v3, v3, -0x1

    #@be
    goto :goto_2

    #@bf
    .line 97
    .end local v3    # "j":I
    .end local v4    # "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@c1
    goto/16 :goto_1

    #@c3
    .line 127
    .end local v1    # "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    :cond_3
    return v5
.end method
