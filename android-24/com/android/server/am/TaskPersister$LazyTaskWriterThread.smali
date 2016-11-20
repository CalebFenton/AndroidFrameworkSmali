.class Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;
.super Ljava/lang/Thread;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyTaskWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/TaskPersister;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@2
    .line 609
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@5
    .line 608
    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    #@0
    .prologue
    .line 614
    const/16 v24, 0xa

    #@2
    invoke-static/range {v24 .. v24}, Landroid/os/Process;->setThreadPriority(I)V

    #@5
    .line 615
    new-instance v17, Landroid/util/ArraySet;

    #@7
    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    #@a
    .line 621
    .local v17, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@e
    move-object/from16 v25, v0

    #@10
    monitor-enter v25

    #@11
    .line 622
    :try_start_0
    move-object/from16 v0, p0

    #@13
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@15
    move-object/from16 v24, v0

    #@17
    move-object/from16 v0, v24

    #@19
    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@1b
    move-object/from16 v24, v0

    #@1d
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result v20

    #@21
    .local v20, "probablyDone":Z
    monitor-exit v25

    #@22
    .line 624
    if-eqz v20, :cond_5

    #@24
    .line 626
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->clear()V

    #@27
    .line 627
    move-object/from16 v0, p0

    #@29
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@2b
    move-object/from16 v24, v0

    #@2d
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    #@30
    move-result-object v25

    #@31
    monitor-enter v25

    #@32
    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@35
    .line 629
    move-object/from16 v0, p0

    #@37
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@39
    move-object/from16 v24, v0

    #@3b
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    #@3e
    move-result-object v24

    #@3f
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/RecentTasks;->size()I

    #@42
    move-result v24

    #@43
    add-int/lit8 v23, v24, -0x1

    #@45
    .local v23, "taskNdx":I
    :goto_1
    if-ltz v23, :cond_4

    #@47
    .line 630
    move-object/from16 v0, p0

    #@49
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@4b
    move-object/from16 v24, v0

    #@4d
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    #@50
    move-result-object v24

    #@51
    move-object/from16 v0, v24

    #@53
    move/from16 v1, v23

    #@55
    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@58
    move-result-object v22

    #@59
    check-cast v22, Lcom/android/server/am/TaskRecord;

    #@5b
    .line 633
    .local v22, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v22

    #@5d
    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@5f
    move/from16 v24, v0

    #@61
    if-nez v24, :cond_1

    #@63
    move-object/from16 v0, v22

    #@65
    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@67
    move/from16 v24, v0

    #@69
    if-eqz v24, :cond_2

    #@6b
    .line 634
    :cond_1
    move-object/from16 v0, v22

    #@6d
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@6f
    move-object/from16 v24, v0

    #@71
    if-eqz v24, :cond_3

    #@73
    move-object/from16 v0, v22

    #@75
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@77
    move-object/from16 v24, v0

    #@79
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@7c
    move-result v24

    #@7d
    if-eqz v24, :cond_3

    #@7f
    .line 629
    :cond_2
    :goto_2
    add-int/lit8 v23, v23, -0x1

    #@81
    goto :goto_1

    #@82
    .line 621
    .end local v20    # "probablyDone":Z
    .end local v22    # "task":Lcom/android/server/am/TaskRecord;
    .end local v23    # "taskNdx":I
    :catchall_0
    move-exception v24

    #@83
    monitor-exit v25

    #@84
    throw v24

    #@85
    .line 636
    .restart local v20    # "probablyDone":Z
    .restart local v22    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v23    # "taskNdx":I
    :cond_3
    :try_start_2
    move-object/from16 v0, v22

    #@87
    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@89
    move/from16 v24, v0

    #@8b
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8e
    move-result-object v24

    #@8f
    move-object/from16 v0, v17

    #@91
    move-object/from16 v1, v24

    #@93
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@96
    goto :goto_2

    #@97
    .line 627
    .end local v22    # "task":Lcom/android/server/am/TaskRecord;
    .end local v23    # "taskNdx":I
    :catchall_1
    move-exception v24

    #@98
    monitor-exit v25

    #@99
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@9c
    throw v24

    #@9d
    .restart local v23    # "taskNdx":I
    :cond_4
    monitor-exit v25

    #@9e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@a1
    .line 643
    move-object/from16 v0, p0

    #@a3
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@a5
    move-object/from16 v24, v0

    #@a7
    move-object/from16 v0, v24

    #@a9
    move-object/from16 v1, v17

    #@ab
    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->-wrap2(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V

    #@ae
    .line 645
    .end local v23    # "taskNdx":I
    :cond_5
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@b2
    move-object/from16 v24, v0

    #@b4
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-wrap3(Lcom/android/server/am/TaskPersister;)V

    #@b7
    .line 649
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@bb
    move-object/from16 v25, v0

    #@bd
    monitor-enter v25

    #@be
    .line 650
    :try_start_3
    move-object/from16 v0, p0

    #@c0
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@c2
    move-object/from16 v24, v0

    #@c4
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    #@c7
    move-result-wide v26

    #@c8
    const-wide/16 v28, -0x1

    #@ca
    cmp-long v24, v26, v28

    #@cc
    if-eqz v24, :cond_6

    #@ce
    .line 652
    move-object/from16 v0, p0

    #@d0
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@d2
    move-object/from16 v24, v0

    #@d4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d7
    move-result-wide v26

    #@d8
    const-wide/16 v28, 0x1f4

    #@da
    add-long v26, v26, v28

    #@dc
    move-object/from16 v0, v24

    #@de
    move-wide/from16 v1, v26

    #@e0
    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->-set0(Lcom/android/server/am/TaskPersister;J)J

    #@e3
    .line 657
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    #@e5
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@e7
    move-object/from16 v24, v0

    #@e9
    move-object/from16 v0, v24

    #@eb
    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@ed
    move-object/from16 v24, v0

    #@ef
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    #@f2
    move-result v24

    #@f3
    if-eqz v24, :cond_8

    #@f5
    .line 658
    move-object/from16 v0, p0

    #@f7
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@f9
    move-object/from16 v24, v0

    #@fb
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    #@fe
    move-result-wide v26

    #@ff
    const-wide/16 v28, 0x0

    #@101
    cmp-long v24, v26, v28

    #@103
    if-eqz v24, :cond_7

    #@105
    .line 659
    move-object/from16 v0, p0

    #@107
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@109
    move-object/from16 v24, v0

    #@10b
    const-wide/16 v26, 0x0

    #@10d
    move-object/from16 v0, v24

    #@10f
    move-wide/from16 v1, v26

    #@111
    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->-set0(Lcom/android/server/am/TaskPersister;J)J

    #@114
    .line 660
    move-object/from16 v0, p0

    #@116
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@118
    move-object/from16 v24, v0

    #@11a
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@11d
    .line 664
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@121
    move-object/from16 v24, v0

    #@123
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@126
    goto :goto_3

    #@127
    .line 665
    :catch_0
    move-exception v9

    #@128
    .local v9, "e":Ljava/lang/InterruptedException;
    goto :goto_3

    #@129
    .line 670
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@12d
    move-object/from16 v24, v0

    #@12f
    move-object/from16 v0, v24

    #@131
    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@133
    move-object/from16 v24, v0

    #@135
    const/16 v26, 0x0

    #@137
    move-object/from16 v0, v24

    #@139
    move/from16 v1, v26

    #@13b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@13e
    move-result-object v16

    #@13f
    check-cast v16, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    #@141
    .line 672
    .local v16, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@144
    move-result-wide v18

    #@145
    .line 675
    .local v18, "now":J
    :goto_4
    move-object/from16 v0, p0

    #@147
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@149
    move-object/from16 v24, v0

    #@14b
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@14e
    move-result-wide v26

    #@14f
    cmp-long v24, v18, v26

    #@151
    if-gez v24, :cond_9

    #@153
    .line 679
    :try_start_6
    move-object/from16 v0, p0

    #@155
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@157
    move-object/from16 v24, v0

    #@159
    move-object/from16 v0, p0

    #@15b
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@15d
    move-object/from16 v26, v0

    #@15f
    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    #@162
    move-result-wide v26

    #@163
    sub-long v26, v26, v18

    #@165
    move-object/from16 v0, v24

    #@167
    move-wide/from16 v1, v26

    #@169
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@16c
    .line 682
    :goto_5
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@16f
    move-result-wide v18

    #@170
    goto :goto_4

    #@171
    :cond_9
    monitor-exit v25

    #@172
    .line 688
    move-object/from16 v0, v16

    #@174
    instance-of v0, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@176
    move/from16 v24, v0

    #@178
    if-eqz v24, :cond_b

    #@17a
    move-object/from16 v15, v16

    #@17c
    .line 689
    check-cast v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@17e
    .line 690
    .local v15, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v12, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    #@180
    .line 691
    .local v12, "filePath":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/am/TaskPersister;->-wrap0(Ljava/lang/String;)Z

    #@183
    move-result v24

    #@184
    if-nez v24, :cond_a

    #@186
    .line 692
    const-string/jumbo v24, "TaskPersister"

    #@189
    new-instance v25, Ljava/lang/StringBuilder;

    #@18b
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@18e
    const-string/jumbo v26, "Error while creating images directory for file: "

    #@191
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v25

    #@195
    move-object/from16 v0, v25

    #@197
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v25

    #@19b
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19e
    move-result-object v25

    #@19f
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a2
    goto/16 :goto_0

    #@1a4
    .line 649
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .end local v18    # "now":J
    :catchall_2
    move-exception v24

    #@1a5
    monitor-exit v25

    #@1a6
    throw v24

    #@1a7
    .line 695
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .restart local v18    # "now":J
    :cond_a
    iget-object v6, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    #@1a9
    .line 697
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    #@1aa
    .line 699
    .local v13, "imageFile":Ljava/io/FileOutputStream;
    :try_start_8
    new-instance v14, Ljava/io/FileOutputStream;

    #@1ac
    new-instance v24, Ljava/io/File;

    #@1ae
    move-object/from16 v0, v24

    #@1b0
    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1b3
    move-object/from16 v0, v24

    #@1b5
    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@1b8
    .line 700
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .local v14, "imageFile":Ljava/io/FileOutputStream;
    :try_start_9
    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #@1ba
    const/16 v25, 0x64

    #@1bc
    move-object/from16 v0, v24

    #@1be
    move/from16 v1, v25

    #@1c0
    invoke-virtual {v6, v0, v1, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    #@1c3
    .line 704
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1c6
    goto/16 :goto_0

    #@1c8
    .line 701
    .end local v14    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v13    # "imageFile":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v8

    #@1c9
    .line 702
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .local v8, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_a
    const-string/jumbo v24, "TaskPersister"

    #@1cc
    new-instance v25, Ljava/lang/StringBuilder;

    #@1ce
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@1d1
    const-string/jumbo v26, "saveImage: unable to save "

    #@1d4
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v25

    #@1d8
    move-object/from16 v0, v25

    #@1da
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v25

    #@1de
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e1
    move-result-object v25

    #@1e2
    move-object/from16 v0, v24

    #@1e4
    move-object/from16 v1, v25

    #@1e6
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@1e9
    .line 704
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1ec
    goto/16 :goto_0

    #@1ee
    .line 703
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v24

    #@1ef
    .line 704
    :goto_7
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1f2
    .line 703
    throw v24

    #@1f3
    .line 706
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_b
    move-object/from16 v0, v16

    #@1f5
    instance-of v0, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    #@1f7
    move/from16 v24, v0

    #@1f9
    if-eqz v24, :cond_0

    #@1fb
    .line 708
    const/16 v21, 0x0

    #@1fd
    .line 709
    .local v21, "stringWriter":Ljava/io/StringWriter;
    check-cast v16, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    #@1ff
    .end local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    move-object/from16 v0, v16

    #@201
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    #@203
    move-object/from16 v22, v0

    #@205
    .line 711
    .restart local v22    # "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    #@207
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@209
    move-object/from16 v24, v0

    #@20b
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    #@20e
    move-result-object v25

    #@20f
    monitor-enter v25

    #@210
    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@213
    .line 712
    move-object/from16 v0, v22

    #@215
    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@217
    move/from16 v24, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    #@219
    if-eqz v24, :cond_c

    #@21b
    .line 716
    :try_start_c
    move-object/from16 v0, p0

    #@21d
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@21f
    move-object/from16 v24, v0

    #@221
    move-object/from16 v0, v24

    #@223
    move-object/from16 v1, v22

    #@225
    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->-wrap1(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    #@228
    move-result-object v21

    #@229
    .end local v21    # "stringWriter":Ljava/io/StringWriter;
    :cond_c
    :goto_8
    monitor-exit v25

    #@22a
    .line 711
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@22d
    .line 722
    if-eqz v21, :cond_0

    #@22f
    .line 724
    const/4 v11, 0x0

    #@230
    .line 725
    .local v11, "file":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    #@231
    .line 727
    .local v4, "atomicFile":Landroid/util/AtomicFile;
    :try_start_d
    new-instance v5, Landroid/util/AtomicFile;

    #@233
    new-instance v24, Ljava/io/File;

    #@235
    .line 728
    move-object/from16 v0, v22

    #@237
    iget v0, v0, Lcom/android/server/am/TaskRecord;->userId:I

    #@239
    move/from16 v25, v0

    #@23b
    invoke-static/range {v25 .. v25}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    #@23e
    move-result-object v25

    #@23f
    .line 729
    new-instance v26, Ljava/lang/StringBuilder;

    #@241
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@244
    move-object/from16 v0, v22

    #@246
    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@248
    move/from16 v27, v0

    #@24a
    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@24d
    move-result-object v27

    #@24e
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@251
    move-result-object v26

    #@252
    const-string/jumbo v27, "_task"

    #@255
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@258
    move-result-object v26

    #@259
    .line 730
    const-string/jumbo v27, ".xml"

    #@25c
    .line 729
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25f
    move-result-object v26

    #@260
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@263
    move-result-object v26

    #@264
    .line 727
    invoke-direct/range {v24 .. v26}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@267
    move-object/from16 v0, v24

    #@269
    invoke-direct {v5, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    #@26c
    .line 731
    .local v5, "atomicFile":Landroid/util/AtomicFile;
    :try_start_e
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@26f
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    move-result-object v11

    #@270
    .line 732
    .local v11, "file":Ljava/io/FileOutputStream;
    invoke-virtual/range {v21 .. v21}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@273
    move-result-object v24

    #@274
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    #@277
    move-result-object v24

    #@278
    move-object/from16 v0, v24

    #@27a
    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    #@27d
    .line 733
    const/16 v24, 0xa

    #@27f
    move/from16 v0, v24

    #@281
    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write(I)V

    #@284
    .line 734
    invoke-virtual {v5, v11}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    #@287
    goto/16 :goto_0

    #@289
    .line 736
    .end local v11    # "file":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    #@28a
    .local v7, "e":Ljava/io/IOException;
    move-object v4, v5

    #@28b
    .line 737
    .end local v5    # "atomicFile":Landroid/util/AtomicFile;
    :goto_9
    if-eqz v11, :cond_d

    #@28d
    .line 738
    invoke-virtual {v4, v11}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@290
    .line 740
    :cond_d
    const-string/jumbo v24, "TaskPersister"

    #@293
    .line 741
    new-instance v25, Ljava/lang/StringBuilder;

    #@295
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@298
    const-string/jumbo v26, "Unable to open "

    #@29b
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29e
    move-result-object v25

    #@29f
    move-object/from16 v0, v25

    #@2a1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a4
    move-result-object v25

    #@2a5
    const-string/jumbo v26, " for persisting. "

    #@2a8
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ab
    move-result-object v25

    #@2ac
    move-object/from16 v0, v25

    #@2ae
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b1
    move-result-object v25

    #@2b2
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b5
    move-result-object v25

    #@2b6
    .line 740
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b9
    goto/16 :goto_0

    #@2bb
    .line 711
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v21    # "stringWriter":Ljava/io/StringWriter;
    :catchall_4
    move-exception v24

    #@2bc
    monitor-exit v25

    #@2bd
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2c0
    throw v24

    #@2c1
    .line 736
    .end local v21    # "stringWriter":Ljava/io/StringWriter;
    .restart local v4    # "atomicFile":Landroid/util/AtomicFile;
    .local v11, "file":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    #@2c2
    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_9

    #@2c3
    .line 717
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "file":Ljava/io/FileOutputStream;
    .restart local v21    # "stringWriter":Ljava/io/StringWriter;
    :catch_4
    move-exception v7

    #@2c4
    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_8

    #@2c6
    .line 718
    .end local v7    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v10

    #@2c7
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_8

    #@2c9
    .line 703
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v21    # "stringWriter":Ljava/io/StringWriter;
    .end local v22    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v14    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :catchall_5
    move-exception v24

    #@2ca
    move-object v13, v14

    #@2cb
    .end local v14    # "imageFile":Ljava/io/FileOutputStream;
    .local v13, "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    #@2cd
    .line 701
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v14    # "imageFile":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v8

    #@2ce
    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v13, v14

    #@2cf
    .end local v14    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v13    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    #@2d1
    .line 680
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .end local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :catch_7
    move-exception v9

    #@2d2
    .restart local v9    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_5
.end method
