.class public Landroid/renderscript/AllocationAdapter;
.super Landroid/renderscript/Allocation;
.source "AllocationAdapter.java"


# instance fields
.field mWindow:Landroid/renderscript/Type;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "alloc"    # Landroid/renderscript/Allocation;
    .param p5, "t"    # Landroid/renderscript/Type;

    #@0
    .prologue
    .line 27
    iget-object v5, p4, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@2
    iget v6, p4, Landroid/renderscript/Allocation;->mUsage:I

    #@4
    move-object v1, p0

    #@5
    move-wide v2, p1

    #@6
    move-object v4, p3

    #@7
    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    #@a
    .line 28
    iput-object p4, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@c
    .line 29
    iput-object p5, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    #@e
    .line 26
    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@3
    .line 233
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@e
    move-result v2

    #@f
    invoke-static {p0, v1, v2}, Landroid/renderscript/Type;->createX(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Type;

    #@12
    move-result-object v0

    #@13
    .line 234
    .local v0, "t":Landroid/renderscript/Type;
    invoke-static {p0, p1, v0}, Landroid/renderscript/AllocationAdapter;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public static create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@3
    .line 240
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@e
    move-result v2

    #@f
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@16
    move-result v3

    #@17
    invoke-static {p0, v1, v2, v3}, Landroid/renderscript/Type;->createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    #@1a
    move-result-object v0

    #@1b
    .line 241
    .local v0, "t":Landroid/renderscript/Type;
    invoke-static {p0, p1, v0}, Landroid/renderscript/AllocationAdapter;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;
    .locals 10
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;
    .param p2, "t"    # Landroid/renderscript/Type;

    #@0
    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@3
    .line 269
    iget-object v1, p1, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 270
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    #@9
    const-string/jumbo v4, "Adapters cannot be nested."

    #@c
    invoke-direct {v1, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 273
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v1, v4}, Landroid/renderscript/Element;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_1

    #@22
    .line 274
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    #@24
    const-string/jumbo v4, "Element must match Allocation type."

    #@27
    invoke-direct {v1, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 277
    :cond_1
    invoke-virtual {p2}, Landroid/renderscript/Type;->hasFaces()Z

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_2

    #@31
    invoke-virtual {p2}, Landroid/renderscript/Type;->hasMipmaps()Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_3

    #@37
    .line 278
    :cond_2
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    #@39
    const-string/jumbo v4, "Adapters do not support window types with Mipmaps or Faces."

    #@3c
    invoke-direct {v1, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v1

    #@40
    .line 281
    :cond_3
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@43
    move-result-object v0

    #@44
    .line 282
    .local v0, "at":Landroid/renderscript/Type;
    invoke-virtual {p2}, Landroid/renderscript/Type;->getX()I

    #@47
    move-result v1

    #@48
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    #@4b
    move-result v4

    #@4c
    if-gt v1, v4, :cond_4

    #@4e
    .line 283
    invoke-virtual {p2}, Landroid/renderscript/Type;->getY()I

    #@51
    move-result v1

    #@52
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    #@55
    move-result v4

    #@56
    if-le v1, v4, :cond_5

    #@58
    .line 287
    :cond_4
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    #@5a
    const-string/jumbo v4, "Type cannot have dimension larger than the source allocation."

    #@5d
    invoke-direct {v1, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@60
    throw v1

    #@61
    .line 284
    :cond_5
    invoke-virtual {p2}, Landroid/renderscript/Type;->getZ()I

    #@64
    move-result v1

    #@65
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    #@68
    move-result v4

    #@69
    if-gt v1, v4, :cond_4

    #@6b
    .line 285
    invoke-virtual {p2}, Landroid/renderscript/Type;->getArrayCount()I

    #@6e
    move-result v1

    #@6f
    invoke-virtual {v0}, Landroid/renderscript/Type;->getArrayCount()I

    #@72
    move-result v4

    #@73
    if-gt v1, v4, :cond_4

    #@75
    .line 290
    invoke-virtual {p2}, Landroid/renderscript/Type;->getArrayCount()I

    #@78
    move-result v1

    #@79
    if-lez v1, :cond_7

    #@7b
    .line 291
    const/4 v7, 0x0

    #@7c
    .local v7, "i":I
    :goto_0
    invoke-virtual {p2, v7}, Landroid/renderscript/Type;->getArray(I)I

    #@7f
    move-result v1

    #@80
    if-ge v7, v1, :cond_7

    #@82
    .line 292
    invoke-virtual {p2, v7}, Landroid/renderscript/Type;->getArray(I)I

    #@85
    move-result v1

    #@86
    invoke-virtual {v0, v7}, Landroid/renderscript/Type;->getArray(I)I

    #@89
    move-result v4

    #@8a
    if-le v1, v4, :cond_6

    #@8c
    .line 293
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    #@8e
    const-string/jumbo v4, "Type cannot have dimension larger than the source allocation."

    #@91
    invoke-direct {v1, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@94
    throw v1

    #@95
    .line 291
    :cond_6
    add-int/lit8 v7, v7, 0x1

    #@97
    goto :goto_0

    #@98
    .line 299
    .end local v7    # "i":I
    :cond_7
    invoke-virtual {p1, p0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@9b
    move-result-wide v4

    #@9c
    invoke-virtual {p2, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@9f
    move-result-wide v8

    #@a0
    invoke-virtual {p0, v4, v5, v8, v9}, Landroid/renderscript/RenderScript;->nAllocationAdapterCreate(JJ)J

    #@a3
    move-result-wide v2

    #@a4
    .line 300
    .local v2, "id":J
    const-wide/16 v4, 0x0

    #@a6
    cmp-long v1, v2, v4

    #@a8
    if-nez v1, :cond_8

    #@aa
    .line 301
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@ac
    const-string/jumbo v4, "AllocationAdapter creation failed."

    #@af
    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@b2
    throw v1

    #@b3
    .line 303
    :cond_8
    new-instance v1, Landroid/renderscript/AllocationAdapter;

    #@b5
    move-object v4, p0

    #@b6
    move-object v5, p1

    #@b7
    move-object v6, p2

    #@b8
    invoke-direct/range {v1 .. v6}, Landroid/renderscript/AllocationAdapter;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)V

    #@bb
    return-object v1
.end method

.method private updateOffsets()V
    .locals 13

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x2

    #@3
    .line 73
    const/4 v9, 0x0

    #@4
    .local v9, "a1":I
    const/4 v10, 0x0

    #@5
    .local v10, "a2":I
    const/4 v11, 0x0

    #@6
    .local v11, "a3":I
    const/4 v12, 0x0

    #@7
    .line 75
    .local v12, "a4":I
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    #@9
    if-eqz v0, :cond_3

    #@b
    .line 76
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    #@d
    array-length v0, v0

    #@e
    if-lez v0, :cond_0

    #@10
    .line 77
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    #@12
    aget v9, v0, v1

    #@14
    .line 79
    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    #@16
    array-length v0, v0

    #@17
    const/4 v1, 0x1

    #@18
    if-le v0, v1, :cond_1

    #@1a
    .line 80
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    #@1c
    aget v10, v0, v2

    #@1e
    .line 82
    :cond_1
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    #@20
    array-length v0, v0

    #@21
    if-le v0, v2, :cond_2

    #@23
    .line 83
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    #@25
    aget v11, v0, v2

    #@27
    .line 85
    :cond_2
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    #@29
    array-length v0, v0

    #@2a
    if-le v0, v3, :cond_3

    #@2c
    .line 86
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    #@2e
    aget v12, v0, v3

    #@30
    .line 89
    :cond_3
    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    #@32
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    #@34
    invoke-virtual {p0, v0}, Landroid/renderscript/AllocationAdapter;->getID(Landroid/renderscript/RenderScript;)J

    #@37
    move-result-wide v2

    #@38
    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mSelectedX:I

    #@3a
    iget v5, p0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    #@3c
    iget v6, p0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    #@3e
    .line 90
    iget v7, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    #@40
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    #@42
    iget v8, v0, Landroid/renderscript/Type$CubemapFace;->mID:I

    #@44
    .line 89
    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->nAllocationAdapterOffset(JIIIIIIIII)V

    #@47
    .line 72
    return-void
.end method


# virtual methods
.method initLOD(I)V
    .locals 8
    .param p1, "lod"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 40
    if-gez p1, :cond_0

    #@4
    .line 41
    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    #@6
    new-instance v5, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v6, "Attempting to set negative lod ("

    #@e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    const-string/jumbo v6, ")."

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v4

    #@25
    .line 44
    :cond_0
    iget-object v4, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@27
    iget-object v4, v4, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@29
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@2c
    move-result v1

    #@2d
    .line 45
    .local v1, "tx":I
    iget-object v4, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@2f
    iget-object v4, v4, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@31
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@34
    move-result v2

    #@35
    .line 46
    .local v2, "ty":I
    iget-object v4, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@37
    iget-object v4, v4, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@39
    invoke-virtual {v4}, Landroid/renderscript/Type;->getZ()I

    #@3c
    move-result v3

    #@3d
    .line 48
    .local v3, "tz":I
    const/4 v0, 0x0

    #@3e
    .local v0, "ct":I
    :goto_0
    if-ge v0, p1, :cond_5

    #@40
    .line 49
    if-ne v1, v6, :cond_1

    #@42
    if-ne v2, v6, :cond_1

    #@44
    if-ne v3, v6, :cond_1

    #@46
    .line 50
    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    #@48
    new-instance v5, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v6, "Attempting to set lod ("

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    const-string/jumbo v6, ") out of range."

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@66
    throw v4

    #@67
    .line 53
    :cond_1
    if-le v1, v6, :cond_2

    #@69
    shr-int/lit8 v1, v1, 0x1

    #@6b
    .line 54
    :cond_2
    if-le v2, v6, :cond_3

    #@6d
    shr-int/lit8 v2, v2, 0x1

    #@6f
    .line 55
    :cond_3
    if-le v3, v6, :cond_4

    #@71
    shr-int/lit8 v3, v3, 0x1

    #@73
    .line 48
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@75
    goto :goto_0

    #@76
    .line 58
    :cond_5
    iput v1, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimX:I

    #@78
    .line 59
    iput v2, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    #@7a
    .line 60
    iput v3, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    #@7c
    .line 61
    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimX:I

    #@7e
    iput v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    #@80
    .line 62
    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    #@82
    if-le v4, v6, :cond_6

    #@84
    .line 63
    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    #@86
    iget v5, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    #@88
    mul-int/2addr v4, v5

    #@89
    iput v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    #@8b
    .line 65
    :cond_6
    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    #@8d
    if-le v4, v6, :cond_7

    #@8f
    .line 66
    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    #@91
    iget v5, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    #@93
    mul-int/2addr v4, v5

    #@94
    iput v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    #@96
    .line 68
    :cond_7
    iput v7, p0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    #@98
    .line 69
    iput v7, p0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    #@9a
    .line 39
    return-void
.end method

.method public declared-synchronized resize(I)V
    .locals 2
    .param p1, "dimX"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 313
    :try_start_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@3
    const-string/jumbo v1, "Resize not allowed for Adapters."

    #@6
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public setArray(II)V
    .locals 2
    .param p1, "arrayNum"    # I
    .param p2, "arrayVal"    # I

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 215
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@e
    const-string/jumbo v1, "Cannot set arrayNum when the allocation type does not include arrayNum dim."

    #@11
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 217
    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@17
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    #@1e
    move-result v0

    #@1f
    if-gt v0, p2, :cond_1

    #@21
    .line 218
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@23
    const-string/jumbo v1, "Cannot set arrayNum greater than dimension of allocation."

    #@26
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 220
    :cond_1
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    #@2c
    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    #@2f
    move-result v0

    #@30
    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@32
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p1}, Landroid/renderscript/Type;->getArray(I)I

    #@39
    move-result v1

    #@3a
    if-ne v0, v1, :cond_2

    #@3c
    .line 221
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@3e
    const-string/jumbo v1, "Cannot set arrayNum when the adapter includes arrayNum."

    #@41
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    .line 223
    :cond_2
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    #@47
    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    #@4a
    move-result v0

    #@4b
    add-int/2addr v0, p2

    #@4c
    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@4e
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1, p1}, Landroid/renderscript/Type;->getArray(I)I

    #@55
    move-result v1

    #@56
    if-lt v0, v1, :cond_3

    #@58
    .line 224
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@5a
    const-string/jumbo v1, "Cannot set (arrayNum + window) which would be larger than dimension of allocation."

    #@5d
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@60
    throw v0

    #@61
    .line 227
    :cond_3
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    #@63
    aput p2, v0, p1

    #@65
    .line 228
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    #@68
    .line 213
    return-void
.end method

.method public setFace(Landroid/renderscript/Type$CubemapFace;)V
    .locals 2
    .param p1, "cf"    # Landroid/renderscript/Type$CubemapFace;

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 124
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@e
    const-string/jumbo v1, "Cannot set Face when the allocation type does not include faces."

    #@11
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 126
    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    #@17
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 127
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@1f
    const-string/jumbo v1, "Cannot set face when the adapter includes faces."

    #@22
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 129
    :cond_1
    if-nez p1, :cond_2

    #@28
    .line 130
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@2a
    const-string/jumbo v1, "Cannot set null face."

    #@2d
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 133
    :cond_2
    iput-object p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    #@33
    .line 134
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    #@36
    .line 122
    return-void
.end method

.method public setLOD(I)V
    .locals 2
    .param p1, "lod"    # I

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 105
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@e
    const-string/jumbo v1, "Cannot set LOD when the allocation type does not include mipmaps."

    #@11
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 107
    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    #@17
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 108
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@1f
    const-string/jumbo v1, "Cannot set LOD when the adapter includes mipmaps."

    #@22
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 111
    :cond_1
    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->initLOD(I)V

    #@29
    .line 112
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    #@2b
    .line 113
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    #@2e
    .line 103
    return-void
.end method

.method public setX(I)V
    .locals 2
    .param p1, "x"    # I

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    #@9
    move-result v0

    #@a
    if-gt v0, p1, :cond_0

    #@c
    .line 147
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@e
    const-string/jumbo v1, "Cannot set X greater than dimension of allocation."

    #@11
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 149
    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    #@17
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    #@1a
    move-result v0

    #@1b
    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@1d
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    #@24
    move-result v1

    #@25
    if-ne v0, v1, :cond_1

    #@27
    .line 150
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@29
    const-string/jumbo v1, "Cannot set X when the adapter includes X."

    #@2c
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 152
    :cond_1
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    #@32
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    #@35
    move-result v0

    #@36
    add-int/2addr v0, p1

    #@37
    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@39
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    #@40
    move-result v1

    #@41
    if-lt v0, v1, :cond_2

    #@43
    .line 153
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@45
    const-string/jumbo v1, "Cannot set (X + window) which would be larger than dimension of allocation."

    #@48
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0

    #@4c
    .line 156
    :cond_2
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedX:I

    #@4e
    .line 157
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    #@51
    .line 145
    return-void
.end method

.method public setY(I)V
    .locals 2
    .param p1, "y"    # I

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 169
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@e
    const-string/jumbo v1, "Cannot set Y when the allocation type does not include Y dim."

    #@11
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 171
    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@17
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v0

    #@1f
    if-gt v0, p1, :cond_1

    #@21
    .line 172
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@23
    const-string/jumbo v1, "Cannot set Y greater than dimension of allocation."

    #@26
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 174
    :cond_1
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    #@2c
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    #@2f
    move-result v0

    #@30
    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@32
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    #@39
    move-result v1

    #@3a
    if-ne v0, v1, :cond_2

    #@3c
    .line 175
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@3e
    const-string/jumbo v1, "Cannot set Y when the adapter includes Y."

    #@41
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    .line 177
    :cond_2
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    #@47
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    #@4a
    move-result v0

    #@4b
    add-int/2addr v0, p1

    #@4c
    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@4e
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    #@55
    move-result v1

    #@56
    if-lt v0, v1, :cond_3

    #@58
    .line 178
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@5a
    const-string/jumbo v1, "Cannot set (Y + window) which would be larger than dimension of allocation."

    #@5d
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@60
    throw v0

    #@61
    .line 181
    :cond_3
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    #@63
    .line 182
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    #@66
    .line 167
    return-void
.end method

.method public setZ(I)V
    .locals 2
    .param p1, "z"    # I

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 194
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@e
    const-string/jumbo v1, "Cannot set Z when the allocation type does not include Z dim."

    #@11
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 196
    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@17
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    #@1e
    move-result v0

    #@1f
    if-gt v0, p1, :cond_1

    #@21
    .line 197
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@23
    const-string/jumbo v1, "Cannot set Z greater than dimension of allocation."

    #@26
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 199
    :cond_1
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    #@2c
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    #@2f
    move-result v0

    #@30
    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@32
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    #@39
    move-result v1

    #@3a
    if-ne v0, v1, :cond_2

    #@3c
    .line 200
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@3e
    const-string/jumbo v1, "Cannot set Z when the adapter includes Z."

    #@41
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    .line 202
    :cond_2
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    #@47
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    #@4a
    move-result v0

    #@4b
    add-int/2addr v0, p1

    #@4c
    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@4e
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    #@55
    move-result v1

    #@56
    if-lt v0, v1, :cond_3

    #@58
    .line 203
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@5a
    const-string/jumbo v1, "Cannot set (Z + window) which would be larger than dimension of allocation."

    #@5d
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@60
    throw v0

    #@61
    .line 206
    :cond_3
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    #@63
    .line 207
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    #@66
    .line 192
    return-void
.end method
