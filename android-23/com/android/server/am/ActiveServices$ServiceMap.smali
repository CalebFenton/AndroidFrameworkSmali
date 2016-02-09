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
    .line 172
    new-instance v0, Landroid/util/ArrayMap;

    #@7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@a
    .line 171
    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@c
    .line 174
    new-instance v0, Landroid/util/ArrayMap;

    #@e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@11
    .line 173
    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    #@13
    .line 177
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    .line 176
    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    #@1a
    .line 189
    new-instance v0, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1f
    .line 188
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
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@a
    monitor-enter v0

    #@b
    .line 203
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStarts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v0

    #@f
    goto :goto_0

    #@10
    .line 202
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v0

    #@12
    throw v1

    #@13
    .line 200
    nop

    #@14
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
    const-string/jumbo v4, "ActivityManager"

    #@28
    new-instance v5, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v6, "Waited long enough for: "

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 227
    move-object/from16 v0, p0

    #@41
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@43
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@46
    .line 228
    add-int/lit8 v10, v10, -0x1

    #@48
    .line 229
    add-int/lit8 v12, v12, -0x1

    #@4a
    .line 223
    :cond_0
    add-int/lit8 v12, v12, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 232
    .end local v7    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    #@4f
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@54
    move-result v4

    #@55
    if-lez v4, :cond_3

    #@57
    .line 233
    move-object/from16 v0, p0

    #@59
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5e
    move-result v4

    #@5f
    move-object/from16 v0, p0

    #@61
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    #@63
    iget v5, v5, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    #@65
    if-ge v4, v5, :cond_3

    #@67
    .line 234
    move-object/from16 v0, p0

    #@69
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    #@6b
    const/4 v5, 0x0

    #@6c
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@6f
    move-result-object v7

    #@70
    check-cast v7, Lcom/android/server/am/ServiceRecord;

    #@72
    .line 237
    .restart local v7    # "r":Lcom/android/server/am/ServiceRecord;
    iget-object v4, v7, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@74
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@77
    move-result v4

    #@78
    if-gtz v4, :cond_2

    #@7a
    .line 238
    const-string/jumbo v4, "ActivityManager"

    #@7d
    new-instance v5, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v6, "**** NO PENDING STARTS! "

    #@85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v5

    #@8d
    const-string/jumbo v6, " startReq="

    #@90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v5

    #@94
    iget-boolean v6, v7, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@99
    move-result-object v5

    #@9a
    .line 239
    const-string/jumbo v6, " delayedStop="

    #@9d
    .line 238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v5

    #@a1
    .line 239
    iget-boolean v6, v7, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    #@a3
    .line 238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v5

    #@a7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v5

    #@ab
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ae
    .line 249
    :cond_2
    const/4 v4, 0x0

    #@af
    iput-boolean v4, v7, Lcom/android/server/am/ServiceRecord;->delayed:Z

    #@b1
    .line 251
    :try_start_0
    move-object/from16 v0, p0

    #@b3
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    #@b5
    iget-object v5, v7, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    #@b7
    const/4 v6, 0x0

    #@b8
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bb
    move-result-object v5

    #@bc
    check-cast v5, Lcom/android/server/am/ServiceRecord$StartItem;

    #@be
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    #@c0
    const/4 v8, 0x0

    #@c1
    const/4 v9, 0x1

    #@c2
    move-object/from16 v5, p0

    #@c4
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    #@c7
    goto :goto_1

    #@c8
    .line 252
    :catch_0
    move-exception v11

    #@c9
    .local v11, "e":Landroid/os/TransactionTooLargeException;
    goto :goto_1

    #@ca
    .line 256
    .end local v7    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v11    # "e":Landroid/os/TransactionTooLargeException;
    :cond_3
    move-object/from16 v0, p0

    #@cc
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@ce
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@d1
    move-result v4

    #@d2
    if-lez v4, :cond_4

    #@d4
    .line 257
    move-object/from16 v0, p0

    #@d6
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@d8
    const/4 v5, 0x0

    #@d9
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@dc
    move-result-object v14

    #@dd
    check-cast v14, Lcom/android/server/am/ServiceRecord;

    #@df
    .line 258
    .local v14, "next":Lcom/android/server/am/ServiceRecord;
    iget-wide v4, v14, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    #@e1
    cmp-long v4, v4, v16

    #@e3
    if-lez v4, :cond_6

    #@e5
    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    #@e7
    move-wide/from16 v18, v0

    #@e9
    .line 261
    .local v18, "when":J
    :goto_2
    const/4 v4, 0x1

    #@ea
    move-object/from16 v0, p0

    #@ec
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    #@ef
    move-result-object v13

    #@f0
    .line 262
    .local v13, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@f2
    move-wide/from16 v1, v18

    #@f4
    invoke-virtual {v0, v13, v1, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@f7
    .line 264
    .end local v13    # "msg":Landroid/os/Message;
    .end local v14    # "next":Lcom/android/server/am/ServiceRecord;
    .end local v18    # "when":J
    :cond_4
    move-object/from16 v0, p0

    #@f9
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@fb
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@fe
    move-result v4

    #@ff
    move-object/from16 v0, p0

    #@101
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    #@103
    iget v5, v5, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    #@105
    if-ge v4, v5, :cond_5

    #@107
    .line 265
    move-object/from16 v0, p0

    #@109
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    #@10b
    iget-object v4, v4, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@10d
    move-object/from16 v0, p0

    #@10f
    iget v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    #@111
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->backgroundServicesFinishedLocked(I)V

    #@114
    .line 220
    :cond_5
    return-void

    #@115
    .line 258
    .restart local v14    # "next":Lcom/android/server/am/ServiceRecord;
    :cond_6
    move-wide/from16 v18, v16

    #@117
    .restart local v18    # "when":J
    goto :goto_2
.end method
