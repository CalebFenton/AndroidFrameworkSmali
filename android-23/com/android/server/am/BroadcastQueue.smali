.class public final Lcom/android/server/am/BroadcastQueue;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueue$BroadcastHandler;,
        Lcom/android/server/am/BroadcastQueue$AppNotResponding;
    }
.end annotation


# static fields
.field static final BROADCAST_INTENT_MSG:I = 0xc8

.field static final BROADCAST_TIMEOUT_MSG:I = 0xc9

.field static final MAX_BROADCAST_HISTORY:I

.field static final MAX_BROADCAST_SUMMARY_HISTORY:I

.field static final SCHEDULE_TEMP_WHITELIST_MSG:I = 0xca

.field private static final TAG:Ljava/lang/String; = "BroadcastQueue"

.field private static final TAG_BROADCAST:Ljava/lang/String; = "BroadcastQueue"

.field private static final TAG_MU:Ljava/lang/String; = "BroadcastQueue_MU"


# instance fields
.field final mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field final mBroadcastSummaryHistory:[Landroid/content/Intent;

.field mBroadcastsScheduled:Z

.field final mDelayBehindServices:Z

.field final mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

.field mHistoryNext:I

.field final mOrderedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mParallelBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

.field mPendingBroadcastRecvIndex:I

.field mPendingBroadcastTimeoutMessage:Z

.field final mQueueName:Ljava/lang/String;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mSummaryHistoryDispatchTime:[J

.field final mSummaryHistoryEnqueueTime:[J

.field final mSummaryHistoryFinishTime:[J

.field mSummaryHistoryNext:I

.field final mTimeoutPeriod:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 62
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/16 v0, 0xa

    #@8
    :goto_0
    sput v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    #@a
    .line 64
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    const/16 v0, 0x19

    #@12
    .line 63
    :goto_1
    sput v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    #@14
    .line 57
    return-void

    #@15
    .line 62
    :cond_0
    const/16 v0, 0x32

    #@17
    goto :goto_0

    #@18
    .line 64
    :cond_1
    const/16 v0, 0x12c

    #@1a
    goto :goto_1
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZ)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "timeoutPeriod"    # J
    .param p6, "allowDelayBehindServices"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@b
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@12
    .line 106
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    #@14
    new-array v0, v0, [Lcom/android/server/am/BroadcastRecord;

    #@16
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    #@18
    .line 107
    iput v1, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    #@1a
    .line 113
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    #@1c
    new-array v0, v0, [Landroid/content/Intent;

    #@1e
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    #@20
    .line 114
    iput v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    #@22
    .line 121
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    #@24
    new-array v0, v0, [J

    #@26
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    #@28
    .line 122
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    #@2a
    new-array v0, v0, [J

    #@2c
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    #@2e
    .line 123
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    #@30
    new-array v0, v0, [J

    #@32
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    #@34
    .line 128
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    #@36
    .line 142
    const/4 v0, 0x0

    #@37
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@39
    .line 202
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3b
    .line 203
    new-instance v0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    #@3d
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@40
    move-result-object v1

    #@41
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V

    #@44
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    #@46
    .line 204
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@48
    .line 205
    iput-wide p4, p0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    #@4a
    .line 206
    iput-boolean p6, p0, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    #@4c
    .line 201
    return-void
.end method

.method private final addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1221
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@3
    if-gez v0, :cond_0

    #@5
    .line 1223
    return-void

    #@6
    .line 1225
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    #@c
    .line 1227
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    #@e
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    #@10
    aput-object p1, v0, v1

    #@12
    .line 1228
    iget v0, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    #@14
    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    #@16
    invoke-direct {p0, v0, v4, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    #@1c
    .line 1230
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    #@1e
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    #@20
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@22
    aput-object v2, v0, v1

    #@24
    .line 1231
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    #@26
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    #@28
    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    #@2a
    aput-wide v2, v0, v1

    #@2c
    .line 1232
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    #@2e
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    #@30
    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    #@32
    aput-wide v2, v0, v1

    #@34
    .line 1233
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    #@36
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    #@38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3b
    move-result-wide v2

    #@3c
    aput-wide v2, v0, v1

    #@3e
    .line 1234
    iget v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    #@40
    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    #@42
    invoke-direct {p0, v0, v4, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    #@45
    move-result v0

    #@46
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    #@48
    .line 1220
    return-void
.end method

.method private deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;Z)V
    .locals 19
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p3, "ordered"    # Z

    #@0
    .prologue
    .line 466
    const/16 v18, 0x0

    #@2
    .line 467
    .local v18, "skip":Z
    move-object/from16 v0, p2

    #@4
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 468
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c
    move-object/from16 v0, p2

    #@e
    iget-object v3, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    #@10
    .line 469
    move-object/from16 v0, p1

    #@12
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@14
    move-object/from16 v0, p1

    #@16
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@18
    const/4 v6, -0x1

    #@19
    const/4 v7, 0x1

    #@1a
    .line 468
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    #@1d
    move-result v17

    #@1e
    .line 470
    .local v17, "perm":I
    if-eqz v17, :cond_5

    #@20
    .line 471
    const-string/jumbo v2, "BroadcastQueue"

    #@23
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "Permission Denial: broadcasting "

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    .line 472
    move-object/from16 v0, p1

    #@31
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@33
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    .line 471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    .line 473
    const-string/jumbo v5, " from "

    #@3e
    .line 471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    .line 473
    move-object/from16 v0, p1

    #@44
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@46
    .line 471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    .line 473
    const-string/jumbo v5, " (pid="

    #@4d
    .line 471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    .line 474
    move-object/from16 v0, p1

    #@53
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@55
    .line 471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    .line 474
    const-string/jumbo v5, ", uid="

    #@5c
    .line 471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    .line 474
    move-object/from16 v0, p1

    #@62
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@64
    .line 471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    .line 474
    const-string/jumbo v5, ")"

    #@6b
    .line 471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    .line 475
    const-string/jumbo v5, " requires "

    #@72
    .line 471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    .line 475
    move-object/from16 v0, p2

    #@78
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    #@7a
    .line 471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    .line 476
    const-string/jumbo v5, " due to registered receiver "

    #@81
    .line 471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    move-object/from16 v0, p2

    #@87
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v4

    #@8f
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 477
    const/16 v18, 0x1

    #@94
    .line 494
    .end local v17    # "perm":I
    :cond_0
    :goto_0
    if-nez v18, :cond_1

    #@96
    move-object/from16 v0, p1

    #@98
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@9a
    if-eqz v2, :cond_1

    #@9c
    move-object/from16 v0, p1

    #@9e
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@a0
    array-length v2, v2

    #@a1
    if-lez v2, :cond_1

    #@a3
    .line 495
    const/4 v15, 0x0

    #@a4
    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p1

    #@a6
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@a8
    array-length v2, v2

    #@a9
    if-ge v15, v2, :cond_1

    #@ab
    .line 496
    move-object/from16 v0, p1

    #@ad
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@af
    aget-object v3, v2, v15

    #@b1
    .line 497
    .local v3, "requiredPermission":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b3
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@b5
    .line 498
    move-object/from16 v0, p2

    #@b7
    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@b9
    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    #@bb
    move-object/from16 v0, p2

    #@bd
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@bf
    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    #@c1
    const/4 v6, -0x1

    #@c2
    const/4 v7, 0x1

    #@c3
    .line 497
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    #@c6
    move-result v17

    #@c7
    .line 499
    .restart local v17    # "perm":I
    if-eqz v17, :cond_6

    #@c9
    .line 500
    const-string/jumbo v2, "BroadcastQueue"

    #@cc
    new-instance v4, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v5, "Permission Denial: receiving "

    #@d4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v4

    #@d8
    .line 501
    move-object/from16 v0, p1

    #@da
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@dc
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@df
    move-result-object v5

    #@e0
    .line 500
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v4

    #@e4
    .line 502
    const-string/jumbo v5, " to "

    #@e7
    .line 500
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v4

    #@eb
    .line 502
    move-object/from16 v0, p2

    #@ed
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@ef
    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@f1
    .line 500
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v4

    #@f5
    .line 503
    const-string/jumbo v5, " (pid="

    #@f8
    .line 500
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v4

    #@fc
    .line 503
    move-object/from16 v0, p2

    #@fe
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@100
    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    #@102
    .line 500
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@105
    move-result-object v4

    #@106
    .line 504
    const-string/jumbo v5, ", uid="

    #@109
    .line 500
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v4

    #@10d
    .line 504
    move-object/from16 v0, p2

    #@10f
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@111
    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    #@113
    .line 500
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@116
    move-result-object v4

    #@117
    .line 504
    const-string/jumbo v5, ")"

    #@11a
    .line 500
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v4

    #@11e
    .line 505
    const-string/jumbo v5, " requires "

    #@121
    .line 500
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v4

    #@125
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v4

    #@129
    .line 506
    const-string/jumbo v5, " due to sender "

    #@12c
    .line 500
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v4

    #@130
    .line 506
    move-object/from16 v0, p1

    #@132
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@134
    .line 500
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v4

    #@138
    .line 507
    const-string/jumbo v5, " (uid "

    #@13b
    .line 500
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v4

    #@13f
    .line 507
    move-object/from16 v0, p1

    #@141
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@143
    .line 500
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@146
    move-result-object v4

    #@147
    .line 507
    const-string/jumbo v5, ")"

    #@14a
    .line 500
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v4

    #@14e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@151
    move-result-object v4

    #@152
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@155
    .line 508
    const/16 v18, 0x1

    #@157
    .line 530
    .end local v3    # "requiredPermission":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v17    # "perm":I
    :cond_1
    :goto_2
    if-nez v18, :cond_3

    #@159
    move-object/from16 v0, p1

    #@15b
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@15d
    if-eqz v2, :cond_2

    #@15f
    move-object/from16 v0, p1

    #@161
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@163
    array-length v2, v2

    #@164
    if-nez v2, :cond_3

    #@166
    .line 531
    :cond_2
    move-object/from16 v0, p0

    #@168
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@16a
    .line 532
    move-object/from16 v0, p2

    #@16c
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@16e
    iget v6, v2, Lcom/android/server/am/ReceiverList;->pid:I

    #@170
    move-object/from16 v0, p2

    #@172
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@174
    iget v7, v2, Lcom/android/server/am/ReceiverList;->uid:I

    #@176
    .line 531
    const/4 v5, 0x0

    #@177
    .line 532
    const/4 v8, -0x1

    #@178
    const/4 v9, 0x1

    #@179
    .line 531
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    #@17c
    move-result v17

    #@17d
    .line 533
    .restart local v17    # "perm":I
    if-eqz v17, :cond_3

    #@17f
    .line 534
    const-string/jumbo v2, "BroadcastQueue"

    #@182
    new-instance v4, Ljava/lang/StringBuilder;

    #@184
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@187
    const-string/jumbo v5, "Permission Denial: security check failed when receiving "

    #@18a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v4

    #@18e
    .line 535
    move-object/from16 v0, p1

    #@190
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@192
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@195
    move-result-object v5

    #@196
    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v4

    #@19a
    .line 536
    const-string/jumbo v5, " to "

    #@19d
    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v4

    #@1a1
    .line 536
    move-object/from16 v0, p2

    #@1a3
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@1a5
    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@1a7
    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v4

    #@1ab
    .line 537
    const-string/jumbo v5, " (pid="

    #@1ae
    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v4

    #@1b2
    .line 537
    move-object/from16 v0, p2

    #@1b4
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@1b6
    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    #@1b8
    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v4

    #@1bc
    .line 538
    const-string/jumbo v5, ", uid="

    #@1bf
    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v4

    #@1c3
    .line 538
    move-object/from16 v0, p2

    #@1c5
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@1c7
    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    #@1c9
    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v4

    #@1cd
    .line 538
    const-string/jumbo v5, ")"

    #@1d0
    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v4

    #@1d4
    .line 539
    const-string/jumbo v5, " due to sender "

    #@1d7
    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v4

    #@1db
    .line 539
    move-object/from16 v0, p1

    #@1dd
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@1df
    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v4

    #@1e3
    .line 540
    const-string/jumbo v5, " (uid "

    #@1e6
    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v4

    #@1ea
    .line 540
    move-object/from16 v0, p1

    #@1ec
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@1ee
    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v4

    #@1f2
    .line 540
    const-string/jumbo v5, ")"

    #@1f5
    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v4

    #@1f9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fc
    move-result-object v4

    #@1fd
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@200
    .line 541
    const/16 v18, 0x1

    #@202
    .line 544
    .end local v17    # "perm":I
    :cond_3
    if-nez v18, :cond_4

    #@204
    move-object/from16 v0, p1

    #@206
    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@208
    const/4 v4, -0x1

    #@209
    if-eq v2, v4, :cond_4

    #@20b
    .line 545
    move-object/from16 v0, p0

    #@20d
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@20f
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@211
    move-object/from16 v0, p1

    #@213
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@215
    .line 546
    move-object/from16 v0, p2

    #@217
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@219
    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    #@21b
    move-object/from16 v0, p2

    #@21d
    iget-object v6, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    #@21f
    .line 545
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@222
    move-result v2

    #@223
    if-eqz v2, :cond_4

    #@225
    .line 548
    const-string/jumbo v2, "BroadcastQueue"

    #@228
    new-instance v4, Ljava/lang/StringBuilder;

    #@22a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@22d
    const-string/jumbo v5, "Appop Denial: receiving "

    #@230
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@233
    move-result-object v4

    #@234
    .line 549
    move-object/from16 v0, p1

    #@236
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@238
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@23b
    move-result-object v5

    #@23c
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v4

    #@240
    .line 550
    const-string/jumbo v5, " to "

    #@243
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v4

    #@247
    .line 550
    move-object/from16 v0, p2

    #@249
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@24b
    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@24d
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@250
    move-result-object v4

    #@251
    .line 551
    const-string/jumbo v5, " (pid="

    #@254
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v4

    #@258
    .line 551
    move-object/from16 v0, p2

    #@25a
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@25c
    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    #@25e
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@261
    move-result-object v4

    #@262
    .line 552
    const-string/jumbo v5, ", uid="

    #@265
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v4

    #@269
    .line 552
    move-object/from16 v0, p2

    #@26b
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@26d
    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    #@26f
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@272
    move-result-object v4

    #@273
    .line 552
    const-string/jumbo v5, ")"

    #@276
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@279
    move-result-object v4

    #@27a
    .line 553
    const-string/jumbo v5, " requires appop "

    #@27d
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@280
    move-result-object v4

    #@281
    .line 553
    move-object/from16 v0, p1

    #@283
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@285
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@288
    move-result-object v5

    #@289
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28c
    move-result-object v4

    #@28d
    .line 554
    const-string/jumbo v5, " due to sender "

    #@290
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@293
    move-result-object v4

    #@294
    .line 554
    move-object/from16 v0, p1

    #@296
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@298
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29b
    move-result-object v4

    #@29c
    .line 555
    const-string/jumbo v5, " (uid "

    #@29f
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a2
    move-result-object v4

    #@2a3
    .line 555
    move-object/from16 v0, p1

    #@2a5
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@2a7
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2aa
    move-result-object v4

    #@2ab
    .line 555
    const-string/jumbo v5, ")"

    #@2ae
    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b1
    move-result-object v4

    #@2b2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b5
    move-result-object v4

    #@2b6
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2b9
    .line 556
    const/16 v18, 0x1

    #@2bb
    .line 559
    :cond_4
    move-object/from16 v0, p0

    #@2bd
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2bf
    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    #@2c1
    move-object/from16 v0, p1

    #@2c3
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@2c5
    move-object/from16 v0, p1

    #@2c7
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@2c9
    .line 560
    move-object/from16 v0, p1

    #@2cb
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@2cd
    move-object/from16 v0, p1

    #@2cf
    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    #@2d1
    move-object/from16 v0, p2

    #@2d3
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@2d5
    iget v9, v2, Lcom/android/server/am/ReceiverList;->uid:I

    #@2d7
    .line 559
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z

    #@2da
    move-result v2

    #@2db
    if-nez v2, :cond_8

    #@2dd
    .line 561
    return-void

    #@2de
    .line 479
    .restart local v17    # "perm":I
    :cond_5
    move-object/from16 v0, p2

    #@2e0
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    #@2e2
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@2e5
    move-result v16

    #@2e6
    .line 480
    .local v16, "opCode":I
    const/4 v2, -0x1

    #@2e7
    move/from16 v0, v16

    #@2e9
    if-eq v0, v2, :cond_0

    #@2eb
    .line 481
    move-object/from16 v0, p0

    #@2ed
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2ef
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@2f1
    move-object/from16 v0, p1

    #@2f3
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@2f5
    .line 482
    move-object/from16 v0, p1

    #@2f7
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@2f9
    .line 481
    move/from16 v0, v16

    #@2fb
    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@2fe
    move-result v2

    #@2ff
    if-eqz v2, :cond_0

    #@301
    .line 483
    const-string/jumbo v2, "BroadcastQueue"

    #@304
    new-instance v4, Ljava/lang/StringBuilder;

    #@306
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@309
    const-string/jumbo v5, "Appop Denial: broadcasting "

    #@30c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30f
    move-result-object v4

    #@310
    .line 484
    move-object/from16 v0, p1

    #@312
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@314
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@317
    move-result-object v5

    #@318
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31b
    move-result-object v4

    #@31c
    .line 485
    const-string/jumbo v5, " from "

    #@31f
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@322
    move-result-object v4

    #@323
    .line 485
    move-object/from16 v0, p1

    #@325
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@327
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32a
    move-result-object v4

    #@32b
    .line 485
    const-string/jumbo v5, " (pid="

    #@32e
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@331
    move-result-object v4

    #@332
    .line 486
    move-object/from16 v0, p1

    #@334
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@336
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@339
    move-result-object v4

    #@33a
    .line 486
    const-string/jumbo v5, ", uid="

    #@33d
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@340
    move-result-object v4

    #@341
    .line 486
    move-object/from16 v0, p1

    #@343
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@345
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@348
    move-result-object v4

    #@349
    .line 486
    const-string/jumbo v5, ")"

    #@34c
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34f
    move-result-object v4

    #@350
    .line 487
    const-string/jumbo v5, " requires appop "

    #@353
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@356
    move-result-object v4

    #@357
    .line 488
    move-object/from16 v0, p2

    #@359
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    #@35b
    .line 487
    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    #@35e
    move-result-object v5

    #@35f
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@362
    move-result-object v4

    #@363
    .line 489
    const-string/jumbo v5, " due to registered receiver "

    #@366
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@369
    move-result-object v4

    #@36a
    move-object/from16 v0, p2

    #@36c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36f
    move-result-object v4

    #@370
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@373
    move-result-object v4

    #@374
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@377
    .line 490
    const/16 v18, 0x1

    #@379
    goto/16 :goto_0

    #@37b
    .line 511
    .end local v16    # "opCode":I
    .restart local v3    # "requiredPermission":Ljava/lang/String;
    .restart local v15    # "i":I
    :cond_6
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@37e
    move-result v13

    #@37f
    .line 512
    .local v13, "appOp":I
    move-object/from16 v0, p1

    #@381
    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@383
    if-eq v13, v2, :cond_7

    #@385
    .line 513
    move-object/from16 v0, p0

    #@387
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@389
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@38b
    .line 514
    move-object/from16 v0, p2

    #@38d
    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@38f
    iget v4, v4, Lcom/android/server/am/ReceiverList;->uid:I

    #@391
    move-object/from16 v0, p2

    #@393
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    #@395
    .line 513
    invoke-virtual {v2, v13, v4, v5}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@398
    move-result v2

    #@399
    if-eqz v2, :cond_7

    #@39b
    .line 516
    const-string/jumbo v2, "BroadcastQueue"

    #@39e
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a3
    const-string/jumbo v5, "Appop Denial: receiving "

    #@3a6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a9
    move-result-object v4

    #@3aa
    .line 517
    move-object/from16 v0, p1

    #@3ac
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@3ae
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@3b1
    move-result-object v5

    #@3b2
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b5
    move-result-object v4

    #@3b6
    .line 518
    const-string/jumbo v5, " to "

    #@3b9
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bc
    move-result-object v4

    #@3bd
    .line 518
    move-object/from16 v0, p2

    #@3bf
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@3c1
    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@3c3
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c6
    move-result-object v4

    #@3c7
    .line 519
    const-string/jumbo v5, " (pid="

    #@3ca
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3cd
    move-result-object v4

    #@3ce
    .line 519
    move-object/from16 v0, p2

    #@3d0
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@3d2
    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    #@3d4
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d7
    move-result-object v4

    #@3d8
    .line 520
    const-string/jumbo v5, ", uid="

    #@3db
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3de
    move-result-object v4

    #@3df
    .line 520
    move-object/from16 v0, p2

    #@3e1
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@3e3
    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    #@3e5
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e8
    move-result-object v4

    #@3e9
    .line 520
    const-string/jumbo v5, ")"

    #@3ec
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ef
    move-result-object v4

    #@3f0
    .line 521
    const-string/jumbo v5, " requires appop "

    #@3f3
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f6
    move-result-object v4

    #@3f7
    .line 521
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    #@3fa
    move-result-object v5

    #@3fb
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fe
    move-result-object v4

    #@3ff
    .line 523
    const-string/jumbo v5, " due to sender "

    #@402
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@405
    move-result-object v4

    #@406
    .line 523
    move-object/from16 v0, p1

    #@408
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@40a
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40d
    move-result-object v4

    #@40e
    .line 524
    const-string/jumbo v5, " (uid "

    #@411
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@414
    move-result-object v4

    #@415
    .line 524
    move-object/from16 v0, p1

    #@417
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@419
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41c
    move-result-object v4

    #@41d
    .line 524
    const-string/jumbo v5, ")"

    #@420
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@423
    move-result-object v4

    #@424
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@427
    move-result-object v4

    #@428
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42b
    .line 525
    const/16 v18, 0x1

    #@42d
    .line 526
    goto/16 :goto_2

    #@42f
    .line 495
    :cond_7
    add-int/lit8 v15, v15, 0x1

    #@431
    goto/16 :goto_1

    #@433
    .line 564
    .end local v3    # "requiredPermission":Ljava/lang/String;
    .end local v13    # "appOp":I
    .end local v15    # "i":I
    .end local v17    # "perm":I
    :cond_8
    move-object/from16 v0, p2

    #@435
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@437
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@439
    if-eqz v2, :cond_9

    #@43b
    move-object/from16 v0, p2

    #@43d
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@43f
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@441
    iget-boolean v2, v2, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@443
    if-eqz v2, :cond_a

    #@445
    .line 565
    :cond_9
    const-string/jumbo v2, "BroadcastQueue"

    #@448
    new-instance v4, Ljava/lang/StringBuilder;

    #@44a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@44d
    const-string/jumbo v5, "Skipping deliver ["

    #@450
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@453
    move-result-object v4

    #@454
    move-object/from16 v0, p0

    #@456
    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@458
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45b
    move-result-object v4

    #@45c
    const-string/jumbo v5, "] "

    #@45f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@462
    move-result-object v4

    #@463
    move-object/from16 v0, p1

    #@465
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@468
    move-result-object v4

    #@469
    .line 566
    const-string/jumbo v5, " to "

    #@46c
    .line 565
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46f
    move-result-object v4

    #@470
    .line 566
    move-object/from16 v0, p2

    #@472
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@474
    .line 565
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@477
    move-result-object v4

    #@478
    .line 566
    const-string/jumbo v5, ": process crashing"

    #@47b
    .line 565
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47e
    move-result-object v4

    #@47f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@482
    move-result-object v4

    #@483
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@486
    .line 567
    const/16 v18, 0x1

    #@488
    .line 570
    :cond_a
    if-nez v18, :cond_c

    #@48a
    .line 574
    if-eqz p3, :cond_b

    #@48c
    .line 575
    move-object/from16 v0, p2

    #@48e
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@490
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    #@492
    invoke-interface {v2}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    #@495
    move-result-object v2

    #@496
    move-object/from16 v0, p1

    #@498
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@49a
    .line 576
    move-object/from16 v0, p2

    #@49c
    move-object/from16 v1, p1

    #@49e
    iput-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    #@4a0
    .line 577
    move-object/from16 v0, p2

    #@4a2
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@4a4
    move-object/from16 v0, p1

    #@4a6
    iput-object v0, v2, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@4a8
    .line 578
    const/4 v2, 0x2

    #@4a9
    move-object/from16 v0, p1

    #@4ab
    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@4ad
    .line 579
    move-object/from16 v0, p2

    #@4af
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@4b1
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@4b3
    if-eqz v2, :cond_b

    #@4b5
    .line 585
    move-object/from16 v0, p2

    #@4b7
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@4b9
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@4bb
    move-object/from16 v0, p1

    #@4bd
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@4bf
    .line 586
    move-object/from16 v0, p2

    #@4c1
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@4c3
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@4c5
    move-object/from16 v0, p1

    #@4c7
    iput-object v0, v2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@4c9
    .line 587
    move-object/from16 v0, p0

    #@4cb
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4cd
    move-object/from16 v0, p1

    #@4cf
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@4d1
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@4d4
    .line 593
    :cond_b
    :try_start_0
    move-object/from16 v0, p2

    #@4d6
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@4d8
    iget-object v4, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@4da
    move-object/from16 v0, p2

    #@4dc
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@4de
    iget-object v5, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    #@4e0
    .line 594
    new-instance v6, Landroid/content/Intent;

    #@4e2
    move-object/from16 v0, p1

    #@4e4
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@4e6
    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@4e9
    move-object/from16 v0, p1

    #@4eb
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@4ed
    move-object/from16 v0, p1

    #@4ef
    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@4f1
    .line 595
    move-object/from16 v0, p1

    #@4f3
    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@4f5
    move-object/from16 v0, p1

    #@4f7
    iget-boolean v10, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    #@4f9
    move-object/from16 v0, p1

    #@4fb
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    #@4fd
    move-object/from16 v0, p1

    #@4ff
    iget v12, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    #@501
    .line 593
    invoke-static/range {v4 .. v12}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    #@504
    .line 596
    if-eqz p3, :cond_c

    #@506
    .line 597
    const/4 v2, 0x3

    #@507
    move-object/from16 v0, p1

    #@509
    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@50b
    .line 465
    :cond_c
    :goto_3
    return-void

    #@50c
    .line 599
    :catch_0
    move-exception v14

    #@50d
    .line 600
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BroadcastQueue"

    #@510
    new-instance v4, Ljava/lang/StringBuilder;

    #@512
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@515
    const-string/jumbo v5, "Failure sending broadcast "

    #@518
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51b
    move-result-object v4

    #@51c
    move-object/from16 v0, p1

    #@51e
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@520
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@523
    move-result-object v4

    #@524
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@527
    move-result-object v4

    #@528
    invoke-static {v2, v4, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@52b
    .line 601
    if-eqz p3, :cond_c

    #@52d
    .line 602
    const/4 v2, 0x0

    #@52e
    move-object/from16 v0, p1

    #@530
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@532
    .line 603
    const/4 v2, 0x0

    #@533
    move-object/from16 v0, p1

    #@535
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    #@537
    .line 604
    move-object/from16 v0, p2

    #@539
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@53b
    const/4 v4, 0x0

    #@53c
    iput-object v4, v2, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@53e
    .line 605
    move-object/from16 v0, p2

    #@540
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@542
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@544
    if-eqz v2, :cond_c

    #@546
    .line 606
    move-object/from16 v0, p2

    #@548
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@54a
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@54c
    const/4 v4, 0x0

    #@54d
    iput-object v4, v2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@54f
    goto :goto_3
.end method

.method private static performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 10
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 448
    if-eqz p0, :cond_1

    #@2
    .line 449
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 452
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@8
    .line 453
    iget v9, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@a
    move-object v1, p1

    #@b
    move-object v2, p2

    #@c
    move v3, p3

    #@d
    move-object v4, p4

    #@e
    move-object v5, p5

    #@f
    move/from16 v6, p6

    #@11
    move/from16 v7, p7

    #@13
    move/from16 v8, p8

    #@15
    .line 452
    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    #@18
    .line 446
    :goto_0
    return-void

    #@19
    .line 456
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    #@1b
    const-string/jumbo v1, "app.thread must not be null"

    #@1e
    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 459
    :cond_1
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    #@25
    goto :goto_0
.end method

.method private final processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 253
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 254
    new-instance v0, Landroid/os/RemoteException;

    #@7
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@a
    throw v0

    #@b
    .line 256
    :cond_0
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@d
    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@13
    .line 257
    iput-object p2, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@15
    .line 258
    iput-object p1, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@17
    .line 259
    const/16 v0, 0xb

    #@19
    invoke-virtual {p2, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    #@1c
    .line 260
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1e
    const/4 v1, 0x0

    #@1f
    invoke-virtual {v0, p2, v1, v11}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@22
    .line 261
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@24
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    #@27
    .line 264
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@29
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@2b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@2e
    .line 266
    const/4 v10, 0x0

    #@2f
    .line 271
    .local v10, "started":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@31
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@33
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    #@3e
    .line 272
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@40
    new-instance v1, Landroid/content/Intent;

    #@42
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@44
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@47
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@49
    .line 273
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4b
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@4d
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4f
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    #@52
    move-result-object v3

    #@53
    .line 274
    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@55
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@57
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@59
    iget-boolean v7, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    #@5b
    iget v8, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    #@5d
    .line 275
    iget v9, p2, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@5f
    .line 272
    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    .line 278
    const/4 v10, 0x1

    #@63
    .line 280
    if-nez v10, :cond_1

    #@65
    .line 283
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@67
    .line 284
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@69
    .line 285
    iput-object v11, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@6b
    .line 250
    :cond_1
    return-void

    #@6c
    .line 279
    :catchall_0
    move-exception v0

    #@6d
    .line 280
    if-nez v10, :cond_2

    #@6f
    .line 283
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@71
    .line 284
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@73
    .line 285
    iput-object v11, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@75
    .line 279
    :cond_2
    throw v0
.end method

.method private final ringAdvance(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "increment"    # I
    .param p3, "ringSize"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1214
    add-int/2addr p1, p2

    #@2
    .line 1215
    if-gez p1, :cond_0

    #@4
    add-int/lit8 v0, p3, -0x1

    #@6
    return v0

    #@7
    .line 1216
    :cond_0
    if-lt p1, p3, :cond_1

    #@9
    return v0

    #@a
    .line 1217
    :cond_1
    return p1
.end method


# virtual methods
.method public backgroundServicesFinishedLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 433
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    .line 434
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    #@11
    .line 435
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    #@13
    if-ne v1, p1, :cond_0

    #@15
    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@17
    const/4 v2, 0x4

    #@18
    if-ne v1, v2, :cond_0

    #@1a
    .line 436
    const-string/jumbo v1, "BroadcastQueue"

    #@1d
    const-string/jumbo v2, "Resuming delayed broadcast"

    #@20
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 437
    const/4 v1, 0x0

    #@24
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@26
    .line 438
    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@28
    .line 439
    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    #@2b
    .line 432
    .end local v0    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    return-void
.end method

.method final broadcastTimeoutLocked(Z)V
    .locals 20
    .param p1, "fromMsg"    # Z

    #@0
    .prologue
    .line 1109
    if-eqz p1, :cond_0

    #@2
    .line 1110
    const/4 v4, 0x0

    #@3
    move-object/from16 v0, p0

    #@5
    iput-boolean v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    #@7
    .line 1113
    :cond_0
    move-object/from16 v0, p0

    #@9
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_1

    #@11
    .line 1114
    return-void

    #@12
    .line 1117
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@15
    move-result-wide v16

    #@16
    .line 1118
    .local v16, "now":J
    move-object/from16 v0, p0

    #@18
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@1a
    const/4 v6, 0x0

    #@1b
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    #@21
    .line 1119
    .local v5, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz p1, :cond_4

    #@23
    .line 1120
    move-object/from16 v0, p0

    #@25
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@27
    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@29
    if-eqz v4, :cond_2

    #@2b
    .line 1122
    move-object/from16 v0, p0

    #@2d
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2f
    const/4 v6, 0x0

    #@30
    iput-boolean v6, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@32
    .line 1123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@35
    move-result-wide v6

    #@36
    move-object/from16 v0, p0

    #@38
    iget-wide v8, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    #@3a
    add-long v18, v6, v8

    #@3c
    .line 1124
    .local v18, "timeoutTime":J
    move-object/from16 v0, p0

    #@3e
    move-wide/from16 v1, v18

    #@40
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    #@43
    .line 1125
    return-void

    #@44
    .line 1127
    .end local v18    # "timeoutTime":J
    :cond_2
    move-object/from16 v0, p0

    #@46
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@48
    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    #@4a
    if-nez v4, :cond_3

    #@4c
    .line 1131
    return-void

    #@4d
    .line 1134
    :cond_3
    iget-wide v6, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    #@4f
    move-object/from16 v0, p0

    #@51
    iget-wide v8, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    #@53
    add-long v18, v6, v8

    #@55
    .line 1135
    .restart local v18    # "timeoutTime":J
    cmp-long v4, v18, v16

    #@57
    if-lez v4, :cond_4

    #@59
    .line 1144
    move-object/from16 v0, p0

    #@5b
    move-wide/from16 v1, v18

    #@5d
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    #@60
    .line 1145
    return-void

    #@61
    .line 1149
    .end local v18    # "timeoutTime":J
    :cond_4
    move-object/from16 v0, p0

    #@63
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@65
    const/4 v6, 0x0

    #@66
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@69
    move-result-object v14

    #@6a
    check-cast v14, Lcom/android/server/am/BroadcastRecord;

    #@6c
    .line 1150
    .local v14, "br":Lcom/android/server/am/BroadcastRecord;
    iget v4, v14, Lcom/android/server/am/BroadcastRecord;->state:I

    #@6e
    const/4 v6, 0x4

    #@6f
    if-ne v4, v6, :cond_6

    #@71
    .line 1155
    const-string/jumbo v6, "BroadcastQueue"

    #@74
    new-instance v4, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v7, "Waited long enough for: "

    #@7c
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@82
    if-eqz v4, :cond_5

    #@84
    .line 1156
    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@86
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@89
    move-result-object v4

    #@8a
    .line 1155
    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v4

    #@8e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v4

    #@92
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    .line 1157
    const/4 v4, 0x0

    #@96
    iput-object v4, v14, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@98
    .line 1158
    const/4 v4, 0x0

    #@99
    iput v4, v14, Lcom/android/server/am/BroadcastRecord;->state:I

    #@9b
    .line 1159
    const/4 v4, 0x0

    #@9c
    move-object/from16 v0, p0

    #@9e
    invoke-virtual {v0, v4}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    #@a1
    .line 1160
    return-void

    #@a2
    .line 1156
    :cond_5
    const-string/jumbo v4, "(null)"

    #@a5
    goto :goto_0

    #@a6
    .line 1163
    :cond_6
    const-string/jumbo v4, "BroadcastQueue"

    #@a9
    new-instance v6, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v7, "Timeout of broadcast "

    #@b1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v6

    #@b5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v6

    #@b9
    const-string/jumbo v7, " - receiver="

    #@bc
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v6

    #@c0
    iget-object v7, v5, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@c2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v6

    #@c6
    .line 1164
    const-string/jumbo v7, ", started "

    #@c9
    .line 1163
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v6

    #@cd
    .line 1164
    iget-wide v8, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    #@cf
    sub-long v8, v16, v8

    #@d1
    .line 1163
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v6

    #@d5
    .line 1164
    const-string/jumbo v7, "ms ago"

    #@d8
    .line 1163
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v6

    #@dc
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v6

    #@e0
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e3
    .line 1165
    move-wide/from16 v0, v16

    #@e5
    iput-wide v0, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    #@e7
    .line 1166
    iget v4, v5, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    #@e9
    add-int/lit8 v4, v4, 0x1

    #@eb
    iput v4, v5, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    #@ed
    .line 1169
    iget v4, v5, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@ef
    if-gtz v4, :cond_7

    #@f1
    .line 1170
    const-string/jumbo v4, "BroadcastQueue"

    #@f4
    const-string/jumbo v6, "Timeout on receiver with nextReceiver <= 0"

    #@f7
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@fa
    .line 1171
    return-void

    #@fb
    .line 1174
    :cond_7
    const/4 v12, 0x0

    #@fc
    .line 1175
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    const/4 v11, 0x0

    #@fd
    .line 1177
    .local v11, "anrMessage":Ljava/lang/String;
    iget-object v4, v5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@ff
    iget v6, v5, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@101
    add-int/lit8 v6, v6, -0x1

    #@103
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@106
    move-result-object v15

    #@107
    .line 1178
    .local v15, "curReceiver":Ljava/lang/Object;
    const-string/jumbo v4, "BroadcastQueue"

    #@10a
    new-instance v6, Ljava/lang/StringBuilder;

    #@10c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@10f
    const-string/jumbo v7, "Receiver during timeout: "

    #@112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v6

    #@116
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v6

    #@11a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v6

    #@11e
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@121
    .line 1179
    move-object/from16 v0, p0

    #@123
    invoke-virtual {v0, v5}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    #@126
    .line 1180
    instance-of v4, v15, Lcom/android/server/am/BroadcastFilter;

    #@128
    if-eqz v4, :cond_c

    #@12a
    move-object v13, v15

    #@12b
    .line 1181
    check-cast v13, Lcom/android/server/am/BroadcastFilter;

    #@12d
    .line 1182
    .local v13, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@12f
    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    #@131
    if-eqz v4, :cond_8

    #@133
    .line 1183
    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@135
    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    #@137
    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@139
    if-eq v4, v6, :cond_8

    #@13b
    .line 1184
    move-object/from16 v0, p0

    #@13d
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@13f
    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@141
    monitor-enter v6

    #@142
    .line 1185
    :try_start_0
    move-object/from16 v0, p0

    #@144
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@146
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@148
    .line 1186
    iget-object v7, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@14a
    iget v7, v7, Lcom/android/server/am/ReceiverList;->pid:I

    #@14c
    .line 1185
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14f
    move-result-object v12

    #@150
    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    check-cast v12, Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@152
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v6

    #@153
    .line 1193
    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_8
    :goto_1
    if-eqz v12, :cond_9

    #@155
    .line 1194
    new-instance v4, Ljava/lang/StringBuilder;

    #@157
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15a
    const-string/jumbo v6, "Broadcast of "

    #@15d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v4

    #@161
    iget-object v6, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@163
    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@166
    move-result-object v6

    #@167
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v4

    #@16b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16e
    move-result-object v11

    #@16f
    .line 1197
    .end local v11    # "anrMessage":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    #@171
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@173
    if-ne v4, v5, :cond_a

    #@175
    .line 1198
    const/4 v4, 0x0

    #@176
    move-object/from16 v0, p0

    #@178
    iput-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@17a
    .line 1202
    :cond_a
    iget v6, v5, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@17c
    iget-object v7, v5, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@17e
    .line 1203
    iget-object v8, v5, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@180
    iget-boolean v9, v5, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@182
    const/4 v10, 0x0

    #@183
    move-object/from16 v4, p0

    #@185
    .line 1202
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    #@188
    .line 1204
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    #@18b
    .line 1206
    if-eqz v11, :cond_b

    #@18d
    .line 1209
    move-object/from16 v0, p0

    #@18f
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    #@191
    new-instance v6, Lcom/android/server/am/BroadcastQueue$AppNotResponding;

    #@193
    move-object/from16 v0, p0

    #@195
    invoke-direct {v6, v0, v12, v11}, Lcom/android/server/am/BroadcastQueue$AppNotResponding;-><init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@198
    invoke-virtual {v4, v6}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->post(Ljava/lang/Runnable;)Z

    #@19b
    .line 1108
    :cond_b
    return-void

    #@19c
    .line 1184
    .restart local v11    # "anrMessage":Ljava/lang/String;
    .restart local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    :catchall_0
    move-exception v4

    #@19d
    monitor-exit v6

    #@19e
    throw v4

    #@19f
    .line 1190
    .end local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    :cond_c
    iget-object v12, v5, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@1a1
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_1
.end method

.method final cancelBroadcastTimeoutLocked()V
    .locals 2

    #@0
    .prologue
    .line 1102
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1103
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    #@6
    const/16 v1, 0xc9

    #@8
    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->removeMessages(ILjava/lang/Object;)V

    #@b
    .line 1104
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    #@e
    .line 1101
    :cond_0
    return-void
.end method

.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    #@1
    .line 1239
    const/4 v0, 0x0

    #@2
    .line 1240
    .local v0, "didSomething":Z
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v2

    #@8
    add-int/lit8 v1, v2, -0x1

    #@a
    .end local v0    # "didSomething":Z
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@c
    .line 1241
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    #@14
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    #@17
    move-result v2

    #@18
    or-int/2addr v0, v2

    #@19
    .line 1243
    .local v0, "didSomething":Z
    if-nez p4, :cond_0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 1244
    return v3

    #@1e
    .line 1240
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@20
    goto :goto_0

    #@21
    .line 1248
    .end local v0    # "didSomething":Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v2

    #@27
    add-int/lit8 v1, v2, -0x1

    #@29
    :goto_1
    if-ltz v1, :cond_3

    #@2b
    .line 1249
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    #@33
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    #@36
    move-result v2

    #@37
    or-int/2addr v0, v2

    #@38
    .line 1251
    .restart local v0    # "didSomething":Z
    if-nez p4, :cond_2

    #@3a
    if-eqz v0, :cond_2

    #@3c
    .line 1252
    return v3

    #@3d
    .line 1248
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@3f
    goto :goto_1

    #@40
    .line 1256
    .end local v0    # "didSomething":Z
    :cond_3
    return v0
.end method

.method final dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .param p7, "needSep"    # Z

    #@0
    .prologue
    .line 1287
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v12

    #@8
    if-gtz v12, :cond_0

    #@a
    move-object/from16 v0, p0

    #@c
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v12

    #@12
    if-lez v12, :cond_5

    #@14
    .line 1289
    :cond_0
    const/4 v8, 0x0

    #@15
    .line 1290
    .local v8, "printed":Z
    move-object/from16 v0, p0

    #@17
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v12

    #@1d
    add-int/lit8 v4, v12, -0x1

    #@1f
    .end local p7    # "needSep":Z
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_d

    #@21
    .line 1291
    move-object/from16 v0, p0

    #@23
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    #@2b
    .line 1292
    .local v2, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz p6, :cond_1

    #@2d
    iget-object v12, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@2f
    move-object/from16 v0, p6

    #@31
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v12

    #@35
    if-eqz v12, :cond_4

    #@37
    .line 1295
    :cond_1
    if-nez v8, :cond_3

    #@39
    .line 1296
    if-eqz p7, :cond_2

    #@3b
    .line 1297
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@3e
    .line 1299
    :cond_2
    const/16 p7, 0x1

    #@40
    .line 1300
    .local p7, "needSep":Z
    const/4 v8, 0x1

    #@41
    .line 1301
    new-instance v12, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v13, "  Active broadcasts ["

    #@49
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v12

    #@4d
    move-object/from16 v0, p0

    #@4f
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@51
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v12

    #@55
    const-string/jumbo v13, "]:"

    #@58
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v12

    #@5c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v12

    #@60
    move-object/from16 v0, p2

    #@62
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@65
    .line 1303
    .end local p7    # "needSep":Z
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v13, "  Active Broadcast "

    #@6d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v12

    #@71
    move-object/from16 v0, p0

    #@73
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@75
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v12

    #@79
    const-string/jumbo v13, " #"

    #@7c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v12

    #@80
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v12

    #@84
    const-string/jumbo v13, ":"

    #@87
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v12

    #@8b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v12

    #@8f
    move-object/from16 v0, p2

    #@91
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@94
    .line 1304
    const-string/jumbo v12, "    "

    #@97
    move-object/from16 v0, p2

    #@99
    invoke-virtual {v2, v0, v12}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@9c
    .line 1290
    :cond_4
    add-int/lit8 v4, v4, -0x1

    #@9e
    goto :goto_0

    #@9f
    .line 1288
    .end local v2    # "br":Lcom/android/server/am/BroadcastRecord;
    .end local v4    # "i":I
    .end local v8    # "printed":Z
    .local p7, "needSep":Z
    :cond_5
    move-object/from16 v0, p0

    #@a1
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@a3
    if-nez v12, :cond_0

    #@a5
    .line 1340
    .end local p7    # "needSep":Z
    :cond_6
    :goto_1
    const/4 v8, 0x0

    #@a6
    .line 1342
    .restart local v8    # "printed":Z
    const/4 v4, -0x1

    #@a7
    .line 1343
    .restart local v4    # "i":I
    move-object/from16 v0, p0

    #@a9
    iget v7, v0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    #@ab
    .line 1344
    .local v7, "lastIndex":I
    move v10, v7

    #@ac
    .line 1348
    .local v10, "ringIndex":I
    :cond_7
    sget v12, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    #@ae
    const/4 v13, -0x1

    #@af
    move-object/from16 v0, p0

    #@b1
    invoke-direct {v0, v10, v13, v12}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    #@b4
    move-result v10

    #@b5
    .line 1349
    move-object/from16 v0, p0

    #@b7
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    #@b9
    aget-object v9, v12, v10

    #@bb
    .line 1350
    .local v9, "r":Lcom/android/server/am/BroadcastRecord;
    if-nez v9, :cond_16

    #@bd
    .line 1382
    :cond_8
    :goto_2
    if-ne v10, v7, :cond_7

    #@bf
    .line 1384
    if-nez p6, :cond_c

    #@c1
    .line 1385
    move-object/from16 v0, p0

    #@c3
    iget v10, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    #@c5
    move v7, v10

    #@c6
    .line 1386
    if-eqz p5, :cond_1c

    #@c8
    .line 1387
    const/4 v8, 0x0

    #@c9
    .line 1388
    const/4 v4, -0x1

    #@ca
    .line 1403
    :cond_9
    new-instance v11, Ljava/text/SimpleDateFormat;

    #@cc
    const-string/jumbo v12, "yyyy-MM-dd HH:mm:ss"

    #@cf
    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@d2
    .line 1405
    .local v11, "sdf":Ljava/text/SimpleDateFormat;
    :cond_a
    sget v12, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    #@d4
    const/4 v13, -0x1

    #@d5
    move-object/from16 v0, p0

    #@d7
    invoke-direct {v0, v10, v13, v12}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    #@da
    move-result v10

    #@db
    .line 1406
    move-object/from16 v0, p0

    #@dd
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    #@df
    aget-object v5, v12, v10

    #@e1
    .line 1407
    .local v5, "intent":Landroid/content/Intent;
    if-nez v5, :cond_1e

    #@e3
    .line 1432
    :cond_b
    :goto_3
    if-ne v10, v7, :cond_a

    #@e5
    .line 1435
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v11    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_c
    :goto_4
    return p7

    #@e6
    .line 1306
    .end local v7    # "lastIndex":I
    .end local v9    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v10    # "ringIndex":I
    :cond_d
    const/4 v8, 0x0

    #@e7
    .line 1307
    const/16 p7, 0x1

    #@e9
    .line 1308
    .local p7, "needSep":Z
    move-object/from16 v0, p0

    #@eb
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@ed
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@f0
    move-result v12

    #@f1
    add-int/lit8 v4, v12, -0x1

    #@f3
    :goto_5
    if-ltz v4, :cond_12

    #@f5
    .line 1309
    move-object/from16 v0, p0

    #@f7
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@f9
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@fc
    move-result-object v2

    #@fd
    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    #@ff
    .line 1310
    .restart local v2    # "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz p6, :cond_e

    #@101
    iget-object v12, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@103
    move-object/from16 v0, p6

    #@105
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@108
    move-result v12

    #@109
    if-eqz v12, :cond_11

    #@10b
    .line 1313
    :cond_e
    if-nez v8, :cond_10

    #@10d
    .line 1314
    if-eqz p7, :cond_f

    #@10f
    .line 1315
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@112
    .line 1317
    :cond_f
    const/16 p7, 0x1

    #@114
    .line 1318
    const/4 v8, 0x1

    #@115
    .line 1319
    new-instance v12, Ljava/lang/StringBuilder;

    #@117
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@11a
    const-string/jumbo v13, "  Active ordered broadcasts ["

    #@11d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v12

    #@121
    move-object/from16 v0, p0

    #@123
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@125
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v12

    #@129
    const-string/jumbo v13, "]:"

    #@12c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v12

    #@130
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v12

    #@134
    move-object/from16 v0, p2

    #@136
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@139
    .line 1321
    :cond_10
    new-instance v12, Ljava/lang/StringBuilder;

    #@13b
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@13e
    const-string/jumbo v13, "  Active Ordered Broadcast "

    #@141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v12

    #@145
    move-object/from16 v0, p0

    #@147
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@149
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v12

    #@14d
    const-string/jumbo v13, " #"

    #@150
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v12

    #@154
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@157
    move-result-object v12

    #@158
    const-string/jumbo v13, ":"

    #@15b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v12

    #@15f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@162
    move-result-object v12

    #@163
    move-object/from16 v0, p2

    #@165
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@168
    .line 1322
    move-object/from16 v0, p0

    #@16a
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@16c
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16f
    move-result-object v12

    #@170
    check-cast v12, Lcom/android/server/am/BroadcastRecord;

    #@172
    const-string/jumbo v13, "    "

    #@175
    move-object/from16 v0, p2

    #@177
    invoke-virtual {v12, v0, v13}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@17a
    .line 1308
    :cond_11
    add-int/lit8 v4, v4, -0x1

    #@17c
    goto/16 :goto_5

    #@17e
    .line 1324
    .end local v2    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_12
    if-eqz p6, :cond_13

    #@180
    move-object/from16 v0, p0

    #@182
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@184
    if-eqz v12, :cond_6

    #@186
    .line 1325
    move-object/from16 v0, p0

    #@188
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@18a
    iget-object v12, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@18c
    move-object/from16 v0, p6

    #@18e
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@191
    move-result v12

    #@192
    .line 1324
    if-eqz v12, :cond_6

    #@194
    .line 1326
    :cond_13
    if-eqz p7, :cond_14

    #@196
    .line 1327
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@199
    .line 1329
    :cond_14
    new-instance v12, Ljava/lang/StringBuilder;

    #@19b
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@19e
    const-string/jumbo v13, "  Pending broadcast ["

    #@1a1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v12

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@1a9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v12

    #@1ad
    const-string/jumbo v13, "]:"

    #@1b0
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v12

    #@1b4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b7
    move-result-object v12

    #@1b8
    move-object/from16 v0, p2

    #@1ba
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1bd
    .line 1330
    move-object/from16 v0, p0

    #@1bf
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@1c1
    if-eqz v12, :cond_15

    #@1c3
    .line 1331
    move-object/from16 v0, p0

    #@1c5
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@1c7
    const-string/jumbo v13, "    "

    #@1ca
    move-object/from16 v0, p2

    #@1cc
    invoke-virtual {v12, v0, v13}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@1cf
    .line 1335
    :goto_6
    const/16 p7, 0x1

    #@1d1
    goto/16 :goto_1

    #@1d3
    .line 1333
    :cond_15
    const-string/jumbo v12, "    (null)"

    #@1d6
    move-object/from16 v0, p2

    #@1d8
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1db
    goto :goto_6

    #@1dc
    .line 1354
    .end local p7    # "needSep":Z
    .restart local v7    # "lastIndex":I
    .restart local v9    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v10    # "ringIndex":I
    :cond_16
    add-int/lit8 v4, v4, 0x1

    #@1de
    .line 1355
    if-eqz p6, :cond_17

    #@1e0
    iget-object v12, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@1e2
    move-object/from16 v0, p6

    #@1e4
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e7
    move-result v12

    #@1e8
    if-eqz v12, :cond_8

    #@1ea
    .line 1358
    :cond_17
    if-nez v8, :cond_19

    #@1ec
    .line 1359
    if-eqz p7, :cond_18

    #@1ee
    .line 1360
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1f1
    .line 1362
    :cond_18
    const/16 p7, 0x1

    #@1f3
    .line 1363
    .restart local p7    # "needSep":Z
    new-instance v12, Ljava/lang/StringBuilder;

    #@1f5
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1f8
    const-string/jumbo v13, "  Historical broadcasts ["

    #@1fb
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fe
    move-result-object v12

    #@1ff
    move-object/from16 v0, p0

    #@201
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@203
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@206
    move-result-object v12

    #@207
    const-string/jumbo v13, "]:"

    #@20a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v12

    #@20e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@211
    move-result-object v12

    #@212
    move-object/from16 v0, p2

    #@214
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@217
    .line 1364
    const/4 v8, 0x1

    #@218
    .line 1366
    .end local p7    # "needSep":Z
    :cond_19
    if-eqz p5, :cond_1a

    #@21a
    .line 1367
    new-instance v12, Ljava/lang/StringBuilder;

    #@21c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@21f
    const-string/jumbo v13, "  Historical Broadcast "

    #@222
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v12

    #@226
    move-object/from16 v0, p0

    #@228
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@22a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22d
    move-result-object v12

    #@22e
    const-string/jumbo v13, " #"

    #@231
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@234
    move-result-object v12

    #@235
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@238
    move-result-object v12

    #@239
    move-object/from16 v0, p2

    #@23b
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23e
    .line 1368
    move-object/from16 v0, p2

    #@240
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@243
    const-string/jumbo v12, ":"

    #@246
    move-object/from16 v0, p2

    #@248
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24b
    .line 1369
    const-string/jumbo v12, "    "

    #@24e
    move-object/from16 v0, p2

    #@250
    invoke-virtual {v9, v0, v12}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@253
    goto/16 :goto_2

    #@255
    .line 1371
    :cond_1a
    const-string/jumbo v12, "  #"

    #@258
    move-object/from16 v0, p2

    #@25a
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25d
    move-object/from16 v0, p2

    #@25f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@262
    const-string/jumbo v12, ": "

    #@265
    move-object/from16 v0, p2

    #@267
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26a
    move-object/from16 v0, p2

    #@26c
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@26f
    .line 1372
    const-string/jumbo v12, "    "

    #@272
    move-object/from16 v0, p2

    #@274
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@277
    .line 1373
    iget-object v12, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@279
    const/4 v13, 0x0

    #@27a
    const/4 v14, 0x1

    #@27b
    const/4 v15, 0x1

    #@27c
    const/16 v16, 0x0

    #@27e
    invoke-virtual/range {v12 .. v16}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    #@281
    move-result-object v12

    #@282
    move-object/from16 v0, p2

    #@284
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@287
    .line 1374
    iget-object v12, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    #@289
    if-eqz v12, :cond_1b

    #@28b
    iget-object v12, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    #@28d
    iget-object v13, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@28f
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@292
    move-result-object v13

    #@293
    if-eq v12, v13, :cond_1b

    #@295
    .line 1375
    const-string/jumbo v12, "    targetComp: "

    #@298
    move-object/from16 v0, p2

    #@29a
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29d
    iget-object v12, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    #@29f
    invoke-virtual {v12}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@2a2
    move-result-object v12

    #@2a3
    move-object/from16 v0, p2

    #@2a5
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a8
    .line 1377
    :cond_1b
    iget-object v12, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@2aa
    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@2ad
    move-result-object v3

    #@2ae
    .line 1378
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_8

    #@2b0
    .line 1379
    const-string/jumbo v12, "    extras: "

    #@2b3
    move-object/from16 v0, p2

    #@2b5
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b8
    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    #@2bb
    move-result-object v12

    #@2bc
    move-object/from16 v0, p2

    #@2be
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c1
    goto/16 :goto_2

    #@2c3
    .line 1391
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_1c
    move v6, v4

    #@2c4
    .line 1392
    .local v6, "j":I
    :cond_1d
    :goto_7
    if-lez v6, :cond_9

    #@2c6
    if-eq v10, v7, :cond_9

    #@2c8
    .line 1393
    sget v12, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    #@2ca
    const/4 v13, -0x1

    #@2cb
    move-object/from16 v0, p0

    #@2cd
    invoke-direct {v0, v10, v13, v12}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    #@2d0
    move-result v10

    #@2d1
    .line 1394
    move-object/from16 v0, p0

    #@2d3
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    #@2d5
    aget-object v9, v12, v10

    #@2d7
    .line 1395
    if-eqz v9, :cond_1d

    #@2d9
    .line 1398
    add-int/lit8 v6, v6, -0x1

    #@2db
    goto :goto_7

    #@2dc
    .line 1410
    .end local v6    # "j":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v11    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1e
    if-nez v8, :cond_20

    #@2de
    .line 1411
    if-eqz p7, :cond_1f

    #@2e0
    .line 1412
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@2e3
    .line 1414
    :cond_1f
    const/16 p7, 0x1

    #@2e5
    .line 1415
    .restart local p7    # "needSep":Z
    new-instance v12, Ljava/lang/StringBuilder;

    #@2e7
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@2ea
    const-string/jumbo v13, "  Historical broadcasts summary ["

    #@2ed
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f0
    move-result-object v12

    #@2f1
    move-object/from16 v0, p0

    #@2f3
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@2f5
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f8
    move-result-object v12

    #@2f9
    const-string/jumbo v13, "]:"

    #@2fc
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ff
    move-result-object v12

    #@300
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@303
    move-result-object v12

    #@304
    move-object/from16 v0, p2

    #@306
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@309
    .line 1416
    const/4 v8, 0x1

    #@30a
    .line 1418
    .end local p7    # "needSep":Z
    :cond_20
    if-nez p5, :cond_21

    #@30c
    const/16 v12, 0x32

    #@30e
    if-lt v4, v12, :cond_21

    #@310
    .line 1419
    const-string/jumbo v12, "  ..."

    #@313
    move-object/from16 v0, p2

    #@315
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@318
    goto/16 :goto_4

    #@31a
    .line 1422
    :cond_21
    add-int/lit8 v4, v4, 0x1

    #@31c
    .line 1423
    const-string/jumbo v12, "  #"

    #@31f
    move-object/from16 v0, p2

    #@321
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@324
    move-object/from16 v0, p2

    #@326
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@329
    const-string/jumbo v12, ": "

    #@32c
    move-object/from16 v0, p2

    #@32e
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@331
    .line 1424
    const/4 v12, 0x0

    #@332
    const/4 v13, 0x1

    #@333
    const/4 v14, 0x1

    #@334
    const/4 v15, 0x0

    #@335
    invoke-virtual {v5, v12, v13, v14, v15}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    #@338
    move-result-object v12

    #@339
    move-object/from16 v0, p2

    #@33b
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@33e
    .line 1425
    const-string/jumbo v12, "    enq="

    #@341
    move-object/from16 v0, p2

    #@343
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@346
    new-instance v12, Ljava/util/Date;

    #@348
    move-object/from16 v0, p0

    #@34a
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    #@34c
    aget-wide v14, v13, v10

    #@34e
    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    #@351
    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@354
    move-result-object v12

    #@355
    move-object/from16 v0, p2

    #@357
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35a
    .line 1426
    const-string/jumbo v12, " disp="

    #@35d
    move-object/from16 v0, p2

    #@35f
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@362
    new-instance v12, Ljava/util/Date;

    #@364
    move-object/from16 v0, p0

    #@366
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    #@368
    aget-wide v14, v13, v10

    #@36a
    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    #@36d
    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@370
    move-result-object v12

    #@371
    move-object/from16 v0, p2

    #@373
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@376
    .line 1427
    const-string/jumbo v12, " fin="

    #@379
    move-object/from16 v0, p2

    #@37b
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37e
    new-instance v12, Ljava/util/Date;

    #@380
    move-object/from16 v0, p0

    #@382
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    #@384
    aget-wide v14, v13, v10

    #@386
    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    #@389
    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@38c
    move-result-object v12

    #@38d
    move-object/from16 v0, p2

    #@38f
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@392
    .line 1428
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@395
    move-result-object v3

    #@396
    .line 1429
    .restart local v3    # "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_b

    #@398
    .line 1430
    const-string/jumbo v12, "    extras: "

    #@39b
    move-object/from16 v0, p2

    #@39d
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a0
    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    #@3a3
    move-result-object v12

    #@3a4
    move-object/from16 v0, p2

    #@3a6
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a9
    goto/16 :goto_3
.end method

.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    #@b
    .line 218
    return-void
.end method

.method public enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    #@b
    .line 213
    return-void
.end method

.method public finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "resultExtras"    # Landroid/os/Bundle;
    .param p5, "resultAbort"    # Z
    .param p6, "waitForServices"    # Z

    #@0
    .prologue
    .line 369
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    #@2
    .line 370
    .local v3, "state":I
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@4
    .line 371
    .local v2, "receiver":Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    #@5
    iput v4, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    #@7
    .line 372
    if-nez v3, :cond_0

    #@9
    .line 373
    const-string/jumbo v4, "BroadcastQueue"

    #@c
    new-instance v5, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v6, "finishReceiver ["

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    iget-object v6, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    const-string/jumbo v6, "] called but state is IDLE"

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 375
    :cond_0
    const/4 v4, 0x0

    #@2d
    iput-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@2f
    .line 376
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@31
    const/4 v5, 0x0

    #@32
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@35
    .line 377
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@37
    if-eqz v4, :cond_1

    #@39
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@3b
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@3d
    if-ne v4, p1, :cond_1

    #@3f
    .line 378
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@41
    const/4 v5, 0x0

    #@42
    iput-object v5, v4, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@44
    .line 380
    :cond_1
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    #@46
    if-eqz v4, :cond_2

    #@48
    .line 381
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    #@4a
    iget-object v4, v4, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@4c
    const/4 v5, 0x0

    #@4d
    iput-object v5, v4, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@4f
    .line 383
    :cond_2
    const/4 v4, 0x0

    #@50
    iput-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    #@52
    .line 384
    const/4 v4, 0x0

    #@53
    iput-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@55
    .line 385
    const/4 v4, 0x0

    #@56
    iput-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@58
    .line 386
    const/4 v4, 0x0

    #@59
    iput-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@5b
    .line 388
    iput p2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@5d
    .line 389
    iput-object p3, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@5f
    .line 390
    iput-object p4, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@61
    .line 391
    if-eqz p5, :cond_4

    #@63
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@65
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    #@68
    move-result v4

    #@69
    const/high16 v5, 0x8000000

    #@6b
    and-int/2addr v4, v5

    #@6c
    if-nez v4, :cond_4

    #@6e
    .line 392
    iput-boolean p5, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@70
    .line 397
    :goto_0
    if-eqz p6, :cond_8

    #@72
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@74
    if-eqz v4, :cond_8

    #@76
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    #@78
    iget-boolean v4, v4, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    #@7a
    if-eqz v4, :cond_8

    #@7c
    .line 398
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    #@7e
    iget-object v4, v4, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@80
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@83
    move-result v4

    #@84
    if-lez v4, :cond_8

    #@86
    .line 399
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    #@88
    iget-object v4, v4, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@8a
    const/4 v5, 0x0

    #@8b
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8e
    move-result-object v4

    #@8f
    if-ne v4, p1, :cond_8

    #@91
    .line 401
    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@93
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@95
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@98
    move-result v5

    #@99
    if-ge v4, v5, :cond_6

    #@9b
    .line 402
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@9d
    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@9f
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a2
    move-result-object v1

    #@a3
    .line 403
    .local v1, "obj":Ljava/lang/Object;
    instance-of v4, v1, Landroid/content/pm/ActivityInfo;

    #@a5
    if-eqz v4, :cond_5

    #@a7
    move-object v0, v1

    #@a8
    check-cast v0, Landroid/content/pm/ActivityInfo;

    #@aa
    .line 408
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_1
    if-eqz v2, :cond_3

    #@ac
    if-nez v0, :cond_7

    #@ae
    .line 415
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@b0
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    #@b2
    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    #@b4
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActiveServices;->hasBackgroundServices(I)Z

    #@b7
    move-result v4

    #@b8
    if-eqz v4, :cond_8

    #@ba
    .line 416
    const-string/jumbo v4, "BroadcastQueue"

    #@bd
    new-instance v5, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v6, "Delay finish: "

    #@c5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v5

    #@c9
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@cb
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@ce
    move-result-object v6

    #@cf
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v5

    #@d3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v5

    #@d7
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@da
    .line 417
    const/4 v4, 0x4

    #@db
    iput v4, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    #@dd
    .line 418
    const/4 v4, 0x0

    #@de
    return v4

    #@df
    .line 394
    :cond_4
    const/4 v4, 0x0

    #@e0
    iput-boolean v4, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@e2
    goto :goto_0

    #@e3
    .line 403
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x0

    #@e4
    .local v0, "nextReceiver":Landroid/content/pm/ActivityInfo;
    goto :goto_1

    #@e5
    .line 405
    .end local v0    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_6
    const/4 v0, 0x0

    #@e6
    .restart local v0    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    goto :goto_1

    #@e7
    .line 409
    .end local v0    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    :cond_7
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@e9
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@eb
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@ed
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@ef
    if-ne v4, v5, :cond_3

    #@f1
    .line 410
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@f3
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@f5
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f8
    move-result v4

    #@f9
    if-eqz v4, :cond_3

    #@fb
    .line 423
    :cond_8
    const/4 v4, 0x0

    #@fc
    iput-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@fe
    .line 428
    const/4 v4, 0x1

    #@ff
    if-eq v3, v4, :cond_9

    #@101
    .line 429
    const/4 v4, 0x3

    #@102
    if-ne v3, v4, :cond_a

    #@104
    const/4 v4, 0x1

    #@105
    .line 428
    :goto_2
    return v4

    #@106
    :cond_9
    const/4 v4, 0x1

    #@107
    goto :goto_2

    #@108
    .line 429
    :cond_a
    const/4 v4, 0x0

    #@109
    goto :goto_2
.end method

.method public getMatchingOrderedReceiver(Landroid/os/IBinder;)Lcom/android/server/am/BroadcastRecord;
    .locals 4
    .param p1, "receiver"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 358
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    if-lez v1, :cond_0

    #@a
    .line 359
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    #@12
    .line 360
    .local v0, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_0

    #@14
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@16
    if-ne v1, p1, :cond_0

    #@18
    .line 361
    return-object v0

    #@19
    .line 364
    .end local v0    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    return-object v3
.end method

.method public isPendingBroadcastProcessLocked(I)Z
    .locals 2
    .param p1, "pid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 210
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@7
    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@9
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    #@b
    if-ne v1, p1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method final logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    #@0
    .prologue
    const/4 v11, 0x4

    #@1
    const/4 v10, 0x3

    #@2
    const/4 v9, 0x2

    #@3
    const/4 v8, 0x1

    #@4
    const/4 v7, 0x0

    #@5
    .line 1260
    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@7
    add-int/lit8 v2, v4, -0x1

    #@9
    .line 1261
    .local v2, "logIndex":I
    if-ltz v2, :cond_1

    #@b
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@d
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@10
    move-result v4

    #@11
    if-ge v2, v4, :cond_1

    #@13
    .line 1262
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@15
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    .line 1263
    .local v1, "curReceiver":Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/server/am/BroadcastFilter;

    #@1b
    if-eqz v4, :cond_0

    #@1d
    move-object v0, v1

    #@1e
    .line 1264
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    #@20
    .line 1265
    .local v0, "bf":Lcom/android/server/am/BroadcastFilter;
    const/4 v4, 0x5

    #@21
    new-array v4, v4, [Ljava/lang/Object;

    #@23
    .line 1266
    iget v5, v0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    #@25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v5

    #@29
    aput-object v5, v4, v7

    #@2b
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@2e
    move-result v5

    #@2f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v5

    #@33
    aput-object v5, v4, v8

    #@35
    .line 1267
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@37
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    aput-object v5, v4, v9

    #@3d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v5

    #@41
    aput-object v5, v4, v10

    #@43
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@46
    move-result v5

    #@47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v5

    #@4b
    aput-object v5, v4, v11

    #@4d
    .line 1265
    const/16 v5, 0x7548

    #@4f
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@52
    .line 1259
    .end local v0    # "bf":Lcom/android/server/am/BroadcastFilter;
    .end local v1    # "curReceiver":Ljava/lang/Object;
    :goto_0
    return-void

    #@53
    .restart local v1    # "curReceiver":Ljava/lang/Object;
    :cond_0
    move-object v3, v1

    #@54
    .line 1269
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@56
    .line 1270
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x5

    #@57
    new-array v4, v4, [Ljava/lang/Object;

    #@59
    .line 1271
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@5b
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5d
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@5f
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    #@62
    move-result v5

    #@63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@66
    move-result-object v5

    #@67
    aput-object v5, v4, v7

    #@69
    .line 1272
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@6c
    move-result v5

    #@6d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@70
    move-result-object v5

    #@71
    aput-object v5, v4, v8

    #@73
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@75
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    aput-object v5, v4, v9

    #@7b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e
    move-result-object v5

    #@7f
    aput-object v5, v4, v10

    #@81
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    #@84
    move-result-object v5

    #@85
    aput-object v5, v4, v11

    #@87
    .line 1270
    const/16 v5, 0x7549

    #@89
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@8c
    goto :goto_0

    #@8d
    .line 1275
    .end local v1    # "curReceiver":Ljava/lang/Object;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-gez v2, :cond_2

    #@8f
    const-string/jumbo v4, "BroadcastQueue"

    #@92
    .line 1276
    new-instance v5, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v6, "Discarding broadcast before first receiver is invoked: "

    #@9a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v5

    #@9e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v5

    #@a2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v5

    #@a6
    .line 1275
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    .line 1277
    :cond_2
    const/4 v4, 0x5

    #@aa
    new-array v4, v4, [Ljava/lang/Object;

    #@ac
    .line 1278
    const/4 v5, -0x1

    #@ad
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b0
    move-result-object v5

    #@b1
    aput-object v5, v4, v7

    #@b3
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@b6
    move-result v5

    #@b7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ba
    move-result-object v5

    #@bb
    aput-object v5, v4, v8

    #@bd
    .line 1279
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@bf
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@c2
    move-result-object v5

    #@c3
    aput-object v5, v4, v9

    #@c5
    .line 1280
    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@c7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ca
    move-result-object v5

    #@cb
    aput-object v5, v4, v10

    #@cd
    .line 1281
    const-string/jumbo v5, "NONE"

    #@d0
    aput-object v5, v4, v11

    #@d2
    .line 1277
    const/16 v5, 0x7549

    #@d4
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@d7
    goto/16 :goto_0
.end method

.method final processNextBroadcast(Z)V
    .locals 48
    .param p1, "fromMsg"    # Z

    #@0
    .prologue
    .line 639
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    move-object/from16 v45, v0

    #@6
    monitor-enter v45

    #@7
    .line 647
    :try_start_0
    move-object/from16 v0, p0

    #@9
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@b
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    #@e
    .line 649
    if-eqz p1, :cond_0

    #@10
    .line 650
    const/4 v4, 0x0

    #@11
    move-object/from16 v0, p0

    #@13
    iput-boolean v4, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    #@15
    .line 654
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@17
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v4

    #@1d
    if-lez v4, :cond_2

    #@1f
    .line 655
    move-object/from16 v0, p0

    #@21
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@23
    const/4 v6, 0x0

    #@24
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@27
    move-result-object v39

    #@28
    check-cast v39, Lcom/android/server/am/BroadcastRecord;

    #@2a
    .line 656
    .local v39, "r":Lcom/android/server/am/BroadcastRecord;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2d
    move-result-wide v6

    #@2e
    move-object/from16 v0, v39

    #@30
    iput-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    #@32
    .line 657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@35
    move-result-wide v6

    #@36
    move-object/from16 v0, v39

    #@38
    iput-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    #@3a
    .line 658
    move-object/from16 v0, v39

    #@3c
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@3e
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@41
    move-result v14

    #@42
    .line 661
    .local v14, "N":I
    const/16 v26, 0x0

    #@44
    .local v26, "i":I
    :goto_1
    move/from16 v0, v26

    #@46
    if-ge v0, v14, :cond_1

    #@48
    .line 662
    move-object/from16 v0, v39

    #@4a
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@4c
    move/from16 v0, v26

    #@4e
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@51
    move-result-object v44

    #@52
    .line 666
    .local v44, "target":Ljava/lang/Object;
    check-cast v44, Lcom/android/server/am/BroadcastFilter;

    #@54
    .end local v44    # "target":Ljava/lang/Object;
    const/4 v4, 0x0

    #@55
    move-object/from16 v0, p0

    #@57
    move-object/from16 v1, v39

    #@59
    move-object/from16 v2, v44

    #@5b
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;Z)V

    #@5e
    .line 661
    add-int/lit8 v26, v26, 0x1

    #@60
    goto :goto_1

    #@61
    .line 668
    :cond_1
    move-object/from16 v0, p0

    #@63
    move-object/from16 v1, v39

    #@65
    invoke-direct {v0, v1}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@68
    goto :goto_0

    #@69
    .line 639
    .end local v14    # "N":I
    .end local v26    # "i":I
    .end local v39    # "r":Lcom/android/server/am/BroadcastRecord;
    :catchall_0
    move-exception v4

    #@6a
    monitor-exit v45

    #@6b
    throw v4

    #@6c
    .line 678
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@6e
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@70
    if-eqz v4, :cond_5

    #@72
    .line 684
    move-object/from16 v0, p0

    #@74
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@76
    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@78
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@79
    .line 685
    :try_start_2
    move-object/from16 v0, p0

    #@7b
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7d
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@7f
    move-object/from16 v0, p0

    #@81
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@83
    iget-object v7, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@85
    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    #@87
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8a
    move-result-object v38

    #@8b
    check-cast v38, Lcom/android/server/am/ProcessRecord;

    #@8d
    .line 686
    .local v38, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v38, :cond_3

    #@8f
    move-object/from16 v0, v38

    #@91
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@93
    move/from16 v29, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@95
    :goto_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@96
    .line 688
    if-nez v29, :cond_4

    #@98
    monitor-exit v45

    #@99
    .line 690
    return-void

    #@9a
    .line 686
    :cond_3
    const/16 v29, 0x1

    #@9c
    .local v29, "isDead":Z
    goto :goto_2

    #@9d
    .line 684
    .end local v29    # "isDead":Z
    .end local v38    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v4

    #@9e
    :try_start_4
    monitor-exit v6

    #@9f
    throw v4

    #@a0
    .line 692
    .restart local v38    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_4
    const-string/jumbo v4, "BroadcastQueue"

    #@a3
    new-instance v6, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v7, "pending app  ["

    #@ab
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v6

    #@af
    .line 693
    move-object/from16 v0, p0

    #@b1
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@b3
    .line 692
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v6

    #@b7
    .line 693
    const-string/jumbo v7, "]"

    #@ba
    .line 692
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v6

    #@be
    .line 693
    move-object/from16 v0, p0

    #@c0
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@c2
    iget-object v7, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@c4
    .line 692
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v6

    #@c8
    .line 694
    const-string/jumbo v7, " died before responding to broadcast"

    #@cb
    .line 692
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v6

    #@cf
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v6

    #@d3
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d6
    .line 695
    move-object/from16 v0, p0

    #@d8
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@da
    const/4 v6, 0x0

    #@db
    iput v6, v4, Lcom/android/server/am/BroadcastRecord;->state:I

    #@dd
    .line 696
    move-object/from16 v0, p0

    #@df
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@e1
    move-object/from16 v0, p0

    #@e3
    iget v6, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    #@e5
    iput v6, v4, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@e7
    .line 697
    const/4 v4, 0x0

    #@e8
    move-object/from16 v0, p0

    #@ea
    iput-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@ec
    .line 701
    .end local v38    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_5
    const/16 v31, 0x0

    #@ee
    .line 704
    .local v31, "looped":Z
    :cond_6
    move-object/from16 v0, p0

    #@f0
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@f2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@f5
    move-result v4

    #@f6
    if-nez v4, :cond_8

    #@f8
    .line 706
    move-object/from16 v0, p0

    #@fa
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@fc
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    #@ff
    .line 707
    if-eqz v31, :cond_7

    #@101
    .line 711
    move-object/from16 v0, p0

    #@103
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@105
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@108
    :cond_7
    monitor-exit v45

    #@109
    .line 713
    return-void

    #@10a
    .line 715
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    #@10c
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@10e
    const/4 v6, 0x0

    #@10f
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@112
    move-result-object v39

    #@113
    check-cast v39, Lcom/android/server/am/BroadcastRecord;

    #@115
    .line 716
    .restart local v39    # "r":Lcom/android/server/am/BroadcastRecord;
    const/16 v25, 0x0

    #@117
    .line 726
    .local v25, "forceReceive":Z
    move-object/from16 v0, v39

    #@119
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@11b
    if-eqz v4, :cond_a

    #@11d
    move-object/from16 v0, v39

    #@11f
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@121
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@124
    move-result v33

    #@125
    .line 727
    .local v33, "numReceivers":I
    :goto_3
    move-object/from16 v0, p0

    #@127
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@129
    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    #@12b
    if-eqz v4, :cond_9

    #@12d
    move-object/from16 v0, v39

    #@12f
    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    #@131
    const-wide/16 v8, 0x0

    #@133
    cmp-long v4, v6, v8

    #@135
    if-lez v4, :cond_9

    #@137
    .line 728
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@13a
    move-result-wide v34

    #@13b
    .line 729
    .local v34, "now":J
    if-lez v33, :cond_9

    #@13d
    .line 730
    move-object/from16 v0, v39

    #@13f
    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    #@141
    move-object/from16 v0, p0

    #@143
    iget-wide v8, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    #@145
    const-wide/16 v10, 0x2

    #@147
    mul-long/2addr v8, v10

    #@148
    move/from16 v0, v33

    #@14a
    int-to-long v10, v0

    #@14b
    mul-long/2addr v8, v10

    #@14c
    add-long/2addr v6, v8

    #@14d
    cmp-long v4, v34, v6

    #@14f
    if-lez v4, :cond_9

    #@151
    .line 731
    const-string/jumbo v4, "BroadcastQueue"

    #@154
    new-instance v6, Ljava/lang/StringBuilder;

    #@156
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@159
    const-string/jumbo v7, "Hung broadcast ["

    #@15c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v6

    #@160
    .line 732
    move-object/from16 v0, p0

    #@162
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@164
    .line 731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v6

    #@168
    .line 732
    const-string/jumbo v7, "] discarded after timeout failure:"

    #@16b
    .line 731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v6

    #@16f
    .line 733
    const-string/jumbo v7, " now="

    #@172
    .line 731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v6

    #@176
    move-wide/from16 v0, v34

    #@178
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v6

    #@17c
    .line 734
    const-string/jumbo v7, " dispatchTime="

    #@17f
    .line 731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v6

    #@183
    .line 734
    move-object/from16 v0, v39

    #@185
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    #@187
    .line 731
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v6

    #@18b
    .line 735
    const-string/jumbo v7, " startTime="

    #@18e
    .line 731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v6

    #@192
    .line 735
    move-object/from16 v0, v39

    #@194
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    #@196
    .line 731
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@199
    move-result-object v6

    #@19a
    .line 736
    const-string/jumbo v7, " intent="

    #@19d
    .line 731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v6

    #@1a1
    .line 736
    move-object/from16 v0, v39

    #@1a3
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@1a5
    .line 731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v6

    #@1a9
    .line 737
    const-string/jumbo v7, " numReceivers="

    #@1ac
    .line 731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v6

    #@1b0
    move/from16 v0, v33

    #@1b2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v6

    #@1b6
    .line 738
    const-string/jumbo v7, " nextReceiver="

    #@1b9
    .line 731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v6

    #@1bd
    .line 738
    move-object/from16 v0, v39

    #@1bf
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@1c1
    .line 731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v6

    #@1c5
    .line 739
    const-string/jumbo v7, " state="

    #@1c8
    .line 731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v6

    #@1cc
    .line 739
    move-object/from16 v0, v39

    #@1ce
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@1d0
    .line 731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v6

    #@1d4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d7
    move-result-object v6

    #@1d8
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1db
    .line 740
    const/4 v4, 0x0

    #@1dc
    move-object/from16 v0, p0

    #@1de
    invoke-virtual {v0, v4}, Lcom/android/server/am/BroadcastQueue;->broadcastTimeoutLocked(Z)V

    #@1e1
    .line 741
    const/16 v25, 0x1

    #@1e3
    .line 742
    const/4 v4, 0x0

    #@1e4
    move-object/from16 v0, v39

    #@1e6
    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@1e8
    .line 746
    .end local v34    # "now":J
    :cond_9
    move-object/from16 v0, v39

    #@1ea
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1ec
    if-eqz v4, :cond_b

    #@1ee
    monitor-exit v45

    #@1ef
    .line 751
    return-void

    #@1f0
    .line 726
    .end local v33    # "numReceivers":I
    :cond_a
    const/16 v33, 0x0

    #@1f2
    .restart local v33    # "numReceivers":I
    goto/16 :goto_3

    #@1f4
    .line 754
    :cond_b
    :try_start_6
    move-object/from16 v0, v39

    #@1f6
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@1f8
    if-eqz v4, :cond_c

    #@1fa
    move-object/from16 v0, v39

    #@1fc
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@1fe
    move/from16 v0, v33

    #@200
    if-lt v4, v0, :cond_12

    #@202
    .line 758
    :cond_c
    :goto_4
    move-object/from16 v0, v39

    #@204
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@206
    if-eqz v4, :cond_d

    #@208
    .line 763
    :try_start_7
    move-object/from16 v0, v39

    #@20a
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    #@20c
    move-object/from16 v0, v39

    #@20e
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    #@210
    .line 764
    new-instance v6, Landroid/content/Intent;

    #@212
    move-object/from16 v0, v39

    #@214
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@216
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@219
    move-object/from16 v0, v39

    #@21b
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@21d
    .line 765
    move-object/from16 v0, v39

    #@21f
    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@221
    move-object/from16 v0, v39

    #@223
    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@225
    move-object/from16 v0, v39

    #@227
    iget v12, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    #@229
    const/4 v10, 0x0

    #@22a
    const/4 v11, 0x0

    #@22b
    .line 763
    invoke-static/range {v4 .. v12}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    #@22e
    .line 768
    const/4 v4, 0x0

    #@22f
    move-object/from16 v0, v39

    #@231
    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@233
    .line 778
    :cond_d
    :goto_5
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->cancelBroadcastTimeoutLocked()V

    #@236
    .line 784
    move-object/from16 v0, p0

    #@238
    move-object/from16 v1, v39

    #@23a
    invoke-direct {v0, v1}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    #@23d
    .line 785
    move-object/from16 v0, p0

    #@23f
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@241
    const/4 v6, 0x0

    #@242
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@245
    .line 786
    const/16 v39, 0x0

    #@247
    .line 787
    .local v39, "r":Lcom/android/server/am/BroadcastRecord;
    const/16 v31, 0x1

    #@249
    .line 790
    .end local v39    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_e
    if-eqz v39, :cond_6

    #@24b
    .line 793
    move-object/from16 v0, v39

    #@24d
    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@24f
    move/from16 v40, v0

    #@251
    add-int/lit8 v4, v40, 0x1

    #@253
    move-object/from16 v0, v39

    #@255
    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@257
    .line 797
    .local v40, "recIdx":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@25a
    move-result-wide v6

    #@25b
    move-object/from16 v0, v39

    #@25d
    iput-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    #@25f
    .line 798
    if-nez v40, :cond_f

    #@261
    .line 799
    move-object/from16 v0, v39

    #@263
    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    #@265
    move-object/from16 v0, v39

    #@267
    iput-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    #@269
    .line 800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@26c
    move-result-wide v6

    #@26d
    move-object/from16 v0, v39

    #@26f
    iput-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    #@271
    .line 804
    :cond_f
    move-object/from16 v0, p0

    #@273
    iget-boolean v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    #@275
    if-nez v4, :cond_10

    #@277
    .line 805
    move-object/from16 v0, v39

    #@279
    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    #@27b
    move-object/from16 v0, p0

    #@27d
    iget-wide v8, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    #@27f
    add-long v46, v6, v8

    #@281
    .line 809
    .local v46, "timeoutTime":J
    move-object/from16 v0, p0

    #@283
    move-wide/from16 v1, v46

    #@285
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    #@288
    .line 812
    .end local v46    # "timeoutTime":J
    :cond_10
    move-object/from16 v0, v39

    #@28a
    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    #@28c
    move-object/from16 v17, v0

    #@28e
    .line 813
    .local v17, "brOptions":Landroid/app/BroadcastOptions;
    move-object/from16 v0, v39

    #@290
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@292
    move/from16 v0, v40

    #@294
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@297
    move-result-object v32

    #@298
    .line 815
    .local v32, "nextReceiver":Ljava/lang/Object;
    move-object/from16 v0, v32

    #@29a
    instance-of v4, v0, Lcom/android/server/am/BroadcastFilter;

    #@29c
    if-eqz v4, :cond_14

    #@29e
    .line 818
    move-object/from16 v0, v32

    #@2a0
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    #@2a2
    move-object/from16 v24, v0

    #@2a4
    .line 823
    .local v24, "filter":Lcom/android/server/am/BroadcastFilter;
    move-object/from16 v0, v39

    #@2a6
    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    #@2a8
    move-object/from16 v0, p0

    #@2aa
    move-object/from16 v1, v39

    #@2ac
    move-object/from16 v2, v24

    #@2ae
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;Z)V

    #@2b1
    .line 824
    move-object/from16 v0, v39

    #@2b3
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@2b5
    if-eqz v4, :cond_13

    #@2b7
    move-object/from16 v0, v39

    #@2b9
    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    #@2bb
    if-eqz v4, :cond_13

    #@2bd
    .line 833
    if-eqz v17, :cond_11

    #@2bf
    invoke-virtual/range {v17 .. v17}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    #@2c2
    move-result-wide v6

    #@2c3
    const-wide/16 v8, 0x0

    #@2c5
    cmp-long v4, v6, v8

    #@2c7
    if-lez v4, :cond_11

    #@2c9
    .line 834
    move-object/from16 v0, v24

    #@2cb
    iget v4, v0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    #@2cd
    .line 835
    invoke-virtual/range {v17 .. v17}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    #@2d0
    move-result-wide v6

    #@2d1
    .line 834
    move-object/from16 v0, p0

    #@2d3
    move-object/from16 v1, v39

    #@2d5
    invoke-virtual {v0, v4, v6, v7, v1}, Lcom/android/server/am/BroadcastQueue;->scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@2d8
    :cond_11
    :goto_6
    monitor-exit v45

    #@2d9
    .line 838
    return-void

    #@2da
    .line 755
    .end local v17    # "brOptions":Landroid/app/BroadcastOptions;
    .end local v24    # "filter":Lcom/android/server/am/BroadcastFilter;
    .end local v32    # "nextReceiver":Ljava/lang/Object;
    .end local v40    # "recIdx":I
    .local v39, "r":Lcom/android/server/am/BroadcastRecord;
    :cond_12
    :try_start_9
    move-object/from16 v0, v39

    #@2dc
    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@2de
    .line 754
    if-nez v4, :cond_c

    #@2e0
    if-eqz v25, :cond_e

    #@2e2
    goto/16 :goto_4

    #@2e4
    .line 769
    :catch_0
    move-exception v19

    #@2e5
    .line 770
    .local v19, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    #@2e6
    move-object/from16 v0, v39

    #@2e8
    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    #@2ea
    .line 771
    const-string/jumbo v4, "BroadcastQueue"

    #@2ed
    new-instance v6, Ljava/lang/StringBuilder;

    #@2ef
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2f2
    const-string/jumbo v7, "Failure ["

    #@2f5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f8
    move-result-object v6

    #@2f9
    .line 772
    move-object/from16 v0, p0

    #@2fb
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@2fd
    .line 771
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@300
    move-result-object v6

    #@301
    .line 772
    const-string/jumbo v7, "] sending broadcast result of "

    #@304
    .line 771
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@307
    move-result-object v6

    #@308
    .line 773
    move-object/from16 v0, v39

    #@30a
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@30c
    .line 771
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30f
    move-result-object v6

    #@310
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@313
    move-result-object v6

    #@314
    move-object/from16 v0, v19

    #@316
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@319
    goto/16 :goto_5

    #@31b
    .line 830
    .end local v19    # "e":Landroid/os/RemoteException;
    .end local v39    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v17    # "brOptions":Landroid/app/BroadcastOptions;
    .restart local v24    # "filter":Lcom/android/server/am/BroadcastFilter;
    .restart local v32    # "nextReceiver":Ljava/lang/Object;
    .restart local v40    # "recIdx":I
    :cond_13
    const/4 v4, 0x0

    #@31c
    move-object/from16 v0, v39

    #@31e
    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@320
    .line 831
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    #@323
    goto :goto_6

    #@324
    .line 845
    .end local v24    # "filter":Lcom/android/server/am/BroadcastFilter;
    :cond_14
    move-object/from16 v0, v32

    #@326
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@328
    move-object/from16 v27, v0

    #@32a
    .line 846
    .local v27, "info":Landroid/content/pm/ResolveInfo;
    new-instance v18, Landroid/content/ComponentName;

    #@32c
    .line 847
    move-object/from16 v0, v27

    #@32e
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@330
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@332
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@334
    .line 848
    move-object/from16 v0, v27

    #@336
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@338
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@33a
    .line 846
    move-object/from16 v0, v18

    #@33c
    invoke-direct {v0, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@33f
    .line 850
    .local v18, "component":Landroid/content/ComponentName;
    const/16 v43, 0x0

    #@341
    .line 851
    .local v43, "skip":Z
    move-object/from16 v0, p0

    #@343
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@345
    move-object/from16 v0, v27

    #@347
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@349
    iget-object v5, v6, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@34b
    .line 852
    move-object/from16 v0, v39

    #@34d
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@34f
    move-object/from16 v0, v39

    #@351
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@353
    move-object/from16 v0, v27

    #@355
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@357
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@359
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@35b
    .line 853
    move-object/from16 v0, v27

    #@35d
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@35f
    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    #@361
    .line 851
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    #@364
    move-result v37

    #@365
    .line 854
    .local v37, "perm":I
    if-eqz v37, :cond_1d

    #@367
    .line 855
    move-object/from16 v0, v27

    #@369
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@36b
    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    #@36d
    if-nez v4, :cond_1c

    #@36f
    .line 856
    const-string/jumbo v4, "BroadcastQueue"

    #@372
    new-instance v6, Ljava/lang/StringBuilder;

    #@374
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@377
    const-string/jumbo v7, "Permission Denial: broadcasting "

    #@37a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37d
    move-result-object v6

    #@37e
    .line 857
    move-object/from16 v0, v39

    #@380
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@382
    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@385
    move-result-object v7

    #@386
    .line 856
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@389
    move-result-object v6

    #@38a
    .line 858
    const-string/jumbo v7, " from "

    #@38d
    .line 856
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@390
    move-result-object v6

    #@391
    .line 858
    move-object/from16 v0, v39

    #@393
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@395
    .line 856
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@398
    move-result-object v6

    #@399
    .line 858
    const-string/jumbo v7, " (pid="

    #@39c
    .line 856
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39f
    move-result-object v6

    #@3a0
    .line 858
    move-object/from16 v0, v39

    #@3a2
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@3a4
    .line 856
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a7
    move-result-object v6

    #@3a8
    .line 859
    const-string/jumbo v7, ", uid="

    #@3ab
    .line 856
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ae
    move-result-object v6

    #@3af
    .line 859
    move-object/from16 v0, v39

    #@3b1
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@3b3
    .line 856
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b6
    move-result-object v6

    #@3b7
    .line 859
    const-string/jumbo v7, ")"

    #@3ba
    .line 856
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bd
    move-result-object v6

    #@3be
    .line 860
    const-string/jumbo v7, " is not exported from uid "

    #@3c1
    .line 856
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c4
    move-result-object v6

    #@3c5
    .line 860
    move-object/from16 v0, v27

    #@3c7
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3c9
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3cb
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@3cd
    .line 856
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d0
    move-result-object v6

    #@3d1
    .line 861
    const-string/jumbo v7, " due to receiver "

    #@3d4
    .line 856
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d7
    move-result-object v6

    #@3d8
    .line 861
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@3db
    move-result-object v7

    #@3dc
    .line 856
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3df
    move-result-object v6

    #@3e0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e3
    move-result-object v6

    #@3e4
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e7
    .line 870
    :goto_7
    const/16 v43, 0x1

    #@3e9
    .line 887
    :cond_15
    :goto_8
    if-nez v43, :cond_16

    #@3eb
    move-object/from16 v0, v27

    #@3ed
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3ef
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3f1
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@3f3
    const/16 v6, 0x3e8

    #@3f5
    if-eq v4, v6, :cond_16

    #@3f7
    .line 888
    move-object/from16 v0, v39

    #@3f9
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@3fb
    if-eqz v4, :cond_16

    #@3fd
    move-object/from16 v0, v39

    #@3ff
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@401
    array-length v4, v4

    #@402
    if-lez v4, :cond_16

    #@404
    .line 889
    const/16 v26, 0x0

    #@406
    .restart local v26    # "i":I
    :goto_9
    move-object/from16 v0, v39

    #@408
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@40a
    array-length v4, v4

    #@40b
    move/from16 v0, v26

    #@40d
    if-ge v0, v4, :cond_16

    #@40f
    .line 890
    move-object/from16 v0, v39

    #@411
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@413
    aget-object v42, v4, v26
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@415
    .line 892
    .local v42, "requiredPermission":Ljava/lang/String;
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@418
    move-result-object v4

    #@419
    .line 894
    move-object/from16 v0, v27

    #@41b
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@41d
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@41f
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@421
    .line 896
    move-object/from16 v0, v27

    #@423
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@425
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@427
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@429
    .line 895
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    #@42c
    move-result v7

    #@42d
    .line 892
    move-object/from16 v0, v42

    #@42f
    invoke-interface {v4, v0, v6, v7}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@432
    move-result v37

    #@433
    .line 900
    :goto_a
    if-eqz v37, :cond_1e

    #@435
    .line 901
    :try_start_b
    const-string/jumbo v4, "BroadcastQueue"

    #@438
    new-instance v6, Ljava/lang/StringBuilder;

    #@43a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@43d
    const-string/jumbo v7, "Permission Denial: receiving "

    #@440
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@443
    move-result-object v6

    #@444
    .line 902
    move-object/from16 v0, v39

    #@446
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@448
    .line 901
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44b
    move-result-object v6

    #@44c
    .line 902
    const-string/jumbo v7, " to "

    #@44f
    .line 901
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@452
    move-result-object v6

    #@453
    .line 903
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@456
    move-result-object v7

    #@457
    .line 901
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45a
    move-result-object v6

    #@45b
    .line 904
    const-string/jumbo v7, " requires "

    #@45e
    .line 901
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@461
    move-result-object v6

    #@462
    move-object/from16 v0, v42

    #@464
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@467
    move-result-object v6

    #@468
    .line 905
    const-string/jumbo v7, " due to sender "

    #@46b
    .line 901
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46e
    move-result-object v6

    #@46f
    .line 905
    move-object/from16 v0, v39

    #@471
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@473
    .line 901
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@476
    move-result-object v6

    #@477
    .line 906
    const-string/jumbo v7, " (uid "

    #@47a
    .line 901
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47d
    move-result-object v6

    #@47e
    .line 906
    move-object/from16 v0, v39

    #@480
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@482
    .line 901
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@485
    move-result-object v6

    #@486
    .line 906
    const-string/jumbo v7, ")"

    #@489
    .line 901
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48c
    move-result-object v6

    #@48d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@490
    move-result-object v6

    #@491
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@494
    .line 907
    const/16 v43, 0x1

    #@496
    .line 927
    .end local v26    # "i":I
    .end local v42    # "requiredPermission":Ljava/lang/String;
    :cond_16
    :goto_b
    if-nez v43, :cond_17

    #@498
    move-object/from16 v0, v39

    #@49a
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@49c
    const/4 v6, -0x1

    #@49d
    if-eq v4, v6, :cond_17

    #@49f
    .line 928
    move-object/from16 v0, p0

    #@4a1
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4a3
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@4a5
    move-object/from16 v0, v39

    #@4a7
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@4a9
    .line 929
    move-object/from16 v0, v27

    #@4ab
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4ad
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4af
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@4b1
    move-object/from16 v0, v27

    #@4b3
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4b5
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@4b7
    .line 928
    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@4ba
    move-result v4

    #@4bb
    if-eqz v4, :cond_17

    #@4bd
    .line 931
    const-string/jumbo v4, "BroadcastQueue"

    #@4c0
    new-instance v6, Ljava/lang/StringBuilder;

    #@4c2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4c5
    const-string/jumbo v7, "Appop Denial: receiving "

    #@4c8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4cb
    move-result-object v6

    #@4cc
    .line 932
    move-object/from16 v0, v39

    #@4ce
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@4d0
    .line 931
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d3
    move-result-object v6

    #@4d4
    .line 932
    const-string/jumbo v7, " to "

    #@4d7
    .line 931
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4da
    move-result-object v6

    #@4db
    .line 933
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@4de
    move-result-object v7

    #@4df
    .line 931
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e2
    move-result-object v6

    #@4e3
    .line 934
    const-string/jumbo v7, " requires appop "

    #@4e6
    .line 931
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e9
    move-result-object v6

    #@4ea
    .line 934
    move-object/from16 v0, v39

    #@4ec
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@4ee
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@4f1
    move-result-object v7

    #@4f2
    .line 931
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f5
    move-result-object v6

    #@4f6
    .line 935
    const-string/jumbo v7, " due to sender "

    #@4f9
    .line 931
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fc
    move-result-object v6

    #@4fd
    .line 935
    move-object/from16 v0, v39

    #@4ff
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@501
    .line 931
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@504
    move-result-object v6

    #@505
    .line 936
    const-string/jumbo v7, " (uid "

    #@508
    .line 931
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50b
    move-result-object v6

    #@50c
    .line 936
    move-object/from16 v0, v39

    #@50e
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@510
    .line 931
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@513
    move-result-object v6

    #@514
    .line 936
    const-string/jumbo v7, ")"

    #@517
    .line 931
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51a
    move-result-object v6

    #@51b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51e
    move-result-object v6

    #@51f
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@522
    .line 937
    const/16 v43, 0x1

    #@524
    .line 939
    :cond_17
    if-nez v43, :cond_18

    #@526
    .line 940
    move-object/from16 v0, p0

    #@528
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@52a
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    #@52c
    move-object/from16 v0, v39

    #@52e
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@530
    move-object/from16 v0, v39

    #@532
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@534
    .line 941
    move-object/from16 v0, v39

    #@536
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@538
    move-object/from16 v0, v39

    #@53a
    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    #@53c
    move-object/from16 v0, v27

    #@53e
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@540
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@542
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@544
    .line 940
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@547
    move-result v4

    #@548
    if-eqz v4, :cond_20

    #@54a
    const/16 v43, 0x0

    #@54c
    .line 943
    :cond_18
    :goto_c
    const/16 v30, 0x0

    #@54e
    .line 945
    .local v30, "isSingleton":Z
    :try_start_c
    move-object/from16 v0, p0

    #@550
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@552
    move-object/from16 v0, v27

    #@554
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@556
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@558
    .line 946
    move-object/from16 v0, v27

    #@55a
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@55c
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@55e
    .line 947
    move-object/from16 v0, v27

    #@560
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@562
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@564
    move-object/from16 v0, v27

    #@566
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@568
    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    #@56a
    .line 945
    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@56d
    move-result v30

    #@56e
    .line 952
    .end local v30    # "isSingleton":Z
    :goto_d
    :try_start_d
    move-object/from16 v0, v27

    #@570
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@572
    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@574
    const/high16 v6, 0x40000000    # 2.0f

    #@576
    and-int/2addr v4, v6

    #@577
    if-eqz v4, :cond_19

    #@579
    .line 954
    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS"

    #@57c
    .line 955
    move-object/from16 v0, v27

    #@57e
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@580
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@582
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@584
    .line 953
    invoke-static {v4, v6}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    #@587
    move-result v4

    #@588
    if-eqz v4, :cond_19

    #@58a
    .line 957
    const-string/jumbo v4, "BroadcastQueue"

    #@58d
    new-instance v6, Ljava/lang/StringBuilder;

    #@58f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@592
    const-string/jumbo v7, "Permission Denial: Receiver "

    #@595
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@598
    move-result-object v6

    #@599
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@59c
    move-result-object v7

    #@59d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a0
    move-result-object v6

    #@5a1
    .line 958
    const-string/jumbo v7, " requests FLAG_SINGLE_USER, but app does not hold "

    #@5a4
    .line 957
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a7
    move-result-object v6

    #@5a8
    .line 959
    const-string/jumbo v7, "android.permission.INTERACT_ACROSS_USERS"

    #@5ab
    .line 957
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ae
    move-result-object v6

    #@5af
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b2
    move-result-object v6

    #@5b3
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5b6
    .line 960
    const/16 v43, 0x1

    #@5b8
    .line 963
    :cond_19
    move-object/from16 v0, v39

    #@5ba
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@5bc
    if-eqz v4, :cond_1a

    #@5be
    move-object/from16 v0, v39

    #@5c0
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@5c2
    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@5c4
    if-eqz v4, :cond_1a

    #@5c6
    .line 965
    const-string/jumbo v4, "BroadcastQueue"

    #@5c9
    new-instance v6, Ljava/lang/StringBuilder;

    #@5cb
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5ce
    const-string/jumbo v7, "Skipping deliver ordered ["

    #@5d1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d4
    move-result-object v6

    #@5d5
    move-object/from16 v0, p0

    #@5d7
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@5d9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5dc
    move-result-object v6

    #@5dd
    const-string/jumbo v7, "] "

    #@5e0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e3
    move-result-object v6

    #@5e4
    move-object/from16 v0, v39

    #@5e6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e9
    move-result-object v6

    #@5ea
    .line 966
    const-string/jumbo v7, " to "

    #@5ed
    .line 965
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f0
    move-result-object v6

    #@5f1
    .line 966
    move-object/from16 v0, v39

    #@5f3
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@5f5
    .line 965
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f8
    move-result-object v6

    #@5f9
    .line 966
    const-string/jumbo v7, ": process crashing"

    #@5fc
    .line 965
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ff
    move-result-object v6

    #@600
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@603
    move-result-object v6

    #@604
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@607
    .line 967
    const/16 v43, 0x1

    #@609
    .line 969
    :cond_1a
    if-nez v43, :cond_1b

    #@60b
    .line 970
    const/16 v28, 0x0

    #@60d
    .line 972
    .local v28, "isAvailable":Z
    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@610
    move-result-object v4

    #@611
    .line 973
    move-object/from16 v0, v27

    #@613
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@615
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@617
    .line 974
    move-object/from16 v0, v27

    #@619
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@61b
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@61d
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@61f
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    #@622
    move-result v7

    #@623
    .line 972
    invoke-interface {v4, v6, v7}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@626
    move-result v28

    #@627
    .line 980
    .end local v28    # "isAvailable":Z
    :goto_e
    if-nez v28, :cond_1b

    #@629
    .line 985
    const/16 v43, 0x1

    #@62b
    .line 989
    :cond_1b
    if-eqz v43, :cond_21

    #@62d
    .line 993
    const/4 v4, 0x0

    #@62e
    :try_start_f
    move-object/from16 v0, v39

    #@630
    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@632
    .line 994
    const/4 v4, 0x0

    #@633
    move-object/from16 v0, v39

    #@635
    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    #@637
    .line 995
    const/4 v4, 0x0

    #@638
    move-object/from16 v0, v39

    #@63a
    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@63c
    .line 996
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@63f
    monitor-exit v45

    #@640
    .line 997
    return-void

    #@641
    .line 863
    :cond_1c
    :try_start_10
    const-string/jumbo v4, "BroadcastQueue"

    #@644
    new-instance v6, Ljava/lang/StringBuilder;

    #@646
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@649
    const-string/jumbo v7, "Permission Denial: broadcasting "

    #@64c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64f
    move-result-object v6

    #@650
    .line 864
    move-object/from16 v0, v39

    #@652
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@654
    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@657
    move-result-object v7

    #@658
    .line 863
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65b
    move-result-object v6

    #@65c
    .line 865
    const-string/jumbo v7, " from "

    #@65f
    .line 863
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@662
    move-result-object v6

    #@663
    .line 865
    move-object/from16 v0, v39

    #@665
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@667
    .line 863
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66a
    move-result-object v6

    #@66b
    .line 865
    const-string/jumbo v7, " (pid="

    #@66e
    .line 863
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@671
    move-result-object v6

    #@672
    .line 865
    move-object/from16 v0, v39

    #@674
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@676
    .line 863
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@679
    move-result-object v6

    #@67a
    .line 866
    const-string/jumbo v7, ", uid="

    #@67d
    .line 863
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@680
    move-result-object v6

    #@681
    .line 866
    move-object/from16 v0, v39

    #@683
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@685
    .line 863
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@688
    move-result-object v6

    #@689
    .line 866
    const-string/jumbo v7, ")"

    #@68c
    .line 863
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68f
    move-result-object v6

    #@690
    .line 867
    const-string/jumbo v7, " requires "

    #@693
    .line 863
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@696
    move-result-object v6

    #@697
    .line 867
    move-object/from16 v0, v27

    #@699
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@69b
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@69d
    .line 863
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a0
    move-result-object v6

    #@6a1
    .line 868
    const-string/jumbo v7, " due to receiver "

    #@6a4
    .line 863
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a7
    move-result-object v6

    #@6a8
    .line 868
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@6ab
    move-result-object v7

    #@6ac
    .line 863
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6af
    move-result-object v6

    #@6b0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b3
    move-result-object v6

    #@6b4
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6b7
    goto/16 :goto_7

    #@6b9
    .line 871
    :cond_1d
    move-object/from16 v0, v27

    #@6bb
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6bd
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@6bf
    if-eqz v4, :cond_15

    #@6c1
    .line 872
    move-object/from16 v0, v27

    #@6c3
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6c5
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@6c7
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@6ca
    move-result v36

    #@6cb
    .line 873
    .local v36, "opCode":I
    const/4 v4, -0x1

    #@6cc
    move/from16 v0, v36

    #@6ce
    if-eq v0, v4, :cond_15

    #@6d0
    .line 874
    move-object/from16 v0, p0

    #@6d2
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6d4
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@6d6
    move-object/from16 v0, v39

    #@6d8
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@6da
    .line 875
    move-object/from16 v0, v39

    #@6dc
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@6de
    .line 874
    move/from16 v0, v36

    #@6e0
    invoke-virtual {v4, v0, v6, v7}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@6e3
    move-result v4

    #@6e4
    if-eqz v4, :cond_15

    #@6e6
    .line 876
    const-string/jumbo v4, "BroadcastQueue"

    #@6e9
    new-instance v6, Ljava/lang/StringBuilder;

    #@6eb
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6ee
    const-string/jumbo v7, "Appop Denial: broadcasting "

    #@6f1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f4
    move-result-object v6

    #@6f5
    .line 877
    move-object/from16 v0, v39

    #@6f7
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@6f9
    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@6fc
    move-result-object v7

    #@6fd
    .line 876
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@700
    move-result-object v6

    #@701
    .line 878
    const-string/jumbo v7, " from "

    #@704
    .line 876
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@707
    move-result-object v6

    #@708
    .line 878
    move-object/from16 v0, v39

    #@70a
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@70c
    .line 876
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70f
    move-result-object v6

    #@710
    .line 878
    const-string/jumbo v7, " (pid="

    #@713
    .line 876
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@716
    move-result-object v6

    #@717
    .line 879
    move-object/from16 v0, v39

    #@719
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@71b
    .line 876
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71e
    move-result-object v6

    #@71f
    .line 879
    const-string/jumbo v7, ", uid="

    #@722
    .line 876
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@725
    move-result-object v6

    #@726
    .line 879
    move-object/from16 v0, v39

    #@728
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@72a
    .line 876
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72d
    move-result-object v6

    #@72e
    .line 879
    const-string/jumbo v7, ")"

    #@731
    .line 876
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@734
    move-result-object v6

    #@735
    .line 880
    const-string/jumbo v7, " requires appop "

    #@738
    .line 876
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73b
    move-result-object v6

    #@73c
    .line 881
    move-object/from16 v0, v27

    #@73e
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@740
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@742
    .line 880
    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    #@745
    move-result-object v7

    #@746
    .line 876
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@749
    move-result-object v6

    #@74a
    .line 882
    const-string/jumbo v7, " due to registered receiver "

    #@74d
    .line 876
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@750
    move-result-object v6

    #@751
    .line 883
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@754
    move-result-object v7

    #@755
    .line 876
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@758
    move-result-object v6

    #@759
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75c
    move-result-object v6

    #@75d
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@760
    .line 884
    const/16 v43, 0x1

    #@762
    goto/16 :goto_8

    #@764
    .line 897
    .end local v36    # "opCode":I
    .restart local v26    # "i":I
    .restart local v42    # "requiredPermission":Ljava/lang/String;
    :catch_1
    move-exception v19

    #@765
    .line 898
    .restart local v19    # "e":Landroid/os/RemoteException;
    const/16 v37, -0x1

    #@767
    goto/16 :goto_a

    #@769
    .line 910
    .end local v19    # "e":Landroid/os/RemoteException;
    :cond_1e
    invoke-static/range {v42 .. v42}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@76c
    move-result v16

    #@76d
    .line 911
    .local v16, "appOp":I
    const/4 v4, -0x1

    #@76e
    move/from16 v0, v16

    #@770
    if-eq v0, v4, :cond_1f

    #@772
    move-object/from16 v0, v39

    #@774
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@776
    move/from16 v0, v16

    #@778
    if-eq v0, v4, :cond_1f

    #@77a
    .line 912
    move-object/from16 v0, p0

    #@77c
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@77e
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@780
    .line 913
    move-object/from16 v0, v27

    #@782
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@784
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@786
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@788
    move-object/from16 v0, v27

    #@78a
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@78c
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@78e
    .line 912
    move/from16 v0, v16

    #@790
    invoke-virtual {v4, v0, v6, v7}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@793
    move-result v4

    #@794
    if-eqz v4, :cond_1f

    #@796
    .line 915
    const-string/jumbo v4, "BroadcastQueue"

    #@799
    new-instance v6, Ljava/lang/StringBuilder;

    #@79b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@79e
    const-string/jumbo v7, "Appop Denial: receiving "

    #@7a1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a4
    move-result-object v6

    #@7a5
    .line 916
    move-object/from16 v0, v39

    #@7a7
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@7a9
    .line 915
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7ac
    move-result-object v6

    #@7ad
    .line 916
    const-string/jumbo v7, " to "

    #@7b0
    .line 915
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b3
    move-result-object v6

    #@7b4
    .line 917
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@7b7
    move-result-object v7

    #@7b8
    .line 915
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7bb
    move-result-object v6

    #@7bc
    .line 918
    const-string/jumbo v7, " requires appop "

    #@7bf
    .line 915
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c2
    move-result-object v6

    #@7c3
    .line 918
    invoke-static/range {v42 .. v42}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    #@7c6
    move-result-object v7

    #@7c7
    .line 915
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7ca
    move-result-object v6

    #@7cb
    .line 920
    const-string/jumbo v7, " due to sender "

    #@7ce
    .line 915
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d1
    move-result-object v6

    #@7d2
    .line 920
    move-object/from16 v0, v39

    #@7d4
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@7d6
    .line 915
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d9
    move-result-object v6

    #@7da
    .line 921
    const-string/jumbo v7, " (uid "

    #@7dd
    .line 915
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e0
    move-result-object v6

    #@7e1
    .line 921
    move-object/from16 v0, v39

    #@7e3
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@7e5
    .line 915
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e8
    move-result-object v6

    #@7e9
    .line 921
    const-string/jumbo v7, ")"

    #@7ec
    .line 915
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7ef
    move-result-object v6

    #@7f0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f3
    move-result-object v6

    #@7f4
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7f7
    .line 922
    const/16 v43, 0x1

    #@7f9
    .line 923
    goto/16 :goto_b

    #@7fb
    .line 889
    :cond_1f
    add-int/lit8 v26, v26, 0x1

    #@7fd
    goto/16 :goto_9

    #@7ff
    .line 940
    .end local v16    # "appOp":I
    .end local v26    # "i":I
    .end local v42    # "requiredPermission":Ljava/lang/String;
    :cond_20
    const/16 v43, 0x1

    #@801
    goto/16 :goto_c

    #@803
    .line 948
    .restart local v30    # "isSingleton":Z
    :catch_2
    move-exception v23

    #@804
    .line 949
    .local v23, "e":Ljava/lang/SecurityException;
    const-string/jumbo v4, "BroadcastQueue"

    #@807
    invoke-virtual/range {v23 .. v23}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@80a
    move-result-object v6

    #@80b
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@80e
    .line 950
    const/16 v43, 0x1

    #@810
    goto/16 :goto_d

    #@812
    .line 975
    .end local v23    # "e":Ljava/lang/SecurityException;
    .end local v30    # "isSingleton":Z
    .restart local v28    # "isAvailable":Z
    :catch_3
    move-exception v20

    #@813
    .line 977
    .local v20, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BroadcastQueue"

    #@816
    new-instance v6, Ljava/lang/StringBuilder;

    #@818
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@81b
    const-string/jumbo v7, "Exception getting recipient info for "

    #@81e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@821
    move-result-object v6

    #@822
    .line 978
    move-object/from16 v0, v27

    #@824
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@826
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@828
    .line 977
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82b
    move-result-object v6

    #@82c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82f
    move-result-object v6

    #@830
    move-object/from16 v0, v20

    #@832
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@835
    goto/16 :goto_e

    #@837
    .line 1000
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v28    # "isAvailable":Z
    :cond_21
    const/4 v4, 0x1

    #@838
    move-object/from16 v0, v39

    #@83a
    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@83c
    .line 1001
    move-object/from16 v0, v27

    #@83e
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@840
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@842
    .line 1002
    .local v5, "targetProcess":Ljava/lang/String;
    move-object/from16 v0, v18

    #@844
    move-object/from16 v1, v39

    #@846
    iput-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@848
    .line 1003
    move-object/from16 v0, v27

    #@84a
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@84c
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@84e
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@850
    move/from16 v41, v0

    #@852
    .line 1005
    .local v41, "receiverUid":I
    move-object/from16 v0, v39

    #@854
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@856
    const/16 v6, 0x3e8

    #@858
    if-eq v4, v6, :cond_22

    #@85a
    if-eqz v30, :cond_22

    #@85c
    .line 1006
    move-object/from16 v0, p0

    #@85e
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@860
    move-object/from16 v0, v39

    #@862
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@864
    move/from16 v0, v41

    #@866
    invoke-virtual {v4, v6, v0}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    #@869
    move-result v4

    #@86a
    .line 1005
    if-eqz v4, :cond_22

    #@86c
    .line 1007
    move-object/from16 v0, p0

    #@86e
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@870
    move-object/from16 v0, v27

    #@872
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@874
    const/4 v7, 0x0

    #@875
    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    #@878
    move-result-object v4

    #@879
    move-object/from16 v0, v27

    #@87b
    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@87d
    .line 1009
    :cond_22
    move-object/from16 v0, v27

    #@87f
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@881
    move-object/from16 v0, v39

    #@883
    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@885
    .line 1016
    if-eqz v17, :cond_23

    #@887
    invoke-virtual/range {v17 .. v17}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    #@88a
    move-result-wide v6

    #@88b
    const-wide/16 v8, 0x0

    #@88d
    cmp-long v4, v6, v8

    #@88f
    if-lez v4, :cond_23

    #@891
    .line 1018
    invoke-virtual/range {v17 .. v17}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    #@894
    move-result-wide v6

    #@895
    .line 1017
    move-object/from16 v0, p0

    #@897
    move/from16 v1, v41

    #@899
    move-object/from16 v2, v39

    #@89b
    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/android/server/am/BroadcastQueue;->scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@89e
    .line 1023
    :cond_23
    :try_start_11
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@8a1
    move-result-object v4

    #@8a2
    .line 1024
    move-object/from16 v0, v39

    #@8a4
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@8a6
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@8a9
    move-result-object v6

    #@8aa
    move-object/from16 v0, v39

    #@8ac
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@8ae
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    #@8b1
    move-result v7

    #@8b2
    const/4 v8, 0x0

    #@8b3
    .line 1023
    invoke-interface {v4, v6, v8, v7}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@8b6
    .line 1032
    :goto_f
    :try_start_12
    move-object/from16 v0, p0

    #@8b8
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@8ba
    .line 1033
    move-object/from16 v0, v27

    #@8bc
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@8be
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8c0
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@8c2
    const/4 v7, 0x0

    #@8c3
    .line 1032
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    #@8c6
    move-result-object v15

    #@8c7
    .line 1034
    .local v15, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v15, :cond_24

    #@8c9
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    #@8cb
    if-eqz v4, :cond_24

    #@8cd
    .line 1036
    :try_start_13
    move-object/from16 v0, v27

    #@8cf
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@8d1
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@8d3
    .line 1037
    move-object/from16 v0, v27

    #@8d5
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@8d7
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8d9
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@8db
    move-object/from16 v0, p0

    #@8dd
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@8df
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@8e1
    .line 1036
    invoke-virtual {v15, v4, v6, v7}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    #@8e4
    .line 1038
    move-object/from16 v0, p0

    #@8e6
    move-object/from16 v1, v39

    #@8e8
    invoke-direct {v0, v1, v15}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@8eb
    monitor-exit v45

    #@8ec
    .line 1039
    return-void

    #@8ed
    .line 1026
    .end local v15    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_4
    move-exception v21

    #@8ee
    .line 1027
    .local v21, "e":Ljava/lang/IllegalArgumentException;
    :try_start_14
    const-string/jumbo v4, "BroadcastQueue"

    #@8f1
    new-instance v6, Ljava/lang/StringBuilder;

    #@8f3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8f6
    const-string/jumbo v7, "Failed trying to unstop package "

    #@8f9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8fc
    move-result-object v6

    #@8fd
    .line 1028
    move-object/from16 v0, v39

    #@8ff
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@901
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@904
    move-result-object v7

    #@905
    .line 1027
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@908
    move-result-object v6

    #@909
    .line 1028
    const-string/jumbo v7, ": "

    #@90c
    .line 1027
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90f
    move-result-object v6

    #@910
    move-object/from16 v0, v21

    #@912
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@915
    move-result-object v6

    #@916
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@919
    move-result-object v6

    #@91a
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@91d
    goto :goto_f

    #@91e
    .line 1043
    .end local v21    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v15    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_5
    move-exception v22

    #@91f
    .line 1044
    .local v22, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "BroadcastQueue"

    #@922
    new-instance v6, Ljava/lang/StringBuilder;

    #@924
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@927
    const-string/jumbo v7, "Failed sending broadcast to "

    #@92a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92d
    move-result-object v6

    #@92e
    .line 1045
    move-object/from16 v0, v39

    #@930
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@932
    .line 1044
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@935
    move-result-object v6

    #@936
    .line 1045
    const-string/jumbo v7, " with "

    #@939
    .line 1044
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93c
    move-result-object v6

    #@93d
    .line 1045
    move-object/from16 v0, v39

    #@93f
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@941
    .line 1044
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@944
    move-result-object v6

    #@945
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@948
    move-result-object v6

    #@949
    move-object/from16 v0, v22

    #@94b
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@94e
    .line 1051
    move-object/from16 v0, p0

    #@950
    move-object/from16 v1, v39

    #@952
    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    #@955
    .line 1052
    move-object/from16 v0, v39

    #@957
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@959
    move-object/from16 v0, v39

    #@95b
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@95d
    .line 1053
    move-object/from16 v0, v39

    #@95f
    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@961
    move-object/from16 v0, v39

    #@963
    iget-boolean v9, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@965
    const/4 v10, 0x0

    #@966
    move-object/from16 v4, p0

    #@968
    move-object/from16 v5, v39

    #@96a
    .line 1052
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    #@96d
    .line 1054
    .end local v5    # "targetProcess":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    #@970
    .line 1056
    const/4 v4, 0x0

    #@971
    move-object/from16 v0, v39

    #@973
    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    #@975
    monitor-exit v45

    #@976
    .line 1057
    return-void

    #@977
    .line 1040
    .end local v22    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "targetProcess":Ljava/lang/String;
    :catch_6
    move-exception v19

    #@978
    .line 1041
    .restart local v19    # "e":Landroid/os/RemoteException;
    :try_start_15
    const-string/jumbo v4, "BroadcastQueue"

    #@97b
    new-instance v6, Ljava/lang/StringBuilder;

    #@97d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@980
    const-string/jumbo v7, "Exception when sending broadcast to "

    #@983
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@986
    move-result-object v6

    #@987
    .line 1042
    move-object/from16 v0, v39

    #@989
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@98b
    .line 1041
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@98e
    move-result-object v6

    #@98f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@992
    move-result-object v6

    #@993
    move-object/from16 v0, v19

    #@995
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@998
    .line 1068
    .end local v19    # "e":Landroid/os/RemoteException;
    :cond_24
    move-object/from16 v0, p0

    #@99a
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@99c
    .line 1069
    move-object/from16 v0, v27

    #@99e
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@9a0
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9a2
    .line 1070
    move-object/from16 v0, v39

    #@9a4
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@9a6
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    #@9a9
    move-result v7

    #@9aa
    or-int/lit8 v8, v7, 0x4

    #@9ac
    .line 1071
    const-string/jumbo v9, "broadcast"

    #@9af
    move-object/from16 v0, v39

    #@9b1
    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@9b3
    .line 1072
    move-object/from16 v0, v39

    #@9b5
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@9b7
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    #@9ba
    move-result v7

    #@9bb
    const/high16 v11, 0x2000000

    #@9bd
    and-int/2addr v7, v11

    #@9be
    if-eqz v7, :cond_25

    #@9c0
    const/4 v11, 0x1

    #@9c1
    .line 1069
    :goto_10
    const/4 v7, 0x1

    #@9c2
    .line 1072
    const/4 v12, 0x0

    #@9c3
    const/4 v13, 0x0

    #@9c4
    .line 1068
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    #@9c7
    move-result-object v4

    #@9c8
    move-object/from16 v0, v39

    #@9ca
    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@9cc
    if-nez v4, :cond_26

    #@9ce
    .line 1076
    const-string/jumbo v4, "BroadcastQueue"

    #@9d1
    new-instance v6, Ljava/lang/StringBuilder;

    #@9d3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9d6
    const-string/jumbo v7, "Unable to launch app "

    #@9d9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9dc
    move-result-object v6

    #@9dd
    .line 1077
    move-object/from16 v0, v27

    #@9df
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@9e1
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9e3
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@9e5
    .line 1076
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e8
    move-result-object v6

    #@9e9
    .line 1077
    const-string/jumbo v7, "/"

    #@9ec
    .line 1076
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9ef
    move-result-object v6

    #@9f0
    .line 1078
    move-object/from16 v0, v27

    #@9f2
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@9f4
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9f6
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@9f8
    .line 1076
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9fb
    move-result-object v6

    #@9fc
    .line 1078
    const-string/jumbo v7, " for broadcast "

    #@9ff
    .line 1076
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a02
    move-result-object v6

    #@a03
    .line 1079
    move-object/from16 v0, v39

    #@a05
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@a07
    .line 1076
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a0a
    move-result-object v6

    #@a0b
    .line 1079
    const-string/jumbo v7, ": process is bad"

    #@a0e
    .line 1076
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a11
    move-result-object v6

    #@a12
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a15
    move-result-object v6

    #@a16
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a19
    .line 1080
    move-object/from16 v0, p0

    #@a1b
    move-object/from16 v1, v39

    #@a1d
    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    #@a20
    .line 1081
    move-object/from16 v0, v39

    #@a22
    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@a24
    move-object/from16 v0, v39

    #@a26
    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@a28
    .line 1082
    move-object/from16 v0, v39

    #@a2a
    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@a2c
    move-object/from16 v0, v39

    #@a2e
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@a30
    const/4 v12, 0x0

    #@a31
    move-object/from16 v6, p0

    #@a33
    move-object/from16 v7, v39

    #@a35
    .line 1081
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    #@a38
    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    #@a3b
    .line 1084
    const/4 v4, 0x0

    #@a3c
    move-object/from16 v0, v39

    #@a3e
    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    #@a40
    monitor-exit v45

    #@a41
    .line 1085
    return-void

    #@a42
    .line 1072
    :cond_25
    const/4 v11, 0x0

    #@a43
    goto/16 :goto_10

    #@a45
    .line 1088
    :cond_26
    :try_start_16
    move-object/from16 v0, v39

    #@a47
    move-object/from16 v1, p0

    #@a49
    iput-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@a4b
    .line 1089
    move/from16 v0, v40

    #@a4d
    move-object/from16 v1, p0

    #@a4f
    iput v0, v1, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    #@a51
    monitor-exit v45

    #@a52
    .line 638
    return-void

    #@a53
    .line 1025
    .end local v15    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_7
    move-exception v19

    #@a54
    .restart local v19    # "e":Landroid/os/RemoteException;
    goto/16 :goto_f
.end method

.method public final replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 237
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    #@b
    .line 238
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@d
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    #@15
    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@17
    invoke-virtual {v2, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 242
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 243
    const/4 v1, 0x1

    #@23
    return v1

    #@24
    .line 237
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_0

    #@27
    .line 246
    :cond_1
    return v3
.end method

.method public final replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 224
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 225
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@d
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    #@15
    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@17
    invoke-virtual {v2, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 229
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 230
    const/4 v1, 0x1

    #@23
    return v1

    #@24
    .line 224
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_0

    #@27
    .line 233
    :cond_1
    return v3
.end method

.method public scheduleBroadcastsLocked()V
    .locals 3

    #@0
    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 351
    return-void

    #@5
    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    #@7
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    #@9
    const/16 v2, 0xc8

    #@b
    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessage(Landroid/os/Message;)Z

    #@12
    .line 354
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    #@15
    .line 345
    return-void
.end method

.method final scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "duration"    # J
    .param p4, "r"    # Lcom/android/server/am/BroadcastRecord;

    #@0
    .prologue
    .line 614
    const-wide/32 v2, 0x7fffffff

    #@3
    cmp-long v1, p2, v2

    #@5
    if-lez v1, :cond_0

    #@7
    .line 615
    const-wide/32 p2, 0x7fffffff

    #@a
    .line 623
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    .line 624
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "broadcast:"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 625
    iget v1, p4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@17
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    #@1a
    .line 626
    const-string/jumbo v1, ":"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 627
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@22
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 628
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@2a
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 634
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    #@33
    long-to-int v2, p2

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    const/16 v4, 0xca

    #@3a
    invoke-virtual {v1, v4, p1, v2, v3}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@41
    .line 613
    return-void

    #@42
    .line 629
    :cond_2
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@44
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@47
    move-result-object v1

    #@48
    if-eqz v1, :cond_3

    #@4a
    .line 630
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@4c
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    goto :goto_0

    #@58
    .line 631
    :cond_3
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@5a
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@5d
    move-result-object v1

    #@5e
    if-eqz v1, :cond_1

    #@60
    .line 632
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@62
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    goto :goto_0
.end method

.method public sendPendingBroadcastsLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 291
    const/4 v7, 0x0

    #@2
    .line 292
    .local v7, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@4
    .line 293
    .local v1, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v1, :cond_0

    #@6
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@8
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@a
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    #@c
    if-ne v0, v2, :cond_0

    #@e
    .line 295
    const/4 v0, 0x0

    #@f
    :try_start_0
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@11
    .line 296
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 297
    const/4 v7, 0x1

    #@15
    .line 310
    :cond_0
    return v7

    #@16
    .line 298
    :catch_0
    move-exception v8

    #@17
    .line 299
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "BroadcastQueue"

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Exception in new application when starting receiver "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 300
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@28
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 299
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-static {v0, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    .line 301
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    #@3a
    .line 302
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@3c
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@3e
    .line 303
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@40
    iget-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@42
    move-object v0, p0

    #@43
    .line 302
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    #@46
    .line 304
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    #@49
    .line 306
    iput v6, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    #@4b
    .line 307
    new-instance v0, Ljava/lang/RuntimeException;

    #@4d
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@54
    throw v0
.end method

.method final setBroadcastTimeoutLocked(J)V
    .locals 3
    .param p1, "timeoutTime"    # J

    #@0
    .prologue
    .line 1094
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1095
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    #@6
    const/16 v2, 0xc9

    #@8
    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    .line 1096
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    #@e
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@11
    .line 1097
    const/4 v1, 0x1

    #@12
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    #@14
    .line 1093
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 324
    const/4 v1, 0x0

    #@2
    .line 325
    .local v1, "r":Lcom/android/server/am/BroadcastRecord;
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-lez v0, :cond_0

    #@a
    .line 326
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v7

    #@10
    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    #@12
    .line 327
    .local v7, "br":Lcom/android/server/am/BroadcastRecord;
    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@14
    if-ne v0, p1, :cond_0

    #@16
    .line 328
    move-object v1, v7

    #@17
    .line 331
    .end local v1    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v7    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    if-nez v1, :cond_1

    #@19
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@1f
    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@21
    if-ne v0, p1, :cond_1

    #@23
    .line 334
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@25
    .line 337
    :cond_1
    if-eqz v1, :cond_2

    #@27
    .line 338
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    #@2a
    .line 339
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@2c
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@2e
    .line 340
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@30
    iget-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@32
    move-object v0, p0

    #@33
    .line 339
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    #@36
    .line 341
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    #@39
    .line 323
    :cond_2
    return-void
.end method

.method public skipPendingBroadcastLocked(I)V
    .locals 3
    .param p1, "pid"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 314
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@3
    .line 315
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_0

    #@5
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@7
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    #@9
    if-ne v1, p1, :cond_0

    #@b
    .line 316
    const/4 v1, 0x0

    #@c
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@e
    .line 317
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    #@10
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@12
    .line 318
    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@14
    .line 319
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    #@17
    .line 313
    :cond_0
    return-void
.end method
