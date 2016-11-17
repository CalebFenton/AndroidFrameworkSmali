.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1355
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    .line 1356
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1328
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    #@8
    .line 1330
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 1329
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@f
    .line 1355
    return-void
.end method

.method private connectToService()Z
    .locals 7

    #@0
    .prologue
    const/16 v6, 0xa

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    .line 1335
    new-instance v1, Landroid/content/Intent;

    #@6
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@9
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    #@b
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@e
    move-result-object v0

    #@f
    .line 1336
    .local v0, "service":Landroid/content/Intent;
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    #@12
    .line 1337
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@14
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@16
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@18
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    #@1b
    move-result-object v2

    #@1c
    .line 1338
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@1e
    .line 1337
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 1339
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    #@27
    .line 1340
    iput-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    #@29
    .line 1341
    return v4

    #@2a
    .line 1343
    :cond_0
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    #@2d
    .line 1344
    return v5
.end method

.method private disconnectService()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1348
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-set0(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    #@7
    .line 1349
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    #@9
    .line 1350
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    #@c
    .line 1351
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@e
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@10
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@12
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@19
    .line 1352
    const/16 v0, 0xa

    #@1b
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    #@1e
    .line 1347
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 53
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1368
    move-object/from16 v0, p1

    #@2
    iget v4, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v4, :pswitch_data_0

    #@7
    .line 1367
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 1370
    :pswitch_1
    move-object/from16 v0, p1

    #@a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    move-object/from16 v35, v0

    #@e
    check-cast v35, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    #@10
    .line 1371
    .local v35, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    #@12
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v28

    #@18
    .line 1376
    .local v28, "idx":I
    move-object/from16 v0, p0

    #@1a
    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    #@1c
    if-nez v4, :cond_3

    #@1e
    .line 1377
    const-string/jumbo v4, "bindingMCS"

    #@21
    .line 1378
    move-object/from16 v0, p0

    #@23
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@25
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@27
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@2a
    move-result v10

    #@2b
    .line 1377
    const-wide/32 v12, 0x40000

    #@2e
    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@31
    .line 1381
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    #@34
    move-result v4

    #@35
    if-nez v4, :cond_2

    #@37
    .line 1382
    const-string/jumbo v4, "PackageManager"

    #@3a
    const-string/jumbo v10, "Failed to bind to media container service"

    #@3d
    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 1383
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    #@43
    .line 1384
    const-string/jumbo v4, "bindingMCS"

    #@46
    .line 1385
    move-object/from16 v0, p0

    #@48
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4a
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@4c
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@4f
    move-result v10

    #@50
    .line 1384
    const-wide/32 v12, 0x40000

    #@53
    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@56
    .line 1386
    move-object/from16 v0, v35

    #@58
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    #@5a
    if-eqz v4, :cond_1

    #@5c
    .line 1387
    move-object/from16 v0, v35

    #@5e
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    #@60
    .line 1388
    move-object/from16 v0, v35

    #@62
    iget v10, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceCookie:I

    #@64
    .line 1387
    const-wide/32 v12, 0x40000

    #@67
    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@6a
    .line 1390
    :cond_1
    return-void

    #@6b
    .line 1394
    :cond_2
    move-object/from16 v0, p0

    #@6d
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@6f
    move/from16 v0, v28

    #@71
    move-object/from16 v1, v35

    #@73
    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@76
    goto :goto_0

    #@77
    .line 1397
    :cond_3
    move-object/from16 v0, p0

    #@79
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@7b
    move/from16 v0, v28

    #@7d
    move-object/from16 v1, v35

    #@7f
    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@82
    .line 1400
    if-nez v28, :cond_0

    #@84
    .line 1401
    move-object/from16 v0, p0

    #@86
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@88
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@8a
    const/4 v10, 0x3

    #@8b
    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    #@8e
    goto/16 :goto_0

    #@90
    .line 1408
    .end local v28    # "idx":I
    .end local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :pswitch_2
    move-object/from16 v0, p1

    #@92
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@94
    if-eqz v4, :cond_4

    #@96
    .line 1409
    move-object/from16 v0, p0

    #@98
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@9a
    move-object/from16 v0, p1

    #@9c
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9e
    check-cast v4, Lcom/android/internal/app/IMediaContainerService;

    #@a0
    invoke-static {v10, v4}, Lcom/android/server/pm/PackageManagerService;->-set0(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    #@a3
    .line 1410
    const-string/jumbo v4, "bindingMCS"

    #@a6
    .line 1411
    move-object/from16 v0, p0

    #@a8
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@aa
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@ac
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@af
    move-result v10

    #@b0
    .line 1410
    const-wide/32 v12, 0x40000

    #@b3
    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@b6
    .line 1413
    :cond_4
    move-object/from16 v0, p0

    #@b8
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@ba
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@bd
    move-result-object v4

    #@be
    if-nez v4, :cond_8

    #@c0
    .line 1414
    move-object/from16 v0, p0

    #@c2
    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    #@c4
    if-nez v4, :cond_7

    #@c6
    .line 1417
    const-string/jumbo v4, "PackageManager"

    #@c9
    const-string/jumbo v10, "Cannot bind to media container service"

    #@cc
    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@cf
    .line 1418
    move-object/from16 v0, p0

    #@d1
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@d3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d6
    move-result-object v37

    #@d7
    .local v37, "params$iterator":Ljava/util/Iterator;
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    #@da
    move-result v4

    #@db
    if-eqz v4, :cond_6

    #@dd
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e0
    move-result-object v35

    #@e1
    check-cast v35, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    #@e3
    .line 1420
    .restart local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    #@e6
    .line 1421
    const-string/jumbo v4, "queueInstall"

    #@e9
    .line 1422
    invoke-static/range {v35 .. v35}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@ec
    move-result v10

    #@ed
    .line 1421
    const-wide/32 v12, 0x40000

    #@f0
    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@f3
    .line 1423
    move-object/from16 v0, v35

    #@f5
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    #@f7
    if-eqz v4, :cond_5

    #@f9
    .line 1425
    move-object/from16 v0, v35

    #@fb
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    #@fd
    move-object/from16 v0, v35

    #@ff
    iget v10, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceCookie:I

    #@101
    .line 1424
    const-wide/32 v12, 0x40000

    #@104
    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@107
    .line 1427
    :cond_5
    return-void

    #@108
    .line 1429
    .end local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_6
    move-object/from16 v0, p0

    #@10a
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@10c
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@10f
    goto/16 :goto_0

    #@111
    .line 1431
    .end local v37    # "params$iterator":Ljava/util/Iterator;
    :cond_7
    const-string/jumbo v4, "PackageManager"

    #@114
    const-string/jumbo v10, "Waiting to connect to media container service"

    #@117
    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11a
    goto/16 :goto_0

    #@11c
    .line 1433
    :cond_8
    move-object/from16 v0, p0

    #@11e
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@120
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@123
    move-result v4

    #@124
    if-lez v4, :cond_c

    #@126
    .line 1434
    move-object/from16 v0, p0

    #@128
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@12a
    const/4 v10, 0x0

    #@12b
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12e
    move-result-object v35

    #@12f
    check-cast v35, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    #@131
    .line 1435
    .restart local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v35, :cond_0

    #@133
    .line 1436
    const-string/jumbo v4, "queueInstall"

    #@136
    .line 1437
    invoke-static/range {v35 .. v35}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@139
    move-result v10

    #@13a
    .line 1436
    const-wide/32 v12, 0x40000

    #@13d
    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@140
    .line 1438
    const-string/jumbo v4, "startCopy"

    #@143
    const-wide/32 v12, 0x40000

    #@146
    invoke-static {v12, v13, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@149
    .line 1439
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()Z

    #@14c
    move-result v4

    #@14d
    if-eqz v4, :cond_a

    #@14f
    .line 1445
    move-object/from16 v0, p0

    #@151
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@153
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@156
    move-result v4

    #@157
    if-lez v4, :cond_9

    #@159
    .line 1446
    move-object/from16 v0, p0

    #@15b
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@15d
    const/4 v10, 0x0

    #@15e
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@161
    .line 1448
    :cond_9
    move-object/from16 v0, p0

    #@163
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@165
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@168
    move-result v4

    #@169
    if-nez v4, :cond_b

    #@16b
    .line 1449
    move-object/from16 v0, p0

    #@16d
    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    #@16f
    if-eqz v4, :cond_a

    #@171
    .line 1452
    const/4 v4, 0x6

    #@172
    move-object/from16 v0, p0

    #@174
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    #@177
    .line 1453
    const/4 v4, 0x6

    #@178
    move-object/from16 v0, p0

    #@17a
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    #@17d
    move-result-object v46

    #@17e
    .line 1456
    .local v46, "ubmsg":Landroid/os/Message;
    const-wide/16 v12, 0x2710

    #@180
    move-object/from16 v0, p0

    #@182
    move-object/from16 v1, v46

    #@184
    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@187
    .line 1467
    .end local v46    # "ubmsg":Landroid/os/Message;
    :cond_a
    :goto_1
    const-wide/32 v12, 0x40000

    #@18a
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@18d
    goto/16 :goto_0

    #@18f
    .line 1464
    :cond_b
    move-object/from16 v0, p0

    #@191
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@193
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@195
    const/4 v10, 0x3

    #@196
    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    #@199
    goto :goto_1

    #@19a
    .line 1471
    .end local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_c
    const-string/jumbo v4, "PackageManager"

    #@19d
    const-string/jumbo v10, "Empty queue"

    #@1a0
    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1a3
    goto/16 :goto_0

    #@1a5
    .line 1477
    :pswitch_3
    move-object/from16 v0, p0

    #@1a7
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@1a9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1ac
    move-result v4

    #@1ad
    if-lez v4, :cond_0

    #@1af
    .line 1478
    move-object/from16 v0, p0

    #@1b1
    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    #@1b3
    if-eqz v4, :cond_d

    #@1b5
    .line 1479
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    #@1b8
    .line 1481
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    #@1bb
    move-result v4

    #@1bc
    if-nez v4, :cond_0

    #@1be
    .line 1482
    const-string/jumbo v4, "PackageManager"

    #@1c1
    const-string/jumbo v10, "Failed to bind to media container service"

    #@1c4
    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c7
    .line 1483
    move-object/from16 v0, p0

    #@1c9
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@1cb
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1ce
    move-result-object v37

    #@1cf
    .restart local v37    # "params$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    #@1d2
    move-result v4

    #@1d3
    if-eqz v4, :cond_e

    #@1d5
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d8
    move-result-object v35

    #@1d9
    check-cast v35, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    #@1db
    .line 1485
    .restart local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    #@1de
    .line 1486
    const-string/jumbo v4, "queueInstall"

    #@1e1
    .line 1487
    invoke-static/range {v35 .. v35}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1e4
    move-result v10

    #@1e5
    .line 1486
    const-wide/32 v12, 0x40000

    #@1e8
    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@1eb
    goto :goto_2

    #@1ec
    .line 1489
    .end local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_e
    move-object/from16 v0, p0

    #@1ee
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@1f0
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@1f3
    goto/16 :goto_0

    #@1f5
    .line 1498
    .end local v37    # "params$iterator":Ljava/util/Iterator;
    :pswitch_4
    move-object/from16 v0, p0

    #@1f7
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@1f9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1fc
    move-result v4

    #@1fd
    if-nez v4, :cond_f

    #@1ff
    move-object/from16 v0, p0

    #@201
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@203
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    #@205
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@208
    move-result v4

    #@209
    if-nez v4, :cond_f

    #@20b
    .line 1499
    move-object/from16 v0, p0

    #@20d
    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    #@20f
    if-eqz v4, :cond_0

    #@211
    .line 1502
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    #@214
    goto/16 :goto_0

    #@216
    .line 1504
    :cond_f
    move-object/from16 v0, p0

    #@218
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@21a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@21d
    move-result v4

    #@21e
    if-lez v4, :cond_0

    #@220
    .line 1508
    move-object/from16 v0, p0

    #@222
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@224
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@226
    const/4 v10, 0x3

    #@227
    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    #@22a
    goto/16 :goto_0

    #@22c
    .line 1515
    :pswitch_5
    move-object/from16 v0, p0

    #@22e
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@230
    const/4 v10, 0x0

    #@231
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@234
    move-result-object v35

    #@235
    check-cast v35, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    #@237
    .line 1516
    .restart local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    const-string/jumbo v4, "queueInstall"

    #@23a
    .line 1517
    invoke-static/range {v35 .. v35}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@23d
    move-result v10

    #@23e
    .line 1516
    const-wide/32 v12, 0x40000

    #@241
    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@244
    goto/16 :goto_0

    #@246
    .line 1523
    .end local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :pswitch_6
    const/16 v43, 0x0

    #@248
    .line 1525
    .local v43, "size":I
    const/4 v4, 0x0

    #@249
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    #@24c
    .line 1526
    move-object/from16 v0, p0

    #@24e
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@250
    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@252
    monitor-enter v10

    #@253
    .line 1527
    :try_start_0
    move-object/from16 v0, p0

    #@255
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@257
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@259
    if-nez v4, :cond_10

    #@25b
    monitor-exit v10

    #@25c
    .line 1528
    return-void

    #@25d
    .line 1530
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    #@25f
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@261
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    #@263
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@266
    move-result v43

    #@267
    .line 1531
    if-gtz v43, :cond_11

    #@269
    monitor-exit v10

    #@26a
    .line 1533
    return-void

    #@26b
    .line 1535
    :cond_11
    :try_start_2
    move/from16 v0, v43

    #@26d
    new-array v0, v0, [Ljava/lang/String;

    #@26f
    move-object/from16 v34, v0

    #@271
    .line 1536
    .local v34, "packages":[Ljava/lang/String;
    move/from16 v0, v43

    #@273
    new-array v0, v0, [Ljava/util/ArrayList;

    #@275
    move-object/from16 v22, v0

    #@277
    .line 1537
    .local v22, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v0, v43

    #@279
    new-array v0, v0, [I

    #@27b
    move-object/from16 v47, v0

    #@27d
    .line 1538
    .local v47, "uids":[I
    const/16 v27, 0x0

    #@27f
    .line 1540
    .local v27, "i":I
    const/16 v30, 0x0

    #@281
    .local v30, "n":I
    :goto_3
    move-object/from16 v0, p0

    #@283
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@285
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    #@287
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    #@28a
    move-result v4

    #@28b
    move/from16 v0, v30

    #@28d
    if-ge v0, v4, :cond_14

    #@28f
    .line 1541
    move-object/from16 v0, p0

    #@291
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@293
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    #@295
    move/from16 v0, v30

    #@297
    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    #@29a
    move-result v33

    #@29b
    .line 1543
    .local v33, "packageUserId":I
    move-object/from16 v0, p0

    #@29d
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@29f
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    #@2a1
    move/from16 v0, v33

    #@2a3
    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Landroid/util/ArrayMap;

    #@2a6
    move-result-object v4

    #@2a7
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@2aa
    move-result-object v4

    #@2ab
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2ae
    move-result-object v29

    #@2af
    .line 1545
    .local v29, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    #@2b2
    move-result v4

    #@2b3
    if-eqz v4, :cond_13

    #@2b5
    move/from16 v0, v27

    #@2b7
    move/from16 v1, v43

    #@2b9
    if-ge v0, v1, :cond_13

    #@2bb
    .line 1546
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2be
    move-result-object v26

    #@2bf
    check-cast v26, Ljava/util/Map$Entry;

    #@2c1
    .line 1547
    .local v26, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2c4
    move-result-object v4

    #@2c5
    check-cast v4, Ljava/lang/String;

    #@2c7
    aput-object v4, v34, v27

    #@2c9
    .line 1548
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2cc
    move-result-object v4

    #@2cd
    check-cast v4, Ljava/util/ArrayList;

    #@2cf
    aput-object v4, v22, v27

    #@2d1
    .line 1549
    move-object/from16 v0, p0

    #@2d3
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2d5
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@2d7
    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2d9
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2dc
    move-result-object v12

    #@2dd
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e0
    move-result-object v38

    #@2e1
    check-cast v38, Lcom/android/server/pm/PackageSetting;

    #@2e3
    .line 1550
    .local v38, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v38, :cond_12

    #@2e5
    .line 1551
    move-object/from16 v0, v38

    #@2e7
    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@2e9
    move/from16 v0, v33

    #@2eb
    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    #@2ee
    move-result v4

    #@2ef
    .line 1550
    :goto_5
    aput v4, v47, v27

    #@2f1
    .line 1553
    add-int/lit8 v27, v27, 0x1

    #@2f3
    goto :goto_4

    #@2f4
    .line 1552
    :cond_12
    const/4 v4, -0x1

    #@2f5
    goto :goto_5

    #@2f6
    .line 1540
    .end local v26    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v38    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_13
    add-int/lit8 v30, v30, 0x1

    #@2f8
    goto :goto_3

    #@2f9
    .line 1556
    .end local v29    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v33    # "packageUserId":I
    :cond_14
    move/from16 v43, v27

    #@2fb
    .line 1557
    move-object/from16 v0, p0

    #@2fd
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2ff
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    #@301
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@304
    monitor-exit v10

    #@305
    .line 1560
    const/16 v27, 0x0

    #@307
    :goto_6
    move/from16 v0, v27

    #@309
    move/from16 v1, v43

    #@30b
    if-ge v0, v1, :cond_15

    #@30d
    .line 1561
    move-object/from16 v0, p0

    #@30f
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@311
    aget-object v10, v34, v27

    #@313
    aget-object v12, v22, v27

    #@315
    aget v13, v47, v27

    #@317
    const/4 v14, 0x1

    #@318
    invoke-static {v4, v10, v14, v12, v13}, Lcom/android/server/pm/PackageManagerService;->-wrap39(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    #@31b
    .line 1560
    add-int/lit8 v27, v27, 0x1

    #@31d
    goto :goto_6

    #@31e
    .line 1526
    .end local v22    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v27    # "i":I
    .end local v30    # "n":I
    .end local v34    # "packages":[Ljava/lang/String;
    .end local v47    # "uids":[I
    :catchall_0
    move-exception v4

    #@31f
    monitor-exit v10

    #@320
    throw v4

    #@321
    .line 1563
    .restart local v22    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v27    # "i":I
    .restart local v30    # "n":I
    .restart local v34    # "packages":[Ljava/lang/String;
    .restart local v47    # "uids":[I
    :cond_15
    const/16 v4, 0xa

    #@323
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    #@326
    goto/16 :goto_0

    #@328
    .line 1567
    .end local v22    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v27    # "i":I
    .end local v30    # "n":I
    .end local v34    # "packages":[Ljava/lang/String;
    .end local v43    # "size":I
    .end local v47    # "uids":[I
    :pswitch_7
    const/4 v4, 0x0

    #@329
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    #@32c
    .line 1568
    move-object/from16 v0, p1

    #@32e
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@330
    move-object/from16 v32, v0

    #@332
    check-cast v32, Ljava/lang/String;

    #@334
    .line 1569
    .local v32, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    #@336
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@338
    move/from16 v49, v0

    #@33a
    .line 1570
    .local v49, "userId":I
    move-object/from16 v0, p1

    #@33c
    iget v4, v0, Landroid/os/Message;->arg2:I

    #@33e
    if-eqz v4, :cond_16

    #@340
    const/16 v18, 0x1

    #@342
    .line 1571
    .local v18, "andCode":Z
    :goto_7
    move-object/from16 v0, p0

    #@344
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@346
    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@348
    monitor-enter v10

    #@349
    .line 1572
    const/4 v4, -0x1

    #@34a
    move/from16 v0, v49

    #@34c
    if-ne v0, v4, :cond_17

    #@34e
    .line 1573
    :try_start_3
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@350
    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    #@353
    move-result-object v51

    #@354
    .line 1574
    .local v51, "users":[I
    const/4 v4, 0x0

    #@355
    move-object/from16 v0, v51

    #@357
    array-length v12, v0

    #@358
    :goto_8
    if-ge v4, v12, :cond_18

    #@35a
    aget v48, v51, v4

    #@35c
    .line 1575
    .local v48, "user":I
    move-object/from16 v0, p0

    #@35e
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@360
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@362
    .line 1576
    new-instance v14, Landroid/content/pm/PackageCleanItem;

    #@364
    move/from16 v0, v48

    #@366
    move-object/from16 v1, v32

    #@368
    move/from16 v2, v18

    #@36a
    invoke-direct {v14, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    #@36d
    .line 1575
    invoke-virtual {v13, v14}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    #@370
    .line 1574
    add-int/lit8 v4, v4, 0x1

    #@372
    goto :goto_8

    #@373
    .line 1570
    .end local v18    # "andCode":Z
    .end local v48    # "user":I
    .end local v51    # "users":[I
    :cond_16
    const/16 v18, 0x0

    #@375
    .restart local v18    # "andCode":Z
    goto :goto_7

    #@376
    .line 1579
    :cond_17
    move-object/from16 v0, p0

    #@378
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@37a
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@37c
    .line 1580
    new-instance v12, Landroid/content/pm/PackageCleanItem;

    #@37e
    move/from16 v0, v49

    #@380
    move-object/from16 v1, v32

    #@382
    move/from16 v2, v18

    #@384
    invoke-direct {v12, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    #@387
    .line 1579
    invoke-virtual {v4, v12}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@38a
    :cond_18
    monitor-exit v10

    #@38b
    .line 1583
    const/16 v4, 0xa

    #@38d
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    #@390
    .line 1584
    move-object/from16 v0, p0

    #@392
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@394
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    #@397
    goto/16 :goto_0

    #@399
    .line 1571
    :catchall_1
    move-exception v4

    #@39a
    monitor-exit v10

    #@39b
    throw v4

    #@39c
    .line 1589
    .end local v18    # "andCode":Z
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v49    # "userId":I
    :pswitch_8
    move-object/from16 v0, p0

    #@39e
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3a0
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    #@3a2
    move-object/from16 v0, p1

    #@3a4
    iget v10, v0, Landroid/os/Message;->arg1:I

    #@3a6
    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3a9
    move-result-object v23

    #@3aa
    check-cast v23, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    #@3ac
    .line 1590
    .local v23, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p1

    #@3ae
    iget v4, v0, Landroid/os/Message;->arg2:I

    #@3b0
    if-eqz v4, :cond_19

    #@3b2
    const/4 v9, 0x1

    #@3b3
    .line 1591
    .local v9, "didRestore":Z
    :goto_9
    move-object/from16 v0, p0

    #@3b5
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3b7
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    #@3b9
    move-object/from16 v0, p1

    #@3bb
    iget v10, v0, Landroid/os/Message;->arg1:I

    #@3bd
    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->delete(I)V

    #@3c0
    .line 1593
    if-eqz v23, :cond_1f

    #@3c2
    .line 1594
    move-object/from16 v0, v23

    #@3c4
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@3c6
    move-object/from16 v19, v0

    #@3c8
    .line 1595
    .local v19, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v23

    #@3ca
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    #@3cc
    .line 1597
    .local v5, "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, v19

    #@3ce
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    #@3d0
    and-int/lit16 v4, v4, 0x100

    #@3d2
    if-eqz v4, :cond_1a

    #@3d4
    const/4 v6, 0x1

    #@3d5
    .line 1599
    .local v6, "grantPermissions":Z
    :goto_a
    move-object/from16 v0, v19

    #@3d7
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    #@3d9
    and-int/lit16 v4, v4, 0x1000

    #@3db
    if-nez v4, :cond_1b

    #@3dd
    const/4 v7, 0x1

    #@3de
    .line 1601
    .local v7, "killApp":Z
    :goto_b
    move-object/from16 v0, v19

    #@3e0
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    #@3e2
    .line 1604
    .local v8, "grantedPermissions":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@3e4
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3e6
    .line 1605
    move-object/from16 v0, v19

    #@3e8
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    #@3ea
    .line 1606
    move-object/from16 v0, v19

    #@3ec
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    #@3ee
    .line 1604
    invoke-static/range {v4 .. v11}, Lcom/android/server/pm/PackageManagerService;->-wrap24(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZ[Ljava/lang/String;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)V

    #@3f1
    .line 1609
    iget-object v4, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    #@3f3
    if-eqz v4, :cond_1c

    #@3f5
    .line 1610
    iget-object v4, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    #@3f7
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@3fa
    move-result v21

    #@3fb
    .line 1611
    .local v21, "childCount":I
    :goto_c
    const/16 v27, 0x0

    #@3fd
    .restart local v27    # "i":I
    :goto_d
    move/from16 v0, v27

    #@3ff
    move/from16 v1, v21

    #@401
    if-ge v0, v1, :cond_1d

    #@403
    .line 1612
    iget-object v4, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    #@405
    move/from16 v0, v27

    #@407
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@40a
    move-result-object v11

    #@40b
    check-cast v11, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    #@40d
    .line 1613
    .local v11, "childRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, p0

    #@40f
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@411
    .line 1614
    move-object/from16 v0, v19

    #@413
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    #@415
    move-object/from16 v16, v0

    #@417
    .line 1615
    move-object/from16 v0, v19

    #@419
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    #@41b
    move-object/from16 v17, v0

    #@41d
    .line 1614
    const/4 v15, 0x0

    #@41e
    move v12, v6

    #@41f
    move v13, v7

    #@420
    move-object v14, v8

    #@421
    .line 1613
    invoke-static/range {v10 .. v17}, Lcom/android/server/pm/PackageManagerService;->-wrap24(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZ[Ljava/lang/String;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)V

    #@424
    .line 1611
    add-int/lit8 v27, v27, 0x1

    #@426
    goto :goto_d

    #@427
    .line 1590
    .end local v5    # "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v6    # "grantPermissions":Z
    .end local v7    # "killApp":Z
    .end local v8    # "grantedPermissions":[Ljava/lang/String;
    .end local v9    # "didRestore":Z
    .end local v11    # "childRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v21    # "childCount":I
    .end local v27    # "i":I
    :cond_19
    const/4 v9, 0x0

    #@428
    .restart local v9    # "didRestore":Z
    goto :goto_9

    #@429
    .line 1597
    .restart local v5    # "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .restart local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :cond_1a
    const/4 v6, 0x0

    #@42a
    .restart local v6    # "grantPermissions":Z
    goto :goto_a

    #@42b
    .line 1599
    :cond_1b
    const/4 v7, 0x0

    #@42c
    .restart local v7    # "killApp":Z
    goto :goto_b

    #@42d
    .line 1610
    .restart local v8    # "grantedPermissions":[Ljava/lang/String;
    :cond_1c
    const/16 v21, 0x0

    #@42f
    .restart local v21    # "childCount":I
    goto :goto_c

    #@430
    .line 1619
    .restart local v27    # "i":I
    :cond_1d
    move-object/from16 v0, v19

    #@432
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    #@434
    if-eqz v4, :cond_1e

    #@436
    .line 1620
    move-object/from16 v0, v19

    #@438
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    #@43a
    .line 1621
    move-object/from16 v0, v19

    #@43c
    iget v10, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceCookie:I

    #@43e
    .line 1620
    const-wide/32 v12, 0x40000

    #@441
    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@444
    .line 1627
    .end local v5    # "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v6    # "grantPermissions":Z
    .end local v7    # "killApp":Z
    .end local v8    # "grantedPermissions":[Ljava/lang/String;
    .end local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v21    # "childCount":I
    .end local v27    # "i":I
    :cond_1e
    :goto_e
    const-string/jumbo v4, "postInstall"

    #@447
    move-object/from16 v0, p1

    #@449
    iget v10, v0, Landroid/os/Message;->arg1:I

    #@44b
    const-wide/32 v12, 0x40000

    #@44e
    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@451
    goto/16 :goto_0

    #@453
    .line 1624
    :cond_1f
    const-string/jumbo v4, "PackageManager"

    #@456
    new-instance v10, Ljava/lang/StringBuilder;

    #@458
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@45b
    const-string/jumbo v12, "Bogus post-install token "

    #@45e
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@461
    move-result-object v10

    #@462
    move-object/from16 v0, p1

    #@464
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@466
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@469
    move-result-object v10

    #@46a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46d
    move-result-object v10

    #@46e
    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@471
    goto :goto_e

    #@472
    .line 1631
    .end local v9    # "didRestore":Z
    .end local v23    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    :pswitch_9
    move-object/from16 v0, p1

    #@474
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@476
    const/4 v10, 0x1

    #@477
    if-ne v4, v10, :cond_22

    #@479
    const/16 v39, 0x1

    #@47b
    .line 1632
    .local v39, "reportStatus":Z
    :goto_f
    move-object/from16 v0, p1

    #@47d
    iget v4, v0, Landroid/os/Message;->arg2:I

    #@47f
    const/4 v10, 0x1

    #@480
    if-ne v4, v10, :cond_23

    #@482
    const/16 v24, 0x1

    #@484
    .line 1634
    .local v24, "doGc":Z
    :goto_10
    if-eqz v24, :cond_20

    #@486
    .line 1636
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@489
    move-result-object v4

    #@48a
    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    #@48d
    .line 1638
    :cond_20
    move-object/from16 v0, p1

    #@48f
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@491
    if-eqz v4, :cond_21

    #@493
    .line 1640
    move-object/from16 v0, p1

    #@495
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@497
    move-object/from16 v20, v0

    #@499
    check-cast v20, Ljava/util/Set;

    #@49b
    .line 1643
    .local v20, "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    move-object/from16 v0, p0

    #@49d
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@49f
    move-object/from16 v0, v20

    #@4a1
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap40(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;)V

    #@4a4
    .line 1645
    .end local v20    # "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    :cond_21
    if-eqz v39, :cond_0

    #@4a6
    .line 1648
    :try_start_4
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    #@4a9
    move-result-object v4

    #@4aa
    invoke-interface {v4}, Landroid/os/storage/IMountService;->finishMediaUpdate()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@4ad
    goto/16 :goto_0

    #@4af
    .line 1649
    :catch_0
    move-exception v25

    #@4b0
    .line 1650
    .local v25, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "PackageManager"

    #@4b3
    const-string/jumbo v10, "MountService not running?"

    #@4b6
    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4b9
    goto/16 :goto_0

    #@4bb
    .line 1631
    .end local v24    # "doGc":Z
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v39    # "reportStatus":Z
    :cond_22
    const/16 v39, 0x0

    #@4bd
    .restart local v39    # "reportStatus":Z
    goto :goto_f

    #@4be
    .line 1632
    :cond_23
    const/16 v24, 0x0

    #@4c0
    goto :goto_10

    #@4c1
    .line 1655
    .end local v39    # "reportStatus":Z
    :pswitch_a
    const/4 v4, 0x0

    #@4c2
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    #@4c5
    .line 1656
    move-object/from16 v0, p0

    #@4c7
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4c9
    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@4cb
    monitor-enter v10

    #@4cc
    .line 1657
    const/16 v4, 0xd

    #@4ce
    :try_start_5
    move-object/from16 v0, p0

    #@4d0
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    #@4d3
    .line 1658
    const/16 v4, 0xe

    #@4d5
    move-object/from16 v0, p0

    #@4d7
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    #@4da
    .line 1659
    move-object/from16 v0, p0

    #@4dc
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4de
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@4e0
    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->writeLPr()V

    #@4e3
    .line 1660
    move-object/from16 v0, p0

    #@4e5
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4e7
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get4(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    #@4ea
    move-result-object v4

    #@4eb
    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@4ee
    monitor-exit v10

    #@4ef
    .line 1662
    const/16 v4, 0xa

    #@4f1
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    #@4f4
    goto/16 :goto_0

    #@4f6
    .line 1656
    :catchall_2
    move-exception v4

    #@4f7
    monitor-exit v10

    #@4f8
    throw v4

    #@4f9
    .line 1665
    :pswitch_b
    const/4 v4, 0x0

    #@4fa
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    #@4fd
    .line 1666
    move-object/from16 v0, p0

    #@4ff
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@501
    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@503
    monitor-enter v10

    #@504
    .line 1667
    const/16 v4, 0xe

    #@506
    :try_start_6
    move-object/from16 v0, p0

    #@508
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    #@50b
    .line 1668
    move-object/from16 v0, p0

    #@50d
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@50f
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get4(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    #@512
    move-result-object v4

    #@513
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@516
    move-result-object v50

    #@517
    .local v50, "userId$iterator":Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    #@51a
    move-result v4

    #@51b
    if-eqz v4, :cond_24

    #@51d
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@520
    move-result-object v4

    #@521
    check-cast v4, Ljava/lang/Integer;

    #@523
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@526
    move-result v49

    #@527
    .line 1669
    .restart local v49    # "userId":I
    move-object/from16 v0, p0

    #@529
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@52b
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@52d
    move/from16 v0, v49

    #@52f
    invoke-virtual {v4, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@532
    goto :goto_11

    #@533
    .line 1666
    .end local v49    # "userId":I
    .end local v50    # "userId$iterator":Ljava/util/Iterator;
    :catchall_3
    move-exception v4

    #@534
    monitor-exit v10

    #@535
    throw v4

    #@536
    .line 1671
    .restart local v50    # "userId$iterator":Ljava/util/Iterator;
    :cond_24
    :try_start_7
    move-object/from16 v0, p0

    #@538
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@53a
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get4(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    #@53d
    move-result-object v4

    #@53e
    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@541
    monitor-exit v10

    #@542
    .line 1673
    const/16 v4, 0xa

    #@544
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    #@547
    goto/16 :goto_0

    #@549
    .line 1676
    .end local v50    # "userId$iterator":Ljava/util/Iterator;
    :pswitch_c
    const/4 v4, 0x0

    #@54a
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    #@54d
    .line 1677
    move-object/from16 v0, p0

    #@54f
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@551
    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@553
    monitor-enter v10

    #@554
    .line 1678
    const/16 v4, 0x13

    #@556
    :try_start_8
    move-object/from16 v0, p0

    #@558
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    #@55b
    .line 1679
    move-object/from16 v0, p0

    #@55d
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@55f
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@561
    move-object/from16 v0, p1

    #@563
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@565
    invoke-virtual {v4, v12}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    #@568
    monitor-exit v10

    #@569
    .line 1681
    const/16 v4, 0xa

    #@56b
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    #@56e
    goto/16 :goto_0

    #@570
    .line 1677
    :catchall_4
    move-exception v4

    #@571
    monitor-exit v10

    #@572
    throw v4

    #@573
    .line 1684
    :pswitch_d
    move-object/from16 v0, p1

    #@575
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@577
    move/from16 v52, v0

    #@579
    .line 1685
    .local v52, "verificationId":I
    move-object/from16 v0, p0

    #@57b
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@57d
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    #@57f
    move/from16 v0, v52

    #@581
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@584
    move-result-object v45

    #@585
    check-cast v45, Lcom/android/server/pm/PackageVerificationState;

    #@587
    .line 1687
    .local v45, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v45, :cond_0

    #@589
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    #@58c
    move-result v4

    #@58d
    if-nez v4, :cond_0

    #@58f
    .line 1688
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@592
    move-result-object v19

    #@593
    .line 1689
    .restart local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v19

    #@595
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@597
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    #@599
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@59c
    move-result-object v31

    #@59d
    .line 1691
    .local v31, "originUri":Landroid/net/Uri;
    const-string/jumbo v4, "PackageManager"

    #@5a0
    new-instance v10, Ljava/lang/StringBuilder;

    #@5a2
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5a5
    const-string/jumbo v12, "Verification timed out for "

    #@5a8
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ab
    move-result-object v10

    #@5ac
    move-object/from16 v0, v31

    #@5ae
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b1
    move-result-object v10

    #@5b2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b5
    move-result-object v10

    #@5b6
    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5b9
    .line 1692
    move-object/from16 v0, p0

    #@5bb
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@5bd
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    #@5bf
    move/from16 v0, v52

    #@5c1
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    #@5c4
    .line 1694
    const/16 v42, -0x16

    #@5c6
    .line 1696
    .local v42, "ret":I
    move-object/from16 v0, p0

    #@5c8
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@5ca
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-wrap11(Lcom/android/server/pm/PackageManagerService;)I

    #@5cd
    move-result v4

    #@5ce
    const/4 v10, 0x1

    #@5cf
    if-ne v4, v10, :cond_25

    #@5d1
    .line 1697
    const-string/jumbo v4, "PackageManager"

    #@5d4
    new-instance v10, Ljava/lang/StringBuilder;

    #@5d6
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5d9
    const-string/jumbo v12, "Continuing with installation of "

    #@5dc
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5df
    move-result-object v10

    #@5e0
    move-object/from16 v0, v31

    #@5e2
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e5
    move-result-object v10

    #@5e6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e9
    move-result-object v10

    #@5ea
    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5ed
    .line 1698
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5f0
    move-result v4

    #@5f1
    .line 1699
    const/4 v10, 0x2

    #@5f2
    .line 1698
    move-object/from16 v0, v45

    #@5f4
    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    #@5f7
    .line 1700
    move-object/from16 v0, p0

    #@5f9
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@5fb
    .line 1702
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@5fe
    move-result-object v10

    #@5ff
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    #@602
    move-result-object v10

    #@603
    .line 1701
    const/4 v12, 0x1

    #@604
    .line 1700
    move/from16 v0, v52

    #@606
    move-object/from16 v1, v31

    #@608
    invoke-static {v4, v0, v1, v12, v10}, Lcom/android/server/pm/PackageManagerService;->-wrap19(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    #@60b
    .line 1704
    :try_start_9
    move-object/from16 v0, p0

    #@60d
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@60f
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@612
    move-result-object v4

    #@613
    const/4 v10, 0x1

    #@614
    move-object/from16 v0, v19

    #@616
    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    #@619
    move-result v42

    #@61a
    .line 1715
    :goto_12
    const-string/jumbo v4, "verification"

    #@61d
    const-wide/32 v12, 0x40000

    #@620
    .line 1714
    move/from16 v0, v52

    #@622
    invoke-static {v12, v13, v4, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@625
    .line 1717
    move-object/from16 v0, p0

    #@627
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@629
    move-object/from16 v0, v19

    #@62b
    move/from16 v1, v42

    #@62d
    invoke-static {v4, v0, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap32(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    #@630
    .line 1718
    move-object/from16 v0, p0

    #@632
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@634
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@636
    const/4 v10, 0x6

    #@637
    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    #@63a
    goto/16 :goto_0

    #@63c
    .line 1705
    :catch_1
    move-exception v25

    #@63d
    .line 1706
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "PackageManager"

    #@640
    const-string/jumbo v10, "Could not contact the ContainerService"

    #@643
    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@646
    goto :goto_12

    #@647
    .line 1709
    .end local v25    # "e":Landroid/os/RemoteException;
    :cond_25
    move-object/from16 v0, p0

    #@649
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@64b
    .line 1711
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@64e
    move-result-object v10

    #@64f
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    #@652
    move-result-object v10

    #@653
    .line 1710
    const/4 v12, -0x1

    #@654
    .line 1709
    move/from16 v0, v52

    #@656
    move-object/from16 v1, v31

    #@658
    invoke-static {v4, v0, v1, v12, v10}, Lcom/android/server/pm/PackageManagerService;->-wrap19(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    #@65b
    goto :goto_12

    #@65c
    .line 1723
    .end local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v31    # "originUri":Landroid/net/Uri;
    .end local v42    # "ret":I
    .end local v45    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v52    # "verificationId":I
    :pswitch_e
    move-object/from16 v0, p1

    #@65e
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@660
    move/from16 v52, v0

    #@662
    .line 1725
    .restart local v52    # "verificationId":I
    move-object/from16 v0, p0

    #@664
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@666
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    #@668
    move/from16 v0, v52

    #@66a
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@66d
    move-result-object v45

    #@66e
    check-cast v45, Lcom/android/server/pm/PackageVerificationState;

    #@670
    .line 1726
    .restart local v45    # "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v45, :cond_26

    #@672
    .line 1727
    const-string/jumbo v4, "PackageManager"

    #@675
    new-instance v10, Ljava/lang/StringBuilder;

    #@677
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@67a
    const-string/jumbo v12, "Invalid verification token "

    #@67d
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@680
    move-result-object v10

    #@681
    move/from16 v0, v52

    #@683
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@686
    move-result-object v10

    #@687
    const-string/jumbo v12, " received"

    #@68a
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68d
    move-result-object v10

    #@68e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@691
    move-result-object v10

    #@692
    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@695
    goto/16 :goto_0

    #@697
    .line 1731
    :cond_26
    move-object/from16 v0, p1

    #@699
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@69b
    move-object/from16 v41, v0

    #@69d
    check-cast v41, Lcom/android/server/pm/PackageVerificationResponse;

    #@69f
    .line 1733
    .local v41, "response":Lcom/android/server/pm/PackageVerificationResponse;
    move-object/from16 v0, v41

    #@6a1
    iget v4, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    #@6a3
    move-object/from16 v0, v41

    #@6a5
    iget v10, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    #@6a7
    move-object/from16 v0, v45

    #@6a9
    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    #@6ac
    .line 1735
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    #@6af
    move-result v4

    #@6b0
    if-eqz v4, :cond_0

    #@6b2
    .line 1736
    move-object/from16 v0, p0

    #@6b4
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@6b6
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    #@6b8
    move/from16 v0, v52

    #@6ba
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    #@6bd
    .line 1738
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@6c0
    move-result-object v19

    #@6c1
    .line 1739
    .restart local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v19

    #@6c3
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@6c5
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    #@6c7
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@6ca
    move-result-object v31

    #@6cb
    .line 1742
    .restart local v31    # "originUri":Landroid/net/Uri;
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    #@6ce
    move-result v4

    #@6cf
    if-eqz v4, :cond_27

    #@6d1
    .line 1743
    const/16 v42, -0x6e

    #@6d3
    .line 1744
    .restart local v42    # "ret":I
    move-object/from16 v0, p0

    #@6d5
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@6d7
    .line 1745
    move-object/from16 v0, v41

    #@6d9
    iget v10, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    #@6db
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@6de
    move-result-object v12

    #@6df
    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    #@6e2
    move-result-object v12

    #@6e3
    .line 1744
    move/from16 v0, v52

    #@6e5
    move-object/from16 v1, v31

    #@6e7
    invoke-static {v4, v0, v1, v10, v12}, Lcom/android/server/pm/PackageManagerService;->-wrap19(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    #@6ea
    .line 1747
    :try_start_a
    move-object/from16 v0, p0

    #@6ec
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@6ee
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@6f1
    move-result-object v4

    #@6f2
    const/4 v10, 0x1

    #@6f3
    move-object/from16 v0, v19

    #@6f5
    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    #@6f8
    move-result v42

    #@6f9
    .line 1756
    :goto_13
    const-string/jumbo v4, "verification"

    #@6fc
    const-wide/32 v12, 0x40000

    #@6ff
    .line 1755
    move/from16 v0, v52

    #@701
    invoke-static {v12, v13, v4, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@704
    .line 1758
    move-object/from16 v0, p0

    #@706
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@708
    move-object/from16 v0, v19

    #@70a
    move/from16 v1, v42

    #@70c
    invoke-static {v4, v0, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap32(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    #@70f
    .line 1759
    move-object/from16 v0, p0

    #@711
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@713
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@715
    const/4 v10, 0x6

    #@716
    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    #@719
    goto/16 :goto_0

    #@71b
    .line 1748
    :catch_2
    move-exception v25

    #@71c
    .line 1749
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "PackageManager"

    #@71f
    const-string/jumbo v10, "Could not contact the ContainerService"

    #@722
    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@725
    goto :goto_13

    #@726
    .line 1752
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v42    # "ret":I
    :cond_27
    const/16 v42, -0x16

    #@728
    .restart local v42    # "ret":I
    goto :goto_13

    #@729
    .line 1765
    .end local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v31    # "originUri":Landroid/net/Uri;
    .end local v41    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    .end local v42    # "ret":I
    .end local v45    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v52    # "verificationId":I
    :pswitch_f
    move-object/from16 v0, p1

    #@72b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@72d
    move-object/from16 v36, v0

    #@72f
    check-cast v36, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;

    #@731
    .line 1766
    .local v36, "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    move-object/from16 v0, p0

    #@733
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@735
    move-object/from16 v0, v36

    #@737
    iget v10, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    #@739
    move-object/from16 v0, v36

    #@73b
    iget v12, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    #@73d
    .line 1767
    move-object/from16 v0, v36

    #@73f
    iget-boolean v13, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    #@741
    move-object/from16 v0, v36

    #@743
    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->pkg:Landroid/content/pm/PackageParser$Package;

    #@745
    .line 1766
    invoke-static {v4, v10, v12, v13, v14}, Lcom/android/server/pm/PackageManagerService;->-wrap44(Lcom/android/server/pm/PackageManagerService;IIZLandroid/content/pm/PackageParser$Package;)V

    #@748
    goto/16 :goto_0

    #@74a
    .line 1771
    .end local v36    # "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    :pswitch_10
    move-object/from16 v0, p1

    #@74c
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@74e
    move/from16 v52, v0

    #@750
    .line 1773
    .restart local v52    # "verificationId":I
    move-object/from16 v0, p0

    #@752
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@754
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    #@756
    move/from16 v0, v52

    #@758
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@75b
    move-result-object v44

    #@75c
    check-cast v44, Lcom/android/server/pm/IntentFilterVerificationState;

    #@75e
    .line 1775
    .local v44, "state":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v44, :cond_28

    #@760
    .line 1776
    const-string/jumbo v4, "PackageManager"

    #@763
    new-instance v10, Ljava/lang/StringBuilder;

    #@765
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@768
    const-string/jumbo v12, "Invalid IntentFilter verification token "

    #@76b
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76e
    move-result-object v10

    #@76f
    move/from16 v0, v52

    #@771
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@774
    move-result-object v10

    #@775
    .line 1777
    const-string/jumbo v12, " received"

    #@778
    .line 1776
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77b
    move-result-object v10

    #@77c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77f
    move-result-object v10

    #@780
    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@783
    goto/16 :goto_0

    #@785
    .line 1781
    :cond_28
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    #@788
    move-result v49

    #@789
    .line 1788
    .restart local v49    # "userId":I
    move-object/from16 v0, p1

    #@78b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@78d
    move-object/from16 v40, v0

    #@78f
    check-cast v40, Lcom/android/server/pm/IntentFilterVerificationResponse;

    #@791
    .line 1790
    .local v40, "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    move-object/from16 v0, v40

    #@793
    iget v4, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->callerUid:I

    #@795
    move-object/from16 v0, v40

    #@797
    iget v10, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    #@799
    move-object/from16 v0, v44

    #@79b
    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/IntentFilterVerificationState;->setVerifierResponse(II)Z

    #@79e
    .line 1798
    move-object/from16 v0, v40

    #@7a0
    iget v4, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    #@7a2
    const/4 v10, -0x1

    #@7a3
    if-ne v4, v10, :cond_29

    #@7a5
    .line 1803
    :cond_29
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerificationComplete()Z

    #@7a8
    move-result v4

    #@7a9
    if-eqz v4, :cond_0

    #@7ab
    .line 1804
    move-object/from16 v0, p0

    #@7ad
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@7af
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get5(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;

    #@7b2
    move-result-object v4

    #@7b3
    move/from16 v0, v52

    #@7b5
    invoke-interface {v4, v0}, Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;->receiveVerificationResponse(I)V

    #@7b8
    goto/16 :goto_0

    #@7ba
    .line 1368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/16 v1, 0xa

    #@2
    .line 1361
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 1363
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    #@8
    .line 1359
    return-void

    #@9
    .line 1362
    :catchall_0
    move-exception v0

    #@a
    .line 1363
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    #@d
    .line 1362
    throw v0
.end method
