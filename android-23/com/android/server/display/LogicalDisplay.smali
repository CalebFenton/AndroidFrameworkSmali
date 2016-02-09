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
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    new-instance v0, Landroid/view/DisplayInfo;

    #@5
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@a
    .line 83
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    #@11
    .line 84
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    #@18
    .line 87
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    #@1a
    .line 88
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    #@1c
    .line 89
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@1e
    .line 86
    return-void
.end method


# virtual methods
.method public configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;Z)V
    .locals 16
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "isBlanked"    # Z

    #@0
    .prologue
    .line 276
    if-eqz p2, :cond_1

    #@2
    const/4 v11, -0x1

    #@3
    :goto_0
    move-object/from16 v0, p1

    #@5
    invoke-virtual {v0, v11}, Lcom/android/server/display/DisplayDevice;->setLayerStackInTransactionLocked(I)V

    #@8
    .line 279
    move-object/from16 v0, p0

    #@a
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@c
    move-object/from16 v0, p1

    #@e
    if-ne v0, v11, :cond_2

    #@10
    .line 280
    move-object/from16 v0, p0

    #@12
    iget v11, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    #@14
    move-object/from16 v0, p1

    #@16
    invoke-virtual {v0, v11}, Lcom/android/server/display/DisplayDevice;->requestModeInTransactionLocked(I)V

    #@19
    .line 286
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    #@1c
    move-result-object v2

    #@1d
    .line 287
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    #@20
    move-result-object v1

    #@21
    .line 292
    .local v1, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    move-object/from16 v0, p0

    #@23
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    #@25
    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    #@27
    iget v13, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    #@29
    const/4 v14, 0x0

    #@2a
    const/4 v15, 0x0

    #@2b
    invoke-virtual {v11, v14, v15, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    #@2e
    .line 297
    const/4 v7, 0x0

    #@2f
    .line 298
    .local v7, "orientation":I
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@31
    and-int/lit8 v11, v11, 0x2

    #@33
    if-eqz v11, :cond_0

    #@35
    .line 299
    iget v7, v2, Landroid/view/DisplayInfo;->rotation:I

    #@37
    .line 303
    :cond_0
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@39
    add-int/2addr v11, v7

    #@3a
    rem-int/lit8 v7, v11, 0x4

    #@3c
    .line 310
    const/4 v11, 0x1

    #@3d
    if-eq v7, v11, :cond_3

    #@3f
    .line 311
    const/4 v11, 0x3

    #@40
    if-ne v7, v11, :cond_4

    #@42
    const/4 v10, 0x1

    #@43
    .line 312
    .local v10, "rotated":Z
    :goto_2
    if-eqz v10, :cond_5

    #@45
    iget v9, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@47
    .line 313
    .local v9, "physWidth":I
    :goto_3
    if-eqz v10, :cond_6

    #@49
    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@4b
    .line 323
    .local v8, "physHeight":I
    :goto_4
    iget v11, v2, Landroid/view/DisplayInfo;->flags:I

    #@4d
    const/high16 v12, 0x40000000    # 2.0f

    #@4f
    and-int/2addr v11, v12

    #@50
    if-eqz v11, :cond_7

    #@52
    .line 324
    iget v6, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    #@54
    .line 325
    .local v6, "displayRectWidth":I
    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    #@56
    .line 336
    .local v3, "displayRectHeight":I
    :goto_5
    sub-int v11, v8, v3

    #@58
    div-int/lit8 v5, v11, 0x2

    #@5a
    .line 337
    .local v5, "displayRectTop":I
    sub-int v11, v9, v6

    #@5c
    div-int/lit8 v4, v11, 0x2

    #@5e
    .line 338
    .local v4, "displayRectLeft":I
    move-object/from16 v0, p0

    #@60
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    #@62
    .line 339
    add-int v12, v4, v6

    #@64
    add-int v13, v5, v3

    #@66
    .line 338
    invoke-virtual {v11, v4, v5, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    #@69
    .line 341
    move-object/from16 v0, p0

    #@6b
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    #@6d
    iget v12, v11, Landroid/graphics/Rect;->left:I

    #@6f
    move-object/from16 v0, p0

    #@71
    iget v13, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    #@73
    add-int/2addr v12, v13

    #@74
    iput v12, v11, Landroid/graphics/Rect;->left:I

    #@76
    .line 342
    move-object/from16 v0, p0

    #@78
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    #@7a
    iget v12, v11, Landroid/graphics/Rect;->right:I

    #@7c
    move-object/from16 v0, p0

    #@7e
    iget v13, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    #@80
    add-int/2addr v12, v13

    #@81
    iput v12, v11, Landroid/graphics/Rect;->right:I

    #@83
    .line 343
    move-object/from16 v0, p0

    #@85
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    #@87
    iget v12, v11, Landroid/graphics/Rect;->top:I

    #@89
    move-object/from16 v0, p0

    #@8b
    iget v13, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    #@8d
    add-int/2addr v12, v13

    #@8e
    iput v12, v11, Landroid/graphics/Rect;->top:I

    #@90
    .line 344
    move-object/from16 v0, p0

    #@92
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    #@94
    iget v12, v11, Landroid/graphics/Rect;->bottom:I

    #@96
    move-object/from16 v0, p0

    #@98
    iget v13, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    #@9a
    add-int/2addr v12, v13

    #@9b
    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    #@9d
    .line 345
    move-object/from16 v0, p0

    #@9f
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    #@a1
    move-object/from16 v0, p0

    #@a3
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    #@a5
    move-object/from16 v0, p1

    #@a7
    invoke-virtual {v0, v7, v11, v12}, Lcom/android/server/display/DisplayDevice;->setProjectionInTransactionLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@aa
    .line 274
    return-void

    #@ab
    .line 276
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

    #@ad
    iget v11, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    #@af
    goto/16 :goto_0

    #@b1
    .line 282
    :cond_2
    const/4 v11, 0x0

    #@b2
    move-object/from16 v0, p1

    #@b4
    invoke-virtual {v0, v11}, Lcom/android/server/display/DisplayDevice;->requestModeInTransactionLocked(I)V

    #@b7
    goto/16 :goto_1

    #@b9
    .line 310
    .restart local v1    # "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    .restart local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v7    # "orientation":I
    :cond_3
    const/4 v10, 0x1

    #@ba
    .restart local v10    # "rotated":Z
    goto :goto_2

    #@bb
    .line 311
    .end local v10    # "rotated":Z
    :cond_4
    const/4 v10, 0x0

    #@bc
    .restart local v10    # "rotated":Z
    goto :goto_2

    #@bd
    .line 312
    :cond_5
    iget v9, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@bf
    .restart local v9    # "physWidth":I
    goto :goto_3

    #@c0
    .line 313
    :cond_6
    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@c2
    .restart local v8    # "physHeight":I
    goto :goto_4

    #@c3
    .line 326
    :cond_7
    iget v11, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    #@c5
    mul-int/2addr v11, v9

    #@c6
    .line 327
    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    #@c8
    mul-int/2addr v12, v8

    #@c9
    .line 326
    if-ge v11, v12, :cond_8

    #@cb
    .line 329
    move v6, v9

    #@cc
    .line 330
    .restart local v6    # "displayRectWidth":I
    iget v11, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    #@ce
    mul-int/2addr v11, v9

    #@cf
    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    #@d1
    div-int v3, v11, v12

    #@d3
    .restart local v3    # "displayRectHeight":I
    goto :goto_5

    #@d4
    .line 333
    .end local v3    # "displayRectHeight":I
    .end local v6    # "displayRectWidth":I
    :cond_8
    iget v11, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    #@d6
    mul-int/2addr v11, v8

    #@d7
    iget v12, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    #@d9
    div-int v6, v11, v12

    #@db
    .line 334
    .restart local v6    # "displayRectWidth":I
    move v3, v8

    #@dc
    .restart local v3    # "displayRectHeight":I
    goto/16 :goto_5
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 408
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
    .line 409
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
    .line 410
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
    .line 411
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
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v1, "mDisplayOffset=("

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    const-string/jumbo v1, ", "

    #@79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    move-result-object v0

    #@83
    const-string/jumbo v1, ")"

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v0

    #@8a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v0

    #@8e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@91
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v1, "mPrimaryDisplayDevice="

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v1

    #@9d
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@9f
    if-eqz v0, :cond_0

    #@a1
    .line 414
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@a3
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    #@a6
    move-result-object v0

    #@a7
    .line 413
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v0

    #@ab
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v0

    #@af
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b2
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string/jumbo v1, "mBaseDisplayInfo="

    #@ba
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v0

    #@be
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v0

    #@c8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cb
    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v1, "mOverrideDisplayInfo="

    #@d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v0

    #@d7
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

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
    .line 407
    return-void

    #@e5
    .line 414
    :cond_0
    const-string/jumbo v0, "null"

    #@e8
    goto :goto_0
.end method

.method public getDisplayIdLocked()I
    .locals 1

    #@0
    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    #@2
    return v0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .locals 2

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 119
    new-instance v0, Landroid/view/DisplayInfo;

    #@6
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@b
    .line 120
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@d
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@f
    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    #@12
    .line 121
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 122
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@18
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@1a
    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    #@1c
    iput v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    #@1e
    .line 123
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@20
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@22
    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    #@24
    iput v1, v0, Landroid/view/DisplayInfo;->appHeight:I

    #@26
    .line 124
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@28
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@2a
    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@2c
    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@2e
    .line 125
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@30
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@32
    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@34
    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@36
    .line 126
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@38
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@3a
    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@3c
    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@3e
    .line 127
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@40
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@42
    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@44
    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@46
    .line 128
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@48
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@4a
    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    #@4c
    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@4e
    .line 129
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@50
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@52
    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    #@54
    iput v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@56
    .line 130
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@58
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@5a
    iget v1, v1, Landroid/view/DisplayInfo;->overscanLeft:I

    #@5c
    iput v1, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    #@5e
    .line 131
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@60
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@62
    iget v1, v1, Landroid/view/DisplayInfo;->overscanTop:I

    #@64
    iput v1, v0, Landroid/view/DisplayInfo;->overscanTop:I

    #@66
    .line 132
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@68
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@6a
    iget v1, v1, Landroid/view/DisplayInfo;->overscanRight:I

    #@6c
    iput v1, v0, Landroid/view/DisplayInfo;->overscanRight:I

    #@6e
    .line 133
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@70
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@72
    iget v1, v1, Landroid/view/DisplayInfo;->overscanBottom:I

    #@74
    iput v1, v0, Landroid/view/DisplayInfo;->overscanBottom:I

    #@76
    .line 134
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@78
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@7a
    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    #@7c
    iput v1, v0, Landroid/view/DisplayInfo;->rotation:I

    #@7e
    .line 135
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@80
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@82
    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@84
    iput v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@86
    .line 136
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@88
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@8a
    iget v1, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@8c
    iput v1, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@8e
    .line 137
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@90
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@92
    iget v1, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@94
    iput v1, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@96
    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@98
    return-object v0
.end method

.method public getDisplayOffsetXLocked()I
    .locals 1

    #@0
    .prologue
    .line 389
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    #@2
    return v0
.end method

.method public getDisplayOffsetYLocked()I
    .locals 1

    #@0
    .prologue
    .line 396
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    #@2
    return v0
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@2
    return-object v0
.end method

.method public getRequestedModeIdLocked()I
    .locals 1

    #@0
    .prologue
    .line 382
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    #@2
    return v0
.end method

.method public hasContentLocked()Z
    .locals 1

    #@0
    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    #@2
    return v0
.end method

.method public isValidLocked()Z
    .locals 1

    #@0
    .prologue
    .line 179
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
    .line 151
    if-eqz p1, :cond_1

    #@4
    .line 152
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 153
    new-instance v0, Landroid/view/DisplayInfo;

    #@a
    invoke-direct {v0, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    #@d
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@f
    .line 154
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@11
    .line 155
    return v2

    #@12
    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@14
    invoke-virtual {v0, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_2

    #@1a
    .line 158
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@1c
    invoke-virtual {v0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    #@1f
    .line 159
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@21
    .line 160
    return v2

    #@22
    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 163
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    #@28
    .line 164
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@2a
    .line 165
    return v2

    #@2b
    .line 167
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
    .line 403
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    #@2
    .line 404
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    #@4
    .line 402
    return-void
.end method

.method public setHasContentLocked(Z)V
    .locals 0
    .param p1, "hasContent"    # Z

    #@0
    .prologue
    .line 368
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    #@2
    .line 367
    return-void
.end method

.method public setRequestedModeIdLocked(I)V
    .locals 0
    .param p1, "modeId"    # I

    #@0
    .prologue
    .line 375
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    #@2
    .line 374
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
    .line 191
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 192
    return-void

    #@7
    .line 196
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@9
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_1

    #@f
    .line 197
    iput-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@11
    .line 198
    return-void

    #@12
    .line 206
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    #@14
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    #@17
    move-result-object v0

    #@18
    .line 207
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@1a
    invoke-static {v1, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_7

    #@20
    .line 208
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@22
    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    #@24
    iput v2, v1, Landroid/view/DisplayInfo;->layerStack:I

    #@26
    .line 209
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@28
    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    #@2a
    .line 210
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@2c
    and-int/lit8 v1, v1, 0x8

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 211
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@32
    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@34
    or-int/lit8 v2, v2, 0x1

    #@36
    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@38
    .line 213
    :cond_2
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@3a
    and-int/lit8 v1, v1, 0x4

    #@3c
    if-eqz v1, :cond_3

    #@3e
    .line 214
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@40
    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@42
    or-int/lit8 v2, v2, 0x2

    #@44
    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@46
    .line 216
    :cond_3
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@48
    and-int/lit8 v1, v1, 0x10

    #@4a
    if-eqz v1, :cond_4

    #@4c
    .line 217
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@4e
    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@50
    or-int/lit8 v2, v2, 0x4

    #@52
    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@54
    .line 219
    :cond_4
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@56
    and-int/lit8 v1, v1, 0x40

    #@58
    if-eqz v1, :cond_5

    #@5a
    .line 220
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@5c
    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@5e
    or-int/lit8 v2, v2, 0x8

    #@60
    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@62
    .line 222
    :cond_5
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@64
    and-int/lit16 v1, v1, 0x100

    #@66
    if-eqz v1, :cond_6

    #@68
    .line 223
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@6a
    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@6c
    or-int/lit8 v2, v2, 0x10

    #@6e
    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    #@70
    .line 225
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@72
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@74
    iput v2, v1, Landroid/view/DisplayInfo;->type:I

    #@76
    .line 226
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@78
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    #@7a
    iput-object v2, v1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@7c
    .line 227
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@7e
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@80
    iput-object v2, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    #@82
    .line 228
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@84
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@86
    iput-object v2, v1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    #@88
    .line 229
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@8a
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@8c
    iput v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    #@8e
    .line 230
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@90
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@92
    iput v2, v1, Landroid/view/DisplayInfo;->appHeight:I

    #@94
    .line 231
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@96
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@98
    iput v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    #@9a
    .line 232
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@9c
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@9e
    iput v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    #@a0
    .line 233
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@a2
    iput v3, v1, Landroid/view/DisplayInfo;->rotation:I

    #@a4
    .line 234
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@a6
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@a8
    iput v2, v1, Landroid/view/DisplayInfo;->modeId:I

    #@aa
    .line 235
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@ac
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@ae
    iput v2, v1, Landroid/view/DisplayInfo;->defaultModeId:I

    #@b0
    .line 236
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@b2
    .line 237
    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@b4
    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@b6
    array-length v3, v3

    #@b7
    .line 236
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@ba
    move-result-object v1

    #@bb
    check-cast v1, [Landroid/view/Display$Mode;

    #@bd
    iput-object v1, v2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@bf
    .line 238
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@c1
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@c3
    iput v2, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@c5
    .line 239
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@c7
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@c9
    iput v2, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@cb
    .line 240
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@cd
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@cf
    iput v2, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@d1
    .line 241
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@d3
    iget-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    #@d5
    iput-wide v2, v1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    #@d7
    .line 242
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@d9
    iget-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@db
    iput-wide v2, v1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@dd
    .line 243
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@df
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@e1
    iput v2, v1, Landroid/view/DisplayInfo;->state:I

    #@e3
    .line 244
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@e5
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@e7
    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@e9
    .line 245
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@eb
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@ed
    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@ef
    .line 246
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@f1
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@f3
    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@f5
    .line 247
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@f7
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@f9
    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@fb
    .line 248
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@fd
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@ff
    iput v2, v1, Landroid/view/DisplayInfo;->ownerUid:I

    #@101
    .line 249
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    #@103
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@105
    iput-object v2, v1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@107
    .line 251
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@109
    .line 252
    iput-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    #@10b
    .line 189
    :cond_7
    return-void
.end method
