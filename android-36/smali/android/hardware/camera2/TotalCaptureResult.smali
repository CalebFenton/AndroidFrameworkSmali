.class public final Landroid/hardware/camera2/TotalCaptureResult;
.super Landroid/hardware/camera2/CaptureResult;
.source "TotalCaptureResult.java"


# instance fields
.field private final greylist-max-o mPartialResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPhysicalCaptureResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSessionId:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V
    .registers 4
    .param p1, "results"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "sequenceId"    # I

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    .line 140
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJLjava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    .registers 27
    .param p1, "logicalCameraId"    # Ljava/lang/String;
    .param p2, "results"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "parent"    # Landroid/hardware/camera2/CaptureRequest;
    .param p4, "requestId"    # I
    .param p5, "frameNumber"    # J
    .param p8, "sessionId"    # I
    .param p9, "physicalResults"    # [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "IJ",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;I[",
            "Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;",
            ")V"
        }
    .end annotation

    .line 106
    .local p7, "partials":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p9

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJ)V

    .line 108
    if-nez v1, :cond_13

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    goto :goto_15

    .line 111
    :cond_13
    iput-object v1, v0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    .line 114
    :goto_15
    move/from16 v12, p8

    iput v12, v0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    .line 116
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    .line 117
    array-length v3, v2

    const/4 v14, 0x0

    move v15, v14

    :goto_23
    if-ge v15, v3, :cond_4b

    aget-object v16, v2, v15

    .line 118
    .local v16, "onePhysicalResult":Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    new-instance v4, Landroid/hardware/camera2/TotalCaptureResult;

    .line 119
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraId()Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v6

    const/4 v11, 0x0

    new-array v13, v14, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-wide/from16 v9, p5

    invoke-direct/range {v4 .. v13}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJLjava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    .line 123
    .local v4, "physicalResult":Landroid/hardware/camera2/TotalCaptureResult;
    iget-object v5, v0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v4    # "physicalResult":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v16    # "onePhysicalResult":Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, p8

    goto :goto_23

    .line 126
    :cond_4b
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    .registers 22
    .param p1, "logicalCameraId"    # Ljava/lang/String;
    .param p2, "results"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "parent"    # Landroid/hardware/camera2/CaptureRequest;
    .param p4, "extras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p6, "sessionId"    # I
    .param p7, "physicalResults"    # [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/impl/CaptureResultExtras;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;I[",
            "Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;",
            ")V"
        }
    .end annotation

    .line 76
    .local p5, "partials":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-direct/range {p0 .. p4}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 78
    if-nez v0, :cond_11

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    goto :goto_13

    .line 81
    :cond_11
    iput-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    .line 84
    :goto_13
    move/from16 v9, p6

    iput v9, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    .line 86
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    .line 87
    array-length v2, v1

    const/4 v11, 0x0

    move v12, v11

    :goto_21
    if-ge v12, v2, :cond_47

    aget-object v13, v1, v12

    .line 88
    .local v13, "onePhysicalResult":Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    new-instance v3, Landroid/hardware/camera2/TotalCaptureResult;

    .line 89
    invoke-virtual {v13}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraId()Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {v13}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    const/4 v8, 0x0

    new-array v10, v11, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v3 .. v10}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    .line 92
    .local v3, "physicalResult":Landroid/hardware/camera2/TotalCaptureResult;
    iget-object v4, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    invoke-virtual {v13}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v3    # "physicalResult":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v13    # "onePhysicalResult":Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    add-int/lit8 v12, v12, 0x1

    move/from16 v9, p6

    goto :goto_21

    .line 95
    :cond_47
    return-void
.end method


# virtual methods
.method public whitelist getPartialResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPhysicalCameraResults()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPhysicalCameraTotalResults()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getSessionId()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    return v0
.end method
