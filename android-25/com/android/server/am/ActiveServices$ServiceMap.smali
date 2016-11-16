.class Lcom/android/server/am/ActiveServices$ServiceMap;
.super Landroid/os/Handler;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceMap"
.end annotation


# static fields
.field static final MSG_BG_START_TIMEOUT:I = 0x1


# instance fields
.field final mDelayedStartList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mServicesByIntent:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mServicesByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mStartingBackground:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    #@2
    .line 194
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 175
    new-instance v0, Landroid/util/ArrayMap;

    #@7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@c
    .line 176
    new-instance v0, Landroid/util/ArrayMap;

    #@e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    #@13
    .line 178
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    #@1a
    .line 189
    new-instance v0, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@21
    .line 195
    iput p3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    #@23
    .line 193
    return-void
.end method


# virtual methods
.method ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 213
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStarts()V

    #@b
    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 209
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 200
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 199
    :goto_0
    return-void

    #@6
    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    #@8
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@a
    monitor-enter v1

    #@b
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@e
    .line 203
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStarts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 202
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@15
    goto :goto_0

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1b
    throw v0

    #@1c
    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method rescheduleDelayedStarts()V
    .locals 20

    #@0
    .prologue
    .line 221
    const/4 v4, 0x1

    #@1
    move-object/from16 v0, p0

    #@3
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActiveServices$ServiceMap;->removeMessages(I)V

    #@6
    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@9
    move-result-wide v16

    #@a
    .line 223
    .local v16, "now":J
    const/4 v12, 0x0

    #@b
    .local v12, "i":I
    move-object/from16 v0, p0

    #@d
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v10

    #@13
    .local v10, "N":I
    :goto_0
    if-ge v12, v10, :cond_1

    #@15
    .line 224
    move-object/from16 v0, p0

    #@17
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v7

    #@1d
    check-cast v7, Lcom/android/server/am/ServiceRecord;

    #@1f
    .line 225
    .local v7, "r":Lcom/android/server/am/ServiceRecord;
    iget-wide v4, v7, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    #@21
    cmp-long v4, v4, v16

    #@23
    if-gtz v4, :cond_0

    #@25
    .line 226
    invoke-static {}, Lcom/android/server/am/ActiveServices;->-get0()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v6, "Waited long enough for: "

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 227
    move-object/from16 v0, p0

    #@42
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@47
    .line 228
    add-int/lit8 v10, v10, -0x1

    #@49
    .line 229
    add-int/lit8 v12, v12, -0x1

    #@4b
    .line 223
    :cond_0
    add-int/lit8 v12, v12, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 232
    .end local v7    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    #@50
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@55
    move-result v4

    #@56
    if-lez v4, :cond_3

    #@58
    .line 233
    move-object/from16 v0, p0

    #@5a
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5f
    move-result v4

    #@60
    move-object/from16 v0, p0

    #@62
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    #@64
    iget v5, v5, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    #@66
    if-ge v4, v5, :cond_3

    #@68
    .line 234
    move-object/from16 v0, p0

    #@6a
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    #@6c
    const/4 v5, 0x0

    #@6d
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@70
    move-result-object v7

    #@71
    check-cast v7, Lcom/android/server/am/ServiceRecord;

    #@73
    .line 237
    .restart local v7    # "r":Lcom/android/server/am/ServiceRecord;
    iget-object v4, v7, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@75
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@78
    move-result v4

    #@79
    if-gtz v4, :cond_2

    #@7b
    .line 238
    invoke-static {}, Lcom/android/server/am/ActiveServices;->-get0()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    new-instance v5, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v6, "**** NO PENDING STARTS! "

    #@87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    const-string/jumbo v6, " startReq="

    #@92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v5

    #@96
    iget-boolean v6, v7, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    .line 239
    const-string/jumbo v6, " delayedStop="

    #@9f
    .line 238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v5

    #@a3
    .line 239
    iget-boolean v6, v7, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@a5
    .line 238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v5

    #@a9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v5

    #@ad
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b0
    .line 249
    :cond_2
    const/4 v4, 0x0

    #@b1
    iput-boolean v4, v7, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@b3
    .line 251
    :try_start_0
    move-object/from16 v0, p0

    #@b5
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    #@b7
    iget-object v5, v7, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@b9
    const/4 v6, 0x0

    #@ba
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bd
    move-result-object v5

    #@be
    check-cast v5, Lcom/android/server/am/ServiceRecord$StartItem;

    #@c0
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    #@c2
    const/4 v8, 0x0

    #@c3
    const/4 v9, 0x1

    #@c4
    move-object/from16 v5, p0

    #@c6
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    #@c9
    goto :goto_1

    #@ca
    .line 252
    :catch_0
    move-exception v11

    #@cb
    .local v11, "e":Landroid/os/TransactionTooLargeException;
    goto :goto_1

    #@cc
    .line 256
    .end local v7    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v11    # "e":Landroid/os/TransactionTooLargeException;
    :cond_3
    move-object/from16 v0, p0

    #@ce
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@d0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@d3
    move-result v4

    #@d4
    if-lez v4, :cond_4

    #@d6
    .line 257
    move-object/from16 v0, p0

    #@d8
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@da
    const/4 v5, 0x0

    #@db
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@de
    move-result-object v14

    #@df
    check-cast v14, Lcom/android/server/am/ServiceRecord;

    #@e1
    .line 258
    .local v14, "next":Lcom/android/server/am/ServiceRecord;
    iget-wide v4, v14, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    #@e3
    cmp-long v4, v4, v16

    #@e5
    if-lez v4, :cond_6

    #@e7
    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    #@e9
    move-wide/from16 v18, v0

    #@eb
    .line 261
    .local v18, "when":J
    :goto_2
    const/4 v4, 0x1

    #@ec
    move-object/from16 v0, p0

    #@ee
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    #@f1
    move-result-object v13

    #@f2
    .line 262
    .local v13, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@f4
    move-wide/from16 v1, v18

    #@f6
    invoke-virtual {v0, v13, v1, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@f9
    .line 264
    .end local v13    # "msg":Landroid/os/Message;
    .end local v14    # "next":Lcom/android/server/am/ServiceRecord;
    .end local v18    # "when":J
    :cond_4
    move-object/from16 v0, p0

    #@fb
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@fd
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@100
    move-result v4

    #@101
    move-object/from16 v0, p0

    #@103
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    #@105
    iget v5, v5, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    #@107
    if-ge v4, v5, :cond_5

    #@109
    .line 265
    move-object/from16 v0, p0

    #@10b
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    #@10d
    iget-object v4, v4, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@10f
    move-object/from16 v0, p0

    #@111
    iget v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    #@113
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->backgroundServicesFinishedLocked(I)V

    #@116
    .line 220
    :cond_5
    return-void

    #@117
    .line 258
    .restart local v14    # "next":Lcom/android/server/am/ServiceRecord;
    :cond_6
    move-wide/from16 v18, v16

    #@119
    .restart local v18    # "when":J
    goto :goto_2
.end method
