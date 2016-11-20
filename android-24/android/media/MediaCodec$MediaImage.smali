.class public Landroid/media/MediaCodec$MediaImage;
.super Landroid/media/Image;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$MediaImage$MediaPlane;
    }
.end annotation


# static fields
.field private static final TYPE_YUV:I = 0x1


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mFormat:I

.field private final mHeight:I

.field private final mInfo:Ljava/nio/ByteBuffer;

.field private final mIsReadOnly:Z

.field private final mPlanes:[Landroid/media/Image$Plane;

.field private mTimestamp:J

.field private final mWidth:I

.field private final mXOffset:I

.field private final mYOffset:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZJIILandroid/graphics/Rect;)V
    .locals 18
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Ljava/nio/ByteBuffer;
    .param p3, "readOnly"    # Z
    .param p4, "timestamp"    # J
    .param p6, "xOffset"    # I
    .param p7, "yOffset"    # I
    .param p8, "cropRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3486
    invoke-direct/range {p0 .. p0}, Landroid/media/Image;-><init>()V

    #@3
    .line 3489
    const/16 v13, 0x23

    #@5
    move-object/from16 v0, p0

    #@7
    iput v13, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    #@9
    .line 3490
    move-wide/from16 v0, p4

    #@b
    move-object/from16 v2, p0

    #@d
    iput-wide v0, v2, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    #@f
    .line 3491
    const/4 v13, 0x1

    #@10
    move-object/from16 v0, p0

    #@12
    iput-boolean v13, v0, Landroid/media/Image;->mIsImageValid:Z

    #@14
    .line 3492
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->isReadOnly()Z

    #@17
    move-result v13

    #@18
    move-object/from16 v0, p0

    #@1a
    iput-boolean v13, v0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    #@1c
    .line 3493
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@1f
    move-result-object v13

    #@20
    move-object/from16 v0, p0

    #@22
    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    #@24
    .line 3496
    move/from16 v0, p6

    #@26
    move-object/from16 v1, p0

    #@28
    iput v0, v1, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    #@2a
    .line 3497
    move/from16 v0, p7

    #@2c
    move-object/from16 v1, p0

    #@2e
    iput v0, v1, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    #@30
    .line 3498
    move-object/from16 v0, p2

    #@32
    move-object/from16 v1, p0

    #@34
    iput-object v0, v1, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    #@36
    .line 3501
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->remaining()I

    #@39
    move-result v13

    #@3a
    const/16 v14, 0x68

    #@3c
    if-ne v13, v14, :cond_b

    #@3e
    .line 3502
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@41
    move-result v11

    #@42
    .line 3503
    .local v11, "type":I
    const/4 v13, 0x1

    #@43
    if-eq v11, v13, :cond_0

    #@45
    .line 3504
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    #@47
    new-instance v14, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v15, "unsupported type: "

    #@4f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v14

    #@53
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v14

    #@57
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v14

    #@5b
    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v13

    #@5f
    .line 3506
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@62
    move-result v8

    #@63
    .line 3507
    .local v8, "numPlanes":I
    const/4 v13, 0x3

    #@64
    if-eq v8, v13, :cond_1

    #@66
    .line 3508
    new-instance v13, Ljava/lang/RuntimeException;

    #@68
    new-instance v14, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v15, "unexpected number of planes: "

    #@70
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v14

    #@74
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v14

    #@78
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v14

    #@7c
    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v13

    #@80
    .line 3510
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@83
    move-result v13

    #@84
    move-object/from16 v0, p0

    #@86
    iput v13, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    #@88
    .line 3511
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@8b
    move-result v13

    #@8c
    move-object/from16 v0, p0

    #@8e
    iput v13, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    #@90
    .line 3512
    move-object/from16 v0, p0

    #@92
    iget v13, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    #@94
    const/4 v14, 0x1

    #@95
    if-lt v13, v14, :cond_2

    #@97
    move-object/from16 v0, p0

    #@99
    iget v13, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    #@9b
    const/4 v14, 0x1

    #@9c
    if-ge v13, v14, :cond_3

    #@9e
    .line 3513
    :cond_2
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    #@a0
    .line 3514
    new-instance v14, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v15, "unsupported size: "

    #@a8
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v14

    #@ac
    move-object/from16 v0, p0

    #@ae
    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    #@b0
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v14

    #@b4
    const-string/jumbo v15, "x"

    #@b7
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v14

    #@bb
    move-object/from16 v0, p0

    #@bd
    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    #@bf
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v14

    #@c3
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v14

    #@c7
    .line 3513
    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@ca
    throw v13

    #@cb
    .line 3516
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@ce
    move-result v3

    #@cf
    .line 3517
    .local v3, "bitDepth":I
    const/16 v13, 0x8

    #@d1
    if-eq v3, v13, :cond_4

    #@d3
    .line 3518
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    #@d5
    new-instance v14, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v15, "unsupported bit depth: "

    #@dd
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v14

    #@e1
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v14

    #@e5
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v14

    #@e9
    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@ec
    throw v13

    #@ed
    .line 3520
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@f0
    move-result v4

    #@f1
    .line 3521
    .local v4, "bitDepthAllocated":I
    const/16 v13, 0x8

    #@f3
    if-eq v4, v13, :cond_5

    #@f5
    .line 3522
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    #@f7
    .line 3523
    new-instance v14, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string/jumbo v15, "unsupported allocated bit depth: "

    #@ff
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v14

    #@103
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@106
    move-result-object v14

    #@107
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v14

    #@10b
    .line 3522
    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@10e
    throw v13

    #@10f
    .line 3525
    :cond_5
    new-array v13, v8, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    #@111
    move-object/from16 v0, p0

    #@113
    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    #@115
    .line 3526
    const/4 v7, 0x0

    #@116
    .local v7, "ix":I
    :goto_0
    if-ge v7, v8, :cond_c

    #@118
    .line 3527
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@11b
    move-result v9

    #@11c
    .line 3528
    .local v9, "planeOffset":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@11f
    move-result v5

    #@120
    .line 3529
    .local v5, "colInc":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@123
    move-result v10

    #@124
    .line 3530
    .local v10, "rowInc":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@127
    move-result v6

    #@128
    .line 3531
    .local v6, "horiz":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@12b
    move-result v12

    #@12c
    .line 3532
    .local v12, "vert":I
    if-ne v6, v12, :cond_6

    #@12e
    if-nez v7, :cond_7

    #@130
    const/4 v13, 0x1

    #@131
    :goto_1
    if-eq v6, v13, :cond_8

    #@133
    .line 3533
    :cond_6
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    #@135
    new-instance v14, Ljava/lang/StringBuilder;

    #@137
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@13a
    const-string/jumbo v15, "unexpected subsampling: "

    #@13d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v14

    #@141
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@144
    move-result-object v14

    #@145
    .line 3534
    const-string/jumbo v15, "x"

    #@148
    .line 3533
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v14

    #@14c
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v14

    #@150
    .line 3534
    const-string/jumbo v15, " on plane "

    #@153
    .line 3533
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v14

    #@157
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v14

    #@15b
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15e
    move-result-object v14

    #@15f
    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@162
    throw v13

    #@163
    .line 3532
    :cond_7
    const/4 v13, 0x2

    #@164
    goto :goto_1

    #@165
    .line 3536
    :cond_8
    const/4 v13, 0x1

    #@166
    if-lt v5, v13, :cond_9

    #@168
    const/4 v13, 0x1

    #@169
    if-ge v10, v13, :cond_a

    #@16b
    .line 3537
    :cond_9
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    #@16d
    new-instance v14, Ljava/lang/StringBuilder;

    #@16f
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@172
    const-string/jumbo v15, "unexpected strides: "

    #@175
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v14

    #@179
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v14

    #@17d
    .line 3538
    const-string/jumbo v15, " pixel, "

    #@180
    .line 3537
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v14

    #@184
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@187
    move-result-object v14

    #@188
    .line 3538
    const-string/jumbo v15, " row on plane "

    #@18b
    .line 3537
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v14

    #@18f
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@192
    move-result-object v14

    #@193
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@196
    move-result-object v14

    #@197
    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@19a
    throw v13

    #@19b
    .line 3541
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    #@19e
    .line 3542
    move-object/from16 v0, p0

    #@1a0
    iget-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    #@1a2
    invoke-virtual {v13}, Ljava/nio/Buffer;->position()I

    #@1a5
    move-result v13

    #@1a6
    add-int/2addr v13, v9

    #@1a7
    .line 3543
    div-int v14, p6, v6

    #@1a9
    mul-int/2addr v14, v5

    #@1aa
    .line 3542
    add-int/2addr v13, v14

    #@1ab
    .line 3543
    div-int v14, p7, v12

    #@1ad
    mul-int/2addr v14, v10

    #@1ae
    .line 3542
    add-int/2addr v13, v14

    #@1af
    move-object/from16 v0, p1

    #@1b1
    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@1b4
    .line 3544
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    #@1b7
    move-result v13

    #@1b8
    const/16 v14, 0x8

    #@1ba
    invoke-static {v3, v14}, Landroid/media/Utils;->divUp(II)I

    #@1bd
    move-result v14

    #@1be
    add-int/2addr v13, v14

    #@1bf
    .line 3545
    move-object/from16 v0, p0

    #@1c1
    iget v14, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    #@1c3
    div-int/2addr v14, v12

    #@1c4
    add-int/lit8 v14, v14, -0x1

    #@1c6
    mul-int/2addr v14, v10

    #@1c7
    .line 3544
    add-int/2addr v13, v14

    #@1c8
    .line 3545
    move-object/from16 v0, p0

    #@1ca
    iget v14, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    #@1cc
    div-int/2addr v14, v6

    #@1cd
    add-int/lit8 v14, v14, -0x1

    #@1cf
    mul-int/2addr v14, v5

    #@1d0
    .line 3544
    add-int/2addr v13, v14

    #@1d1
    move-object/from16 v0, p1

    #@1d3
    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@1d6
    .line 3546
    move-object/from16 v0, p0

    #@1d8
    iget-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    #@1da
    new-instance v14, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    #@1dc
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@1df
    move-result-object v15

    #@1e0
    move-object/from16 v0, p0

    #@1e2
    invoke-direct {v14, v0, v15, v10, v5}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    #@1e5
    aput-object v14, v13, v7

    #@1e7
    .line 3526
    add-int/lit8 v7, v7, 0x1

    #@1e9
    goto/16 :goto_0

    #@1eb
    .line 3549
    .end local v3    # "bitDepth":I
    .end local v4    # "bitDepthAllocated":I
    .end local v5    # "colInc":I
    .end local v6    # "horiz":I
    .end local v7    # "ix":I
    .end local v8    # "numPlanes":I
    .end local v9    # "planeOffset":I
    .end local v10    # "rowInc":I
    .end local v11    # "type":I
    .end local v12    # "vert":I
    :cond_b
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    #@1ed
    .line 3550
    new-instance v14, Ljava/lang/StringBuilder;

    #@1ef
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1f2
    const-string/jumbo v15, "unsupported info length: "

    #@1f5
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v14

    #@1f9
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->remaining()I

    #@1fc
    move-result v15

    #@1fd
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@200
    move-result-object v14

    #@201
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@204
    move-result-object v14

    #@205
    .line 3549
    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@208
    throw v13

    #@209
    .line 3553
    .restart local v3    # "bitDepth":I
    .restart local v4    # "bitDepthAllocated":I
    .restart local v7    # "ix":I
    .restart local v8    # "numPlanes":I
    .restart local v11    # "type":I
    :cond_c
    if-nez p8, :cond_d

    #@20b
    .line 3554
    new-instance p8, Landroid/graphics/Rect;

    #@20d
    .end local p8    # "cropRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@20f
    iget v13, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    #@211
    move-object/from16 v0, p0

    #@213
    iget v14, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    #@215
    const/4 v15, 0x0

    #@216
    const/16 v16, 0x0

    #@218
    move-object/from16 v0, p8

    #@21a
    move/from16 v1, v16

    #@21c
    invoke-direct {v0, v15, v1, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    #@21f
    .line 3556
    .restart local p8    # "cropRect":Landroid/graphics/Rect;
    :cond_d
    move/from16 v0, p6

    #@221
    neg-int v13, v0

    #@222
    move/from16 v0, p7

    #@224
    neg-int v14, v0

    #@225
    move-object/from16 v0, p8

    #@227
    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    #@22a
    .line 3557
    move-object/from16 v0, p0

    #@22c
    move-object/from16 v1, p8

    #@22e
    invoke-super {v0, v1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    #@231
    .line 3488
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 3465
    iget-boolean v0, p0, Landroid/media/Image;->mIsImageValid:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3466
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    #@6
    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@9
    .line 3467
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/media/Image;->mIsImageValid:Z

    #@c
    .line 3464
    :cond_0
    return-void
.end method

.method public getFormat()I
    .locals 1

    #@0
    .prologue
    .line 3434
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    #@3
    .line 3435
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    #@5
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 3440
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    #@3
    .line 3441
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    #@5
    return v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    #@0
    .prologue
    .line 3459
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    #@3
    .line 3460
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    #@5
    iget-object v1, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    #@7
    array-length v1, v1

    #@8
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [Landroid/media/Image$Plane;

    #@e
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 3452
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    #@3
    .line 3453
    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    #@5
    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 3446
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    #@3
    .line 3447
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    #@5
    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3479
    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3480
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 3482
    :cond_0
    invoke-super {p0, p1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    #@d
    .line 3478
    return-void
.end method
