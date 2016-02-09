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
    .line 1285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1286
    iput-wide p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    #@5
    .line 1287
    const-wide/16 v0, -0x1

    #@7
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    #@9
    .line 1288
    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    #@b
    .line 1285
    return-void
.end method

.method public constructor <init>(Ljava/util/List;IJ)V
    .locals 11
    .param p2, "requestId"    # I
    .param p3, "lastFrameNumber"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1245
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1247
    const-wide/16 v4, -0x1

    #@5
    .line 1248
    .local v4, "lastRegularFrameNumber":J
    const-wide/16 v6, -0x1

    #@7
    .line 1249
    .local v6, "lastReprocessFrameNumber":J
    move-wide v0, p3

    #@8
    .line 1251
    .local v0, "frameNumber":J
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@b
    move-result v8

    #@c
    add-int/lit8 v8, v8, -0x1

    #@e
    int-to-long v8, v8

    #@f
    cmp-long v8, p3, v8

    #@11
    if-gez v8, :cond_0

    #@13
    .line 1252
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v9, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v10, "lastFrameNumber: "

    #@1d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v9

    #@21
    invoke-virtual {v9, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@24
    move-result-object v9

    #@25
    .line 1253
    const-string/jumbo v10, " should be at least "

    #@28
    .line 1252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v9

    #@2c
    .line 1253
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@2f
    move-result v10

    #@30
    add-int/lit8 v10, v10, -0x1

    #@32
    .line 1252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v9

    #@36
    .line 1253
    const-string/jumbo v10, " for the number of "

    #@39
    .line 1252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v9

    #@3d
    .line 1254
    const-string/jumbo v10, " requests in the list: "

    #@40
    .line 1252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v9

    #@44
    .line 1254
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@47
    move-result v10

    #@48
    .line 1252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v9

    #@4c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v9

    #@50
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v8

    #@54
    .line 1258
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@57
    move-result v8

    #@58
    add-int/lit8 v2, v8, -0x1

    #@5a
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    #@5c
    .line 1259
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object v3

    #@60
    check-cast v3, Landroid/hardware/camera2/CaptureRequest;

    #@62
    .line 1260
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    #@65
    move-result v8

    #@66
    if-eqz v8, :cond_3

    #@68
    .line 1261
    const-wide/16 v8, -0x1

    #@6a
    .line 1260
    cmp-long v8, v6, v8

    #@6c
    if-nez v8, :cond_3

    #@6e
    .line 1262
    move-wide v6, v0

    #@6f
    .line 1268
    :cond_1
    :goto_1
    const-wide/16 v8, -0x1

    #@71
    cmp-long v8, v6, v8

    #@73
    if-eqz v8, :cond_4

    #@75
    .line 1269
    const-wide/16 v8, -0x1

    #@77
    cmp-long v8, v4, v8

    #@79
    if-eqz v8, :cond_4

    #@7b
    .line 1276
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_2
    iput-wide v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    #@7d
    .line 1277
    iput-wide v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    #@7f
    .line 1278
    iput p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    #@81
    .line 1246
    return-void

    #@82
    .line 1263
    .restart local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_3
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    #@85
    move-result v8

    #@86
    if-nez v8, :cond_1

    #@88
    .line 1264
    const-wide/16 v8, -0x1

    #@8a
    .line 1263
    cmp-long v8, v4, v8

    #@8c
    if-nez v8, :cond_1

    #@8e
    .line 1265
    move-wide v4, v0

    #@8f
    goto :goto_1

    #@90
    .line 1273
    :cond_4
    const-wide/16 v8, 0x1

    #@92
    sub-long/2addr v0, v8

    #@93
    .line 1258
    add-int/lit8 v2, v2, -0x1

    #@95
    goto :goto_0
.end method


# virtual methods
.method public getLastFrameNumber()J
    .locals 4

    #@0
    .prologue
    .line 1311
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
    .line 1296
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    #@2
    return-wide v0
.end method

.method public getLastReprocessFrameNumber()J
    .locals 2

    #@0
    .prologue
    .line 1304
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    #@2
    return-wide v0
.end method

.method public getRequestId()I
    .locals 1

    #@0
    .prologue
    .line 1318
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    #@2
    return v0
.end method
