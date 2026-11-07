.class public Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
.super Ljava/lang/Object;
.source "RequestLastFrameNumbersHolder.java"


# instance fields
.field private blacklist mInflightCompleted:Z

.field private final blacklist mLastRegularFrameNumber:J

.field private final blacklist mLastReprocessFrameNumber:J

.field private final blacklist mLastZslStillFrameNumber:J

.field private final blacklist mRequestId:I

.field private blacklist mSequenceCompleted:Z


# direct methods
.method constructor blacklist <init>(IJ[I)V
    .registers 16
    .param p1, "requestId"    # I
    .param p2, "lastFrameNumber"    # J
    .param p4, "repeatingRequestTypes"    # [I

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-wide/16 v0, -0x1

    .line 107
    .local v0, "lastRegularFrameNumber":J
    const-wide/16 v2, -0x1

    .line 109
    .local v2, "lastZslStillFrameNumber":J
    if-eqz p4, :cond_7b

    .line 113
    array-length v4, p4

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    cmp-long v4, p2, v4

    if-ltz v4, :cond_4a

    .line 121
    move-wide v4, p2

    .line 122
    .local v4, "frameNumber":J
    array-length v6, p4

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_15
    const-wide/16 v7, -0x1

    if-ltz v6, :cond_3c

    .line 123
    aget v9, p4, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_24

    cmp-long v9, v2, v7

    if-nez v9, :cond_24

    .line 126
    move-wide v2, v4

    goto :goto_2d

    .line 127
    :cond_24
    aget v9, p4, v6

    if-nez v9, :cond_2d

    cmp-long v9, v0, v7

    if-nez v9, :cond_2d

    .line 130
    move-wide v0, v4

    .line 133
    :cond_2d
    :goto_2d
    cmp-long v9, v2, v7

    if-eqz v9, :cond_36

    cmp-long v9, v0, v7

    if-eqz v9, :cond_36

    .line 136
    goto :goto_3c

    .line 139
    :cond_36
    const-wide/16 v7, 0x1

    sub-long/2addr v4, v7

    .line 122
    add-int/lit8 v6, v6, -0x1

    goto :goto_15

    .line 142
    .end local v6    # "i":I
    :cond_3c
    :goto_3c
    iput-wide v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    .line 143
    iput-wide v2, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastZslStillFrameNumber:J

    .line 144
    iput-wide v7, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    .line 145
    iput p1, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mRequestId:I

    .line 146
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mSequenceCompleted:Z

    .line 147
    iput-boolean v6, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mInflightCompleted:Z

    .line 148
    return-void

    .line 114
    .end local v4    # "frameNumber":J
    :cond_4a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastFrameNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " should be at least "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p4

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for the number of requests in the list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 110
    :cond_7b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "repeatingRequest list must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public constructor blacklist <init>(Ljava/util/List;Landroid/hardware/camera2/utils/SubmitInfo;)V
    .registers 20
    .param p2, "requestInfo"    # Landroid/hardware/camera2/utils/SubmitInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/utils/SubmitInfo;",
            ")V"
        }
    .end annotation

    .line 50
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/16 v1, -0x1

    .line 52
    .local v1, "lastRegularFrameNumber":J
    const-wide/16 v3, -0x1

    .line 53
    .local v3, "lastReprocessFrameNumber":J
    const-wide/16 v5, -0x1

    .line 54
    .local v5, "lastZslStillFrameNumber":J
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v7

    .line 56
    .local v7, "frameNumber":J
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    int-to-long v13, v11

    cmp-long v9, v9, v13

    if-ltz v9, :cond_78

    .line 64
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v12

    .local v9, "i":I
    :goto_23
    if-ltz v9, :cond_64

    .line 65
    move-object/from16 v10, p1

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/camera2/CaptureRequest;

    .line 66
    .local v11, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v13

    .line 67
    .local v13, "requestType":I
    const-wide/16 v14, -0x1

    if-ne v13, v12, :cond_3d

    cmp-long v16, v3, v14

    if-nez v16, :cond_3d

    .line 70
    move-wide v3, v7

    move/from16 v16, v12

    goto :goto_4f

    .line 71
    :cond_3d
    move/from16 v16, v12

    const/4 v12, 0x2

    if-ne v13, v12, :cond_48

    cmp-long v12, v5, v14

    if-nez v12, :cond_48

    .line 74
    move-wide v5, v7

    goto :goto_4f

    .line 75
    :cond_48
    if-nez v13, :cond_4f

    cmp-long v12, v1, v14

    if-nez v12, :cond_4f

    .line 78
    move-wide v1, v7

    .line 81
    :cond_4f
    :goto_4f
    cmp-long v12, v3, v14

    if-eqz v12, :cond_5c

    cmp-long v12, v5, v14

    if-eqz v12, :cond_5c

    cmp-long v12, v1, v14

    if-eqz v12, :cond_5c

    .line 86
    goto :goto_66

    .line 89
    :cond_5c
    const-wide/16 v14, 0x1

    sub-long/2addr v7, v14

    .line 64
    .end local v11    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v13    # "requestType":I
    add-int/lit8 v9, v9, -0x1

    move/from16 v12, v16

    goto :goto_23

    :cond_64
    move-object/from16 v10, p1

    .line 92
    .end local v9    # "i":I
    :goto_66
    iput-wide v1, v0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    .line 93
    iput-wide v3, v0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    .line 94
    iput-wide v5, v0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastZslStillFrameNumber:J

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v9

    iput v9, v0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mRequestId:I

    .line 96
    const/4 v9, 0x0

    iput-boolean v9, v0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mSequenceCompleted:Z

    .line 97
    iput-boolean v9, v0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mInflightCompleted:Z

    .line 98
    return-void

    .line 57
    :cond_78
    move-object/from16 v10, p1

    move/from16 v16, v12

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lastFrameNumber: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " should be at least "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 59
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " for the number of  requests in the list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 60
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method


# virtual methods
.method public blacklist getLastFrameNumber()J
    .registers 7

    .line 178
    iget-wide v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastZslStillFrameNumber:J

    iget-wide v2, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    iget-wide v4, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    .line 179
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 178
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getLastRegularFrameNumber()J
    .registers 3

    .line 155
    iget-wide v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    return-wide v0
.end method

.method public blacklist getLastReprocessFrameNumber()J
    .registers 3

    .line 163
    iget-wide v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    return-wide v0
.end method

.method public blacklist getLastZslStillFrameNumber()J
    .registers 3

    .line 171
    iget-wide v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastZslStillFrameNumber:J

    return-wide v0
.end method

.method public blacklist getRequestId()I
    .registers 2

    .line 186
    iget v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mRequestId:I

    return v0
.end method

.method public blacklist isInflightCompleted()Z
    .registers 2

    .line 207
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mInflightCompleted:Z

    return v0
.end method

.method public blacklist isSequenceCompleted()Z
    .registers 2

    .line 193
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mSequenceCompleted:Z

    return v0
.end method

.method public blacklist markInflightCompleted()V
    .registers 2

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mInflightCompleted:Z

    .line 215
    return-void
.end method

.method public blacklist markSequenceCompleted()V
    .registers 2

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mSequenceCompleted:Z

    .line 201
    return-void
.end method
