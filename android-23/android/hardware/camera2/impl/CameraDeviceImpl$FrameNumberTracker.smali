.class public Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameNumberTracker"
.end annotation


# instance fields
.field private mCompletedFrameNumber:J

.field private mCompletedReprocessFrameNumber:J

.field private final mFutureErrorMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPartialResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSkippedRegularFrameNumbers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 2
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@0
    .prologue
    const-wide/16 v0, -0x1

    #@2
    .line 1325
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 1327
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    #@9
    .line 1328
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    #@b
    .line 1330
    new-instance v0, Ljava/util/LinkedList;

    #@d
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@10
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    #@12
    .line 1332
    new-instance v0, Ljava/util/LinkedList;

    #@14
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@17
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    #@19
    .line 1334
    new-instance v0, Ljava/util/TreeMap;

    #@1b
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    #@20
    .line 1336
    new-instance v0, Ljava/util/HashMap;

    #@22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@25
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    #@27
    .line 1325
    return-void
.end method

.method private update()V
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, 0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 1339
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    #@5
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v5

    #@9
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .line 1340
    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_6

    #@13
    .line 1341
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/util/Map$Entry;

    #@19
    .line 1342
    .local v2, "pair":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/Long;

    #@1f
    .line 1343
    .local v0, "errorFrameNumber":Ljava/lang/Long;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Ljava/lang/Boolean;

    #@25
    .line 1344
    .local v4, "reprocess":Ljava/lang/Boolean;
    const/4 v5, 0x1

    #@26
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@29
    move-result-object v3

    #@2a
    .line 1345
    .local v3, "removeError":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_3

    #@30
    .line 1346
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@33
    move-result-wide v6

    #@34
    iget-wide v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    #@36
    add-long/2addr v8, v12

    #@37
    cmp-long v5, v6, v8

    #@39
    if-nez v5, :cond_1

    #@3b
    .line 1347
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@3e
    move-result-wide v6

    #@3f
    iput-wide v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    #@41
    .line 1366
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_0

    #@47
    .line 1367
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@4a
    goto :goto_0

    #@4b
    .line 1348
    :cond_1
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    #@4d
    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    #@50
    move-result v5

    #@51
    if-nez v5, :cond_2

    #@53
    .line 1349
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    #@55
    invoke-virtual {v5}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    #@58
    move-result-object v5

    #@59
    if-ne v0, v5, :cond_2

    #@5b
    .line 1350
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@5e
    move-result-wide v6

    #@5f
    iput-wide v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    #@61
    .line 1351
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    #@63
    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    #@66
    goto :goto_1

    #@67
    .line 1353
    :cond_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@6a
    move-result-object v3

    #@6b
    goto :goto_1

    #@6c
    .line 1356
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@6f
    move-result-wide v6

    #@70
    iget-wide v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    #@72
    add-long/2addr v8, v12

    #@73
    cmp-long v5, v6, v8

    #@75
    if-nez v5, :cond_4

    #@77
    .line 1357
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@7a
    move-result-wide v6

    #@7b
    iput-wide v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    #@7d
    goto :goto_1

    #@7e
    .line 1358
    :cond_4
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    #@80
    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    #@83
    move-result v5

    #@84
    if-nez v5, :cond_5

    #@86
    .line 1359
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    #@88
    invoke-virtual {v5}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    #@8b
    move-result-object v5

    #@8c
    if-ne v0, v5, :cond_5

    #@8e
    .line 1360
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@91
    move-result-wide v6

    #@92
    iput-wide v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    #@94
    .line 1361
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    #@96
    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    #@99
    goto :goto_1

    #@9a
    .line 1363
    :cond_5
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9d
    move-result-object v3

    #@9e
    goto :goto_1

    #@9f
    .line 1338
    .end local v0    # "errorFrameNumber":Ljava/lang/Long;
    .end local v2    # "pair":Ljava/util/Map$Entry;
    .end local v3    # "removeError":Ljava/lang/Boolean;
    .end local v4    # "reprocess":Ljava/lang/Boolean;
    :cond_6
    return-void
.end method

.method private updateCompletedFrameNumber(J)V
    .locals 9
    .param p1, "frameNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x1

    #@2
    .line 1463
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    #@4
    cmp-long v2, p1, v2

    #@6
    if-gtz v2, :cond_0

    #@8
    .line 1464
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "frame number "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, " is a repeat"

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2

    #@29
    .line 1465
    :cond_0
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    #@2b
    cmp-long v2, p1, v2

    #@2d
    if-gtz v2, :cond_5

    #@2f
    .line 1468
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    #@31
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_1

    #@37
    .line 1469
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    #@39
    invoke-virtual {v2}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, Ljava/lang/Long;

    #@3f
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@42
    move-result-wide v2

    #@43
    cmp-long v2, p1, v2

    #@45
    if-gez v2, :cond_2

    #@47
    .line 1470
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@49
    new-instance v3, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v4, "frame number "

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    .line 1471
    const-string/jumbo v4, " is a repeat"

    #@5c
    .line 1470
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@67
    throw v2

    #@68
    .line 1472
    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    #@6a
    invoke-virtual {v2}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    #@6d
    move-result-object v2

    #@6e
    check-cast v2, Ljava/lang/Long;

    #@70
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@73
    move-result-wide v2

    #@74
    cmp-long v2, p1, v2

    #@76
    if-lez v2, :cond_3

    #@78
    .line 1473
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7a
    new-instance v3, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v4, "frame number "

    #@82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@89
    move-result-object v3

    #@8a
    .line 1474
    const-string/jumbo v4, " comes out of order. Expecting "

    #@8d
    .line 1473
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v3

    #@91
    .line 1475
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    #@93
    invoke-virtual {v4}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    #@96
    move-result-object v4

    #@97
    .line 1473
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v3

    #@9b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v3

    #@9f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v2

    #@a3
    .line 1478
    :cond_3
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    #@a5
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    #@a8
    .line 1488
    :cond_4
    iput-wide p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    #@aa
    .line 1462
    return-void

    #@ab
    .line 1482
    :cond_5
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    #@ad
    iget-wide v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    #@af
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@b2
    move-result-wide v2

    #@b3
    add-long v0, v2, v6

    #@b5
    .local v0, "i":J
    :goto_0
    cmp-long v2, v0, p1

    #@b7
    if-gez v2, :cond_4

    #@b9
    .line 1484
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    #@bb
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@be
    move-result-object v3

    #@bf
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@c2
    .line 1483
    add-long/2addr v0, v6

    #@c3
    goto :goto_0
.end method

.method private updateCompletedReprocessFrameNumber(J)V
    .locals 9
    .param p1, "frameNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x1

    #@2
    .line 1502
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    #@4
    cmp-long v2, p1, v2

    #@6
    if-gez v2, :cond_0

    #@8
    .line 1503
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "frame number "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, " is a repeat"

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2

    #@29
    .line 1504
    :cond_0
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    #@2b
    cmp-long v2, p1, v2

    #@2d
    if-gez v2, :cond_5

    #@2f
    .line 1507
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    #@31
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_1

    #@37
    .line 1508
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    #@39
    invoke-virtual {v2}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, Ljava/lang/Long;

    #@3f
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@42
    move-result-wide v2

    #@43
    cmp-long v2, p1, v2

    #@45
    if-gez v2, :cond_2

    #@47
    .line 1509
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@49
    new-instance v3, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v4, "frame number "

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    .line 1510
    const-string/jumbo v4, " is a repeat"

    #@5c
    .line 1509
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@67
    throw v2

    #@68
    .line 1511
    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    #@6a
    invoke-virtual {v2}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    #@6d
    move-result-object v2

    #@6e
    check-cast v2, Ljava/lang/Long;

    #@70
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@73
    move-result-wide v2

    #@74
    cmp-long v2, p1, v2

    #@76
    if-lez v2, :cond_3

    #@78
    .line 1512
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7a
    new-instance v3, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v4, "frame number "

    #@82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@89
    move-result-object v3

    #@8a
    .line 1513
    const-string/jumbo v4, " comes out of order. Expecting "

    #@8d
    .line 1512
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v3

    #@91
    .line 1514
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    #@93
    invoke-virtual {v4}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    #@96
    move-result-object v4

    #@97
    .line 1512
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v3

    #@9b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v3

    #@9f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v2

    #@a3
    .line 1517
    :cond_3
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    #@a5
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    #@a8
    .line 1525
    :cond_4
    iput-wide p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    #@aa
    .line 1501
    return-void

    #@ab
    .line 1520
    :cond_5
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    #@ad
    iget-wide v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    #@af
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@b2
    move-result-wide v2

    #@b3
    add-long v0, v2, v6

    #@b5
    .local v0, "i":J
    :goto_0
    cmp-long v2, v0, p1

    #@b7
    if-gez v2, :cond_4

    #@b9
    .line 1522
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    #@bb
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@be
    move-result-object v3

    #@bf
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@c2
    .line 1521
    add-long/2addr v0, v6

    #@c3
    goto :goto_0
.end method


# virtual methods
.method public getCompletedFrameNumber()J
    .locals 2

    #@0
    .prologue
    .line 1446
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    #@2
    return-wide v0
.end method

.method public getCompletedReprocessFrameNumber()J
    .locals 2

    #@0
    .prologue
    .line 1450
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    #@2
    return-wide v0
.end method

.method public popPartialResults(J)Ljava/util/List;
    .locals 3
    .param p1, "frameNumber"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1442
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    #@2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/List;

    #@c
    return-object v0
.end method

.method public updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V
    .locals 3
    .param p1, "frameNumber"    # J
    .param p3, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p4, "partial"    # Z
    .param p5, "isReprocess"    # Z

    #@0
    .prologue
    .line 1408
    if-nez p4, :cond_0

    #@2
    .line 1410
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, p1, p2, v1, p5}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JZZ)V

    #@6
    .line 1412
    return-void

    #@7
    .line 1415
    :cond_0
    if-nez p3, :cond_1

    #@9
    .line 1418
    return-void

    #@a
    .line 1422
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    #@c
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/List;

    #@16
    .line 1423
    .local v0, "partials":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    if-nez v0, :cond_2

    #@18
    .line 1424
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    .end local v0    # "partials":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    .line 1425
    .restart local v0    # "partials":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    #@1f
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 1428
    :cond_2
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    .line 1407
    return-void
.end method

.method public updateTracker(JZZ)V
    .locals 5
    .param p1, "frameNumber"    # J
    .param p3, "isError"    # Z
    .param p4, "isReprocess"    # Z

    #@0
    .prologue
    .line 1379
    if-eqz p3, :cond_0

    #@2
    .line 1380
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    #@4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    move-result-object v2

    #@8
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 1392
    :goto_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->update()V

    #@12
    .line 1378
    return-void

    #@13
    .line 1383
    :cond_0
    if-eqz p4, :cond_1

    #@15
    .line 1384
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateCompletedReprocessFrameNumber(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    goto :goto_0

    #@19
    .line 1388
    :catch_0
    move-exception v0

    #@1a
    .line 1389
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@1c
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    goto :goto_0

    #@28
    .line 1386
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateCompletedFrameNumber(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@2b
    goto :goto_0
.end method
