.class Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestLastFrameNumbersHolder"
.end annotation


# instance fields
.field private final mLastRegularFrameNumber:J

.field private final mLastReprocessFrameNumber:J

.field private final mRequestId:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "lastRegularFrameNumber"    # J

    #@0
    .prologue
    .line 1331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1332
    iput-wide p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    #@5
    .line 1333
    const-wide/16 v0, -0x1

    #@7
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    #@9
    .line 1334
    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    #@b
    .line 1331
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/hardware/camera2/utils/SubmitInfo;)V
    .locals 12
    .param p2, "requestInfo"    # Landroid/hardware/camera2/utils/SubmitInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/utils/SubmitInfo;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1291
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1292
    const-wide/16 v4, -0x1

    #@5
    .line 1293
    .local v4, "lastRegularFrameNumber":J
    const-wide/16 v6, -0x1

    #@7
    .line 1294
    .local v6, "lastReprocessFrameNumber":J
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    #@a
    move-result-wide v0

    #@b
    .line 1296
    .local v0, "frameNumber":J
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    #@e
    move-result-wide v8

    #@f
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@12
    move-result v10

    #@13
    add-int/lit8 v10, v10, -0x1

    #@15
    int-to-long v10, v10

    #@16
    cmp-long v8, v8, v10

    #@18
    if-gez v8, :cond_0

    #@1a
    .line 1297
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@1c
    .line 1298
    new-instance v9, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v10, "lastFrameNumber: "

    #@24
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v9

    #@28
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    #@2b
    move-result-wide v10

    #@2c
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v9

    #@30
    .line 1299
    const-string/jumbo v10, " should be at least "

    #@33
    .line 1298
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v9

    #@37
    .line 1299
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3a
    move-result v10

    #@3b
    add-int/lit8 v10, v10, -0x1

    #@3d
    .line 1298
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v9

    #@41
    .line 1299
    const-string/jumbo v10, " for the number of "

    #@44
    .line 1298
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v9

    #@48
    .line 1300
    const-string/jumbo v10, " requests in the list: "

    #@4b
    .line 1298
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v9

    #@4f
    .line 1300
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@52
    move-result v10

    #@53
    .line 1298
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v9

    #@57
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v9

    #@5b
    .line 1297
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v8

    #@5f
    .line 1304
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@62
    move-result v8

    #@63
    add-int/lit8 v2, v8, -0x1

    #@65
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    #@67
    .line 1305
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6a
    move-result-object v3

    #@6b
    check-cast v3, Landroid/hardware/camera2/CaptureRequest;

    #@6d
    .line 1306
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    #@70
    move-result v8

    #@71
    if-eqz v8, :cond_3

    #@73
    .line 1307
    const-wide/16 v8, -0x1

    #@75
    .line 1306
    cmp-long v8, v6, v8

    #@77
    if-nez v8, :cond_3

    #@79
    .line 1308
    move-wide v6, v0

    #@7a
    .line 1314
    :cond_1
    :goto_1
    const-wide/16 v8, -0x1

    #@7c
    cmp-long v8, v6, v8

    #@7e
    if-eqz v8, :cond_4

    #@80
    .line 1315
    const-wide/16 v8, -0x1

    #@82
    cmp-long v8, v4, v8

    #@84
    if-eqz v8, :cond_4

    #@86
    .line 1322
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_2
    iput-wide v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    #@88
    .line 1323
    iput-wide v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    #@8a
    .line 1324
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    #@8d
    move-result v8

    #@8e
    iput v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    #@90
    .line 1291
    return-void

    #@91
    .line 1309
    .restart local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_3
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    #@94
    move-result v8

    #@95
    if-nez v8, :cond_1

    #@97
    .line 1310
    const-wide/16 v8, -0x1

    #@99
    .line 1309
    cmp-long v8, v4, v8

    #@9b
    if-nez v8, :cond_1

    #@9d
    .line 1311
    move-wide v4, v0

    #@9e
    goto :goto_1

    #@9f
    .line 1319
    :cond_4
    const-wide/16 v8, 0x1

    #@a1
    sub-long/2addr v0, v8

    #@a2
    .line 1304
    add-int/lit8 v2, v2, -0x1

    #@a4
    goto :goto_0
.end method


# virtual methods
.method public getLastFrameNumber()J
    .locals 4

    #@0
    .prologue
    .line 1357
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    #@2
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    #@4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getLastRegularFrameNumber()J
    .locals 2

    #@0
    .prologue
    .line 1342
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    #@2
    return-wide v0
.end method

.method public getLastReprocessFrameNumber()J
    .locals 2

    #@0
    .prologue
    .line 1350
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    #@2
    return-wide v0
.end method

.method public getRequestId()I
    .locals 1

    #@0
    .prologue
    .line 1364
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    #@2
    return v0
.end method
