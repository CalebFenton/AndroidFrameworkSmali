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
    .line 469
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@2
    .line 470
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@5
    .line 469
    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    #@0
    .prologue
    .line 475
    const/16 v24, 0xa

    #@2
    invoke-static/range {v24 .. v24}, Landroid/os/Process;->setThreadPriority(I)V

    #@5
    .line 476
    new-instance v17, Landroid/util/ArraySet;

    #@7
    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    #@a
    .line 482
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
    .line 483
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
    .line 485
    if-eqz v20, :cond_5

    #@24
    .line 487
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->clear()V

    #@27
    .line 488
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
    .line 490
    :try_start_1
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@36
    move-object/from16 v24, v0

    #@38
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    #@3b
    move-result-object v24

    #@3c
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/RecentTasks;->size()I

    #@3f
    move-result v24

    #@40
    add-int/lit8 v23, v24, -0x1

    #@42
    .local v23, "taskNdx":I
    :goto_1
    if-ltz v23, :cond_4

    #@44
    .line 491
    move-object/from16 v0, p0

    #@46
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@48
    move-object/from16 v24, v0

    #@4a
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    #@4d
    move-result-object v24

    #@4e
    move-object/from16 v0, v24

    #@50
    move/from16 v1, v23

    #@52
    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v22

    #@56
    check-cast v22, Lcom/android/server/am/TaskRecord;

    #@58
    .line 494
    .local v22, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v22

    #@5a
    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@5c
    move/from16 v24, v0

    #@5e
    if-nez v24, :cond_1

    #@60
    move-object/from16 v0, v22

    #@62
    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@64
    move/from16 v24, v0

    #@66
    if-eqz v24, :cond_2

    #@68
    .line 495
    :cond_1
    move-object/from16 v0, v22

    #@6a
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@6c
    move-object/from16 v24, v0

    #@6e
    if-eqz v24, :cond_3

    #@70
    move-object/from16 v0, v22

    #@72
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@74
    move-object/from16 v24, v0

    #@76
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@79
    move-result v24

    #@7a
    if-eqz v24, :cond_3

    #@7c
    .line 490
    :cond_2
    :goto_2
    add-int/lit8 v23, v23, -0x1

    #@7e
    goto :goto_1

    #@7f
    .line 482
    .end local v20    # "probablyDone":Z
    .end local v22    # "task":Lcom/android/server/am/TaskRecord;
    .end local v23    # "taskNdx":I
    :catchall_0
    move-exception v24

    #@80
    monitor-exit v25

    #@81
    throw v24

    #@82
    .line 497
    .restart local v20    # "probablyDone":Z
    .restart local v22    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v23    # "taskNdx":I
    :cond_3
    :try_start_2
    move-object/from16 v0, v22

    #@84
    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@86
    move/from16 v24, v0

    #@88
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8b
    move-result-object v24

    #@8c
    move-object/from16 v0, v17

    #@8e
    move-object/from16 v1, v24

    #@90
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@93
    goto :goto_2

    #@94
    .line 488
    .end local v22    # "task":Lcom/android/server/am/TaskRecord;
    .end local v23    # "taskNdx":I
    :catchall_1
    move-exception v24

    #@95
    monitor-exit v25

    #@96
    throw v24

    #@97
    .restart local v23    # "taskNdx":I
    :cond_4
    monitor-exit v25

    #@98
    .line 504
    move-object/from16 v0, p0

    #@9a
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@9c
    move-object/from16 v24, v0

    #@9e
    move-object/from16 v0, v24

    #@a0
    move-object/from16 v1, v17

    #@a2
    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->-wrap1(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V

    #@a5
    .line 509
    .end local v23    # "taskNdx":I
    :cond_5
    move-object/from16 v0, p0

    #@a7
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@a9
    move-object/from16 v25, v0

    #@ab
    monitor-enter v25

    #@ac
    .line 510
    :try_start_3
    move-object/from16 v0, p0

    #@ae
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@b0
    move-object/from16 v24, v0

    #@b2
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    #@b5
    move-result-wide v26

    #@b6
    const-wide/16 v28, -0x1

    #@b8
    cmp-long v24, v26, v28

    #@ba
    if-eqz v24, :cond_6

    #@bc
    .line 512
    move-object/from16 v0, p0

    #@be
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@c0
    move-object/from16 v24, v0

    #@c2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c5
    move-result-wide v26

    #@c6
    const-wide/16 v28, 0x1f4

    #@c8
    add-long v26, v26, v28

    #@ca
    move-object/from16 v0, v24

    #@cc
    move-wide/from16 v1, v26

    #@ce
    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->-set0(Lcom/android/server/am/TaskPersister;J)J

    #@d1
    .line 518
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    #@d3
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@d5
    move-object/from16 v24, v0

    #@d7
    move-object/from16 v0, v24

    #@d9
    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@db
    move-object/from16 v24, v0

    #@dd
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    #@e0
    move-result v24

    #@e1
    if-eqz v24, :cond_8

    #@e3
    .line 519
    move-object/from16 v0, p0

    #@e5
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@e7
    move-object/from16 v24, v0

    #@e9
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    #@ec
    move-result-wide v26

    #@ed
    const-wide/16 v28, 0x0

    #@ef
    cmp-long v24, v26, v28

    #@f1
    if-eqz v24, :cond_7

    #@f3
    .line 520
    move-object/from16 v0, p0

    #@f5
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@f7
    move-object/from16 v24, v0

    #@f9
    const-wide/16 v26, 0x0

    #@fb
    move-object/from16 v0, v24

    #@fd
    move-wide/from16 v1, v26

    #@ff
    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->-set0(Lcom/android/server/am/TaskPersister;J)J

    #@102
    .line 521
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@106
    move-object/from16 v24, v0

    #@108
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@10b
    .line 525
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@10f
    move-object/from16 v24, v0

    #@111
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@114
    goto :goto_3

    #@115
    .line 526
    :catch_0
    move-exception v9

    #@116
    .local v9, "e":Ljava/lang/InterruptedException;
    goto :goto_3

    #@117
    .line 531
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    #@119
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@11b
    move-object/from16 v24, v0

    #@11d
    move-object/from16 v0, v24

    #@11f
    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@121
    move-object/from16 v24, v0

    #@123
    const/16 v26, 0x0

    #@125
    move-object/from16 v0, v24

    #@127
    move/from16 v1, v26

    #@129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@12c
    move-result-object v16

    #@12d
    check-cast v16, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    #@12f
    .line 533
    .local v16, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@132
    move-result-wide v18

    #@133
    .line 536
    .local v18, "now":J
    :goto_4
    move-object/from16 v0, p0

    #@135
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@137
    move-object/from16 v24, v0

    #@139
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@13c
    move-result-wide v26

    #@13d
    cmp-long v24, v18, v26

    #@13f
    if-gez v24, :cond_9

    #@141
    .line 540
    :try_start_6
    move-object/from16 v0, p0

    #@143
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@145
    move-object/from16 v24, v0

    #@147
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@14b
    move-object/from16 v26, v0

    #@14d
    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    #@150
    move-result-wide v26

    #@151
    sub-long v26, v26, v18

    #@153
    move-object/from16 v0, v24

    #@155
    move-wide/from16 v1, v26

    #@157
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@15a
    .line 543
    :goto_5
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@15d
    move-result-wide v18

    #@15e
    goto :goto_4

    #@15f
    :cond_9
    monitor-exit v25

    #@160
    .line 549
    move-object/from16 v0, v16

    #@162
    instance-of v0, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@164
    move/from16 v24, v0

    #@166
    if-eqz v24, :cond_a

    #@168
    move-object/from16 v15, v16

    #@16a
    .line 550
    check-cast v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@16c
    .line 551
    .local v15, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v12, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    #@16e
    .line 552
    .local v12, "filename":Ljava/lang/String;
    iget-object v6, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    #@170
    .line 554
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    #@171
    .line 556
    .local v13, "imageFile":Ljava/io/FileOutputStream;
    :try_start_8
    new-instance v14, Ljava/io/FileOutputStream;

    #@173
    new-instance v24, Ljava/io/File;

    #@175
    sget-object v25, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    #@177
    move-object/from16 v0, v24

    #@179
    move-object/from16 v1, v25

    #@17b
    invoke-direct {v0, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@17e
    move-object/from16 v0, v24

    #@180
    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@183
    .line 557
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .local v14, "imageFile":Ljava/io/FileOutputStream;
    :try_start_9
    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #@185
    const/16 v25, 0x64

    #@187
    move-object/from16 v0, v24

    #@189
    move/from16 v1, v25

    #@18b
    invoke-virtual {v6, v0, v1, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    #@18e
    .line 561
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@191
    goto/16 :goto_0

    #@193
    .line 509
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "filename":Ljava/lang/String;
    .end local v14    # "imageFile":Ljava/io/FileOutputStream;
    .end local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .end local v18    # "now":J
    :catchall_2
    move-exception v24

    #@194
    monitor-exit v25

    #@195
    throw v24

    #@196
    .line 558
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "filename":Ljava/lang/String;
    .restart local v13    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .restart local v18    # "now":J
    :catch_1
    move-exception v8

    #@197
    .line 559
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .local v8, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_a
    const-string/jumbo v24, "TaskPersister"

    #@19a
    new-instance v25, Ljava/lang/StringBuilder;

    #@19c
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@19f
    const-string/jumbo v26, "saveImage: unable to save "

    #@1a2
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v25

    #@1a6
    move-object/from16 v0, v25

    #@1a8
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v25

    #@1ac
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1af
    move-result-object v25

    #@1b0
    move-object/from16 v0, v24

    #@1b2
    move-object/from16 v1, v25

    #@1b4
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@1b7
    .line 561
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1ba
    goto/16 :goto_0

    #@1bc
    .line 560
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v24

    #@1bd
    .line 561
    :goto_7
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1c0
    .line 560
    throw v24

    #@1c1
    .line 563
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "filename":Ljava/lang/String;
    .end local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_a
    move-object/from16 v0, v16

    #@1c3
    instance-of v0, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    #@1c5
    move/from16 v24, v0

    #@1c7
    if-eqz v24, :cond_0

    #@1c9
    .line 565
    const/16 v21, 0x0

    #@1cb
    .line 566
    .local v21, "stringWriter":Ljava/io/StringWriter;
    check-cast v16, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    #@1cd
    .end local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    move-object/from16 v0, v16

    #@1cf
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    #@1d1
    move-object/from16 v22, v0

    #@1d3
    .line 568
    .restart local v22    # "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    #@1d5
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@1d7
    move-object/from16 v24, v0

    #@1d9
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    #@1dc
    move-result-object v25

    #@1dd
    monitor-enter v25

    #@1de
    .line 569
    :try_start_b
    move-object/from16 v0, v22

    #@1e0
    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@1e2
    move/from16 v24, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    #@1e4
    if-eqz v24, :cond_b

    #@1e6
    .line 573
    :try_start_c
    move-object/from16 v0, p0

    #@1e8
    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    #@1ea
    move-object/from16 v24, v0

    #@1ec
    move-object/from16 v0, v24

    #@1ee
    move-object/from16 v1, v22

    #@1f0
    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->-wrap0(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    #@1f3
    move-result-object v21

    #@1f4
    .end local v21    # "stringWriter":Ljava/io/StringWriter;
    :cond_b
    :goto_8
    monitor-exit v25

    #@1f5
    .line 579
    if-eqz v21, :cond_0

    #@1f7
    .line 581
    const/4 v11, 0x0

    #@1f8
    .line 582
    .local v11, "file":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    #@1f9
    .line 584
    .local v4, "atomicFile":Landroid/util/AtomicFile;
    :try_start_d
    new-instance v5, Landroid/util/AtomicFile;

    #@1fb
    new-instance v24, Ljava/io/File;

    #@1fd
    sget-object v25, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    #@1ff
    new-instance v26, Ljava/lang/StringBuilder;

    #@201
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@204
    .line 585
    move-object/from16 v0, v22

    #@206
    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@208
    move/from16 v27, v0

    #@20a
    .line 584
    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@20d
    move-result-object v27

    #@20e
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v26

    #@212
    .line 585
    const-string/jumbo v27, "_task"

    #@215
    .line 584
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@218
    move-result-object v26

    #@219
    .line 585
    const-string/jumbo v27, ".xml"

    #@21c
    .line 584
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v26

    #@220
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@223
    move-result-object v26

    #@224
    invoke-direct/range {v24 .. v26}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@227
    move-object/from16 v0, v24

    #@229
    invoke-direct {v5, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    #@22c
    .line 586
    .local v5, "atomicFile":Landroid/util/AtomicFile;
    :try_start_e
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@22f
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    move-result-object v11

    #@230
    .line 587
    .local v11, "file":Ljava/io/FileOutputStream;
    invoke-virtual/range {v21 .. v21}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@233
    move-result-object v24

    #@234
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    #@237
    move-result-object v24

    #@238
    move-object/from16 v0, v24

    #@23a
    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    #@23d
    .line 588
    const/16 v24, 0xa

    #@23f
    move/from16 v0, v24

    #@241
    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write(I)V

    #@244
    .line 589
    invoke-virtual {v5, v11}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    #@247
    goto/16 :goto_0

    #@249
    .line 590
    .end local v11    # "file":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    #@24a
    .local v7, "e":Ljava/io/IOException;
    move-object v4, v5

    #@24b
    .line 591
    .end local v5    # "atomicFile":Landroid/util/AtomicFile;
    :goto_9
    if-eqz v11, :cond_c

    #@24d
    .line 592
    invoke-virtual {v4, v11}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@250
    .line 594
    :cond_c
    const-string/jumbo v24, "TaskPersister"

    #@253
    new-instance v25, Ljava/lang/StringBuilder;

    #@255
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@258
    const-string/jumbo v26, "Unable to open "

    #@25b
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25e
    move-result-object v25

    #@25f
    move-object/from16 v0, v25

    #@261
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v25

    #@265
    const-string/jumbo v26, " for persisting. "

    #@268
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26b
    move-result-object v25

    #@26c
    move-object/from16 v0, v25

    #@26e
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@271
    move-result-object v25

    #@272
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@275
    move-result-object v25

    #@276
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@279
    goto/16 :goto_0

    #@27b
    .line 568
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v21    # "stringWriter":Ljava/io/StringWriter;
    :catchall_4
    move-exception v24

    #@27c
    monitor-exit v25

    #@27d
    throw v24

    #@27e
    .line 590
    .end local v21    # "stringWriter":Ljava/io/StringWriter;
    .restart local v4    # "atomicFile":Landroid/util/AtomicFile;
    .local v11, "file":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    #@27f
    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_9

    #@280
    .line 574
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "file":Ljava/io/FileOutputStream;
    .restart local v21    # "stringWriter":Ljava/io/StringWriter;
    :catch_4
    move-exception v7

    #@281
    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_8

    #@283
    .line 575
    .end local v7    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v10

    #@284
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_8

    #@286
    .line 560
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v21    # "stringWriter":Ljava/io/StringWriter;
    .end local v22    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "filename":Ljava/lang/String;
    .restart local v14    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :catchall_5
    move-exception v24

    #@287
    move-object v13, v14

    #@288
    .end local v14    # "imageFile":Ljava/io/FileOutputStream;
    .local v13, "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    #@28a
    .line 558
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v14    # "imageFile":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v8

    #@28b
    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v13, v14

    #@28c
    .end local v14    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v13    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    #@28e
    .line 541
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "filename":Ljava/lang/String;
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .end local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :catch_7
    move-exception v9

    #@28f
    .restart local v9    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_5
.end method
