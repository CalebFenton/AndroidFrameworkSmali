.class public final Landroid/hardware/camera2/params/SharedSessionConfiguration;
.super Ljava/lang/Object;
.source "SharedSessionConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;
    }
.end annotation


# static fields
.field private static final blacklist SHARED_OUTPUT_CONFIG_NUM_OF_ENTRIES:I = 0xb

.field private static final blacklist TAG:Ljava/lang/String; = "SharedSessionConfiguration"


# instance fields
.field private blacklist mColorSpace:I

.field private final blacklist mOutputStreamConfigurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(I[J)V
    .registers 26
    .param p1, "sharedColorSpace"    # I
    .param p2, "sharedOutputConfigurations"    # [J

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mOutputStreamConfigurations:Ljava/util/ArrayList;

    .line 235
    move/from16 v2, p1

    iput v2, v0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mColorSpace:I

    .line 242
    array-length v3, v1

    .line 243
    .local v3, "numOfEntries":I
    const/4 v4, 0x0

    .line 244
    .local v4, "i":I
    :goto_14
    const-string v5, "SharedSessionConfiguration"

    const/16 v6, 0xb

    if-lt v3, v6, :cond_ab

    .line 245
    aget-wide v6, v1, v4

    long-to-int v9, v6

    .line 246
    .local v9, "surfaceType":I
    add-int/lit8 v6, v4, 0x1

    aget-wide v6, v1, v6

    long-to-int v6, v6

    .line 247
    .local v6, "width":I
    add-int/lit8 v7, v4, 0x2

    aget-wide v7, v1, v7

    long-to-int v7, v7

    .line 248
    .local v7, "height":I
    add-int/lit8 v8, v4, 0x3

    aget-wide v10, v1, v8

    long-to-int v11, v10

    .line 249
    .local v11, "format":I
    add-int/lit8 v8, v4, 0x4

    aget-wide v12, v1, v8

    long-to-int v12, v12

    .line 250
    .local v12, "mirrorMode":I
    add-int/lit8 v8, v4, 0x5

    aget-wide v13, v1, v8

    const-wide/16 v15, 0x0

    cmp-long v8, v13, v15

    if-eqz v8, :cond_3d

    const/4 v8, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v8, 0x0

    :goto_3e
    move v13, v8

    .line 251
    .local v13, "isReadOutTimestampEnabled":Z
    add-int/lit8 v8, v4, 0x6

    aget-wide v1, p2, v8

    long-to-int v14, v1

    .line 252
    .local v14, "timestampBase":I
    add-int/lit8 v1, v4, 0x7

    aget-wide v1, p2, v1

    long-to-int v1, v1

    .line 253
    .local v1, "dataspace":I
    add-int/lit8 v2, v4, 0x8

    aget-wide v17, p2, v2

    .line 254
    .local v17, "usage":J
    add-int/lit8 v2, v4, 0x9

    aget-wide v19, p2, v2

    .line 255
    .local v19, "streamUseCase":J
    add-int/lit8 v2, v4, 0xa

    move v8, v1

    .end local v1    # "dataspace":I
    .local v8, "dataspace":I
    aget-wide v1, p2, v2

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 256
    .local v1, "physicalCameraIdLen":B
    add-int/lit8 v3, v3, -0xb

    .line 257
    add-int/lit8 v4, v4, 0xb

    .line 258
    if-ge v3, v1, :cond_64

    .line 259
    const-string v2, "Number of remaining data in shared configuration is less than physical camera id length . Malformed metadata android.info.availableSharedOutputConfigurations."

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    goto :goto_ab

    .line 264
    :cond_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v2, "physicalCameraId":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6a
    if-ge v5, v1, :cond_85

    .line 267
    add-int v10, v4, v5

    move/from16 v21, v3

    move/from16 v22, v4

    .end local v3    # "numOfEntries":I
    .end local v4    # "i":I
    .local v21, "numOfEntries":I
    .local v22, "i":I
    aget-wide v3, p2, v10

    .line 268
    .local v3, "asciiValue":J
    cmp-long v10, v3, v15

    if-nez v10, :cond_79

    .line 269
    goto :goto_89

    .line 271
    :cond_79
    long-to-int v10, v3

    int-to-char v10, v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v21

    move/from16 v4, v22

    goto :goto_6a

    .end local v21    # "numOfEntries":I
    .end local v22    # "i":I
    .local v3, "numOfEntries":I
    .restart local v4    # "i":I
    :cond_85
    move/from16 v21, v3

    move/from16 v22, v4

    .line 274
    .end local v3    # "numOfEntries":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .restart local v21    # "numOfEntries":I
    .restart local v22    # "i":I
    :goto_89
    move v15, v8

    .end local v8    # "dataspace":I
    .local v15, "dataspace":I
    new-instance v8, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;

    new-instance v10, Landroid/util/Size;

    invoke-direct {v10, v6, v7}, Landroid/util/Size;-><init>(II)V

    .line 276
    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    .end local v17    # "usage":J
    .end local v19    # "streamUseCase":J
    .local v16, "usage":J
    .local v18, "streamUseCase":J
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v8 .. v20}, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;-><init>(ILandroid/util/Size;IIZIIJJLjava/lang/String;)V

    .line 277
    .local v8, "outputInfo":Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;
    iget-object v3, v0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mOutputStreamConfigurations:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    add-int v4, v22, v1

    .line 279
    .end local v22    # "i":I
    .restart local v4    # "i":I
    sub-int v3, v21, v1

    .line 280
    .end local v2    # "physicalCameraId":Ljava/lang/StringBuilder;
    .end local v8    # "outputInfo":Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;
    .end local v21    # "numOfEntries":I
    .restart local v3    # "numOfEntries":I
    move/from16 v2, p1

    move-object/from16 v1, p2

    goto/16 :goto_14

    .line 281
    .end local v1    # "physicalCameraIdLen":B
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v9    # "surfaceType":I
    .end local v11    # "format":I
    .end local v12    # "mirrorMode":I
    .end local v13    # "isReadOutTimestampEnabled":Z
    .end local v14    # "timestampBase":I
    .end local v15    # "dataspace":I
    .end local v16    # "usage":J
    .end local v18    # "streamUseCase":J
    :cond_ab
    :goto_ab
    if-eqz v3, :cond_b2

    .line 282
    const-string v1, "Unexpected entries left in shared output configuration. Malformed metadata android.info.availableSharedOutputConfigurations."

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_b2
    return-void
.end method


# virtual methods
.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 3

    .line 294
    iget v0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mColorSpace:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 295
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mColorSpace:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0

    .line 297
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getOutputStreamsInformation()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mOutputStreamConfigurations:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
