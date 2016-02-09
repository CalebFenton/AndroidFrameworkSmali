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
    .line 3290
    invoke-direct/range {p0 .. p0}, Landroid/media/Image;-><init>()V

    #@3
    .line 3293
    const/16 v13, 0x23

    #@5
    move-object/from16 v0, p0

    #@7
    iput v13, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    #@9
    .line 3294
    move-wide/from16 v0, p4

    #@b
    move-object/from16 v2, p0

    #@d
    iput-wide v0, v2, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    #@f
    .line 3295
    const/4 v13, 0x1

    #@10
    move-object/from16 v0, p0

    #@12
    iput-boolean v13, v0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    #@14
    .line 3296
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@17
    move-result v13

    #@18
    move-object/from16 v0, p0

    #@1a
    iput-boolean v13, v0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    #@1c
    .line 3297
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@1f
    move-result-object v13

    #@20
    move-object/from16 v0, p0

    #@22
    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    #@24
    .line 3300
    move/from16 v0, p6

    #@26
    move-object/from16 v1, p0

    #@28
    iput v0, v1, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    #@2a
    .line 3301
    move/from16 v0, p7

    #@2c
    move-object/from16 v1, p0

    #@2e
    iput v0, v1, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    #@30
    .line 3302
    move-object/from16 v0, p2

    #@32
    move-object/from16 v1, p0

    #@34
    iput-object v0, v1, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    #@36
    .line 3306
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@39
    move-result v13

    #@3a
    const/16 v14, 0x50

    #@3c
    if-eq v13, v14, :cond_0

    #@3e
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@41
    move-result v13

    #@42
    const/16 v14, 0x9c

    #@44
    if-ne v13, v14, :cond_1

    #@46
    .line 3307
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@49
    move-result v13

    #@4a
    const/16 v14, 0x50

    #@4c
    if-eq v13, v14, :cond_2

    #@4e
    const/4 v10, 0x1

    #@4f
    .line 3308
    .local v10, "sizeIsLong":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@52
    move-result v13

    #@53
    const/16 v14, 0xa0

    #@55
    if-ne v13, v14, :cond_3

    #@57
    const/4 v13, 0x1

    #@58
    :goto_1
    move-object/from16 v0, p0

    #@5a
    move-object/from16 v1, p2

    #@5c
    invoke-direct {v0, v1, v13}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    #@5f
    move-result v11

    #@60
    .line 3309
    .local v11, "type":I
    const/4 v13, 0x1

    #@61
    if-eq v11, v13, :cond_4

    #@63
    .line 3310
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    #@65
    new-instance v14, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v15, "unsupported type: "

    #@6d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v14

    #@71
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v14

    #@75
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v14

    #@79
    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v13

    #@7d
    .line 3306
    .end local v10    # "sizeIsLong":Z
    .end local v11    # "type":I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@80
    move-result v13

    #@81
    const/16 v14, 0xa0

    #@83
    if-eq v13, v14, :cond_0

    #@85
    .line 3346
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    #@87
    .line 3347
    new-instance v14, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v15, "unsupported info length: "

    #@8f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v14

    #@93
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@96
    move-result v15

    #@97
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v14

    #@9b
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v14

    #@9f
    .line 3346
    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v13

    #@a3
    .line 3307
    :cond_2
    const/4 v10, 0x0

    #@a4
    .restart local v10    # "sizeIsLong":Z
    goto :goto_0

    #@a5
    .line 3308
    :cond_3
    const/4 v13, 0x0

    #@a6
    goto :goto_1

    #@a7
    .line 3312
    .restart local v11    # "type":I
    :cond_4
    move-object/from16 v0, p0

    #@a9
    move-object/from16 v1, p2

    #@ab
    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    #@ae
    move-result v7

    #@af
    .line 3313
    .local v7, "numPlanes":I
    const/4 v13, 0x3

    #@b0
    if-eq v7, v13, :cond_5

    #@b2
    .line 3314
    new-instance v13, Ljava/lang/RuntimeException;

    #@b4
    new-instance v14, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v15, "unexpected number of planes: "

    #@bc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v14

    #@c0
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v14

    #@c4
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v14

    #@c8
    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@cb
    throw v13

    #@cc
    .line 3316
    :cond_5
    move-object/from16 v0, p0

    #@ce
    move-object/from16 v1, p2

    #@d0
    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    #@d3
    move-result v13

    #@d4
    move-object/from16 v0, p0

    #@d6
    iput v13, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    #@d8
    .line 3317
    move-object/from16 v0, p0

    #@da
    move-object/from16 v1, p2

    #@dc
    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    #@df
    move-result v13

    #@e0
    move-object/from16 v0, p0

    #@e2
    iput v13, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    #@e4
    .line 3318
    move-object/from16 v0, p0

    #@e6
    iget v13, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    #@e8
    const/4 v14, 0x1

    #@e9
    if-lt v13, v14, :cond_6

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget v13, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    #@ef
    const/4 v14, 0x1

    #@f0
    if-ge v13, v14, :cond_7

    #@f2
    .line 3319
    :cond_6
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    #@f4
    .line 3320
    new-instance v14, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    const-string/jumbo v15, "unsupported size: "

    #@fc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v14

    #@100
    move-object/from16 v0, p0

    #@102
    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    #@104
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@107
    move-result-object v14

    #@108
    const-string/jumbo v15, "x"

    #@10b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v14

    #@10f
    move-object/from16 v0, p0

    #@111
    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    #@113
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@116
    move-result-object v14

    #@117
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11a
    move-result-object v14

    #@11b
    .line 3319
    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@11e
    throw v13

    #@11f
    .line 3322
    :cond_7
    move-object/from16 v0, p0

    #@121
    move-object/from16 v1, p2

    #@123
    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    #@126
    move-result v3

    #@127
    .line 3323
    .local v3, "bitDepth":I
    const/16 v13, 0x8

    #@129
    if-eq v3, v13, :cond_8

    #@12b
    .line 3324
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    #@12d
    new-instance v14, Ljava/lang/StringBuilder;

    #@12f
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@132
    const-string/jumbo v15, "unsupported bit depth: "

    #@135
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v14

    #@139
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v14

    #@13d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@140
    move-result-object v14

    #@141
    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@144
    throw v13

    #@145
    .line 3326
    :cond_8
    new-array v13, v7, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    #@147
    move-object/from16 v0, p0

    #@149
    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    #@14b
    .line 3327
    const/4 v6, 0x0

    #@14c
    .local v6, "ix":I
    :goto_2
    if-ge v6, v7, :cond_c

    #@14e
    .line 3328
    move-object/from16 v0, p0

    #@150
    move-object/from16 v1, p2

    #@152
    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    #@155
    move-result v8

    #@156
    .line 3329
    .local v8, "planeOffset":I
    move-object/from16 v0, p0

    #@158
    move-object/from16 v1, p2

    #@15a
    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    #@15d
    move-result v4

    #@15e
    .line 3330
    .local v4, "colInc":I
    move-object/from16 v0, p0

    #@160
    move-object/from16 v1, p2

    #@162
    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    #@165
    move-result v9

    #@166
    .line 3331
    .local v9, "rowInc":I
    move-object/from16 v0, p0

    #@168
    move-object/from16 v1, p2

    #@16a
    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    #@16d
    move-result v5

    #@16e
    .line 3332
    .local v5, "horiz":I
    move-object/from16 v0, p0

    #@170
    move-object/from16 v1, p2

    #@172
    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    #@175
    move-result v12

    #@176
    .line 3333
    .local v12, "vert":I
    if-ne v5, v12, :cond_9

    #@178
    if-nez v6, :cond_a

    #@17a
    const/4 v13, 0x1

    #@17b
    :goto_3
    if-eq v5, v13, :cond_b

    #@17d
    .line 3334
    :cond_9
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    #@17f
    new-instance v14, Ljava/lang/StringBuilder;

    #@181
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@184
    const-string/jumbo v15, "unexpected subsampling: "

    #@187
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v14

    #@18b
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v14

    #@18f
    .line 3335
    const-string/jumbo v15, "x"

    #@192
    .line 3334
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v14

    #@196
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@199
    move-result-object v14

    #@19a
    .line 3335
    const-string/jumbo v15, " on plane "

    #@19d
    .line 3334
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v14

    #@1a1
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v14

    #@1a5
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a8
    move-result-object v14

    #@1a9
    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1ac
    throw v13

    #@1ad
    .line 3333
    :cond_a
    const/4 v13, 0x2

    #@1ae
    goto :goto_3

    #@1af
    .line 3338
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@1b2
    .line 3339
    move-object/from16 v0, p0

    #@1b4
    iget-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    #@1b6
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    #@1b9
    move-result v13

    #@1ba
    add-int/2addr v13, v8

    #@1bb
    .line 3340
    div-int v14, p6, v5

    #@1bd
    mul-int/2addr v14, v4

    #@1be
    .line 3339
    add-int/2addr v13, v14

    #@1bf
    .line 3340
    div-int v14, p7, v12

    #@1c1
    mul-int/2addr v14, v9

    #@1c2
    .line 3339
    add-int/2addr v13, v14

    #@1c3
    move-object/from16 v0, p1

    #@1c5
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@1c8
    .line 3341
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    #@1cb
    move-result v13

    #@1cc
    const/16 v14, 0x8

    #@1ce
    invoke-static {v3, v14}, Landroid/media/Utils;->divUp(II)I

    #@1d1
    move-result v14

    #@1d2
    add-int/2addr v13, v14

    #@1d3
    .line 3342
    move-object/from16 v0, p0

    #@1d5
    iget v14, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    #@1d7
    div-int/2addr v14, v12

    #@1d8
    add-int/lit8 v14, v14, -0x1

    #@1da
    mul-int/2addr v14, v9

    #@1db
    .line 3341
    add-int/2addr v13, v14

    #@1dc
    .line 3342
    move-object/from16 v0, p0

    #@1de
    iget v14, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    #@1e0
    div-int/2addr v14, v5

    #@1e1
    add-int/lit8 v14, v14, -0x1

    #@1e3
    mul-int/2addr v14, v4

    #@1e4
    .line 3341
    add-int/2addr v13, v14

    #@1e5
    move-object/from16 v0, p1

    #@1e7
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@1ea
    .line 3343
    move-object/from16 v0, p0

    #@1ec
    iget-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    #@1ee
    new-instance v14, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    #@1f0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@1f3
    move-result-object v15

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    invoke-direct {v14, v0, v15, v9, v4}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    #@1f9
    aput-object v14, v13, v6

    #@1fb
    .line 3327
    add-int/lit8 v6, v6, 0x1

    #@1fd
    goto/16 :goto_2

    #@1ff
    .line 3350
    .end local v4    # "colInc":I
    .end local v5    # "horiz":I
    .end local v8    # "planeOffset":I
    .end local v9    # "rowInc":I
    .end local v12    # "vert":I
    :cond_c
    if-nez p8, :cond_d

    #@201
    .line 3351
    new-instance p8, Landroid/graphics/Rect;

    #@203
    .end local p8    # "cropRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@205
    iget v13, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    #@207
    move-object/from16 v0, p0

    #@209
    iget v14, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    #@20b
    const/4 v15, 0x0

    #@20c
    const/16 v16, 0x0

    #@20e
    move-object/from16 v0, p8

    #@210
    move/from16 v1, v16

    #@212
    invoke-direct {v0, v15, v1, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    #@215
    .line 3353
    .restart local p8    # "cropRect":Landroid/graphics/Rect;
    :cond_d
    move/from16 v0, p6

    #@217
    neg-int v13, v0

    #@218
    move/from16 v0, p7

    #@21a
    neg-int v14, v0

    #@21b
    move-object/from16 v0, p8

    #@21d
    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    #@220
    .line 3354
    move-object/from16 v0, p0

    #@222
    move-object/from16 v1, p8

    #@224
    invoke-super {v0, v1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    #@227
    .line 3292
    return-void
.end method

.method private readInt(Ljava/nio/ByteBuffer;Z)I
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "asLong"    # Z

    #@0
    .prologue
    .line 3283
    if-eqz p2, :cond_0

    #@2
    .line 3284
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    #@5
    move-result-wide v0

    #@6
    long-to-int v0, v0

    #@7
    return v0

    #@8
    .line 3286
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@b
    move-result v0

    #@c
    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 3261
    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3262
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    #@6
    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@9
    .line 3263
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    #@c
    .line 3260
    :cond_0
    return-void
.end method

.method public getFormat()I
    .locals 1

    #@0
    .prologue
    .line 3230
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 3231
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    #@5
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 3236
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 3237
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    #@5
    return v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    #@0
    .prologue
    .line 3255
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 3256
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
    .line 3248
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 3249
    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    #@5
    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 3242
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 3243
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    #@5
    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3275
    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3276
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 3278
    :cond_0
    invoke-super {p0, p1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    #@d
    .line 3274
    return-void
.end method
