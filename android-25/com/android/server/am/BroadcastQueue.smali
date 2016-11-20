.class public final Lcom/android/server/am/BroadcastQueue;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueue$AppNotResponding;,
        Lcom/android/server/am/BroadcastQueue$BroadcastHandler;
    }
.end annotation


# static fields
.field static final BROADCAST_INTENT_MSG:I = 0xc8

.field static final BROADCAST_TIMEOUT_MSG:I = 0xc9

.field static final MAX_BROADCAST_HISTORY:I

.field static final MAX_BROADCAST_SUMMARY_HISTORY:I

.field static final SCHEDULE_TEMP_WHITELIST_MSG:I = 0xca

.field private static final TAG:Ljava/lang/String; = "BroadcastQueue"

.field private static final TAG_BROADCAST:Ljava/lang/String;

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
    .locals 2

    #@0
    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "BroadcastQueue"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_BROADCAST:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/android/server/am/BroadcastQueue;->TAG_BROADCAST:Ljava/lang/String;

    #@18
    .line 67
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    const/16 v0, 0xa

    #@20
    :goto_0
    sput v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    #@22
    .line 69
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_1

    #@28
    const/16 v0, 0x19

    #@2a
    .line 68
    :goto_1
    sput v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    #@2c
    .line 62
    return-void

    #@2d
    .line 67
    :cond_0
    const/16 v0, 0x32

    #@2f
    goto :goto_0

    #@30
    .line 69
    :cond_1
    const/16 v0, 0x12c

    #@32
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
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@b
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@12
    .line 111
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    #@14
    new-array v0, v0, [Lcom/android/server/am/BroadcastRecord;

    #@16
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    #@18
    .line 112
    iput v1, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    #@1a
    .line 118
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    #@1c
    new-array v0, v0, [Landroid/content/Intent;

    #@1e
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    #@20
    .line 119
    iput v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    #@22
    .line 126
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    #@24
    new-array v0, v0, [J

    #@26
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    #@28
    .line 127
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    #@2a
    new-array v0, v0, [J

    #@2c
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    #@2e
    .line 128
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    #@30
    new-array v0, v0, [J

    #@32
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    #@34
    .line 133
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    #@36
    .line 147
    const/4 v0, 0x0

    #@37
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@39
    .line 207
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3b
    .line 208
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
    .line 209
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@48
    .line 210
    iput-wide p4, p0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    #@4a
    .line 211
    iput-boolean p6, p0, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    #@4c
    .line 206
    return-void
.end method

.method private final addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1406
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@3
    if-gez v0, :cond_0

    #@5
    .line 1408
    return-void

    #@6
    .line 1410
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    #@c
    .line 1412
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    #@e
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    #@10
    aput-object p1, v0, v1

    #@12
    .line 1413
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
    .line 1415
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    #@1e
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    #@20
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@22
    aput-object v2, v0, v1

    #@24
    .line 1416
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    #@26
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    #@28
    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    #@2a
    aput-wide v2, v0, v1

    #@2c
    .line 1417
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    #@2e
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    #@30
    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    #@32
    aput-wide v2, v0, v1

    #@34
    .line 1418
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
    .line 1419
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
    .line 1405
    return-void
.end method

.method private deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V
    .locals 21
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p3, "ordered"    # Z
    .param p4, "index"    # I

    #@0
    .prologue
    .line 502
    const/16 v20, 0x0

    #@2
    .line 503
    .local v20, "skip":Z
    move-object/from16 v0, p2

    #@4
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 504
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c
    move-object/from16 v0, p2

    #@e
    iget-object v3, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    #@10
    .line 505
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
    .line 504
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    #@1d
    move-result v19

    #@1e
    .line 506
    .local v19, "perm":I
    if-eqz v19, :cond_9

    #@20
    .line 507
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
    .line 508
    move-object/from16 v0, p1

    #@31
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@33
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    .line 507
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    .line 509
    const-string/jumbo v5, " from "

    #@3e
    .line 507
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    .line 509
    move-object/from16 v0, p1

    #@44
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@46
    .line 507
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    .line 509
    const-string/jumbo v5, " (pid="

    #@4d
    .line 507
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    .line 510
    move-object/from16 v0, p1

    #@53
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@55
    .line 507
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    .line 510
    const-string/jumbo v5, ", uid="

    #@5c
    .line 507
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    .line 510
    move-object/from16 v0, p1

    #@62
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@64
    .line 507
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    .line 510
    const-string/jumbo v5, ")"

    #@6b
    .line 507
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    .line 511
    const-string/jumbo v5, " requires "

    #@72
    .line 507
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    .line 511
    move-object/from16 v0, p2

    #@78
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    #@7a
    .line 507
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    .line 512
    const-string/jumbo v5, " due to registered receiver "

    #@81
    .line 507
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
    .line 513
    const/16 v20, 0x1

    #@94
    .line 530
    .end local v19    # "perm":I
    :cond_0
    :goto_0
    if-nez v20, :cond_1

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
    .line 531
    const/16 v17, 0x0

    #@a5
    .local v17, "i":I
    :goto_1
    move-object/from16 v0, p1

    #@a7
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@a9
    array-length v2, v2

    #@aa
    move/from16 v0, v17

    #@ac
    if-ge v0, v2, :cond_1

    #@ae
    .line 532
    move-object/from16 v0, p1

    #@b0
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@b2
    aget-object v3, v2, v17

    #@b4
    .line 533
    .local v3, "requiredPermission":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b6
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@b8
    .line 534
    move-object/from16 v0, p2

    #@ba
    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@bc
    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    #@be
    move-object/from16 v0, p2

    #@c0
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@c2
    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    #@c4
    const/4 v6, -0x1

    #@c5
    const/4 v7, 0x1

    #@c6
    .line 533
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    #@c9
    move-result v19

    #@ca
    .line 535
    .restart local v19    # "perm":I
    if-eqz v19, :cond_a

    #@cc
    .line 536
    const-string/jumbo v2, "BroadcastQueue"

    #@cf
    new-instance v4, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v5, "Permission Denial: receiving "

    #@d7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v4

    #@db
    .line 537
    move-object/from16 v0, p1

    #@dd
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@df
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@e2
    move-result-object v5

    #@e3
    .line 536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v4

    #@e7
    .line 538
    const-string/jumbo v5, " to "

    #@ea
    .line 536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v4

    #@ee
    .line 538
    move-object/from16 v0, p2

    #@f0
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@f2
    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@f4
    .line 536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v4

    #@f8
    .line 539
    const-string/jumbo v5, " (pid="

    #@fb
    .line 536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v4

    #@ff
    .line 539
    move-object/from16 v0, p2

    #@101
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@103
    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    #@105
    .line 536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@108
    move-result-object v4

    #@109
    .line 540
    const-string/jumbo v5, ", uid="

    #@10c
    .line 536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v4

    #@110
    .line 540
    move-object/from16 v0, p2

    #@112
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@114
    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    #@116
    .line 536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@119
    move-result-object v4

    #@11a
    .line 540
    const-string/jumbo v5, ")"

    #@11d
    .line 536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v4

    #@121
    .line 541
    const-string/jumbo v5, " requires "

    #@124
    .line 536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v4

    #@128
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v4

    #@12c
    .line 542
    const-string/jumbo v5, " due to sender "

    #@12f
    .line 536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v4

    #@133
    .line 542
    move-object/from16 v0, p1

    #@135
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@137
    .line 536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v4

    #@13b
    .line 543
    const-string/jumbo v5, " (uid "

    #@13e
    .line 536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v4

    #@142
    .line 543
    move-object/from16 v0, p1

    #@144
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@146
    .line 536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@149
    move-result-object v4

    #@14a
    .line 543
    const-string/jumbo v5, ")"

    #@14d
    .line 536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v4

    #@151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@154
    move-result-object v4

    #@155
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@158
    .line 544
    const/16 v20, 0x1

    #@15a
    .line 566
    .end local v3    # "requiredPermission":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v19    # "perm":I
    :cond_1
    :goto_2
    if-nez v20, :cond_3

    #@15c
    move-object/from16 v0, p1

    #@15e
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@160
    if-eqz v2, :cond_2

    #@162
    move-object/from16 v0, p1

    #@164
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@166
    array-length v2, v2

    #@167
    if-nez v2, :cond_3

    #@169
    .line 567
    :cond_2
    move-object/from16 v0, p0

    #@16b
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@16d
    .line 568
    move-object/from16 v0, p2

    #@16f
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@171
    iget v6, v2, Lcom/android/server/am/ReceiverList;->pid:I

    #@173
    move-object/from16 v0, p2

    #@175
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@177
    iget v7, v2, Lcom/android/server/am/ReceiverList;->uid:I

    #@179
    .line 567
    const/4 v5, 0x0

    #@17a
    .line 568
    const/4 v8, -0x1

    #@17b
    const/4 v9, 0x1

    #@17c
    .line 567
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    #@17f
    move-result v19

    #@180
    .line 569
    .restart local v19    # "perm":I
    if-eqz v19, :cond_3

    #@182
    .line 570
    const-string/jumbo v2, "BroadcastQueue"

    #@185
    new-instance v4, Ljava/lang/StringBuilder;

    #@187
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18a
    const-string/jumbo v5, "Permission Denial: security check failed when receiving "

    #@18d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v4

    #@191
    .line 571
    move-object/from16 v0, p1

    #@193
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@195
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@198
    move-result-object v5

    #@199
    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v4

    #@19d
    .line 572
    const-string/jumbo v5, " to "

    #@1a0
    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v4

    #@1a4
    .line 572
    move-object/from16 v0, p2

    #@1a6
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@1a8
    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@1aa
    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v4

    #@1ae
    .line 573
    const-string/jumbo v5, " (pid="

    #@1b1
    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v4

    #@1b5
    .line 573
    move-object/from16 v0, p2

    #@1b7
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@1b9
    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    #@1bb
    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v4

    #@1bf
    .line 574
    const-string/jumbo v5, ", uid="

    #@1c2
    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v4

    #@1c6
    .line 574
    move-object/from16 v0, p2

    #@1c8
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@1ca
    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    #@1cc
    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v4

    #@1d0
    .line 574
    const-string/jumbo v5, ")"

    #@1d3
    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v4

    #@1d7
    .line 575
    const-string/jumbo v5, " due to sender "

    #@1da
    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v4

    #@1de
    .line 575
    move-object/from16 v0, p1

    #@1e0
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@1e2
    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v4

    #@1e6
    .line 576
    const-string/jumbo v5, " (uid "

    #@1e9
    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v4

    #@1ed
    .line 576
    move-object/from16 v0, p1

    #@1ef
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@1f1
    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v4

    #@1f5
    .line 576
    const-string/jumbo v5, ")"

    #@1f8
    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v4

    #@1fc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ff
    move-result-object v4

    #@200
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@203
    .line 577
    const/16 v20, 0x1

    #@205
    .line 580
    .end local v19    # "perm":I
    :cond_3
    if-nez v20, :cond_4

    #@207
    move-object/from16 v0, p1

    #@209
    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@20b
    const/4 v4, -0x1

    #@20c
    if-eq v2, v4, :cond_4

    #@20e
    .line 581
    move-object/from16 v0, p0

    #@210
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@212
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@214
    move-object/from16 v0, p1

    #@216
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@218
    .line 582
    move-object/from16 v0, p2

    #@21a
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@21c
    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    #@21e
    move-object/from16 v0, p2

    #@220
    iget-object v6, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    #@222
    .line 581
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@225
    move-result v2

    #@226
    if-eqz v2, :cond_4

    #@228
    .line 584
    const-string/jumbo v2, "BroadcastQueue"

    #@22b
    new-instance v4, Ljava/lang/StringBuilder;

    #@22d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@230
    const-string/jumbo v5, "Appop Denial: receiving "

    #@233
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v4

    #@237
    .line 585
    move-object/from16 v0, p1

    #@239
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@23b
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@23e
    move-result-object v5

    #@23f
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@242
    move-result-object v4

    #@243
    .line 586
    const-string/jumbo v5, " to "

    #@246
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@249
    move-result-object v4

    #@24a
    .line 586
    move-object/from16 v0, p2

    #@24c
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@24e
    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@250
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@253
    move-result-object v4

    #@254
    .line 587
    const-string/jumbo v5, " (pid="

    #@257
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v4

    #@25b
    .line 587
    move-object/from16 v0, p2

    #@25d
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@25f
    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    #@261
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@264
    move-result-object v4

    #@265
    .line 588
    const-string/jumbo v5, ", uid="

    #@268
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26b
    move-result-object v4

    #@26c
    .line 588
    move-object/from16 v0, p2

    #@26e
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@270
    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    #@272
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@275
    move-result-object v4

    #@276
    .line 588
    const-string/jumbo v5, ")"

    #@279
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27c
    move-result-object v4

    #@27d
    .line 589
    const-string/jumbo v5, " requires appop "

    #@280
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@283
    move-result-object v4

    #@284
    .line 589
    move-object/from16 v0, p1

    #@286
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@288
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@28b
    move-result-object v5

    #@28c
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28f
    move-result-object v4

    #@290
    .line 590
    const-string/jumbo v5, " due to sender "

    #@293
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@296
    move-result-object v4

    #@297
    .line 590
    move-object/from16 v0, p1

    #@299
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@29b
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29e
    move-result-object v4

    #@29f
    .line 591
    const-string/jumbo v5, " (uid "

    #@2a2
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a5
    move-result-object v4

    #@2a6
    .line 591
    move-object/from16 v0, p1

    #@2a8
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@2aa
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2ad
    move-result-object v4

    #@2ae
    .line 591
    const-string/jumbo v5, ")"

    #@2b1
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b4
    move-result-object v4

    #@2b5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b8
    move-result-object v4

    #@2b9
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2bc
    .line 592
    const/16 v20, 0x1

    #@2be
    .line 594
    :cond_4
    if-nez v20, :cond_5

    #@2c0
    .line 595
    move-object/from16 v0, p0

    #@2c2
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2c4
    move-object/from16 v0, p2

    #@2c6
    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@2c8
    iget v4, v4, Lcom/android/server/am/ReceiverList;->uid:I

    #@2ca
    .line 596
    move-object/from16 v0, p2

    #@2cc
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    #@2ce
    const/4 v6, -0x1

    #@2cf
    const/4 v7, 0x1

    #@2d0
    .line 595
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->checkAllowBackgroundLocked(ILjava/lang/String;IZ)I

    #@2d3
    move-result v14

    #@2d4
    .line 597
    .local v14, "allowed":I
    const/4 v2, 0x2

    #@2d5
    if-ne v14, v2, :cond_5

    #@2d7
    .line 598
    const-string/jumbo v2, "BroadcastQueue"

    #@2da
    new-instance v4, Ljava/lang/StringBuilder;

    #@2dc
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2df
    const-string/jumbo v5, "Background execution not allowed: receiving "

    #@2e2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e5
    move-result-object v4

    #@2e6
    .line 599
    move-object/from16 v0, p1

    #@2e8
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@2ea
    .line 598
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2ed
    move-result-object v4

    #@2ee
    .line 600
    const-string/jumbo v5, " to "

    #@2f1
    .line 598
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f4
    move-result-object v4

    #@2f5
    .line 600
    move-object/from16 v0, p2

    #@2f7
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@2f9
    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@2fb
    .line 598
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2fe
    move-result-object v4

    #@2ff
    .line 601
    const-string/jumbo v5, " (pid="

    #@302
    .line 598
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@305
    move-result-object v4

    #@306
    .line 601
    move-object/from16 v0, p2

    #@308
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@30a
    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    #@30c
    .line 598
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30f
    move-result-object v4

    #@310
    .line 602
    const-string/jumbo v5, ", uid="

    #@313
    .line 598
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@316
    move-result-object v4

    #@317
    .line 602
    move-object/from16 v0, p2

    #@319
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@31b
    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    #@31d
    .line 598
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@320
    move-result-object v4

    #@321
    .line 602
    const-string/jumbo v5, ")"

    #@324
    .line 598
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@327
    move-result-object v4

    #@328
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32b
    move-result-object v4

    #@32c
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32f
    .line 603
    const/16 v20, 0x1

    #@331
    .line 607
    .end local v14    # "allowed":I
    :cond_5
    move-object/from16 v0, p0

    #@333
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@335
    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    #@337
    move-object/from16 v0, p1

    #@339
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@33b
    move-object/from16 v0, p1

    #@33d
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@33f
    .line 608
    move-object/from16 v0, p1

    #@341
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@343
    move-object/from16 v0, p1

    #@345
    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    #@347
    move-object/from16 v0, p2

    #@349
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@34b
    iget v9, v2, Lcom/android/server/am/ReceiverList;->uid:I

    #@34d
    .line 607
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z

    #@350
    move-result v2

    #@351
    if-nez v2, :cond_6

    #@353
    .line 609
    const/16 v20, 0x1

    #@355
    .line 612
    :cond_6
    if-nez v20, :cond_8

    #@357
    move-object/from16 v0, p2

    #@359
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@35b
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@35d
    if-eqz v2, :cond_7

    #@35f
    move-object/from16 v0, p2

    #@361
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@363
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@365
    iget-boolean v2, v2, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@367
    if-eqz v2, :cond_8

    #@369
    .line 613
    :cond_7
    const-string/jumbo v2, "BroadcastQueue"

    #@36c
    new-instance v4, Ljava/lang/StringBuilder;

    #@36e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@371
    const-string/jumbo v5, "Skipping deliver ["

    #@374
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@377
    move-result-object v4

    #@378
    move-object/from16 v0, p0

    #@37a
    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@37c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37f
    move-result-object v4

    #@380
    const-string/jumbo v5, "] "

    #@383
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@386
    move-result-object v4

    #@387
    move-object/from16 v0, p1

    #@389
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38c
    move-result-object v4

    #@38d
    .line 614
    const-string/jumbo v5, " to "

    #@390
    .line 613
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@393
    move-result-object v4

    #@394
    .line 614
    move-object/from16 v0, p2

    #@396
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@398
    .line 613
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39b
    move-result-object v4

    #@39c
    .line 614
    const-string/jumbo v5, ": process crashing"

    #@39f
    .line 613
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a2
    move-result-object v4

    #@3a3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a6
    move-result-object v4

    #@3a7
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3aa
    .line 615
    const/16 v20, 0x1

    #@3ac
    .line 618
    :cond_8
    if-eqz v20, :cond_c

    #@3ae
    .line 619
    move-object/from16 v0, p1

    #@3b0
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    #@3b2
    const/4 v4, 0x2

    #@3b3
    aput v4, v2, p4

    #@3b5
    .line 620
    return-void

    #@3b6
    .line 515
    .restart local v19    # "perm":I
    :cond_9
    move-object/from16 v0, p2

    #@3b8
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    #@3ba
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@3bd
    move-result v18

    #@3be
    .line 516
    .local v18, "opCode":I
    const/4 v2, -0x1

    #@3bf
    move/from16 v0, v18

    #@3c1
    if-eq v0, v2, :cond_0

    #@3c3
    .line 517
    move-object/from16 v0, p0

    #@3c5
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3c7
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@3c9
    move-object/from16 v0, p1

    #@3cb
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@3cd
    .line 518
    move-object/from16 v0, p1

    #@3cf
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@3d1
    .line 517
    move/from16 v0, v18

    #@3d3
    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@3d6
    move-result v2

    #@3d7
    if-eqz v2, :cond_0

    #@3d9
    .line 519
    const-string/jumbo v2, "BroadcastQueue"

    #@3dc
    new-instance v4, Ljava/lang/StringBuilder;

    #@3de
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3e1
    const-string/jumbo v5, "Appop Denial: broadcasting "

    #@3e4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e7
    move-result-object v4

    #@3e8
    .line 520
    move-object/from16 v0, p1

    #@3ea
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@3ec
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@3ef
    move-result-object v5

    #@3f0
    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f3
    move-result-object v4

    #@3f4
    .line 521
    const-string/jumbo v5, " from "

    #@3f7
    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fa
    move-result-object v4

    #@3fb
    .line 521
    move-object/from16 v0, p1

    #@3fd
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@3ff
    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@402
    move-result-object v4

    #@403
    .line 521
    const-string/jumbo v5, " (pid="

    #@406
    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@409
    move-result-object v4

    #@40a
    .line 522
    move-object/from16 v0, p1

    #@40c
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@40e
    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@411
    move-result-object v4

    #@412
    .line 522
    const-string/jumbo v5, ", uid="

    #@415
    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@418
    move-result-object v4

    #@419
    .line 522
    move-object/from16 v0, p1

    #@41b
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@41d
    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@420
    move-result-object v4

    #@421
    .line 522
    const-string/jumbo v5, ")"

    #@424
    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@427
    move-result-object v4

    #@428
    .line 523
    const-string/jumbo v5, " requires appop "

    #@42b
    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42e
    move-result-object v4

    #@42f
    .line 524
    move-object/from16 v0, p2

    #@431
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    #@433
    .line 523
    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    #@436
    move-result-object v5

    #@437
    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43a
    move-result-object v4

    #@43b
    .line 525
    const-string/jumbo v5, " due to registered receiver "

    #@43e
    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@441
    move-result-object v4

    #@442
    move-object/from16 v0, p2

    #@444
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@447
    move-result-object v4

    #@448
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44b
    move-result-object v4

    #@44c
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@44f
    .line 526
    const/16 v20, 0x1

    #@451
    goto/16 :goto_0

    #@453
    .line 547
    .end local v18    # "opCode":I
    .restart local v3    # "requiredPermission":Ljava/lang/String;
    .restart local v17    # "i":I
    :cond_a
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@456
    move-result v15

    #@457
    .line 548
    .local v15, "appOp":I
    const/4 v2, -0x1

    #@458
    if-eq v15, v2, :cond_b

    #@45a
    move-object/from16 v0, p1

    #@45c
    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@45e
    if-eq v15, v2, :cond_b

    #@460
    .line 549
    move-object/from16 v0, p0

    #@462
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@464
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@466
    .line 550
    move-object/from16 v0, p2

    #@468
    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@46a
    iget v4, v4, Lcom/android/server/am/ReceiverList;->uid:I

    #@46c
    move-object/from16 v0, p2

    #@46e
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    #@470
    .line 549
    invoke-virtual {v2, v15, v4, v5}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@473
    move-result v2

    #@474
    if-eqz v2, :cond_b

    #@476
    .line 552
    const-string/jumbo v2, "BroadcastQueue"

    #@479
    new-instance v4, Ljava/lang/StringBuilder;

    #@47b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@47e
    const-string/jumbo v5, "Appop Denial: receiving "

    #@481
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@484
    move-result-object v4

    #@485
    .line 553
    move-object/from16 v0, p1

    #@487
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@489
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@48c
    move-result-object v5

    #@48d
    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@490
    move-result-object v4

    #@491
    .line 554
    const-string/jumbo v5, " to "

    #@494
    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@497
    move-result-object v4

    #@498
    .line 554
    move-object/from16 v0, p2

    #@49a
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@49c
    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@49e
    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a1
    move-result-object v4

    #@4a2
    .line 555
    const-string/jumbo v5, " (pid="

    #@4a5
    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a8
    move-result-object v4

    #@4a9
    .line 555
    move-object/from16 v0, p2

    #@4ab
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@4ad
    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    #@4af
    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b2
    move-result-object v4

    #@4b3
    .line 556
    const-string/jumbo v5, ", uid="

    #@4b6
    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b9
    move-result-object v4

    #@4ba
    .line 556
    move-object/from16 v0, p2

    #@4bc
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@4be
    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    #@4c0
    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c3
    move-result-object v4

    #@4c4
    .line 556
    const-string/jumbo v5, ")"

    #@4c7
    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ca
    move-result-object v4

    #@4cb
    .line 557
    const-string/jumbo v5, " requires appop "

    #@4ce
    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d1
    move-result-object v4

    #@4d2
    .line 557
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    #@4d5
    move-result-object v5

    #@4d6
    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d9
    move-result-object v4

    #@4da
    .line 559
    const-string/jumbo v5, " due to sender "

    #@4dd
    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e0
    move-result-object v4

    #@4e1
    .line 559
    move-object/from16 v0, p1

    #@4e3
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@4e5
    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e8
    move-result-object v4

    #@4e9
    .line 560
    const-string/jumbo v5, " (uid "

    #@4ec
    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ef
    move-result-object v4

    #@4f0
    .line 560
    move-object/from16 v0, p1

    #@4f2
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@4f4
    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f7
    move-result-object v4

    #@4f8
    .line 560
    const-string/jumbo v5, ")"

    #@4fb
    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fe
    move-result-object v4

    #@4ff
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@502
    move-result-object v4

    #@503
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@506
    .line 561
    const/16 v20, 0x1

    #@508
    .line 562
    goto/16 :goto_2

    #@50a
    .line 531
    :cond_b
    add-int/lit8 v17, v17, 0x1

    #@50c
    goto/16 :goto_1

    #@50e
    .line 627
    .end local v3    # "requiredPermission":Ljava/lang/String;
    .end local v15    # "appOp":I
    .end local v17    # "i":I
    .end local v19    # "perm":I
    :cond_c
    sget-boolean v2, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    #@510
    if-eqz v2, :cond_d

    #@512
    .line 628
    move-object/from16 v0, p2

    #@514
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    #@516
    .line 629
    move-object/from16 v0, p2

    #@518
    iget v4, v0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    #@51a
    .line 628
    move-object/from16 v0, p0

    #@51c
    move-object/from16 v1, p1

    #@51e
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/am/BroadcastQueue;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;I)Z

    #@521
    move-result v2

    #@522
    if-nez v2, :cond_d

    #@524
    .line 630
    move-object/from16 v0, p1

    #@526
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    #@528
    const/4 v4, 0x2

    #@529
    aput v4, v2, p4

    #@52b
    .line 631
    return-void

    #@52c
    .line 635
    :cond_d
    move-object/from16 v0, p1

    #@52e
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    #@530
    const/4 v4, 0x1

    #@531
    aput v4, v2, p4

    #@533
    .line 640
    if-eqz p3, :cond_e

    #@535
    .line 641
    move-object/from16 v0, p2

    #@537
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@539
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    #@53b
    invoke-interface {v2}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    #@53e
    move-result-object v2

    #@53f
    move-object/from16 v0, p1

    #@541
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@543
    .line 642
    move-object/from16 v0, p2

    #@545
    move-object/from16 v1, p1

    #@547
    iput-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    #@549
    .line 643
    move-object/from16 v0, p2

    #@54b
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@54d
    move-object/from16 v0, p1

    #@54f
    iput-object v0, v2, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@551
    .line 644
    const/4 v2, 0x2

    #@552
    move-object/from16 v0, p1

    #@554
    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@556
    .line 645
    move-object/from16 v0, p2

    #@558
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@55a
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@55c
    if-eqz v2, :cond_e

    #@55e
    .line 651
    move-object/from16 v0, p2

    #@560
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@562
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@564
    move-object/from16 v0, p1

    #@566
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@568
    .line 652
    move-object/from16 v0, p2

    #@56a
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@56c
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@56e
    move-object/from16 v0, p1

    #@570
    iput-object v0, v2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@572
    .line 653
    move-object/from16 v0, p0

    #@574
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@576
    move-object/from16 v0, p1

    #@578
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@57a
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@57d
    .line 659
    :cond_e
    :try_start_0
    move-object/from16 v0, p2

    #@57f
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@581
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@583
    if-eqz v2, :cond_11

    #@585
    move-object/from16 v0, p2

    #@587
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@589
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@58b
    iget-boolean v2, v2, Lcom/android/server/am/ProcessRecord;->inFullBackup:Z

    #@58d
    if-eqz v2, :cond_11

    #@58f
    .line 662
    if-eqz p3, :cond_f

    #@591
    .line 663
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueue;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V

    #@594
    .line 670
    :cond_f
    :goto_3
    if-eqz p3, :cond_10

    #@596
    .line 671
    const/4 v2, 0x3

    #@597
    move-object/from16 v0, p1

    #@599
    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@59b
    .line 501
    :cond_10
    :goto_4
    return-void

    #@59c
    .line 666
    :cond_11
    move-object/from16 v0, p2

    #@59e
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@5a0
    iget-object v5, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@5a2
    move-object/from16 v0, p2

    #@5a4
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@5a6
    iget-object v6, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    #@5a8
    .line 667
    new-instance v7, Landroid/content/Intent;

    #@5aa
    move-object/from16 v0, p1

    #@5ac
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@5ae
    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@5b1
    move-object/from16 v0, p1

    #@5b3
    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@5b5
    move-object/from16 v0, p1

    #@5b7
    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@5b9
    .line 668
    move-object/from16 v0, p1

    #@5bb
    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@5bd
    move-object/from16 v0, p1

    #@5bf
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    #@5c1
    move-object/from16 v0, p1

    #@5c3
    iget-boolean v12, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    #@5c5
    move-object/from16 v0, p1

    #@5c7
    iget v13, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    #@5c9
    move-object/from16 v4, p0

    #@5cb
    .line 666
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5ce
    goto :goto_3

    #@5cf
    .line 673
    :catch_0
    move-exception v16

    #@5d0
    .line 674
    .local v16, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BroadcastQueue"

    #@5d3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5d5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5d8
    const-string/jumbo v5, "Failure sending broadcast "

    #@5db
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5de
    move-result-object v4

    #@5df
    move-object/from16 v0, p1

    #@5e1
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@5e3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e6
    move-result-object v4

    #@5e7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5ea
    move-result-object v4

    #@5eb
    move-object/from16 v0, v16

    #@5ed
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5f0
    .line 675
    if-eqz p3, :cond_10

    #@5f2
    .line 676
    const/4 v2, 0x0

    #@5f3
    move-object/from16 v0, p1

    #@5f5
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@5f7
    .line 677
    const/4 v2, 0x0

    #@5f8
    move-object/from16 v0, p1

    #@5fa
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    #@5fc
    .line 678
    move-object/from16 v0, p2

    #@5fe
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@600
    const/4 v4, 0x0

    #@601
    iput-object v4, v2, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@603
    .line 679
    move-object/from16 v0, p2

    #@605
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@607
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@609
    if-eqz v2, :cond_10

    #@60b
    .line 680
    move-object/from16 v0, p2

    #@60d
    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@60f
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@611
    const/4 v4, 0x0

    #@612
    iput-object v4, v2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@614
    goto :goto_4
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
    .line 259
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 260
    new-instance v0, Landroid/os/RemoteException;

    #@7
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@a
    throw v0

    #@b
    .line 262
    :cond_0
    iget-boolean v0, p2, Lcom/android/server/am/ProcessRecord;->inFullBackup:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 263
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueue;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V

    #@12
    .line 264
    return-void

    #@13
    .line 267
    :cond_1
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@15
    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@1b
    .line 268
    iput-object p2, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@1d
    .line 269
    iput-object p1, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@1f
    .line 270
    const/16 v0, 0xb

    #@21
    invoke-virtual {p2, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    #@24
    .line 271
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@26
    const/4 v1, 0x0

    #@27
    invoke-virtual {v0, p2, v1, v11}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@2a
    .line 272
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2c
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    #@2f
    .line 275
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@31
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@36
    .line 277
    const/4 v10, 0x0

    #@37
    .line 282
    .local v10, "started":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@39
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@3b
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    .line 283
    const/4 v2, 0x3

    #@44
    .line 282
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    #@47
    .line 284
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@49
    new-instance v1, Landroid/content/Intent;

    #@4b
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@4d
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@50
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@52
    .line 285
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@54
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@56
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@58
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    #@5b
    move-result-object v3

    #@5c
    .line 286
    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@5e
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@60
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@62
    iget-boolean v7, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    #@64
    iget v8, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    #@66
    .line 287
    iget v9, p2, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@68
    .line 284
    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6b
    .line 290
    const/4 v10, 0x1

    #@6c
    .line 292
    if-nez v10, :cond_2

    #@6e
    .line 295
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@70
    .line 296
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@72
    .line 297
    iput-object v11, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@74
    .line 256
    :cond_2
    return-void

    #@75
    .line 291
    :catchall_0
    move-exception v0

    #@76
    .line 292
    if-nez v10, :cond_3

    #@78
    .line 295
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@7a
    .line 296
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@7c
    .line 297
    iput-object v11, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@7e
    .line 291
    :cond_3
    throw v0
.end method

.method private requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;I)Z
    .locals 17
    .param p1, "receiverRecord"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "receivingPackageName"    # Ljava/lang/String;
    .param p3, "receivingUserId"    # I

    #@0
    .prologue
    .line 689
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    #@7
    move-result-object v2

    #@8
    move-object/from16 v0, p2

    #@a
    move/from16 v1, p3

    #@c
    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 691
    const/4 v2, 0x1

    #@13
    return v2

    #@14
    .line 694
    :cond_0
    move-object/from16 v0, p1

    #@16
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 695
    move-object/from16 v0, p1

    #@1c
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    #@1e
    iget v2, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    #@20
    if-eqz v2, :cond_1

    #@22
    const/4 v14, 0x1

    #@23
    .line 699
    .local v14, "callerForeground":Z
    :goto_0
    if-eqz v14, :cond_3

    #@25
    move-object/from16 v0, p1

    #@27
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@29
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@2c
    move-result-object v2

    #@2d
    if-eqz v2, :cond_3

    #@2f
    .line 700
    move-object/from16 v0, p0

    #@31
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@33
    .line 701
    move-object/from16 v0, p1

    #@35
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@37
    .line 702
    move-object/from16 v0, p1

    #@39
    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@3b
    move-object/from16 v0, p1

    #@3d
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    #@3f
    .line 703
    const/4 v3, 0x1

    #@40
    new-array v10, v3, [Landroid/content/Intent;

    #@42
    move-object/from16 v0, p1

    #@44
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@46
    const/4 v7, 0x0

    #@47
    aput-object v3, v10, v7

    #@49
    .line 704
    const/4 v3, 0x1

    #@4a
    new-array v11, v3, [Ljava/lang/String;

    #@4c
    move-object/from16 v0, p1

    #@4e
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@50
    move-object/from16 v0, p0

    #@52
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@54
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@56
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v3, v7}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    const/4 v7, 0x0

    #@5f
    aput-object v3, v11, v7

    #@61
    .line 701
    const/4 v3, 0x1

    #@62
    .line 702
    const/4 v7, 0x0

    #@63
    const/4 v8, 0x0

    #@64
    const/4 v9, 0x0

    #@65
    .line 706
    const/high16 v12, 0x54000000

    #@67
    .line 707
    const/4 v13, 0x0

    #@68
    .line 700
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    #@6b
    move-result-object v16

    #@6c
    .line 709
    .local v16, "target":Landroid/content/IIntentSender;
    new-instance v15, Landroid/content/Intent;

    #@6e
    const-string/jumbo v2, "android.intent.action.REVIEW_PERMISSIONS"

    #@71
    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@74
    .line 710
    .local v15, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    #@76
    invoke-virtual {v15, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@79
    .line 712
    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    #@7c
    move-object/from16 v0, p2

    #@7e
    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@81
    .line 713
    const-string/jumbo v2, "android.intent.extra.INTENT"

    #@84
    new-instance v3, Landroid/content/IntentSender;

    #@86
    move-object/from16 v0, v16

    #@88
    invoke-direct {v3, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    #@8b
    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@8e
    .line 720
    move-object/from16 v0, p0

    #@90
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    #@92
    new-instance v3, Lcom/android/server/am/BroadcastQueue$1;

    #@94
    move-object/from16 v0, p0

    #@96
    move/from16 v1, p3

    #@98
    invoke-direct {v3, v0, v15, v1}, Lcom/android/server/am/BroadcastQueue$1;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;I)V

    #@9b
    invoke-virtual {v2, v3}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->post(Ljava/lang/Runnable;)Z

    #@9e
    .line 731
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "target":Landroid/content/IIntentSender;
    :goto_1
    const/4 v2, 0x0

    #@9f
    return v2

    #@a0
    .line 695
    .end local v14    # "callerForeground":Z
    :cond_1
    const/4 v14, 0x0

    #@a1
    goto :goto_0

    #@a2
    .line 696
    :cond_2
    const/4 v14, 0x1

    #@a3
    goto :goto_0

    #@a4
    .line 727
    .restart local v14    # "callerForeground":Z
    :cond_3
    const-string/jumbo v2, "BroadcastQueue"

    #@a7
    new-instance v3, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v4, "u"

    #@af
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v3

    #@b3
    move/from16 v0, p3

    #@b5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v3

    #@b9
    const-string/jumbo v4, " Receiving a broadcast in package"

    #@bc
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v3

    #@c0
    move-object/from16 v0, p2

    #@c2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v3

    #@c6
    .line 728
    const-string/jumbo v4, " requires a permissions review"

    #@c9
    .line 727
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v3

    #@cd
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v3

    #@d1
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d4
    goto :goto_1
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
    .line 1399
    add-int/2addr p1, p2

    #@2
    .line 1400
    if-gez p1, :cond_0

    #@4
    add-int/lit8 v0, p3, -0x1

    #@6
    return v0

    #@7
    .line 1401
    :cond_0
    if-lt p1, p3, :cond_1

    #@9
    return v0

    #@a
    .line 1402
    :cond_1
    return p1
.end method

.method private skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    #@0
    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    #@3
    .line 361
    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@5
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@7
    .line 362
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@9
    iget-boolean v5, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@b
    const/4 v6, 0x0

    #@c
    move-object v0, p0

    #@d
    move-object v1, p1

    #@e
    .line 361
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    #@11
    .line 363
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    #@14
    .line 359
    return-void
.end method


# virtual methods
.method public backgroundServicesFinishedLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 454
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    .line 455
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    #@11
    .line 456
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
    .line 457
    const-string/jumbo v1, "BroadcastQueue"

    #@1d
    const-string/jumbo v2, "Resuming delayed broadcast"

    #@20
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 458
    const/4 v1, 0x0

    #@24
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@26
    .line 459
    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@28
    .line 460
    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    #@2b
    .line 453
    .end local v0    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    return-void
.end method

.method final broadcastTimeoutLocked(Z)V
    .locals 20
    .param p1, "fromMsg"    # Z

    #@0
    .prologue
    .line 1293
    if-eqz p1, :cond_0

    #@2
    .line 1294
    const/4 v4, 0x0

    #@3
    move-object/from16 v0, p0

    #@5
    iput-boolean v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    #@7
    .line 1297
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
    .line 1298
    return-void

    #@12
    .line 1301
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@15
    move-result-wide v16

    #@16
    .line 1302
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
    .line 1303
    .local v5, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz p1, :cond_4

    #@23
    .line 1304
    move-object/from16 v0, p0

    #@25
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@27
    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@29
    if-eqz v4, :cond_2

    #@2b
    .line 1306
    move-object/from16 v0, p0

    #@2d
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2f
    const/4 v6, 0x0

    #@30
    iput-boolean v6, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@32
    .line 1307
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
    .line 1308
    .local v18, "timeoutTime":J
    move-object/from16 v0, p0

    #@3e
    move-wide/from16 v1, v18

    #@40
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    #@43
    .line 1309
    return-void

    #@44
    .line 1311
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
    .line 1315
    return-void

    #@4d
    .line 1318
    :cond_3
    iget-wide v6, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    #@4f
    move-object/from16 v0, p0

    #@51
    iget-wide v8, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    #@53
    add-long v18, v6, v8

    #@55
    .line 1319
    .restart local v18    # "timeoutTime":J
    cmp-long v4, v18, v16

    #@57
    if-lez v4, :cond_4

    #@59
    .line 1328
    move-object/from16 v0, p0

    #@5b
    move-wide/from16 v1, v18

    #@5d
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    #@60
    .line 1329
    return-void

    #@61
    .line 1333
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
    .line 1334
    .local v14, "br":Lcom/android/server/am/BroadcastRecord;
    iget v4, v14, Lcom/android/server/am/BroadcastRecord;->state:I

    #@6e
    const/4 v6, 0x4

    #@6f
    if-ne v4, v6, :cond_6

    #@71
    .line 1339
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
    .line 1340
    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@86
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@89
    move-result-object v4

    #@8a
    .line 1339
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
    .line 1341
    const/4 v4, 0x0

    #@96
    iput-object v4, v14, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@98
    .line 1342
    const/4 v4, 0x0

    #@99
    iput v4, v14, Lcom/android/server/am/BroadcastRecord;->state:I

    #@9b
    .line 1343
    const/4 v4, 0x0

    #@9c
    move-object/from16 v0, p0

    #@9e
    invoke-virtual {v0, v4}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    #@a1
    .line 1344
    return-void

    #@a2
    .line 1340
    :cond_5
    const-string/jumbo v4, "(null)"

    #@a5
    goto :goto_0

    #@a6
    .line 1347
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
    .line 1348
    const-string/jumbo v7, ", started "

    #@c9
    .line 1347
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v6

    #@cd
    .line 1348
    iget-wide v8, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    #@cf
    sub-long v8, v16, v8

    #@d1
    .line 1347
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v6

    #@d5
    .line 1348
    const-string/jumbo v7, "ms ago"

    #@d8
    .line 1347
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
    .line 1349
    move-wide/from16 v0, v16

    #@e5
    iput-wide v0, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    #@e7
    .line 1350
    iget v4, v5, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    #@e9
    add-int/lit8 v4, v4, 0x1

    #@eb
    iput v4, v5, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    #@ed
    .line 1353
    iget v4, v5, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@ef
    if-gtz v4, :cond_7

    #@f1
    .line 1354
    const-string/jumbo v4, "BroadcastQueue"

    #@f4
    const-string/jumbo v6, "Timeout on receiver with nextReceiver <= 0"

    #@f7
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@fa
    .line 1355
    return-void

    #@fb
    .line 1358
    :cond_7
    const/4 v12, 0x0

    #@fc
    .line 1359
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    const/4 v11, 0x0

    #@fd
    .line 1361
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
    .line 1362
    .local v15, "curReceiver":Ljava/lang/Object;
    iget-object v4, v5, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    #@109
    iget v6, v5, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@10b
    add-int/lit8 v6, v6, -0x1

    #@10d
    const/4 v7, 0x3

    #@10e
    aput v7, v4, v6

    #@110
    .line 1363
    const-string/jumbo v4, "BroadcastQueue"

    #@113
    new-instance v6, Ljava/lang/StringBuilder;

    #@115
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@118
    const-string/jumbo v7, "Receiver during timeout: "

    #@11b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v6

    #@11f
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v6

    #@123
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v6

    #@127
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12a
    .line 1364
    move-object/from16 v0, p0

    #@12c
    invoke-virtual {v0, v5}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    #@12f
    .line 1365
    instance-of v4, v15, Lcom/android/server/am/BroadcastFilter;

    #@131
    if-eqz v4, :cond_c

    #@133
    move-object v13, v15

    #@134
    .line 1366
    check-cast v13, Lcom/android/server/am/BroadcastFilter;

    #@136
    .line 1367
    .local v13, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@138
    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    #@13a
    if-eqz v4, :cond_8

    #@13c
    .line 1368
    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@13e
    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    #@140
    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@142
    if-eq v4, v6, :cond_8

    #@144
    .line 1369
    move-object/from16 v0, p0

    #@146
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@148
    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@14a
    monitor-enter v6

    #@14b
    .line 1370
    :try_start_0
    move-object/from16 v0, p0

    #@14d
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@14f
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@151
    .line 1371
    iget-object v7, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@153
    iget v7, v7, Lcom/android/server/am/ReceiverList;->pid:I

    #@155
    .line 1370
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@158
    move-result-object v12

    #@159
    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    check-cast v12, Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15b
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v6

    #@15c
    .line 1378
    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_8
    :goto_1
    if-eqz v12, :cond_9

    #@15e
    .line 1379
    new-instance v4, Ljava/lang/StringBuilder;

    #@160
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string/jumbo v6, "Broadcast of "

    #@166
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v4

    #@16a
    iget-object v6, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@16c
    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@16f
    move-result-object v6

    #@170
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v4

    #@174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object v11

    #@178
    .line 1382
    .end local v11    # "anrMessage":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    #@17a
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@17c
    if-ne v4, v5, :cond_a

    #@17e
    .line 1383
    const/4 v4, 0x0

    #@17f
    move-object/from16 v0, p0

    #@181
    iput-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@183
    .line 1387
    :cond_a
    iget v6, v5, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@185
    iget-object v7, v5, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@187
    .line 1388
    iget-object v8, v5, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@189
    iget-boolean v9, v5, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@18b
    const/4 v10, 0x0

    #@18c
    move-object/from16 v4, p0

    #@18e
    .line 1387
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    #@191
    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    #@194
    .line 1391
    if-eqz v11, :cond_b

    #@196
    .line 1394
    move-object/from16 v0, p0

    #@198
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    #@19a
    new-instance v6, Lcom/android/server/am/BroadcastQueue$AppNotResponding;

    #@19c
    move-object/from16 v0, p0

    #@19e
    invoke-direct {v6, v0, v12, v11}, Lcom/android/server/am/BroadcastQueue$AppNotResponding;-><init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@1a1
    invoke-virtual {v4, v6}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->post(Ljava/lang/Runnable;)Z

    #@1a4
    .line 1292
    :cond_b
    return-void

    #@1a5
    .line 1369
    .restart local v11    # "anrMessage":Ljava/lang/String;
    .restart local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    :catchall_0
    move-exception v4

    #@1a6
    monitor-exit v6

    #@1a7
    throw v4

    #@1a8
    .line 1375
    .end local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    :cond_c
    iget-object v12, v5, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@1aa
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_1
.end method

.method final cancelBroadcastTimeoutLocked()V
    .locals 2

    #@0
    .prologue
    .line 1286
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1287
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    #@6
    const/16 v1, 0xc9

    #@8
    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->removeMessages(ILjava/lang/Object;)V

    #@b
    .line 1288
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    #@e
    .line 1285
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
    .line 1424
    const/4 v0, 0x0

    #@2
    .line 1425
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
    .line 1426
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
    .line 1428
    .local v0, "didSomething":Z
    if-nez p4, :cond_0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 1429
    return v3

    #@1e
    .line 1425
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@20
    goto :goto_0

    #@21
    .line 1433
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
    .line 1434
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
    .line 1436
    .restart local v0    # "didSomething":Z
    if-nez p4, :cond_2

    #@3a
    if-eqz v0, :cond_2

    #@3c
    .line 1437
    return v3

    #@3d
    .line 1433
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@3f
    goto :goto_1

    #@40
    .line 1441
    .end local v0    # "didSomething":Z
    :cond_3
    return v0
.end method

.method final dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .param p7, "needSep"    # Z

    #@0
    .prologue
    .line 1472
    new-instance v12, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v13, "yyyy-MM-dd HH:mm:ss"

    #@5
    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@8
    .line 1473
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    #@a
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v13

    #@10
    if-gtz v13, :cond_0

    #@12
    move-object/from16 v0, p0

    #@14
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v13

    #@1a
    if-lez v13, :cond_5

    #@1c
    .line 1475
    :cond_0
    const/4 v8, 0x0

    #@1d
    .line 1476
    .local v8, "printed":Z
    move-object/from16 v0, p0

    #@1f
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v13

    #@25
    add-int/lit8 v4, v13, -0x1

    #@27
    .end local p7    # "needSep":Z
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_c

    #@29
    .line 1477
    move-object/from16 v0, p0

    #@2b
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    #@33
    .line 1478
    .local v2, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz p6, :cond_1

    #@35
    iget-object v13, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@37
    move-object/from16 v0, p6

    #@39
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v13

    #@3d
    if-eqz v13, :cond_4

    #@3f
    .line 1481
    :cond_1
    if-nez v8, :cond_3

    #@41
    .line 1482
    if-eqz p7, :cond_2

    #@43
    .line 1483
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@46
    .line 1485
    :cond_2
    const/16 p7, 0x1

    #@48
    .line 1486
    .local p7, "needSep":Z
    const/4 v8, 0x1

    #@49
    .line 1487
    new-instance v13, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v14, "  Active broadcasts ["

    #@51
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v13

    #@55
    move-object/from16 v0, p0

    #@57
    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@59
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v13

    #@5d
    const-string/jumbo v14, "]:"

    #@60
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v13

    #@64
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v13

    #@68
    move-object/from16 v0, p2

    #@6a
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d
    .line 1489
    .end local p7    # "needSep":Z
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v14, "  Active Broadcast "

    #@75
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v13

    #@79
    move-object/from16 v0, p0

    #@7b
    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@7d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v13

    #@81
    const-string/jumbo v14, " #"

    #@84
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v13

    #@88
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v13

    #@8c
    const-string/jumbo v14, ":"

    #@8f
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v13

    #@93
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v13

    #@97
    move-object/from16 v0, p2

    #@99
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9c
    .line 1490
    const-string/jumbo v13, "    "

    #@9f
    move-object/from16 v0, p2

    #@a1
    invoke-virtual {v2, v0, v13, v12}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    #@a4
    .line 1476
    :cond_4
    add-int/lit8 v4, v4, -0x1

    #@a6
    goto :goto_0

    #@a7
    .line 1474
    .end local v2    # "br":Lcom/android/server/am/BroadcastRecord;
    .end local v4    # "i":I
    .end local v8    # "printed":Z
    .local p7, "needSep":Z
    :cond_5
    move-object/from16 v0, p0

    #@a9
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@ab
    if-nez v13, :cond_0

    #@ad
    .line 1526
    .end local p7    # "needSep":Z
    :cond_6
    :goto_1
    const/4 v8, 0x0

    #@ae
    .line 1528
    .restart local v8    # "printed":Z
    const/4 v4, -0x1

    #@af
    .line 1529
    .restart local v4    # "i":I
    move-object/from16 v0, p0

    #@b1
    iget v7, v0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    #@b3
    .line 1530
    .local v7, "lastIndex":I
    move v10, v7

    #@b4
    .line 1534
    .local v10, "ringIndex":I
    :cond_7
    sget v13, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    #@b6
    const/4 v14, -0x1

    #@b7
    move-object/from16 v0, p0

    #@b9
    invoke-direct {v0, v10, v14, v13}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    #@bc
    move-result v10

    #@bd
    .line 1535
    move-object/from16 v0, p0

    #@bf
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    #@c1
    aget-object v9, v13, v10

    #@c3
    .line 1536
    .local v9, "r":Lcom/android/server/am/BroadcastRecord;
    if-nez v9, :cond_15

    #@c5
    .line 1568
    :cond_8
    :goto_2
    if-ne v10, v7, :cond_7

    #@c7
    .line 1570
    if-nez p6, :cond_b

    #@c9
    .line 1571
    move-object/from16 v0, p0

    #@cb
    iget v10, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    #@cd
    move v7, v10

    #@ce
    .line 1572
    if-eqz p5, :cond_1b

    #@d0
    .line 1573
    const/4 v8, 0x0

    #@d1
    .line 1574
    const/4 v4, -0x1

    #@d2
    move v11, v10

    #@d3
    .line 1590
    .end local v10    # "ringIndex":I
    .local v11, "ringIndex":I
    :cond_9
    sget v13, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    #@d5
    const/4 v14, -0x1

    #@d6
    move-object/from16 v0, p0

    #@d8
    invoke-direct {v0, v11, v14, v13}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    #@db
    move-result v11

    #@dc
    .line 1591
    move-object/from16 v0, p0

    #@de
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    #@e0
    aget-object v5, v13, v11

    #@e2
    .line 1592
    .local v5, "intent":Landroid/content/Intent;
    if-nez v5, :cond_1d

    #@e4
    .line 1627
    :cond_a
    :goto_3
    if-ne v11, v10, :cond_9

    #@e6
    move v10, v11

    #@e7
    .line 1630
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v11    # "ringIndex":I
    .restart local v10    # "ringIndex":I
    :cond_b
    :goto_4
    return p7

    #@e8
    .line 1492
    .end local v7    # "lastIndex":I
    .end local v9    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v10    # "ringIndex":I
    :cond_c
    const/4 v8, 0x0

    #@e9
    .line 1493
    const/16 p7, 0x1

    #@eb
    .line 1494
    .local p7, "needSep":Z
    move-object/from16 v0, p0

    #@ed
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@ef
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@f2
    move-result v13

    #@f3
    add-int/lit8 v4, v13, -0x1

    #@f5
    :goto_5
    if-ltz v4, :cond_11

    #@f7
    .line 1495
    move-object/from16 v0, p0

    #@f9
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@fb
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@fe
    move-result-object v2

    #@ff
    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    #@101
    .line 1496
    .restart local v2    # "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz p6, :cond_d

    #@103
    iget-object v13, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@105
    move-object/from16 v0, p6

    #@107
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10a
    move-result v13

    #@10b
    if-eqz v13, :cond_10

    #@10d
    .line 1499
    :cond_d
    if-nez v8, :cond_f

    #@10f
    .line 1500
    if-eqz p7, :cond_e

    #@111
    .line 1501
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@114
    .line 1503
    :cond_e
    const/16 p7, 0x1

    #@116
    .line 1504
    const/4 v8, 0x1

    #@117
    .line 1505
    new-instance v13, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v14, "  Active ordered broadcasts ["

    #@11f
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v13

    #@123
    move-object/from16 v0, p0

    #@125
    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@127
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v13

    #@12b
    const-string/jumbo v14, "]:"

    #@12e
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v13

    #@132
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@135
    move-result-object v13

    #@136
    move-object/from16 v0, p2

    #@138
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13b
    .line 1507
    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v14, "  Active Ordered Broadcast "

    #@143
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v13

    #@147
    move-object/from16 v0, p0

    #@149
    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@14b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v13

    #@14f
    const-string/jumbo v14, " #"

    #@152
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v13

    #@156
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@159
    move-result-object v13

    #@15a
    const-string/jumbo v14, ":"

    #@15d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v13

    #@161
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v13

    #@165
    move-object/from16 v0, p2

    #@167
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16a
    .line 1508
    move-object/from16 v0, p0

    #@16c
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@16e
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@171
    move-result-object v13

    #@172
    check-cast v13, Lcom/android/server/am/BroadcastRecord;

    #@174
    const-string/jumbo v14, "    "

    #@177
    move-object/from16 v0, p2

    #@179
    invoke-virtual {v13, v0, v14, v12}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    #@17c
    .line 1494
    :cond_10
    add-int/lit8 v4, v4, -0x1

    #@17e
    goto/16 :goto_5

    #@180
    .line 1510
    .end local v2    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_11
    if-eqz p6, :cond_12

    #@182
    move-object/from16 v0, p0

    #@184
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@186
    if-eqz v13, :cond_6

    #@188
    .line 1511
    move-object/from16 v0, p0

    #@18a
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@18c
    iget-object v13, v13, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@18e
    move-object/from16 v0, p6

    #@190
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@193
    move-result v13

    #@194
    .line 1510
    if-eqz v13, :cond_6

    #@196
    .line 1512
    :cond_12
    if-eqz p7, :cond_13

    #@198
    .line 1513
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@19b
    .line 1515
    :cond_13
    new-instance v13, Ljava/lang/StringBuilder;

    #@19d
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@1a0
    const-string/jumbo v14, "  Pending broadcast ["

    #@1a3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v13

    #@1a7
    move-object/from16 v0, p0

    #@1a9
    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@1ab
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v13

    #@1af
    const-string/jumbo v14, "]:"

    #@1b2
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v13

    #@1b6
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b9
    move-result-object v13

    #@1ba
    move-object/from16 v0, p2

    #@1bc
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1bf
    .line 1516
    move-object/from16 v0, p0

    #@1c1
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@1c3
    if-eqz v13, :cond_14

    #@1c5
    .line 1517
    move-object/from16 v0, p0

    #@1c7
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@1c9
    const-string/jumbo v14, "    "

    #@1cc
    move-object/from16 v0, p2

    #@1ce
    invoke-virtual {v13, v0, v14, v12}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    #@1d1
    .line 1521
    :goto_6
    const/16 p7, 0x1

    #@1d3
    goto/16 :goto_1

    #@1d5
    .line 1519
    :cond_14
    const-string/jumbo v13, "    (null)"

    #@1d8
    move-object/from16 v0, p2

    #@1da
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1dd
    goto :goto_6

    #@1de
    .line 1540
    .end local p7    # "needSep":Z
    .restart local v7    # "lastIndex":I
    .restart local v9    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v10    # "ringIndex":I
    :cond_15
    add-int/lit8 v4, v4, 0x1

    #@1e0
    .line 1541
    if-eqz p6, :cond_16

    #@1e2
    iget-object v13, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@1e4
    move-object/from16 v0, p6

    #@1e6
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e9
    move-result v13

    #@1ea
    if-eqz v13, :cond_8

    #@1ec
    .line 1544
    :cond_16
    if-nez v8, :cond_18

    #@1ee
    .line 1545
    if-eqz p7, :cond_17

    #@1f0
    .line 1546
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1f3
    .line 1548
    :cond_17
    const/16 p7, 0x1

    #@1f5
    .line 1549
    .restart local p7    # "needSep":Z
    new-instance v13, Ljava/lang/StringBuilder;

    #@1f7
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@1fa
    const-string/jumbo v14, "  Historical broadcasts ["

    #@1fd
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v13

    #@201
    move-object/from16 v0, p0

    #@203
    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@205
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v13

    #@209
    const-string/jumbo v14, "]:"

    #@20c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v13

    #@210
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@213
    move-result-object v13

    #@214
    move-object/from16 v0, p2

    #@216
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@219
    .line 1550
    const/4 v8, 0x1

    #@21a
    .line 1552
    .end local p7    # "needSep":Z
    :cond_18
    if-eqz p5, :cond_19

    #@21c
    .line 1553
    new-instance v13, Ljava/lang/StringBuilder;

    #@21e
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@221
    const-string/jumbo v14, "  Historical Broadcast "

    #@224
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@227
    move-result-object v13

    #@228
    move-object/from16 v0, p0

    #@22a
    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@22c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22f
    move-result-object v13

    #@230
    const-string/jumbo v14, " #"

    #@233
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v13

    #@237
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23a
    move-result-object v13

    #@23b
    move-object/from16 v0, p2

    #@23d
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@240
    .line 1554
    move-object/from16 v0, p2

    #@242
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@245
    const-string/jumbo v13, ":"

    #@248
    move-object/from16 v0, p2

    #@24a
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24d
    .line 1555
    const-string/jumbo v13, "    "

    #@250
    move-object/from16 v0, p2

    #@252
    invoke-virtual {v9, v0, v13, v12}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    #@255
    goto/16 :goto_2

    #@257
    .line 1557
    :cond_19
    const-string/jumbo v13, "  #"

    #@25a
    move-object/from16 v0, p2

    #@25c
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25f
    move-object/from16 v0, p2

    #@261
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@264
    const-string/jumbo v13, ": "

    #@267
    move-object/from16 v0, p2

    #@269
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26c
    move-object/from16 v0, p2

    #@26e
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@271
    .line 1558
    const-string/jumbo v13, "    "

    #@274
    move-object/from16 v0, p2

    #@276
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@279
    .line 1559
    iget-object v13, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@27b
    const/4 v14, 0x0

    #@27c
    const/4 v15, 0x1

    #@27d
    const/16 v16, 0x1

    #@27f
    const/16 v17, 0x0

    #@281
    invoke-virtual/range {v13 .. v17}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    #@284
    move-result-object v13

    #@285
    move-object/from16 v0, p2

    #@287
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28a
    .line 1560
    iget-object v13, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    #@28c
    if-eqz v13, :cond_1a

    #@28e
    iget-object v13, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    #@290
    iget-object v14, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@292
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@295
    move-result-object v14

    #@296
    if-eq v13, v14, :cond_1a

    #@298
    .line 1561
    const-string/jumbo v13, "    targetComp: "

    #@29b
    move-object/from16 v0, p2

    #@29d
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a0
    iget-object v13, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    #@2a2
    invoke-virtual {v13}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@2a5
    move-result-object v13

    #@2a6
    move-object/from16 v0, p2

    #@2a8
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2ab
    .line 1563
    :cond_1a
    iget-object v13, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@2ad
    invoke-virtual {v13}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@2b0
    move-result-object v3

    #@2b1
    .line 1564
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_8

    #@2b3
    .line 1565
    const-string/jumbo v13, "    extras: "

    #@2b6
    move-object/from16 v0, p2

    #@2b8
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2bb
    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    #@2be
    move-result-object v13

    #@2bf
    move-object/from16 v0, p2

    #@2c1
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c4
    goto/16 :goto_2

    #@2c6
    .line 1577
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_1b
    move v6, v4

    #@2c7
    .local v6, "j":I
    move v11, v10

    #@2c8
    .line 1578
    .end local v10    # "ringIndex":I
    .restart local v11    # "ringIndex":I
    :cond_1c
    :goto_7
    if-lez v6, :cond_9

    #@2ca
    if-eq v11, v10, :cond_9

    #@2cc
    .line 1579
    sget v13, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    #@2ce
    const/4 v14, -0x1

    #@2cf
    move-object/from16 v0, p0

    #@2d1
    invoke-direct {v0, v11, v14, v13}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    #@2d4
    move-result v11

    #@2d5
    .line 1580
    move-object/from16 v0, p0

    #@2d7
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    #@2d9
    aget-object v9, v13, v11

    #@2db
    .line 1581
    if-eqz v9, :cond_1c

    #@2dd
    .line 1584
    add-int/lit8 v6, v6, -0x1

    #@2df
    goto :goto_7

    #@2e0
    .line 1595
    .end local v6    # "j":I
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_1d
    if-nez v8, :cond_1f

    #@2e2
    .line 1596
    if-eqz p7, :cond_1e

    #@2e4
    .line 1597
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@2e7
    .line 1599
    :cond_1e
    const/16 p7, 0x1

    #@2e9
    .line 1600
    .restart local p7    # "needSep":Z
    new-instance v13, Ljava/lang/StringBuilder;

    #@2eb
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@2ee
    const-string/jumbo v14, "  Historical broadcasts summary ["

    #@2f1
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f4
    move-result-object v13

    #@2f5
    move-object/from16 v0, p0

    #@2f7
    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@2f9
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fc
    move-result-object v13

    #@2fd
    const-string/jumbo v14, "]:"

    #@300
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@303
    move-result-object v13

    #@304
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@307
    move-result-object v13

    #@308
    move-object/from16 v0, p2

    #@30a
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30d
    .line 1601
    const/4 v8, 0x1

    #@30e
    .line 1603
    .end local p7    # "needSep":Z
    :cond_1f
    if-nez p5, :cond_20

    #@310
    const/16 v13, 0x32

    #@312
    if-lt v4, v13, :cond_20

    #@314
    .line 1604
    const-string/jumbo v13, "  ..."

    #@317
    move-object/from16 v0, p2

    #@319
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@31c
    move v10, v11

    #@31d
    .line 1605
    .end local v11    # "ringIndex":I
    .restart local v10    # "ringIndex":I
    goto/16 :goto_4

    #@31f
    .line 1607
    .end local v10    # "ringIndex":I
    .restart local v11    # "ringIndex":I
    :cond_20
    add-int/lit8 v4, v4, 0x1

    #@321
    .line 1608
    const-string/jumbo v13, "  #"

    #@324
    move-object/from16 v0, p2

    #@326
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@329
    move-object/from16 v0, p2

    #@32b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@32e
    const-string/jumbo v13, ": "

    #@331
    move-object/from16 v0, p2

    #@333
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@336
    .line 1609
    const/4 v13, 0x0

    #@337
    const/4 v14, 0x1

    #@338
    const/4 v15, 0x1

    #@339
    const/16 v16, 0x0

    #@33b
    move/from16 v0, v16

    #@33d
    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    #@340
    move-result-object v13

    #@341
    move-object/from16 v0, p2

    #@343
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@346
    .line 1610
    const-string/jumbo v13, "    "

    #@349
    move-object/from16 v0, p2

    #@34b
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34e
    .line 1611
    move-object/from16 v0, p0

    #@350
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    #@352
    aget-wide v14, v13, v11

    #@354
    .line 1612
    move-object/from16 v0, p0

    #@356
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    #@358
    aget-wide v16, v13, v11

    #@35a
    .line 1611
    sub-long v14, v14, v16

    #@35c
    move-object/from16 v0, p2

    #@35e
    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@361
    .line 1613
    const-string/jumbo v13, " dispatch "

    #@364
    move-object/from16 v0, p2

    #@366
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@369
    .line 1614
    move-object/from16 v0, p0

    #@36b
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    #@36d
    aget-wide v14, v13, v11

    #@36f
    .line 1615
    move-object/from16 v0, p0

    #@371
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    #@373
    aget-wide v16, v13, v11

    #@375
    .line 1614
    sub-long v14, v14, v16

    #@377
    move-object/from16 v0, p2

    #@379
    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@37c
    .line 1616
    const-string/jumbo v13, " finish"

    #@37f
    move-object/from16 v0, p2

    #@381
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@384
    .line 1617
    const-string/jumbo v13, "    enq="

    #@387
    move-object/from16 v0, p2

    #@389
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38c
    .line 1618
    new-instance v13, Ljava/util/Date;

    #@38e
    move-object/from16 v0, p0

    #@390
    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    #@392
    aget-wide v14, v14, v11

    #@394
    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    #@397
    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@39a
    move-result-object v13

    #@39b
    move-object/from16 v0, p2

    #@39d
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a0
    .line 1619
    const-string/jumbo v13, " disp="

    #@3a3
    move-object/from16 v0, p2

    #@3a5
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a8
    .line 1620
    new-instance v13, Ljava/util/Date;

    #@3aa
    move-object/from16 v0, p0

    #@3ac
    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    #@3ae
    aget-wide v14, v14, v11

    #@3b0
    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    #@3b3
    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@3b6
    move-result-object v13

    #@3b7
    move-object/from16 v0, p2

    #@3b9
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3bc
    .line 1621
    const-string/jumbo v13, " fin="

    #@3bf
    move-object/from16 v0, p2

    #@3c1
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c4
    .line 1622
    new-instance v13, Ljava/util/Date;

    #@3c6
    move-object/from16 v0, p0

    #@3c8
    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    #@3ca
    aget-wide v14, v14, v11

    #@3cc
    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    #@3cf
    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@3d2
    move-result-object v13

    #@3d3
    move-object/from16 v0, p2

    #@3d5
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d8
    .line 1623
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@3db
    move-result-object v3

    #@3dc
    .line 1624
    .restart local v3    # "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_a

    #@3de
    .line 1625
    const-string/jumbo v13, "    extras: "

    #@3e1
    move-object/from16 v0, p2

    #@3e3
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e6
    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    #@3e9
    move-result-object v13

    #@3ea
    move-object/from16 v0, p2

    #@3ec
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3ef
    goto/16 :goto_3
.end method

.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    #@b
    .line 223
    return-void
.end method

.method public enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

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
    .line 390
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    #@2
    .line 391
    .local v3, "state":I
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@4
    .line 392
    .local v2, "receiver":Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    #@5
    iput v4, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    #@7
    .line 393
    if-nez v3, :cond_0

    #@9
    .line 394
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
    .line 396
    :cond_0
    const/4 v4, 0x0

    #@2d
    iput-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@2f
    .line 397
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@31
    const/4 v5, 0x0

    #@32
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@35
    .line 398
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
    .line 399
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@41
    const/4 v5, 0x0

    #@42
    iput-object v5, v4, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    #@44
    .line 401
    :cond_1
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    #@46
    if-eqz v4, :cond_2

    #@48
    .line 402
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    #@4a
    iget-object v4, v4, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@4c
    const/4 v5, 0x0

    #@4d
    iput-object v5, v4, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@4f
    .line 404
    :cond_2
    const/4 v4, 0x0

    #@50
    iput-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    #@52
    .line 405
    const/4 v4, 0x0

    #@53
    iput-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@55
    .line 406
    const/4 v4, 0x0

    #@56
    iput-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@58
    .line 407
    const/4 v4, 0x0

    #@59
    iput-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@5b
    .line 409
    iput p2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@5d
    .line 410
    iput-object p3, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@5f
    .line 411
    iput-object p4, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@61
    .line 412
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
    .line 413
    iput-boolean p5, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@70
    .line 418
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
    .line 419
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
    .line 420
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
    .line 422
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
    .line 423
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@9d
    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@9f
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a2
    move-result-object v1

    #@a3
    .line 424
    .local v1, "obj":Ljava/lang/Object;
    instance-of v4, v1, Landroid/content/pm/ActivityInfo;

    #@a5
    if-eqz v4, :cond_5

    #@a7
    move-object v0, v1

    #@a8
    check-cast v0, Landroid/content/pm/ActivityInfo;

    #@aa
    .line 429
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_1
    if-eqz v2, :cond_3

    #@ac
    if-nez v0, :cond_7

    #@ae
    .line 436
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
    .line 437
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
    .line 438
    const/4 v4, 0x4

    #@db
    iput v4, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    #@dd
    .line 439
    const/4 v4, 0x0

    #@de
    return v4

    #@df
    .line 415
    :cond_4
    const/4 v4, 0x0

    #@e0
    iput-boolean v4, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@e2
    goto :goto_0

    #@e3
    .line 424
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x0

    #@e4
    .local v0, "nextReceiver":Landroid/content/pm/ActivityInfo;
    goto :goto_1

    #@e5
    .line 426
    .end local v0    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_6
    const/4 v0, 0x0

    #@e6
    .restart local v0    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    goto :goto_1

    #@e7
    .line 430
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
    .line 431
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
    .line 444
    :cond_8
    const/4 v4, 0x0

    #@fc
    iput-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@fe
    .line 449
    const/4 v4, 0x1

    #@ff
    if-eq v3, v4, :cond_9

    #@101
    .line 450
    const/4 v4, 0x3

    #@102
    if-ne v3, v4, :cond_a

    #@104
    const/4 v4, 0x1

    #@105
    .line 449
    :goto_2
    return v4

    #@106
    :cond_9
    const/4 v4, 0x1

    #@107
    goto :goto_2

    #@108
    .line 450
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
    .line 379
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    if-lez v1, :cond_0

    #@a
    .line 380
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    #@12
    .line 381
    .local v0, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_0

    #@14
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@16
    if-ne v1, p1, :cond_0

    #@18
    .line 382
    return-object v0

    #@19
    .line 385
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
    .line 215
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
    .line 1445
    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@7
    add-int/lit8 v2, v4, -0x1

    #@9
    .line 1446
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
    .line 1447
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@15
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    .line 1448
    .local v1, "curReceiver":Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/server/am/BroadcastFilter;

    #@1b
    if-eqz v4, :cond_0

    #@1d
    move-object v0, v1

    #@1e
    .line 1449
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    #@20
    .line 1450
    .local v0, "bf":Lcom/android/server/am/BroadcastFilter;
    const/4 v4, 0x5

    #@21
    new-array v4, v4, [Ljava/lang/Object;

    #@23
    .line 1451
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
    .line 1452
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
    .line 1450
    const/16 v5, 0x7548

    #@4f
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@52
    .line 1444
    .end local v0    # "bf":Lcom/android/server/am/BroadcastFilter;
    .end local v1    # "curReceiver":Ljava/lang/Object;
    :goto_0
    return-void

    #@53
    .restart local v1    # "curReceiver":Ljava/lang/Object;
    :cond_0
    move-object v3, v1

    #@54
    .line 1454
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@56
    .line 1455
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x5

    #@57
    new-array v4, v4, [Ljava/lang/Object;

    #@59
    .line 1456
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
    .line 1457
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
    .line 1455
    const/16 v5, 0x7549

    #@89
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@8c
    goto :goto_0

    #@8d
    .line 1460
    .end local v1    # "curReceiver":Ljava/lang/Object;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-gez v2, :cond_2

    #@8f
    const-string/jumbo v4, "BroadcastQueue"

    #@92
    .line 1461
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
    .line 1460
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    .line 1462
    :cond_2
    const/4 v4, 0x5

    #@aa
    new-array v4, v4, [Ljava/lang/Object;

    #@ac
    .line 1463
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
    .line 1464
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@bf
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@c2
    move-result-object v5

    #@c3
    aput-object v5, v4, v9

    #@c5
    .line 1465
    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@c7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ca
    move-result-object v5

    #@cb
    aput-object v5, v4, v10

    #@cd
    .line 1466
    const-string/jumbo v5, "NONE"

    #@d0
    aput-object v5, v4, v11

    #@d2
    .line 1462
    const/16 v5, 0x7549

    #@d4
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@d7
    goto/16 :goto_0
.end method

.method performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "receiver"    # Landroid/content/IIntentReceiver;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resultCode"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "ordered"    # Z
    .param p8, "sticky"    # Z
    .param p9, "sendingUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 469
    if-eqz p1, :cond_1

    #@2
    .line 470
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 474
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@8
    .line 475
    iget v9, p1, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@a
    move-object v1, p2

    #@b
    move-object v2, p3

    #@c
    move v3, p4

    #@d
    move-object/from16 v4, p5

    #@f
    move-object/from16 v5, p6

    #@11
    move/from16 v6, p7

    #@13
    move/from16 v7, p8

    #@15
    move/from16 v8, p9

    #@17
    .line 474
    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 467
    :goto_0
    return-void

    #@1b
    .line 481
    :catch_0
    move-exception v10

    #@1c
    .line 483
    .local v10, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1e
    monitor-enter v1

    #@1f
    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@22
    .line 484
    const-string/jumbo v0, "BroadcastQueue"

    #@25
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v3, "Can\'t deliver broadcast to "

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 485
    const-string/jumbo v3, " (pid "

    #@3a
    .line 484
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    .line 485
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    #@40
    .line 484
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 485
    const-string/jumbo v3, "). Crashing it."

    #@47
    .line 484
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 486
    const-string/jumbo v0, "can\'t deliver broadcast"

    #@55
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    monitor-exit v1

    #@59
    .line 483
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@5c
    .line 488
    throw v10

    #@5d
    .line 483
    :catchall_0
    move-exception v0

    #@5e
    monitor-exit v1

    #@5f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@62
    throw v0

    #@63
    .line 492
    .end local v10    # "ex":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    #@65
    const-string/jumbo v1, "app.thread must not be null"

    #@68
    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v0

    #@6c
    .line 495
    :cond_1
    invoke-interface/range {p2 .. p9}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    #@6f
    goto :goto_0
.end method

.method final processNextBroadcast(Z)V
    .locals 49
    .param p1, "fromMsg"    # Z

    #@0
    .prologue
    .line 760
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    move-object/from16 v48, v0

    #@6
    monitor-enter v48

    #@7
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@a
    .line 768
    move-object/from16 v0, p0

    #@c
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@e
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    #@11
    .line 770
    if-eqz p1, :cond_0

    #@13
    .line 771
    const/4 v4, 0x0

    #@14
    move-object/from16 v0, p0

    #@16
    iput-boolean v4, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    #@18
    .line 775
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@1a
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v4

    #@20
    if-lez v4, :cond_2

    #@22
    .line 776
    move-object/from16 v0, p0

    #@24
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@26
    const/4 v6, 0x0

    #@27
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2a
    move-result-object v40

    #@2b
    check-cast v40, Lcom/android/server/am/BroadcastRecord;

    #@2d
    .line 777
    .local v40, "r":Lcom/android/server/am/BroadcastRecord;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@30
    move-result-wide v6

    #@31
    move-object/from16 v0, v40

    #@33
    iput-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    #@35
    .line 778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@38
    move-result-wide v6

    #@39
    move-object/from16 v0, v40

    #@3b
    iput-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    #@3d
    .line 779
    move-object/from16 v0, v40

    #@3f
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@41
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@44
    move-result v14

    #@45
    .line 782
    .local v14, "N":I
    const/16 v27, 0x0

    #@47
    .local v27, "i":I
    :goto_1
    move/from16 v0, v27

    #@49
    if-ge v0, v14, :cond_1

    #@4b
    .line 783
    move-object/from16 v0, v40

    #@4d
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@4f
    move/from16 v0, v27

    #@51
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v45

    #@55
    .line 787
    .local v45, "target":Ljava/lang/Object;
    check-cast v45, Lcom/android/server/am/BroadcastFilter;

    #@57
    .end local v45    # "target":Ljava/lang/Object;
    const/4 v4, 0x0

    #@58
    move-object/from16 v0, p0

    #@5a
    move-object/from16 v1, v40

    #@5c
    move-object/from16 v2, v45

    #@5e
    move/from16 v3, v27

    #@60
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V

    #@63
    .line 782
    add-int/lit8 v27, v27, 0x1

    #@65
    goto :goto_1

    #@66
    .line 789
    :cond_1
    move-object/from16 v0, p0

    #@68
    move-object/from16 v1, v40

    #@6a
    invoke-direct {v0, v1}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6d
    goto :goto_0

    #@6e
    .line 760
    .end local v14    # "N":I
    .end local v27    # "i":I
    .end local v40    # "r":Lcom/android/server/am/BroadcastRecord;
    :catchall_0
    move-exception v4

    #@6f
    monitor-exit v48

    #@70
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@73
    throw v4

    #@74
    .line 799
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@76
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@78
    if-eqz v4, :cond_5

    #@7a
    .line 805
    move-object/from16 v0, p0

    #@7c
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7e
    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@80
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@81
    .line 806
    :try_start_2
    move-object/from16 v0, p0

    #@83
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@85
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@87
    move-object/from16 v0, p0

    #@89
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@8b
    iget-object v7, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@8d
    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    #@8f
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@92
    move-result-object v39

    #@93
    check-cast v39, Lcom/android/server/am/ProcessRecord;

    #@95
    .line 807
    .local v39, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v39, :cond_3

    #@97
    move-object/from16 v0, v39

    #@99
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@9b
    move/from16 v30, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@9d
    :goto_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@9e
    .line 809
    if-nez v30, :cond_4

    #@a0
    monitor-exit v48

    #@a1
    .line 760
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@a4
    .line 811
    return-void

    #@a5
    .line 807
    :cond_3
    const/16 v30, 0x1

    #@a7
    .local v30, "isDead":Z
    goto :goto_2

    #@a8
    .line 805
    .end local v30    # "isDead":Z
    .end local v39    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v4

    #@a9
    :try_start_4
    monitor-exit v6

    #@aa
    throw v4

    #@ab
    .line 813
    .restart local v39    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_4
    const-string/jumbo v4, "BroadcastQueue"

    #@ae
    new-instance v6, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v7, "pending app  ["

    #@b6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v6

    #@ba
    .line 814
    move-object/from16 v0, p0

    #@bc
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@be
    .line 813
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v6

    #@c2
    .line 814
    const-string/jumbo v7, "]"

    #@c5
    .line 813
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v6

    #@c9
    .line 814
    move-object/from16 v0, p0

    #@cb
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@cd
    iget-object v7, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@cf
    .line 813
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v6

    #@d3
    .line 815
    const-string/jumbo v7, " died before responding to broadcast"

    #@d6
    .line 813
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v6

    #@da
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v6

    #@de
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e1
    .line 816
    move-object/from16 v0, p0

    #@e3
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@e5
    const/4 v6, 0x0

    #@e6
    iput v6, v4, Lcom/android/server/am/BroadcastRecord;->state:I

    #@e8
    .line 817
    move-object/from16 v0, p0

    #@ea
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@ec
    move-object/from16 v0, p0

    #@ee
    iget v6, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    #@f0
    iput v6, v4, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@f2
    .line 818
    const/4 v4, 0x0

    #@f3
    move-object/from16 v0, p0

    #@f5
    iput-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@f7
    .line 822
    .end local v39    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_5
    const/16 v32, 0x0

    #@f9
    .line 825
    .local v32, "looped":Z
    :cond_6
    move-object/from16 v0, p0

    #@fb
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@fd
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@100
    move-result v4

    #@101
    if-nez v4, :cond_8

    #@103
    .line 827
    move-object/from16 v0, p0

    #@105
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@107
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    #@10a
    .line 828
    if-eqz v32, :cond_7

    #@10c
    .line 832
    move-object/from16 v0, p0

    #@10e
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@110
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@113
    :cond_7
    monitor-exit v48

    #@114
    .line 760
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@117
    .line 834
    return-void

    #@118
    .line 836
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    #@11a
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@11c
    const/4 v6, 0x0

    #@11d
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@120
    move-result-object v40

    #@121
    check-cast v40, Lcom/android/server/am/BroadcastRecord;

    #@123
    .line 837
    .restart local v40    # "r":Lcom/android/server/am/BroadcastRecord;
    const/16 v26, 0x0

    #@125
    .line 847
    .local v26, "forceReceive":Z
    move-object/from16 v0, v40

    #@127
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@129
    if-eqz v4, :cond_a

    #@12b
    move-object/from16 v0, v40

    #@12d
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@12f
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@132
    move-result v36

    #@133
    .line 848
    .local v36, "numReceivers":I
    :goto_3
    move-object/from16 v0, p0

    #@135
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@137
    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    #@139
    if-eqz v4, :cond_9

    #@13b
    move-object/from16 v0, v40

    #@13d
    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    #@13f
    const-wide/16 v8, 0x0

    #@141
    cmp-long v4, v6, v8

    #@143
    if-lez v4, :cond_9

    #@145
    .line 849
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@148
    move-result-wide v34

    #@149
    .line 850
    .local v34, "now":J
    if-lez v36, :cond_9

    #@14b
    .line 851
    move-object/from16 v0, v40

    #@14d
    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    #@14f
    move-object/from16 v0, p0

    #@151
    iget-wide v8, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    #@153
    const-wide/16 v10, 0x2

    #@155
    mul-long/2addr v8, v10

    #@156
    move/from16 v0, v36

    #@158
    int-to-long v10, v0

    #@159
    mul-long/2addr v8, v10

    #@15a
    add-long/2addr v6, v8

    #@15b
    cmp-long v4, v34, v6

    #@15d
    if-lez v4, :cond_9

    #@15f
    .line 852
    const-string/jumbo v4, "BroadcastQueue"

    #@162
    new-instance v6, Ljava/lang/StringBuilder;

    #@164
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@167
    const-string/jumbo v7, "Hung broadcast ["

    #@16a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v6

    #@16e
    .line 853
    move-object/from16 v0, p0

    #@170
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@172
    .line 852
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v6

    #@176
    .line 853
    const-string/jumbo v7, "] discarded after timeout failure:"

    #@179
    .line 852
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v6

    #@17d
    .line 854
    const-string/jumbo v7, " now="

    #@180
    .line 852
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v6

    #@184
    move-wide/from16 v0, v34

    #@186
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@189
    move-result-object v6

    #@18a
    .line 855
    const-string/jumbo v7, " dispatchTime="

    #@18d
    .line 852
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v6

    #@191
    .line 855
    move-object/from16 v0, v40

    #@193
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    #@195
    .line 852
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@198
    move-result-object v6

    #@199
    .line 856
    const-string/jumbo v7, " startTime="

    #@19c
    .line 852
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v6

    #@1a0
    .line 856
    move-object/from16 v0, v40

    #@1a2
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    #@1a4
    .line 852
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v6

    #@1a8
    .line 857
    const-string/jumbo v7, " intent="

    #@1ab
    .line 852
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v6

    #@1af
    .line 857
    move-object/from16 v0, v40

    #@1b1
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@1b3
    .line 852
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v6

    #@1b7
    .line 858
    const-string/jumbo v7, " numReceivers="

    #@1ba
    .line 852
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v6

    #@1be
    move/from16 v0, v36

    #@1c0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v6

    #@1c4
    .line 859
    const-string/jumbo v7, " nextReceiver="

    #@1c7
    .line 852
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ca
    move-result-object v6

    #@1cb
    .line 859
    move-object/from16 v0, v40

    #@1cd
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@1cf
    .line 852
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v6

    #@1d3
    .line 860
    const-string/jumbo v7, " state="

    #@1d6
    .line 852
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object v6

    #@1da
    .line 860
    move-object/from16 v0, v40

    #@1dc
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@1de
    .line 852
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v6

    #@1e2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e5
    move-result-object v6

    #@1e6
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e9
    .line 861
    const/4 v4, 0x0

    #@1ea
    move-object/from16 v0, p0

    #@1ec
    invoke-virtual {v0, v4}, Lcom/android/server/am/BroadcastQueue;->broadcastTimeoutLocked(Z)V

    #@1ef
    .line 862
    const/16 v26, 0x1

    #@1f1
    .line 863
    const/4 v4, 0x0

    #@1f2
    move-object/from16 v0, v40

    #@1f4
    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@1f6
    .line 867
    .end local v34    # "now":J
    :cond_9
    move-object/from16 v0, v40

    #@1f8
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1fa
    if-eqz v4, :cond_b

    #@1fc
    monitor-exit v48

    #@1fd
    .line 760
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@200
    .line 872
    return-void

    #@201
    .line 847
    .end local v36    # "numReceivers":I
    :cond_a
    const/16 v36, 0x0

    #@203
    .restart local v36    # "numReceivers":I
    goto/16 :goto_3

    #@205
    .line 875
    :cond_b
    :try_start_6
    move-object/from16 v0, v40

    #@207
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@209
    if-eqz v4, :cond_c

    #@20b
    move-object/from16 v0, v40

    #@20d
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@20f
    move/from16 v0, v36

    #@211
    if-lt v4, v0, :cond_13

    #@213
    .line 879
    :cond_c
    :goto_4
    move-object/from16 v0, v40

    #@215
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@217
    if-eqz v4, :cond_d

    #@219
    .line 884
    :try_start_7
    move-object/from16 v0, v40

    #@21b
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    #@21d
    move-object/from16 v0, v40

    #@21f
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    #@221
    .line 885
    new-instance v7, Landroid/content/Intent;

    #@223
    move-object/from16 v0, v40

    #@225
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@227
    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@22a
    move-object/from16 v0, v40

    #@22c
    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@22e
    .line 886
    move-object/from16 v0, v40

    #@230
    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@232
    move-object/from16 v0, v40

    #@234
    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@236
    move-object/from16 v0, v40

    #@238
    iget v13, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    #@23a
    const/4 v11, 0x0

    #@23b
    const/4 v12, 0x0

    #@23c
    move-object/from16 v4, p0

    #@23e
    .line 884
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    #@241
    .line 889
    const/4 v4, 0x0

    #@242
    move-object/from16 v0, v40

    #@244
    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@246
    .line 900
    :cond_d
    :goto_5
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->cancelBroadcastTimeoutLocked()V

    #@249
    .line 906
    move-object/from16 v0, p0

    #@24b
    move-object/from16 v1, v40

    #@24d
    invoke-direct {v0, v1}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    #@250
    .line 907
    move-object/from16 v0, v40

    #@252
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@254
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@257
    move-result-object v4

    #@258
    if-nez v4, :cond_e

    #@25a
    move-object/from16 v0, v40

    #@25c
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@25e
    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    #@261
    move-result-object v4

    #@262
    if-nez v4, :cond_e

    #@264
    .line 908
    move-object/from16 v0, v40

    #@266
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@268
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    #@26b
    move-result v4

    #@26c
    const/high16 v6, 0x40000000    # 2.0f

    #@26e
    and-int/2addr v4, v6

    #@26f
    if-nez v4, :cond_e

    #@271
    .line 910
    move-object/from16 v0, p0

    #@273
    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@275
    move-object/from16 v0, v40

    #@277
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@279
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@27c
    move-result-object v6

    #@27d
    move-object/from16 v0, v40

    #@27f
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@281
    .line 911
    move-object/from16 v0, v40

    #@283
    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    #@285
    move-object/from16 v0, v40

    #@287
    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    #@289
    move-object/from16 v0, v40

    #@28b
    iget-wide v10, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    #@28d
    move-object/from16 v0, v40

    #@28f
    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    #@291
    sub-long/2addr v10, v12

    #@292
    .line 910
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityManagerService;->addBroadcastStatLocked(Ljava/lang/String;Ljava/lang/String;IIJ)V

    #@295
    .line 913
    :cond_e
    move-object/from16 v0, p0

    #@297
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@299
    const/4 v6, 0x0

    #@29a
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@29d
    .line 914
    const/16 v40, 0x0

    #@29f
    .line 915
    .local v40, "r":Lcom/android/server/am/BroadcastRecord;
    const/16 v32, 0x1

    #@2a1
    .line 918
    .end local v40    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_f
    if-eqz v40, :cond_6

    #@2a3
    .line 921
    move-object/from16 v0, v40

    #@2a5
    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@2a7
    move/from16 v41, v0

    #@2a9
    add-int/lit8 v4, v41, 0x1

    #@2ab
    move-object/from16 v0, v40

    #@2ad
    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@2af
    .line 925
    .local v41, "recIdx":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2b2
    move-result-wide v6

    #@2b3
    move-object/from16 v0, v40

    #@2b5
    iput-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    #@2b7
    .line 926
    if-nez v41, :cond_10

    #@2b9
    .line 927
    move-object/from16 v0, v40

    #@2bb
    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    #@2bd
    move-object/from16 v0, v40

    #@2bf
    iput-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    #@2c1
    .line 928
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2c4
    move-result-wide v6

    #@2c5
    move-object/from16 v0, v40

    #@2c7
    iput-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    #@2c9
    .line 932
    :cond_10
    move-object/from16 v0, p0

    #@2cb
    iget-boolean v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    #@2cd
    if-nez v4, :cond_11

    #@2cf
    .line 933
    move-object/from16 v0, v40

    #@2d1
    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    #@2d3
    move-object/from16 v0, p0

    #@2d5
    iget-wide v8, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    #@2d7
    add-long v46, v6, v8

    #@2d9
    .line 937
    .local v46, "timeoutTime":J
    move-object/from16 v0, p0

    #@2db
    move-wide/from16 v1, v46

    #@2dd
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    #@2e0
    .line 940
    .end local v46    # "timeoutTime":J
    :cond_11
    move-object/from16 v0, v40

    #@2e2
    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    #@2e4
    move-object/from16 v18, v0

    #@2e6
    .line 941
    .local v18, "brOptions":Landroid/app/BroadcastOptions;
    move-object/from16 v0, v40

    #@2e8
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@2ea
    move/from16 v0, v41

    #@2ec
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2ef
    move-result-object v33

    #@2f0
    .line 943
    .local v33, "nextReceiver":Ljava/lang/Object;
    move-object/from16 v0, v33

    #@2f2
    instance-of v4, v0, Lcom/android/server/am/BroadcastFilter;

    #@2f4
    if-eqz v4, :cond_15

    #@2f6
    .line 946
    move-object/from16 v0, v33

    #@2f8
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    #@2fa
    move-object/from16 v25, v0

    #@2fc
    .line 951
    .local v25, "filter":Lcom/android/server/am/BroadcastFilter;
    move-object/from16 v0, v40

    #@2fe
    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    #@300
    move-object/from16 v0, p0

    #@302
    move-object/from16 v1, v40

    #@304
    move-object/from16 v2, v25

    #@306
    move/from16 v3, v41

    #@308
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V

    #@30b
    .line 952
    move-object/from16 v0, v40

    #@30d
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@30f
    if-eqz v4, :cond_14

    #@311
    move-object/from16 v0, v40

    #@313
    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    #@315
    if-eqz v4, :cond_14

    #@317
    .line 961
    if-eqz v18, :cond_12

    #@319
    invoke-virtual/range {v18 .. v18}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    #@31c
    move-result-wide v6

    #@31d
    const-wide/16 v8, 0x0

    #@31f
    cmp-long v4, v6, v8

    #@321
    if-lez v4, :cond_12

    #@323
    .line 962
    move-object/from16 v0, v25

    #@325
    iget v4, v0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    #@327
    .line 963
    invoke-virtual/range {v18 .. v18}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    #@32a
    move-result-wide v6

    #@32b
    .line 962
    move-object/from16 v0, p0

    #@32d
    move-object/from16 v1, v40

    #@32f
    invoke-virtual {v0, v4, v6, v7, v1}, Lcom/android/server/am/BroadcastQueue;->scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@332
    :cond_12
    :goto_6
    monitor-exit v48

    #@333
    .line 760
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@336
    .line 966
    return-void

    #@337
    .line 876
    .end local v18    # "brOptions":Landroid/app/BroadcastOptions;
    .end local v25    # "filter":Lcom/android/server/am/BroadcastFilter;
    .end local v33    # "nextReceiver":Ljava/lang/Object;
    .end local v41    # "recIdx":I
    .local v40, "r":Lcom/android/server/am/BroadcastRecord;
    :cond_13
    :try_start_9
    move-object/from16 v0, v40

    #@339
    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@33b
    .line 875
    if-nez v4, :cond_c

    #@33d
    if-eqz v26, :cond_f

    #@33f
    goto/16 :goto_4

    #@341
    .line 890
    :catch_0
    move-exception v20

    #@342
    .line 891
    .local v20, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    #@343
    move-object/from16 v0, v40

    #@345
    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    #@347
    .line 892
    const-string/jumbo v4, "BroadcastQueue"

    #@34a
    new-instance v6, Ljava/lang/StringBuilder;

    #@34c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@34f
    const-string/jumbo v7, "Failure ["

    #@352
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@355
    move-result-object v6

    #@356
    .line 893
    move-object/from16 v0, p0

    #@358
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@35a
    .line 892
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35d
    move-result-object v6

    #@35e
    .line 893
    const-string/jumbo v7, "] sending broadcast result of "

    #@361
    .line 892
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@364
    move-result-object v6

    #@365
    .line 894
    move-object/from16 v0, v40

    #@367
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@369
    .line 892
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36c
    move-result-object v6

    #@36d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@370
    move-result-object v6

    #@371
    move-object/from16 v0, v20

    #@373
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@376
    goto/16 :goto_5

    #@378
    .line 958
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v40    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v18    # "brOptions":Landroid/app/BroadcastOptions;
    .restart local v25    # "filter":Lcom/android/server/am/BroadcastFilter;
    .restart local v33    # "nextReceiver":Ljava/lang/Object;
    .restart local v41    # "recIdx":I
    :cond_14
    const/4 v4, 0x0

    #@379
    move-object/from16 v0, v40

    #@37b
    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@37d
    .line 959
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    #@380
    goto :goto_6

    #@381
    .line 973
    .end local v25    # "filter":Lcom/android/server/am/BroadcastFilter;
    :cond_15
    move-object/from16 v0, v33

    #@383
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@385
    move-object/from16 v28, v0

    #@387
    .line 974
    .local v28, "info":Landroid/content/pm/ResolveInfo;
    new-instance v19, Landroid/content/ComponentName;

    #@389
    .line 975
    move-object/from16 v0, v28

    #@38b
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@38d
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@38f
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@391
    .line 976
    move-object/from16 v0, v28

    #@393
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@395
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@397
    .line 974
    move-object/from16 v0, v19

    #@399
    invoke-direct {v0, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@39c
    .line 978
    .local v19, "component":Landroid/content/ComponentName;
    const/16 v44, 0x0

    #@39e
    .line 979
    .local v44, "skip":Z
    if-eqz v18, :cond_17

    #@3a0
    .line 980
    move-object/from16 v0, v28

    #@3a2
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3a4
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3a6
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@3a8
    .line 981
    invoke-virtual/range {v18 .. v18}, Landroid/app/BroadcastOptions;->getMinManifestReceiverApiLevel()I

    #@3ab
    move-result v6

    #@3ac
    .line 980
    if-lt v4, v6, :cond_16

    #@3ae
    .line 982
    move-object/from16 v0, v28

    #@3b0
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3b2
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3b4
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@3b6
    .line 983
    invoke-virtual/range {v18 .. v18}, Landroid/app/BroadcastOptions;->getMaxManifestReceiverApiLevel()I

    #@3b9
    move-result v6

    #@3ba
    .line 982
    if-le v4, v6, :cond_17

    #@3bc
    .line 984
    :cond_16
    const/16 v44, 0x1

    #@3be
    .line 986
    :cond_17
    move-object/from16 v0, p0

    #@3c0
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3c2
    move-object/from16 v0, v28

    #@3c4
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3c6
    iget-object v5, v6, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@3c8
    .line 987
    move-object/from16 v0, v40

    #@3ca
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@3cc
    move-object/from16 v0, v40

    #@3ce
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@3d0
    move-object/from16 v0, v28

    #@3d2
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3d4
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3d6
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@3d8
    .line 988
    move-object/from16 v0, v28

    #@3da
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3dc
    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    #@3de
    .line 986
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    #@3e1
    move-result v38

    #@3e2
    .line 989
    .local v38, "perm":I
    if-nez v44, :cond_23

    #@3e4
    if-eqz v38, :cond_23

    #@3e6
    .line 990
    move-object/from16 v0, v28

    #@3e8
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3ea
    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    #@3ec
    if-nez v4, :cond_22

    #@3ee
    .line 991
    const-string/jumbo v4, "BroadcastQueue"

    #@3f1
    new-instance v6, Ljava/lang/StringBuilder;

    #@3f3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3f6
    const-string/jumbo v7, "Permission Denial: broadcasting "

    #@3f9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fc
    move-result-object v6

    #@3fd
    .line 992
    move-object/from16 v0, v40

    #@3ff
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@401
    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@404
    move-result-object v7

    #@405
    .line 991
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@408
    move-result-object v6

    #@409
    .line 993
    const-string/jumbo v7, " from "

    #@40c
    .line 991
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40f
    move-result-object v6

    #@410
    .line 993
    move-object/from16 v0, v40

    #@412
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@414
    .line 991
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@417
    move-result-object v6

    #@418
    .line 993
    const-string/jumbo v7, " (pid="

    #@41b
    .line 991
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41e
    move-result-object v6

    #@41f
    .line 993
    move-object/from16 v0, v40

    #@421
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@423
    .line 991
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@426
    move-result-object v6

    #@427
    .line 994
    const-string/jumbo v7, ", uid="

    #@42a
    .line 991
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42d
    move-result-object v6

    #@42e
    .line 994
    move-object/from16 v0, v40

    #@430
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@432
    .line 991
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@435
    move-result-object v6

    #@436
    .line 994
    const-string/jumbo v7, ")"

    #@439
    .line 991
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43c
    move-result-object v6

    #@43d
    .line 995
    const-string/jumbo v7, " is not exported from uid "

    #@440
    .line 991
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@443
    move-result-object v6

    #@444
    .line 995
    move-object/from16 v0, v28

    #@446
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@448
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@44a
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@44c
    .line 991
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44f
    move-result-object v6

    #@450
    .line 996
    const-string/jumbo v7, " due to receiver "

    #@453
    .line 991
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@456
    move-result-object v6

    #@457
    .line 996
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@45a
    move-result-object v7

    #@45b
    .line 991
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45e
    move-result-object v6

    #@45f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@462
    move-result-object v6

    #@463
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@466
    .line 1005
    :goto_7
    const/16 v44, 0x1

    #@468
    .line 1022
    :cond_18
    :goto_8
    if-nez v44, :cond_19

    #@46a
    move-object/from16 v0, v28

    #@46c
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@46e
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@470
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@472
    const/16 v6, 0x3e8

    #@474
    if-eq v4, v6, :cond_19

    #@476
    .line 1023
    move-object/from16 v0, v40

    #@478
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@47a
    if-eqz v4, :cond_19

    #@47c
    move-object/from16 v0, v40

    #@47e
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@480
    array-length v4, v4

    #@481
    if-lez v4, :cond_19

    #@483
    .line 1024
    const/16 v27, 0x0

    #@485
    .restart local v27    # "i":I
    :goto_9
    move-object/from16 v0, v40

    #@487
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@489
    array-length v4, v4

    #@48a
    move/from16 v0, v27

    #@48c
    if-ge v0, v4, :cond_19

    #@48e
    .line 1025
    move-object/from16 v0, v40

    #@490
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@492
    aget-object v43, v4, v27
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@494
    .line 1027
    .local v43, "requiredPermission":Ljava/lang/String;
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@497
    move-result-object v4

    #@498
    .line 1029
    move-object/from16 v0, v28

    #@49a
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@49c
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@49e
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@4a0
    .line 1031
    move-object/from16 v0, v28

    #@4a2
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4a4
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4a6
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@4a8
    .line 1030
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    #@4ab
    move-result v7

    #@4ac
    .line 1027
    move-object/from16 v0, v43

    #@4ae
    invoke-interface {v4, v0, v6, v7}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@4b1
    move-result v38

    #@4b2
    .line 1035
    :goto_a
    if-eqz v38, :cond_24

    #@4b4
    .line 1036
    :try_start_b
    const-string/jumbo v4, "BroadcastQueue"

    #@4b7
    new-instance v6, Ljava/lang/StringBuilder;

    #@4b9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4bc
    const-string/jumbo v7, "Permission Denial: receiving "

    #@4bf
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c2
    move-result-object v6

    #@4c3
    .line 1037
    move-object/from16 v0, v40

    #@4c5
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@4c7
    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4ca
    move-result-object v6

    #@4cb
    .line 1037
    const-string/jumbo v7, " to "

    #@4ce
    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d1
    move-result-object v6

    #@4d2
    .line 1038
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@4d5
    move-result-object v7

    #@4d6
    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d9
    move-result-object v6

    #@4da
    .line 1039
    const-string/jumbo v7, " requires "

    #@4dd
    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e0
    move-result-object v6

    #@4e1
    move-object/from16 v0, v43

    #@4e3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e6
    move-result-object v6

    #@4e7
    .line 1040
    const-string/jumbo v7, " due to sender "

    #@4ea
    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ed
    move-result-object v6

    #@4ee
    .line 1040
    move-object/from16 v0, v40

    #@4f0
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@4f2
    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f5
    move-result-object v6

    #@4f6
    .line 1041
    const-string/jumbo v7, " (uid "

    #@4f9
    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fc
    move-result-object v6

    #@4fd
    .line 1041
    move-object/from16 v0, v40

    #@4ff
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@501
    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@504
    move-result-object v6

    #@505
    .line 1041
    const-string/jumbo v7, ")"

    #@508
    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50b
    move-result-object v6

    #@50c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50f
    move-result-object v6

    #@510
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@513
    .line 1042
    const/16 v44, 0x1

    #@515
    .line 1062
    .end local v27    # "i":I
    .end local v43    # "requiredPermission":Ljava/lang/String;
    :cond_19
    :goto_b
    if-nez v44, :cond_1a

    #@517
    move-object/from16 v0, v40

    #@519
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@51b
    const/4 v6, -0x1

    #@51c
    if-eq v4, v6, :cond_1a

    #@51e
    .line 1063
    move-object/from16 v0, p0

    #@520
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@522
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@524
    move-object/from16 v0, v40

    #@526
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@528
    .line 1064
    move-object/from16 v0, v28

    #@52a
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@52c
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@52e
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@530
    move-object/from16 v0, v28

    #@532
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@534
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@536
    .line 1063
    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@539
    move-result v4

    #@53a
    if-eqz v4, :cond_1a

    #@53c
    .line 1066
    const-string/jumbo v4, "BroadcastQueue"

    #@53f
    new-instance v6, Ljava/lang/StringBuilder;

    #@541
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@544
    const-string/jumbo v7, "Appop Denial: receiving "

    #@547
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54a
    move-result-object v6

    #@54b
    .line 1067
    move-object/from16 v0, v40

    #@54d
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@54f
    .line 1066
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@552
    move-result-object v6

    #@553
    .line 1067
    const-string/jumbo v7, " to "

    #@556
    .line 1066
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@559
    move-result-object v6

    #@55a
    .line 1068
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@55d
    move-result-object v7

    #@55e
    .line 1066
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@561
    move-result-object v6

    #@562
    .line 1069
    const-string/jumbo v7, " requires appop "

    #@565
    .line 1066
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@568
    move-result-object v6

    #@569
    .line 1069
    move-object/from16 v0, v40

    #@56b
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@56d
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@570
    move-result-object v7

    #@571
    .line 1066
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@574
    move-result-object v6

    #@575
    .line 1070
    const-string/jumbo v7, " due to sender "

    #@578
    .line 1066
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57b
    move-result-object v6

    #@57c
    .line 1070
    move-object/from16 v0, v40

    #@57e
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@580
    .line 1066
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@583
    move-result-object v6

    #@584
    .line 1071
    const-string/jumbo v7, " (uid "

    #@587
    .line 1066
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58a
    move-result-object v6

    #@58b
    .line 1071
    move-object/from16 v0, v40

    #@58d
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@58f
    .line 1066
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@592
    move-result-object v6

    #@593
    .line 1071
    const-string/jumbo v7, ")"

    #@596
    .line 1066
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@599
    move-result-object v6

    #@59a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59d
    move-result-object v6

    #@59e
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5a1
    .line 1072
    const/16 v44, 0x1

    #@5a3
    .line 1074
    :cond_1a
    if-nez v44, :cond_1b

    #@5a5
    .line 1075
    move-object/from16 v0, p0

    #@5a7
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5a9
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    #@5ab
    move-object/from16 v0, v40

    #@5ad
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@5af
    move-object/from16 v0, v40

    #@5b1
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@5b3
    .line 1076
    move-object/from16 v0, v40

    #@5b5
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@5b7
    move-object/from16 v0, v40

    #@5b9
    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    #@5bb
    move-object/from16 v0, v28

    #@5bd
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@5bf
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5c1
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@5c3
    .line 1075
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@5c6
    move-result v4

    #@5c7
    if-eqz v4, :cond_26

    #@5c9
    const/16 v44, 0x0

    #@5cb
    .line 1078
    :cond_1b
    :goto_c
    const/16 v31, 0x0

    #@5cd
    .line 1080
    .local v31, "isSingleton":Z
    :try_start_c
    move-object/from16 v0, p0

    #@5cf
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5d1
    move-object/from16 v0, v28

    #@5d3
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@5d5
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@5d7
    .line 1081
    move-object/from16 v0, v28

    #@5d9
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@5db
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5dd
    .line 1082
    move-object/from16 v0, v28

    #@5df
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@5e1
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@5e3
    move-object/from16 v0, v28

    #@5e5
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@5e7
    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    #@5e9
    .line 1080
    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@5ec
    move-result v31

    #@5ed
    .line 1087
    .end local v31    # "isSingleton":Z
    :goto_d
    :try_start_d
    move-object/from16 v0, v28

    #@5ef
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@5f1
    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@5f3
    const/high16 v6, 0x40000000    # 2.0f

    #@5f5
    and-int/2addr v4, v6

    #@5f6
    if-eqz v4, :cond_1c

    #@5f8
    .line 1089
    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS"

    #@5fb
    .line 1090
    move-object/from16 v0, v28

    #@5fd
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@5ff
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@601
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@603
    .line 1088
    invoke-static {v4, v6}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    #@606
    move-result v4

    #@607
    if-eqz v4, :cond_1c

    #@609
    .line 1092
    const-string/jumbo v4, "BroadcastQueue"

    #@60c
    new-instance v6, Ljava/lang/StringBuilder;

    #@60e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@611
    const-string/jumbo v7, "Permission Denial: Receiver "

    #@614
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@617
    move-result-object v6

    #@618
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@61b
    move-result-object v7

    #@61c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61f
    move-result-object v6

    #@620
    .line 1093
    const-string/jumbo v7, " requests FLAG_SINGLE_USER, but app does not hold "

    #@623
    .line 1092
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@626
    move-result-object v6

    #@627
    .line 1094
    const-string/jumbo v7, "android.permission.INTERACT_ACROSS_USERS"

    #@62a
    .line 1092
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62d
    move-result-object v6

    #@62e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@631
    move-result-object v6

    #@632
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@635
    .line 1095
    const/16 v44, 0x1

    #@637
    .line 1098
    :cond_1c
    if-nez v44, :cond_27

    #@639
    .line 1099
    move-object/from16 v0, v40

    #@63b
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    #@63d
    add-int/lit8 v4, v4, 0x1

    #@63f
    move-object/from16 v0, v40

    #@641
    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    #@643
    .line 1103
    :goto_e
    move-object/from16 v0, v40

    #@645
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@647
    if-eqz v4, :cond_1d

    #@649
    move-object/from16 v0, v40

    #@64b
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@64d
    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@64f
    if-eqz v4, :cond_1d

    #@651
    .line 1105
    const-string/jumbo v4, "BroadcastQueue"

    #@654
    new-instance v6, Ljava/lang/StringBuilder;

    #@656
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@659
    const-string/jumbo v7, "Skipping deliver ordered ["

    #@65c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65f
    move-result-object v6

    #@660
    move-object/from16 v0, p0

    #@662
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    #@664
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@667
    move-result-object v6

    #@668
    const-string/jumbo v7, "] "

    #@66b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66e
    move-result-object v6

    #@66f
    move-object/from16 v0, v40

    #@671
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@674
    move-result-object v6

    #@675
    .line 1106
    const-string/jumbo v7, " to "

    #@678
    .line 1105
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67b
    move-result-object v6

    #@67c
    .line 1106
    move-object/from16 v0, v40

    #@67e
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@680
    .line 1105
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@683
    move-result-object v6

    #@684
    .line 1106
    const-string/jumbo v7, ": process crashing"

    #@687
    .line 1105
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68a
    move-result-object v6

    #@68b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68e
    move-result-object v6

    #@68f
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@692
    .line 1107
    const/16 v44, 0x1

    #@694
    .line 1109
    :cond_1d
    if-nez v44, :cond_1e

    #@696
    .line 1110
    const/16 v29, 0x0

    #@698
    .line 1112
    .local v29, "isAvailable":Z
    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@69b
    move-result-object v4

    #@69c
    .line 1113
    move-object/from16 v0, v28

    #@69e
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6a0
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@6a2
    .line 1114
    move-object/from16 v0, v28

    #@6a4
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6a6
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6a8
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@6aa
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    #@6ad
    move-result v7

    #@6ae
    .line 1112
    invoke-interface {v4, v6, v7}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@6b1
    move-result v29

    #@6b2
    .line 1120
    .end local v29    # "isAvailable":Z
    :goto_f
    if-nez v29, :cond_1e

    #@6b4
    .line 1125
    const/16 v44, 0x1

    #@6b6
    .line 1133
    :cond_1e
    :try_start_f
    sget-boolean v4, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    #@6b8
    if-eqz v4, :cond_1f

    #@6ba
    if-eqz v44, :cond_28

    #@6bc
    .line 1143
    :cond_1f
    :goto_10
    move-object/from16 v0, v28

    #@6be
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6c0
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6c2
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@6c4
    move/from16 v42, v0

    #@6c6
    .line 1145
    .local v42, "receiverUid":I
    move-object/from16 v0, v40

    #@6c8
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@6ca
    const/16 v6, 0x3e8

    #@6cc
    if-eq v4, v6, :cond_20

    #@6ce
    if-eqz v31, :cond_20

    #@6d0
    .line 1146
    move-object/from16 v0, p0

    #@6d2
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6d4
    move-object/from16 v0, v40

    #@6d6
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@6d8
    move/from16 v0, v42

    #@6da
    invoke-virtual {v4, v6, v0}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    #@6dd
    move-result v4

    #@6de
    .line 1145
    if-eqz v4, :cond_20

    #@6e0
    .line 1147
    move-object/from16 v0, p0

    #@6e2
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6e4
    move-object/from16 v0, v28

    #@6e6
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6e8
    const/4 v7, 0x0

    #@6e9
    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    #@6ec
    move-result-object v4

    #@6ed
    move-object/from16 v0, v28

    #@6ef
    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6f1
    .line 1149
    :cond_20
    move-object/from16 v0, v28

    #@6f3
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6f5
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@6f7
    .line 1150
    .local v5, "targetProcess":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6f9
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6fb
    .line 1151
    move-object/from16 v0, v28

    #@6fd
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6ff
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@701
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@703
    const/4 v7, 0x0

    #@704
    .line 1150
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    #@707
    move-result-object v16

    #@708
    .line 1153
    .local v16, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v44, :cond_21

    #@70a
    .line 1154
    move-object/from16 v0, p0

    #@70c
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@70e
    .line 1155
    move-object/from16 v0, v28

    #@710
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@712
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@714
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@716
    move-object/from16 v0, v28

    #@718
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@71a
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@71c
    const/4 v8, -0x1

    #@71d
    .line 1156
    const/4 v9, 0x0

    #@71e
    .line 1154
    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->checkAllowBackgroundLocked(ILjava/lang/String;IZ)I

    #@721
    move-result v15

    #@722
    .line 1157
    .local v15, "allowed":I
    if-eqz v15, :cond_21

    #@724
    .line 1162
    const/4 v4, 0x2

    #@725
    if-ne v15, v4, :cond_29

    #@727
    .line 1163
    const-string/jumbo v4, "BroadcastQueue"

    #@72a
    new-instance v6, Ljava/lang/StringBuilder;

    #@72c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@72f
    const-string/jumbo v7, "Background execution disabled: receiving "

    #@732
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@735
    move-result-object v6

    #@736
    .line 1164
    move-object/from16 v0, v40

    #@738
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@73a
    .line 1163
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73d
    move-result-object v6

    #@73e
    .line 1164
    const-string/jumbo v7, " to "

    #@741
    .line 1163
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@744
    move-result-object v6

    #@745
    .line 1165
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@748
    move-result-object v7

    #@749
    .line 1163
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74c
    move-result-object v6

    #@74d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@750
    move-result-object v6

    #@751
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@754
    .line 1166
    const/16 v44, 0x1

    #@756
    .line 1180
    .end local v15    # "allowed":I
    :cond_21
    :goto_11
    if-eqz v44, :cond_2b

    #@758
    .line 1184
    move-object/from16 v0, v40

    #@75a
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    #@75c
    const/4 v6, 0x2

    #@75d
    aput v6, v4, v41

    #@75f
    .line 1185
    const/4 v4, 0x0

    #@760
    move-object/from16 v0, v40

    #@762
    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@764
    .line 1186
    const/4 v4, 0x0

    #@765
    move-object/from16 v0, v40

    #@767
    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    #@769
    .line 1187
    const/4 v4, 0x0

    #@76a
    move-object/from16 v0, v40

    #@76c
    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@76e
    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@771
    monitor-exit v48

    #@772
    .line 760
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@775
    .line 1189
    return-void

    #@776
    .line 998
    .end local v5    # "targetProcess":Ljava/lang/String;
    .end local v16    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v42    # "receiverUid":I
    :cond_22
    :try_start_10
    const-string/jumbo v4, "BroadcastQueue"

    #@779
    new-instance v6, Ljava/lang/StringBuilder;

    #@77b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@77e
    const-string/jumbo v7, "Permission Denial: broadcasting "

    #@781
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@784
    move-result-object v6

    #@785
    .line 999
    move-object/from16 v0, v40

    #@787
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@789
    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@78c
    move-result-object v7

    #@78d
    .line 998
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@790
    move-result-object v6

    #@791
    .line 1000
    const-string/jumbo v7, " from "

    #@794
    .line 998
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@797
    move-result-object v6

    #@798
    .line 1000
    move-object/from16 v0, v40

    #@79a
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@79c
    .line 998
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79f
    move-result-object v6

    #@7a0
    .line 1000
    const-string/jumbo v7, " (pid="

    #@7a3
    .line 998
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a6
    move-result-object v6

    #@7a7
    .line 1000
    move-object/from16 v0, v40

    #@7a9
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@7ab
    .line 998
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7ae
    move-result-object v6

    #@7af
    .line 1001
    const-string/jumbo v7, ", uid="

    #@7b2
    .line 998
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b5
    move-result-object v6

    #@7b6
    .line 1001
    move-object/from16 v0, v40

    #@7b8
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@7ba
    .line 998
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7bd
    move-result-object v6

    #@7be
    .line 1001
    const-string/jumbo v7, ")"

    #@7c1
    .line 998
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c4
    move-result-object v6

    #@7c5
    .line 1002
    const-string/jumbo v7, " requires "

    #@7c8
    .line 998
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7cb
    move-result-object v6

    #@7cc
    .line 1002
    move-object/from16 v0, v28

    #@7ce
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@7d0
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@7d2
    .line 998
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d5
    move-result-object v6

    #@7d6
    .line 1003
    const-string/jumbo v7, " due to receiver "

    #@7d9
    .line 998
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7dc
    move-result-object v6

    #@7dd
    .line 1003
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@7e0
    move-result-object v7

    #@7e1
    .line 998
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e4
    move-result-object v6

    #@7e5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e8
    move-result-object v6

    #@7e9
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7ec
    goto/16 :goto_7

    #@7ee
    .line 1006
    :cond_23
    if-nez v44, :cond_18

    #@7f0
    move-object/from16 v0, v28

    #@7f2
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@7f4
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@7f6
    if-eqz v4, :cond_18

    #@7f8
    .line 1007
    move-object/from16 v0, v28

    #@7fa
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@7fc
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@7fe
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@801
    move-result v37

    #@802
    .line 1008
    .local v37, "opCode":I
    const/4 v4, -0x1

    #@803
    move/from16 v0, v37

    #@805
    if-eq v0, v4, :cond_18

    #@807
    .line 1009
    move-object/from16 v0, p0

    #@809
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@80b
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@80d
    move-object/from16 v0, v40

    #@80f
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@811
    .line 1010
    move-object/from16 v0, v40

    #@813
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@815
    .line 1009
    move/from16 v0, v37

    #@817
    invoke-virtual {v4, v0, v6, v7}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@81a
    move-result v4

    #@81b
    if-eqz v4, :cond_18

    #@81d
    .line 1011
    const-string/jumbo v4, "BroadcastQueue"

    #@820
    new-instance v6, Ljava/lang/StringBuilder;

    #@822
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@825
    const-string/jumbo v7, "Appop Denial: broadcasting "

    #@828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82b
    move-result-object v6

    #@82c
    .line 1012
    move-object/from16 v0, v40

    #@82e
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@830
    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@833
    move-result-object v7

    #@834
    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@837
    move-result-object v6

    #@838
    .line 1013
    const-string/jumbo v7, " from "

    #@83b
    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83e
    move-result-object v6

    #@83f
    .line 1013
    move-object/from16 v0, v40

    #@841
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@843
    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@846
    move-result-object v6

    #@847
    .line 1013
    const-string/jumbo v7, " (pid="

    #@84a
    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84d
    move-result-object v6

    #@84e
    .line 1014
    move-object/from16 v0, v40

    #@850
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@852
    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@855
    move-result-object v6

    #@856
    .line 1014
    const-string/jumbo v7, ", uid="

    #@859
    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85c
    move-result-object v6

    #@85d
    .line 1014
    move-object/from16 v0, v40

    #@85f
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@861
    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@864
    move-result-object v6

    #@865
    .line 1014
    const-string/jumbo v7, ")"

    #@868
    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86b
    move-result-object v6

    #@86c
    .line 1015
    const-string/jumbo v7, " requires appop "

    #@86f
    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@872
    move-result-object v6

    #@873
    .line 1016
    move-object/from16 v0, v28

    #@875
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@877
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@879
    .line 1015
    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    #@87c
    move-result-object v7

    #@87d
    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@880
    move-result-object v6

    #@881
    .line 1017
    const-string/jumbo v7, " due to registered receiver "

    #@884
    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@887
    move-result-object v6

    #@888
    .line 1018
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@88b
    move-result-object v7

    #@88c
    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88f
    move-result-object v6

    #@890
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@893
    move-result-object v6

    #@894
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@897
    .line 1019
    const/16 v44, 0x1

    #@899
    goto/16 :goto_8

    #@89b
    .line 1032
    .end local v37    # "opCode":I
    .restart local v27    # "i":I
    .restart local v43    # "requiredPermission":Ljava/lang/String;
    :catch_1
    move-exception v20

    #@89c
    .line 1033
    .restart local v20    # "e":Landroid/os/RemoteException;
    const/16 v38, -0x1

    #@89e
    goto/16 :goto_a

    #@8a0
    .line 1045
    .end local v20    # "e":Landroid/os/RemoteException;
    :cond_24
    invoke-static/range {v43 .. v43}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@8a3
    move-result v17

    #@8a4
    .line 1046
    .local v17, "appOp":I
    const/4 v4, -0x1

    #@8a5
    move/from16 v0, v17

    #@8a7
    if-eq v0, v4, :cond_25

    #@8a9
    move-object/from16 v0, v40

    #@8ab
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@8ad
    move/from16 v0, v17

    #@8af
    if-eq v0, v4, :cond_25

    #@8b1
    .line 1047
    move-object/from16 v0, p0

    #@8b3
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@8b5
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@8b7
    .line 1048
    move-object/from16 v0, v28

    #@8b9
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@8bb
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8bd
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@8bf
    move-object/from16 v0, v28

    #@8c1
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@8c3
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@8c5
    .line 1047
    move/from16 v0, v17

    #@8c7
    invoke-virtual {v4, v0, v6, v7}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@8ca
    move-result v4

    #@8cb
    if-eqz v4, :cond_25

    #@8cd
    .line 1050
    const-string/jumbo v4, "BroadcastQueue"

    #@8d0
    new-instance v6, Ljava/lang/StringBuilder;

    #@8d2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8d5
    const-string/jumbo v7, "Appop Denial: receiving "

    #@8d8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8db
    move-result-object v6

    #@8dc
    .line 1051
    move-object/from16 v0, v40

    #@8de
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@8e0
    .line 1050
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e3
    move-result-object v6

    #@8e4
    .line 1051
    const-string/jumbo v7, " to "

    #@8e7
    .line 1050
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8ea
    move-result-object v6

    #@8eb
    .line 1052
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@8ee
    move-result-object v7

    #@8ef
    .line 1050
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f2
    move-result-object v6

    #@8f3
    .line 1053
    const-string/jumbo v7, " requires appop "

    #@8f6
    .line 1050
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f9
    move-result-object v6

    #@8fa
    .line 1053
    invoke-static/range {v43 .. v43}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    #@8fd
    move-result-object v7

    #@8fe
    .line 1050
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@901
    move-result-object v6

    #@902
    .line 1055
    const-string/jumbo v7, " due to sender "

    #@905
    .line 1050
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@908
    move-result-object v6

    #@909
    .line 1055
    move-object/from16 v0, v40

    #@90b
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@90d
    .line 1050
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@910
    move-result-object v6

    #@911
    .line 1056
    const-string/jumbo v7, " (uid "

    #@914
    .line 1050
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@917
    move-result-object v6

    #@918
    .line 1056
    move-object/from16 v0, v40

    #@91a
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@91c
    .line 1050
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91f
    move-result-object v6

    #@920
    .line 1056
    const-string/jumbo v7, ")"

    #@923
    .line 1050
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@926
    move-result-object v6

    #@927
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92a
    move-result-object v6

    #@92b
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@92e
    .line 1057
    const/16 v44, 0x1

    #@930
    .line 1058
    goto/16 :goto_b

    #@932
    .line 1024
    :cond_25
    add-int/lit8 v27, v27, 0x1

    #@934
    goto/16 :goto_9

    #@936
    .line 1075
    .end local v17    # "appOp":I
    .end local v27    # "i":I
    .end local v43    # "requiredPermission":Ljava/lang/String;
    :cond_26
    const/16 v44, 0x1

    #@938
    goto/16 :goto_c

    #@93a
    .line 1083
    .restart local v31    # "isSingleton":Z
    :catch_2
    move-exception v24

    #@93b
    .line 1084
    .local v24, "e":Ljava/lang/SecurityException;
    const-string/jumbo v4, "BroadcastQueue"

    #@93e
    invoke-virtual/range {v24 .. v24}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@941
    move-result-object v6

    #@942
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@945
    .line 1085
    const/16 v44, 0x1

    #@947
    goto/16 :goto_d

    #@949
    .line 1101
    .end local v24    # "e":Ljava/lang/SecurityException;
    .end local v31    # "isSingleton":Z
    :cond_27
    move-object/from16 v0, v40

    #@94b
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    #@94d
    add-int/lit8 v4, v4, 0x1

    #@94f
    move-object/from16 v0, v40

    #@951
    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    #@953
    goto/16 :goto_e

    #@955
    .line 1115
    .restart local v29    # "isAvailable":Z
    :catch_3
    move-exception v21

    #@956
    .line 1117
    .local v21, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BroadcastQueue"

    #@959
    new-instance v6, Ljava/lang/StringBuilder;

    #@95b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@95e
    const-string/jumbo v7, "Exception getting recipient info for "

    #@961
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@964
    move-result-object v6

    #@965
    .line 1118
    move-object/from16 v0, v28

    #@967
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@969
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@96b
    .line 1117
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96e
    move-result-object v6

    #@96f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@972
    move-result-object v6

    #@973
    move-object/from16 v0, v21

    #@975
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@978
    goto/16 :goto_f

    #@97a
    .line 1135
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v29    # "isAvailable":Z
    :cond_28
    move-object/from16 v0, v28

    #@97c
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@97e
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@980
    .line 1136
    move-object/from16 v0, v28

    #@982
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@984
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@986
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@988
    .line 1135
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    #@98b
    move-result v6

    #@98c
    .line 1134
    move-object/from16 v0, p0

    #@98e
    move-object/from16 v1, v40

    #@990
    invoke-direct {v0, v1, v4, v6}, Lcom/android/server/am/BroadcastQueue;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;I)Z

    #@993
    move-result v4

    #@994
    if-nez v4, :cond_1f

    #@996
    .line 1137
    const/16 v44, 0x1

    #@998
    goto/16 :goto_10

    #@99a
    .line 1167
    .restart local v5    # "targetProcess":Ljava/lang/String;
    .restart local v15    # "allowed":I
    .restart local v16    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v42    # "receiverUid":I
    :cond_29
    move-object/from16 v0, v40

    #@99c
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@99e
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    #@9a1
    move-result v4

    #@9a2
    const/high16 v6, 0x800000

    #@9a4
    and-int/2addr v4, v6

    #@9a5
    if-nez v4, :cond_2a

    #@9a7
    .line 1168
    move-object/from16 v0, v40

    #@9a9
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@9ab
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@9ae
    move-result-object v4

    #@9af
    if-nez v4, :cond_21

    #@9b1
    .line 1169
    move-object/from16 v0, v40

    #@9b3
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@9b5
    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    #@9b8
    move-result-object v4

    #@9b9
    if-nez v4, :cond_21

    #@9bb
    .line 1170
    move-object/from16 v0, v40

    #@9bd
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@9bf
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    #@9c2
    move-result v4

    #@9c3
    .line 1171
    const/high16 v6, 0x1000000

    #@9c5
    .line 1170
    and-int/2addr v4, v6

    #@9c6
    if-nez v4, :cond_21

    #@9c8
    .line 1172
    :cond_2a
    const-string/jumbo v4, "BroadcastQueue"

    #@9cb
    new-instance v6, Ljava/lang/StringBuilder;

    #@9cd
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9d0
    const-string/jumbo v7, "Background execution not allowed: receiving "

    #@9d3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d6
    move-result-object v6

    #@9d7
    .line 1173
    move-object/from16 v0, v40

    #@9d9
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@9db
    .line 1172
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9de
    move-result-object v6

    #@9df
    .line 1173
    const-string/jumbo v7, " to "

    #@9e2
    .line 1172
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e5
    move-result-object v6

    #@9e6
    .line 1174
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@9e9
    move-result-object v7

    #@9ea
    .line 1172
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9ed
    move-result-object v6

    #@9ee
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f1
    move-result-object v6

    #@9f2
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9f5
    .line 1175
    const/16 v44, 0x1

    #@9f7
    goto/16 :goto_11

    #@9f9
    .line 1192
    .end local v15    # "allowed":I
    :cond_2b
    move-object/from16 v0, v40

    #@9fb
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    #@9fd
    const/4 v6, 0x1

    #@9fe
    aput v6, v4, v41

    #@a00
    .line 1193
    const/4 v4, 0x1

    #@a01
    move-object/from16 v0, v40

    #@a03
    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@a05
    .line 1194
    move-object/from16 v0, v19

    #@a07
    move-object/from16 v1, v40

    #@a09
    iput-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@a0b
    .line 1195
    move-object/from16 v0, v28

    #@a0d
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@a0f
    move-object/from16 v0, v40

    #@a11
    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@a13
    .line 1202
    if-eqz v18, :cond_2c

    #@a15
    invoke-virtual/range {v18 .. v18}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    #@a18
    move-result-wide v6

    #@a19
    const-wide/16 v8, 0x0

    #@a1b
    cmp-long v4, v6, v8

    #@a1d
    if-lez v4, :cond_2c

    #@a1f
    .line 1204
    invoke-virtual/range {v18 .. v18}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    #@a22
    move-result-wide v6

    #@a23
    .line 1203
    move-object/from16 v0, p0

    #@a25
    move/from16 v1, v42

    #@a27
    move-object/from16 v2, v40

    #@a29
    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/android/server/am/BroadcastQueue;->scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@a2c
    .line 1209
    :cond_2c
    :try_start_11
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@a2f
    move-result-object v4

    #@a30
    .line 1210
    move-object/from16 v0, v40

    #@a32
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@a34
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@a37
    move-result-object v6

    #@a38
    move-object/from16 v0, v40

    #@a3a
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@a3c
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    #@a3f
    move-result v7

    #@a40
    const/4 v8, 0x0

    #@a41
    .line 1209
    invoke-interface {v4, v6, v8, v7}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@a44
    .line 1218
    :goto_12
    if-eqz v16, :cond_2d

    #@a46
    :try_start_12
    move-object/from16 v0, v16

    #@a48
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    #@a4a
    if-eqz v4, :cond_2d

    #@a4c
    .line 1220
    :try_start_13
    move-object/from16 v0, v28

    #@a4e
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@a50
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@a52
    .line 1221
    move-object/from16 v0, v28

    #@a54
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@a56
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a58
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@a5a
    move-object/from16 v0, p0

    #@a5c
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a5e
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@a60
    .line 1220
    move-object/from16 v0, v16

    #@a62
    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    #@a65
    .line 1222
    move-object/from16 v0, p0

    #@a67
    move-object/from16 v1, v40

    #@a69
    move-object/from16 v2, v16

    #@a6b
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@a6e
    monitor-exit v48

    #@a6f
    .line 760
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@a72
    .line 1223
    return-void

    #@a73
    .line 1212
    :catch_4
    move-exception v22

    #@a74
    .line 1213
    .local v22, "e":Ljava/lang/IllegalArgumentException;
    :try_start_14
    const-string/jumbo v4, "BroadcastQueue"

    #@a77
    new-instance v6, Ljava/lang/StringBuilder;

    #@a79
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a7c
    const-string/jumbo v7, "Failed trying to unstop package "

    #@a7f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a82
    move-result-object v6

    #@a83
    .line 1214
    move-object/from16 v0, v40

    #@a85
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@a87
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@a8a
    move-result-object v7

    #@a8b
    .line 1213
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8e
    move-result-object v6

    #@a8f
    .line 1214
    const-string/jumbo v7, ": "

    #@a92
    .line 1213
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a95
    move-result-object v6

    #@a96
    move-object/from16 v0, v22

    #@a98
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a9b
    move-result-object v6

    #@a9c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9f
    move-result-object v6

    #@aa0
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@aa3
    goto :goto_12

    #@aa4
    .line 1227
    .end local v22    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v23

    #@aa5
    .line 1228
    .local v23, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "BroadcastQueue"

    #@aa8
    new-instance v6, Ljava/lang/StringBuilder;

    #@aaa
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@aad
    const-string/jumbo v7, "Failed sending broadcast to "

    #@ab0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab3
    move-result-object v6

    #@ab4
    .line 1229
    move-object/from16 v0, v40

    #@ab6
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@ab8
    .line 1228
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@abb
    move-result-object v6

    #@abc
    .line 1229
    const-string/jumbo v7, " with "

    #@abf
    .line 1228
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac2
    move-result-object v6

    #@ac3
    .line 1229
    move-object/from16 v0, v40

    #@ac5
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@ac7
    .line 1228
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aca
    move-result-object v6

    #@acb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ace
    move-result-object v6

    #@acf
    move-object/from16 v0, v23

    #@ad1
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ad4
    .line 1235
    move-object/from16 v0, p0

    #@ad6
    move-object/from16 v1, v40

    #@ad8
    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    #@adb
    .line 1236
    move-object/from16 v0, v40

    #@add
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@adf
    move-object/from16 v0, v40

    #@ae1
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@ae3
    .line 1237
    move-object/from16 v0, v40

    #@ae5
    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@ae7
    move-object/from16 v0, v40

    #@ae9
    iget-boolean v9, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@aeb
    const/4 v10, 0x0

    #@aec
    move-object/from16 v4, p0

    #@aee
    move-object/from16 v5, v40

    #@af0
    .line 1236
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    #@af3
    .line 1238
    .end local v5    # "targetProcess":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    #@af6
    .line 1240
    const/4 v4, 0x0

    #@af7
    move-object/from16 v0, v40

    #@af9
    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    #@afb
    monitor-exit v48

    #@afc
    .line 760
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@aff
    .line 1241
    return-void

    #@b00
    .line 1224
    .end local v23    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "targetProcess":Ljava/lang/String;
    :catch_6
    move-exception v20

    #@b01
    .line 1225
    .restart local v20    # "e":Landroid/os/RemoteException;
    :try_start_15
    const-string/jumbo v4, "BroadcastQueue"

    #@b04
    new-instance v6, Ljava/lang/StringBuilder;

    #@b06
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b09
    const-string/jumbo v7, "Exception when sending broadcast to "

    #@b0c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0f
    move-result-object v6

    #@b10
    .line 1226
    move-object/from16 v0, v40

    #@b12
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@b14
    .line 1225
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b17
    move-result-object v6

    #@b18
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1b
    move-result-object v6

    #@b1c
    move-object/from16 v0, v20

    #@b1e
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b21
    .line 1252
    .end local v20    # "e":Landroid/os/RemoteException;
    :cond_2d
    move-object/from16 v0, p0

    #@b23
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@b25
    .line 1253
    move-object/from16 v0, v28

    #@b27
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@b29
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@b2b
    .line 1254
    move-object/from16 v0, v40

    #@b2d
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@b2f
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    #@b32
    move-result v7

    #@b33
    or-int/lit8 v8, v7, 0x4

    #@b35
    .line 1255
    const-string/jumbo v9, "broadcast"

    #@b38
    move-object/from16 v0, v40

    #@b3a
    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@b3c
    .line 1256
    move-object/from16 v0, v40

    #@b3e
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@b40
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    #@b43
    move-result v7

    #@b44
    const/high16 v11, 0x2000000

    #@b46
    and-int/2addr v7, v11

    #@b47
    if-eqz v7, :cond_2e

    #@b49
    const/4 v11, 0x1

    #@b4a
    .line 1253
    :goto_13
    const/4 v7, 0x1

    #@b4b
    .line 1256
    const/4 v12, 0x0

    #@b4c
    const/4 v13, 0x0

    #@b4d
    .line 1252
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    #@b50
    move-result-object v4

    #@b51
    move-object/from16 v0, v40

    #@b53
    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@b55
    if-nez v4, :cond_2f

    #@b57
    .line 1260
    const-string/jumbo v4, "BroadcastQueue"

    #@b5a
    new-instance v6, Ljava/lang/StringBuilder;

    #@b5c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b5f
    const-string/jumbo v7, "Unable to launch app "

    #@b62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b65
    move-result-object v6

    #@b66
    .line 1261
    move-object/from16 v0, v28

    #@b68
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@b6a
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@b6c
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@b6e
    .line 1260
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b71
    move-result-object v6

    #@b72
    .line 1261
    const-string/jumbo v7, "/"

    #@b75
    .line 1260
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b78
    move-result-object v6

    #@b79
    .line 1262
    move-object/from16 v0, v28

    #@b7b
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@b7d
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@b7f
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@b81
    .line 1260
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b84
    move-result-object v6

    #@b85
    .line 1262
    const-string/jumbo v7, " for broadcast "

    #@b88
    .line 1260
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8b
    move-result-object v6

    #@b8c
    .line 1263
    move-object/from16 v0, v40

    #@b8e
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@b90
    .line 1260
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b93
    move-result-object v6

    #@b94
    .line 1263
    const-string/jumbo v7, ": process is bad"

    #@b97
    .line 1260
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9a
    move-result-object v6

    #@b9b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9e
    move-result-object v6

    #@b9f
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ba2
    .line 1264
    move-object/from16 v0, p0

    #@ba4
    move-object/from16 v1, v40

    #@ba6
    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    #@ba9
    .line 1265
    move-object/from16 v0, v40

    #@bab
    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@bad
    move-object/from16 v0, v40

    #@baf
    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@bb1
    .line 1266
    move-object/from16 v0, v40

    #@bb3
    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@bb5
    move-object/from16 v0, v40

    #@bb7
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@bb9
    const/4 v12, 0x0

    #@bba
    move-object/from16 v6, p0

    #@bbc
    move-object/from16 v7, v40

    #@bbe
    .line 1265
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    #@bc1
    .line 1267
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    #@bc4
    .line 1268
    const/4 v4, 0x0

    #@bc5
    move-object/from16 v0, v40

    #@bc7
    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    #@bc9
    monitor-exit v48

    #@bca
    .line 760
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@bcd
    .line 1269
    return-void

    #@bce
    .line 1256
    :cond_2e
    const/4 v11, 0x0

    #@bcf
    goto/16 :goto_13

    #@bd1
    .line 1272
    :cond_2f
    :try_start_16
    move-object/from16 v0, v40

    #@bd3
    move-object/from16 v1, p0

    #@bd5
    iput-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@bd7
    .line 1273
    move/from16 v0, v41

    #@bd9
    move-object/from16 v1, p0

    #@bdb
    iput v0, v1, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    #@bdd
    monitor-exit v48

    #@bde
    .line 760
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@be1
    .line 759
    return-void

    #@be2
    .line 1211
    :catch_7
    move-exception v20

    #@be3
    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_12
.end method

.method public final replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 243
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
    .line 244
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
    .line 248
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 249
    const/4 v1, 0x1

    #@23
    return v1

    #@24
    .line 243
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_0

    #@27
    .line 252
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
    .line 229
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v1, v2, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 230
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    #@13
    iget-object v0, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@15
    .line 231
    .local v0, "curIntent":Landroid/content/Intent;
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@17
    invoke-virtual {v2, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 235
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 236
    const/4 v2, 0x1

    #@23
    return v2

    #@24
    .line 229
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@26
    goto :goto_0

    #@27
    .line 239
    .end local v0    # "curIntent":Landroid/content/Intent;
    :cond_1
    return v3
.end method

.method public scheduleBroadcastsLocked()V
    .locals 3

    #@0
    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 372
    return-void

    #@5
    .line 374
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
    .line 375
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    #@15
    .line 366
    return-void
.end method

.method final scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "duration"    # J
    .param p4, "r"    # Lcom/android/server/am/BroadcastRecord;

    #@0
    .prologue
    .line 735
    const-wide/32 v2, 0x7fffffff

    #@3
    cmp-long v1, p2, v2

    #@5
    if-lez v1, :cond_0

    #@7
    .line 736
    const-wide/32 p2, 0x7fffffff

    #@a
    .line 744
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    .line 745
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "broadcast:"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 746
    iget v1, p4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@17
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    #@1a
    .line 747
    const-string/jumbo v1, ":"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 748
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@22
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 749
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@2a
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 755
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
    .line 734
    return-void

    #@42
    .line 750
    :cond_2
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@44
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@47
    move-result-object v1

    #@48
    if-eqz v1, :cond_3

    #@4a
    .line 751
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
    .line 752
    :cond_3
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@5a
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@5d
    move-result-object v1

    #@5e
    if-eqz v1, :cond_1

    #@60
    .line 753
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
    .line 303
    const/4 v7, 0x0

    #@2
    .line 304
    .local v7, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@4
    .line 305
    .local v1, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v1, :cond_1

    #@6
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@8
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@a
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    #@c
    if-ne v0, v2, :cond_1

    #@e
    .line 306
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@10
    if-eq v0, p1, :cond_0

    #@12
    .line 307
    const-string/jumbo v0, "BroadcastQueue"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "App mismatch when sending pending broadcast to "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    .line 308
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@23
    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 308
    const-string/jumbo v3, ", intended target is "

    #@2a
    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 308
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@30
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@32
    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 309
    return v6

    #@3e
    .line 312
    :cond_0
    const/4 v0, 0x0

    #@3f
    :try_start_0
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@41
    .line 313
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 314
    const/4 v7, 0x1

    #@45
    .line 327
    :cond_1
    return v7

    #@46
    .line 315
    :catch_0
    move-exception v8

    #@47
    .line 316
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "BroadcastQueue"

    #@4a
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v3, "Exception in new application when starting receiver "

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    .line 317
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@58
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    .line 316
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v2

    #@64
    invoke-static {v0, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@67
    .line 318
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    #@6a
    .line 319
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@6c
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@6e
    .line 320
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@70
    iget-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@72
    move-object v0, p0

    #@73
    .line 319
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    #@76
    .line 321
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    #@79
    .line 323
    iput v6, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    #@7b
    .line 324
    new-instance v0, Ljava/lang/RuntimeException;

    #@7d
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@80
    move-result-object v2

    #@81
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@84
    throw v0
.end method

.method final setBroadcastTimeoutLocked(J)V
    .locals 3
    .param p1, "timeoutTime"    # J

    #@0
    .prologue
    .line 1278
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1279
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    #@6
    const/16 v2, 0xc9

    #@8
    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    .line 1280
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    #@e
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@11
    .line 1281
    const/4 v1, 0x1

    #@12
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    #@14
    .line 1277
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 341
    const/4 v1, 0x0

    #@2
    .line 342
    .local v1, "r":Lcom/android/server/am/BroadcastRecord;
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v2

    #@8
    if-lez v2, :cond_0

    #@a
    .line 343
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    #@12
    .line 344
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@14
    if-ne v2, p1, :cond_0

    #@16
    .line 345
    move-object v1, v0

    #@17
    .line 348
    .end local v0    # "br":Lcom/android/server/am/BroadcastRecord;
    .end local v1    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    if-nez v1, :cond_1

    #@19
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@1b
    if-eqz v2, :cond_1

    #@1d
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@1f
    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@21
    if-ne v2, p1, :cond_1

    #@23
    .line 351
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@25
    .line 354
    :cond_1
    if-eqz v1, :cond_2

    #@27
    .line 355
    invoke-direct {p0, v1}, Lcom/android/server/am/BroadcastQueue;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V

    #@2a
    .line 340
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
    .line 331
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@3
    .line 332
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_0

    #@5
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@7
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    #@9
    if-ne v1, p1, :cond_0

    #@b
    .line 333
    const/4 v1, 0x0

    #@c
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@e
    .line 334
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    #@10
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@12
    .line 335
    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@14
    .line 336
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    #@17
    .line 330
    :cond_0
    return-void
.end method
