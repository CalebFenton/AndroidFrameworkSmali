.class final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# static fields
.field private static final BLANK_LAYER_STACK:I = -0x1


# instance fields
.field private final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayId:I

.field private mDisplayOffsetX:I

.field private mDisplayOffsetY:I

.field private mHasContent:Z

.field private mInfo:Landroid/view/DisplayInfo;

.field private final mLayerStack:I

.field private mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mRequestedColorMode:I

.field private mRequestedModeId:I

.field private final mTempDisplayRect:Landroid/graphics/Rect;

.field private final mTempLayerStackRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILcom/android/server/display/DisplayDevice;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "layerStack"    # I
    .param p3, "primaryDisplayDevice"    # Lcom/android/server/display/DisplayDevice;

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    new-instance v0, Landroid/view/DisplayInfo;

    #@5
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@a
    .line 84
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    #@11
    .line 85
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    #@18
    .line 88
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    #@1a
    .line 89
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    #@1c
    .line 90
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@1e
    .line 87
    return-void
.end method


# virtual methods
.method public configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;Z)V
    .locals 16
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "isBlanked"    # Z

    #@0
    .prologue
    .line 282
    if-eqz p2, :cond_1

    #@2
    const/4 v11, -0x1

    #@3
    :goto_0
    move-object/from16 v0, p1

    #@5
    invoke-virtual {v0, v11}, Lcom/android/server/display/DisplayDevice;->setLayerStackInTransactionLocked(I)V

    #@8
    .line 285
    move-object/from16 v0, p0

    #@a
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@c
    move-object/from16 v0, p1

    #@e
    if-ne v0, v11, :cond_2

    #@10
    .line 287
    move-object/from16 v0, p0

    #@12
    iget v11, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    #@14
    move-object/from16 v0, p0

    #@16
    iget v12, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    #@18
    .line 286
    move-object/from16 v0, p1

    #@1a
    invoke-virtual {v0, v11, v12}, Lcom/android/server/display/DisplayDevice;->requestDisplayModesInTransactionLocked(II)V

    #@1d
    .line 293
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    #@20
    move-result-object v2

    #@21
    .line 294
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    #@24
    move-result-object v1

    #@25
    .line 299
    .local v1, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    move-object/from16 v0, p0

    #@27
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    #@29
    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    #@2b
    iget v13, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    #@2d
    const/4 v14, 0x0

    #@2e
    const/4 v15, 0x0

    #@2f
    invoke-virtual {v11, v14, v15, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    #@32
    .line 304
    const/4 v7, 0x0

    #@33
    .line 305
    .local v7, "orientation":I
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@35
    and-int/lit8 v11, v11, 0x2

    #@37
    if-eqz v11, :cond_0

    #@39
    .line 306
    iget v7, v2, Landroid/view/DisplayInfo;->rotation:I

    #@3b
    .line 310
    :cond_0
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@3d
    add-int/2addr v11, v7

    #@3e
    rem-int/lit8 v7, v11, 0x4

    #@40
    .line 317
    const/4 v11, 0x1

    #@41
    if-eq v7, v11, :cond_3

    #@43
    .line 318
    const/4 v11, 0x3

    #@44
    if-ne v7, v11, :cond_4

    #@46
    const/4 v10, 0x1

    #@47
    .line 319
    .local v10, "rotated":Z
    :goto_2
    if-eqz v10, :cond_5

    #@49
    iget v9, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@4b
    .line 320
    .local v9, "physWidth":I
    :goto_3
    if-eqz v10, :cond_6

    #@4d
    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@4f
    .line 330
    .local v8, "physHeight":I
    :goto_4
    iget v11, v2, Landroid/view/DisplayInfo;->flags:I

    #@51
    const/high16 v12, 0x40000000    # 2.0f

    #@53
    and-int/2addr v11, v12

    #@54
    if-eqz v11, :cond_7

    #@56
    .line 331
    iget v6, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    #@58
    .line 332
    .local v6, "displayRectWidth":I
    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    #@5a
    .line 343
    .local v3, "displayRectHeight":I
    :goto_5
    sub-int v11, v8, v3

    #@5c
    div-int/lit8 v5, v11, 0x2

    #@5e
    .line 344
    .local v5, "displayRectTop":I
    sub-int v11, v9, v6

    #@60
    div-int/lit8 v4, v11, 0x2

    #@62
    .line 345
    .local v4, "displayRectLeft":I
    move-object/from16 v0, p0

    #@64
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    #@66
    .line 346
    add-int v12, v4, v6

    #@68
    add-int v13, v5, v3

    #@6a
    .line 345
    invoke-virtual {v11, v4, v5, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    #@6d
    .line 348
    move-object/from16 v0, p0

    #@6f
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    #@71
    iget v12, v11, Landroid/graphics/Rect;->left:I

    #@73
    move-object/from16 v0, p0

    #@75
    iget v13, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    #@77
    add-int/2addr v12, v13

    #@78
    iput v12, v11, Landroid/graphics/Rect;->left:I

    #@7a
    .line 349
    move-object/from16 v0, p0

    #@7c
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    #@7e
    iget v12, v11, Landroid/graphics/Rect;->right:I

    #@80
    move-object/from16 v0, p0

    #@82
    iget v13, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    #@84
    add-int/2addr v12, v13

    #@85
    iput v12, v11, Landroid/graphics/Rect;->right:I

    #@87
    .line 350
    move-object/from16 v0, p0

    #@89
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    #@8b
    iget v12, v11, Landroid/graphics/Rect;->top:I

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget v13, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    #@91
    add-int/2addr v12, v13

    #@92
    iput v12, v11, Landroid/graphics/Rect;->top:I

    #@94
    .line 351
    move-object/from16 v0, p0

    #@96
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    #@98
    iget v12, v11, Landroid/graphics/Rect;->bottom:I

    #@9a
    move-object/from16 v0, p0

    #@9c
    iget v13, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    #@9e
    add-int/2addr v12, v13

    #@9f
    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    #@a1
    .line 352
    move-object/from16 v0, p0

    #@a3
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    #@a5
    move-object/from16 v0, p0

    #@a7
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    #@a9
    move-object/from16 v0, p1

    #@ab
    invoke-virtual {v0, v7, v11, v12}, Lcom/android/server/display/DisplayDevice;->setProjectionInTransactionLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@ae
    .line 280
    return-void

    #@af
    .line 282
    .end local v1    # "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v3    # "displayRectHeight":I
    .end local v4    # "displayRectLeft":I
    .end local v5    # "displayRectTop":I
    .end local v6    # "displayRectWidth":I
    .end local v7    # "orientation":I
    .end local v8    # "physHeight":I
    .end local v9    # "physWidth":I
    .end local v10    # "rotated":Z
    :cond_1
    move-object/from16 v0, p0

    #@b1
    iget v11, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    #@b3
    goto/16 :goto_0

    #@b5
    .line 289
    :cond_2
    const/4 v11, 0x0

    #@b6
    const/4 v12, 0x0

    #@b7
    move-object/from16 v0, p1

    #@b9
    invoke-virtual {v0, v11, v12}, Lcom/android/server/display/DisplayDevice;->requestDisplayModesInTransactionLocked(II)V

    #@bc
    goto/16 :goto_1

    #@be
    .line 317
    .restart local v1    # "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    .restart local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v7    # "orientation":I
    :cond_3
    const/4 v10, 0x1

    #@bf
    goto :goto_2

    #@c0
    .line 318
    :cond_4
    const/4 v10, 0x0

    #@c1
    goto :goto_2

    #@c2
    .line 319
    .restart local v10    # "rotated":Z
    :cond_5
    iget v9, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@c4
    .restart local v9    # "physWidth":I
    goto :goto_3

    #@c5
    .line 320
    :cond_6
    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@c7
    .restart local v8    # "physHeight":I
    goto :goto_4

    #@c8
    .line 333
    :cond_7
    iget v11, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    #@ca
    mul-int/2addr v11, v9

    #@cb
    .line 334
    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    #@cd
    mul-int/2addr v12, v8

    #@ce
    .line 333
    if-ge v11, v12, :cond_8

    #@d0
    .line 336
    move v6, v9

    #@d1
    .line 337
    .restart local v6    # "displayRectWidth":I
    iget v11, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    #@d3
    mul-int/2addr v11, v9

    #@d4
    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    #@d6
    div-int v3, v11, v12

    #@d8
    .restart local v3    # "displayRectHeight":I
    goto :goto_5

    #@d9
    .line 340
    .end local v3    # "displayRectHeight":I
    .end local v6    # "displayRectWidth":I
    :cond_8
    iget v11, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    #@db
    mul-int/2addr v11, v8

    #@dc
    iget v12, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    #@de
    div-int v6, v11, v12

    #@e0
    .line 341
    .restart local v6    # "displayRectWidth":I
    move v3, v8

    #@e1
    .restart local v3    # "displayRectHeight":I
    goto/16 :goto_5
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mDisplayId="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v1, "mLayerStack="

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@32
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v1, "mHasContent="

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v1, "mRequestedMode="

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v1, "mRequestedColorMode="

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v1, "mDisplayOffset=("

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v0

    #@89
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    const-string/jumbo v1, ", "

    #@92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    #@98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    const-string/jumbo v1, ")"

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v0

    #@a7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@aa
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v1, "mPrimaryDisplayDevice="

    #@b2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v1

    #@b6
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@b8
    if-eqz v0, :cond_0

    #@ba
    .line 434
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@bc
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    #@bf
    move-result-object v0

    #@c0
    .line 433
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v0

    #@c8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cb
    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v1, "mBaseDisplayInfo="

    #@d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v0

    #@d7
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v0

    #@dd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v0

    #@e1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e4
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v1, "mOverrideDisplayInfo="

    #@ec
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v0

    #@f0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@f2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v0

    #@f6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v0

    #@fa
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@fd
    .line 426
    return-void

    #@fe
    .line 434
    :cond_0
    const-string/jumbo v0, "null"

    #@101
    goto :goto_0
.end method

.method public getDisplayIdLocked()I
    .locals 1

    #@0
    .prologue
    .line 99
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    #@2
    return v0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .locals 2

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 120
    new-instance v0, Landroid/view/DisplayInfo;

    #@6
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@b
    .line 121
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@d
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@f
    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    #@12
    .line 122
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 123
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@18
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@1a
    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    #@1c
    iput v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    #@1e
    .line 124
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@20
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@22
    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    #@24
    iput v1, v0, Landroid/view/DisplayInfo;->appHeight:I

    #@26
    .line 125
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@28
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@2a
    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@2c
    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@2e
    .line 126
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@30
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@32
    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@34
    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@36
    .line 127
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@38
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@3a
    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@3c
    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@3e
    .line 128
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@40
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@42
    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@44
    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@46
    .line 129
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@48
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@4a
    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    #@4c
    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@4e
    .line 130
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@50
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@52
    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    #@54
    iput v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@56
    .line 131
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@58
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@5a
    iget v1, v1, Landroid/view/DisplayInfo;->overscanLeft:I

    #@5c
    iput v1, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    #@5e
    .line 132
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@60
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@62
    iget v1, v1, Landroid/view/DisplayInfo;->overscanTop:I

    #@64
    iput v1, v0, Landroid/view/DisplayInfo;->overscanTop:I

    #@66
    .line 133
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@68
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@6a
    iget v1, v1, Landroid/view/DisplayInfo;->overscanRight:I

    #@6c
    iput v1, v0, Landroid/view/DisplayInfo;->overscanRight:I

    #@6e
    .line 134
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@70
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@72
    iget v1, v1, Landroid/view/DisplayInfo;->overscanBottom:I

    #@74
    iput v1, v0, Landroid/view/DisplayInfo;->overscanBottom:I

    #@76
    .line 135
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@78
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@7a
    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    #@7c
    iput v1, v0, Landroid/view/DisplayInfo;->rotation:I

    #@7e
    .line 136
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@80
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@82
    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@84
    iput v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@86
    .line 137
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@88
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@8a
    iget v1, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@8c
    iput v1, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@8e
    .line 138
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@90
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@92
    iget v1, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@94
    iput v1, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@96
    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@98
    return-object v0
.end method

.method public getDisplayOffsetXLocked()I
    .locals 1

    #@0
    .prologue
    .line 408
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    #@2
    return v0
.end method

.method public getDisplayOffsetYLocked()I
    .locals 1

    #@0
    .prologue
    .line 415
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    #@2
    return v0
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@2
    return-object v0
.end method

.method public getRequestedColorModeLocked()I
    .locals 1

    #@0
    .prologue
    .line 401
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    #@2
    return v0
.end method

.method public getRequestedModeIdLocked()I
    .locals 1

    #@0
    .prologue
    .line 389
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    #@2
    return v0
.end method

.method public hasContentLocked()Z
    .locals 1

    #@0
    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    #@2
    return v0
.end method

.method public isValidLocked()Z
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/view/DisplayInfo;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 152
    if-eqz p1, :cond_1

    #@4
    .line 153
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 154
    new-instance v0, Landroid/view/DisplayInfo;

    #@a
    invoke-direct {v0, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    #@d
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@f
    .line 155
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@11
    .line 156
    return v2

    #@12
    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@14
    invoke-virtual {v0, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_2

    #@1a
    .line 159
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@1c
    invoke-virtual {v0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    #@1f
    .line 160
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@21
    .line 161
    return v2

    #@22
    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 164
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@28
    .line 165
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@2a
    .line 166
    return v2

    #@2b
    .line 168
    :cond_2
    const/4 v0, 0x0

    #@2c
    return v0
.end method

.method public setDisplayOffsetsLocked(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 422
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    #@2
    .line 423
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    #@4
    .line 421
    return-void
.end method

.method public setHasContentLocked(Z)V
    .locals 0
    .param p1, "hasContent"    # Z

    #@0
    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    #@2
    .line 374
    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .locals 0
    .param p1, "colorMode"    # I

    #@0
    .prologue
    .line 396
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    #@2
    .line 395
    return-void
.end method

.method public setRequestedModeIdLocked(I)V
    .locals 0
    .param p1, "modeId"    # I

    #@0
    .prologue
    .line 382
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    #@2
    .line 381
    return-void
.end method

.method public updateLocked(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayDevice;>;"
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 192
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 193
    return-void

    #@7
    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@9
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_1

    #@f
    .line 198
    iput-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@11
    .line 199
    return-void

    #@12
    .line 207
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@14
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    #@17
    move-result-object v0

    #@18
    .line 208
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@1a
    invoke-static {v1, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_7

    #@20
    .line 209
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@22
    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    #@24
    iput v2, v1, Landroid/view/DisplayInfo;->layerStack:I

    #@26
    .line 210
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@28
    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    #@2a
    .line 211
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@2c
    and-int/lit8 v1, v1, 0x8

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 212
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@32
    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@34
    or-int/lit8 v2, v2, 0x1

    #@36
    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@38
    .line 214
    :cond_2
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@3a
    and-int/lit8 v1, v1, 0x4

    #@3c
    if-eqz v1, :cond_3

    #@3e
    .line 215
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@40
    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@42
    or-int/lit8 v2, v2, 0x2

    #@44
    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@46
    .line 217
    :cond_3
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@48
    and-int/lit8 v1, v1, 0x10

    #@4a
    if-eqz v1, :cond_4

    #@4c
    .line 218
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@4e
    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@50
    or-int/lit8 v2, v2, 0x4

    #@52
    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@54
    .line 220
    :cond_4
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@56
    and-int/lit8 v1, v1, 0x40

    #@58
    if-eqz v1, :cond_5

    #@5a
    .line 221
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@5c
    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@5e
    or-int/lit8 v2, v2, 0x8

    #@60
    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@62
    .line 223
    :cond_5
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@64
    and-int/lit16 v1, v1, 0x100

    #@66
    if-eqz v1, :cond_6

    #@68
    .line 224
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@6a
    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@6c
    or-int/lit8 v2, v2, 0x10

    #@6e
    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@70
    .line 226
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@72
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@74
    iput v2, v1, Landroid/view/DisplayInfo;->type:I

    #@76
    .line 227
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@78
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@7a
    iput-object v2, v1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@7c
    .line 228
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@7e
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@80
    iput-object v2, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    #@82
    .line 229
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@84
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@86
    iput-object v2, v1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    #@88
    .line 230
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@8a
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@8c
    iput v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    #@8e
    .line 231
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@90
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@92
    iput v2, v1, Landroid/view/DisplayInfo;->appHeight:I

    #@94
    .line 232
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@96
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@98
    iput v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    #@9a
    .line 233
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@9c
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@9e
    iput v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    #@a0
    .line 234
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@a2
    iput v3, v1, Landroid/view/DisplayInfo;->rotation:I

    #@a4
    .line 235
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@a6
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@a8
    iput v2, v1, Landroid/view/DisplayInfo;->modeId:I

    #@aa
    .line 236
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@ac
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@ae
    iput v2, v1, Landroid/view/DisplayInfo;->defaultModeId:I

    #@b0
    .line 237
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@b2
    .line 238
    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@b4
    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@b6
    array-length v3, v3

    #@b7
    .line 237
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@ba
    move-result-object v1

    #@bb
    check-cast v1, [Landroid/view/Display$Mode;

    #@bd
    iput-object v1, v2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@bf
    .line 239
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@c1
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    #@c3
    iput v2, v1, Landroid/view/DisplayInfo;->colorMode:I

    #@c5
    .line 240
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@c7
    .line 241
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    #@c9
    .line 242
    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    #@cb
    array-length v3, v3

    #@cc
    .line 240
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    #@cf
    move-result-object v2

    #@d0
    iput-object v2, v1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    #@d2
    .line 243
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@d4
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@d6
    iput-object v2, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@d8
    .line 244
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@da
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@dc
    iput v2, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@de
    .line 245
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@e0
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@e2
    iput v2, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@e4
    .line 246
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@e6
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@e8
    iput v2, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@ea
    .line 247
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@ec
    iget-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@ee
    iput-wide v2, v1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    #@f0
    .line 248
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@f2
    iget-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@f4
    iput-wide v2, v1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@f6
    .line 249
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@f8
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@fa
    iput v2, v1, Landroid/view/DisplayInfo;->state:I

    #@fc
    .line 250
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@fe
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@100
    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@102
    .line 251
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@104
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@106
    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@108
    .line 252
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@10a
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@10c
    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@10e
    .line 253
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@110
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@112
    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@114
    .line 254
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@116
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@118
    iput v2, v1, Landroid/view/DisplayInfo;->ownerUid:I

    #@11a
    .line 255
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@11c
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@11e
    iput-object v2, v1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@120
    .line 257
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@122
    .line 258
    iput-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@124
    .line 190
    :cond_7
    return-void
.end method
