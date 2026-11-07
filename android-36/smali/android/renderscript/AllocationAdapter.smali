.class public Landroid/renderscript/AllocationAdapter;
.super Landroid/renderscript/Allocation;
.source "AllocationAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mWindow:Landroid/renderscript/Type;


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)V
    .registers 12
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "alloc"    # Landroid/renderscript/Allocation;
    .param p5, "t"    # Landroid/renderscript/Type;

    .line 31
    iget-object v4, p4, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget v5, p4, Landroid/renderscript/Allocation;->mUsage:I

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .end local p1    # "id":J
    .end local p3    # "rs":Landroid/renderscript/RenderScript;
    .local v1, "id":J
    .local v3, "rs":Landroid/renderscript/RenderScript;
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    .line 32
    iput-object p4, v0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 33
    iput-object p5, v0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    .line 34
    return-void
.end method

.method public static whitelist create1D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .registers 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .line 236
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 237
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/renderscript/Type;->createX(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Type;

    move-result-object v0

    .line 238
    .local v0, "t":Landroid/renderscript/Type;
    invoke-static {p0, p1, v0}, Landroid/renderscript/AllocationAdapter;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .registers 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .line 243
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 244
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Landroid/renderscript/Type;->createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v0

    .line 245
    .local v0, "t":Landroid/renderscript/Type;
    invoke-static {p0, p1, v0}, Landroid/renderscript/AllocationAdapter;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;
    .registers 14
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;
    .param p2, "t"    # Landroid/renderscript/Type;

    .line 271
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 273
    iget-object v0, p1, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-nez v0, :cond_c2

    .line 277
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 281
    invoke-virtual {p2}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-nez v0, :cond_ad

    invoke-virtual {p2}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 285
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 286
    .local v0, "at":Landroid/renderscript/Type;
    invoke-virtual {p2}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    const-string v3, "Type cannot have dimension larger than the source allocation."

    if-gt v1, v2, :cond_a4

    .line 287
    invoke-virtual {p2}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-gt v1, v2, :cond_a0

    .line 288
    invoke-virtual {p2}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    if-gt v1, v2, :cond_9c

    .line 289
    invoke-virtual {p2}, Landroid/renderscript/Type;->getArrayCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getArrayCount()I

    move-result v2

    if-gt v1, v2, :cond_98

    .line 294
    invoke-virtual {p2}, Landroid/renderscript/Type;->getArrayCount()I

    move-result v1

    if-lez v1, :cond_73

    .line 295
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5a
    invoke-virtual {p2, v1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v2

    if-ge v1, v2, :cond_73

    .line 296
    invoke-virtual {p2, v1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v4

    if-gt v2, v4, :cond_6d

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 297
    :cond_6d
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    .end local v1    # "i":I
    :cond_73
    invoke-virtual {p1, p0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/renderscript/RenderScript;->nAllocationAdapterCreate(JJ)J

    move-result-wide v6

    .line 304
    .local v6, "id":J
    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-eqz v1, :cond_8e

    .line 307
    new-instance v5, Landroid/renderscript/AllocationAdapter;

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "a":Landroid/renderscript/Allocation;
    .end local p2    # "t":Landroid/renderscript/Type;
    .local v8, "rs":Landroid/renderscript/RenderScript;
    .local v9, "a":Landroid/renderscript/Allocation;
    .local v10, "t":Landroid/renderscript/Type;
    invoke-direct/range {v5 .. v10}, Landroid/renderscript/AllocationAdapter;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)V

    return-object v5

    .line 305
    .end local v8    # "rs":Landroid/renderscript/RenderScript;
    .end local v9    # "a":Landroid/renderscript/Allocation;
    .end local v10    # "t":Landroid/renderscript/Type;
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "a":Landroid/renderscript/Allocation;
    .restart local p2    # "t":Landroid/renderscript/Type;
    :cond_8e
    move-object v8, p0

    move-object v9, p1

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "a":Landroid/renderscript/Allocation;
    .restart local v8    # "rs":Landroid/renderscript/RenderScript;
    .restart local v9    # "a":Landroid/renderscript/Allocation;
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string p1, "AllocationAdapter creation failed."

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    .end local v6    # "id":J
    .end local v8    # "rs":Landroid/renderscript/RenderScript;
    .end local v9    # "a":Landroid/renderscript/Allocation;
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "a":Landroid/renderscript/Allocation;
    :cond_98
    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "a":Landroid/renderscript/Allocation;
    .end local p2    # "t":Landroid/renderscript/Type;
    .restart local v8    # "rs":Landroid/renderscript/RenderScript;
    .restart local v9    # "a":Landroid/renderscript/Allocation;
    .restart local v10    # "t":Landroid/renderscript/Type;
    goto :goto_a7

    .line 288
    .end local v8    # "rs":Landroid/renderscript/RenderScript;
    .end local v9    # "a":Landroid/renderscript/Allocation;
    .end local v10    # "t":Landroid/renderscript/Type;
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "a":Landroid/renderscript/Allocation;
    .restart local p2    # "t":Landroid/renderscript/Type;
    :cond_9c
    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "a":Landroid/renderscript/Allocation;
    .end local p2    # "t":Landroid/renderscript/Type;
    .restart local v8    # "rs":Landroid/renderscript/RenderScript;
    .restart local v9    # "a":Landroid/renderscript/Allocation;
    .restart local v10    # "t":Landroid/renderscript/Type;
    goto :goto_a7

    .line 287
    .end local v8    # "rs":Landroid/renderscript/RenderScript;
    .end local v9    # "a":Landroid/renderscript/Allocation;
    .end local v10    # "t":Landroid/renderscript/Type;
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "a":Landroid/renderscript/Allocation;
    .restart local p2    # "t":Landroid/renderscript/Type;
    :cond_a0
    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "a":Landroid/renderscript/Allocation;
    .end local p2    # "t":Landroid/renderscript/Type;
    .restart local v8    # "rs":Landroid/renderscript/RenderScript;
    .restart local v9    # "a":Landroid/renderscript/Allocation;
    .restart local v10    # "t":Landroid/renderscript/Type;
    goto :goto_a7

    .line 286
    .end local v8    # "rs":Landroid/renderscript/RenderScript;
    .end local v9    # "a":Landroid/renderscript/Allocation;
    .end local v10    # "t":Landroid/renderscript/Type;
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "a":Landroid/renderscript/Allocation;
    .restart local p2    # "t":Landroid/renderscript/Type;
    :cond_a4
    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    .line 291
    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "a":Landroid/renderscript/Allocation;
    .end local p2    # "t":Landroid/renderscript/Type;
    .restart local v8    # "rs":Landroid/renderscript/RenderScript;
    .restart local v9    # "a":Landroid/renderscript/Allocation;
    .restart local v10    # "t":Landroid/renderscript/Type;
    :goto_a7
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    invoke-direct {p0, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 281
    .end local v0    # "at":Landroid/renderscript/Type;
    .end local v8    # "rs":Landroid/renderscript/RenderScript;
    .end local v9    # "a":Landroid/renderscript/Allocation;
    .end local v10    # "t":Landroid/renderscript/Type;
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "a":Landroid/renderscript/Allocation;
    .restart local p2    # "t":Landroid/renderscript/Type;
    :cond_ad
    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    .line 282
    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "a":Landroid/renderscript/Allocation;
    .end local p2    # "t":Landroid/renderscript/Type;
    .restart local v8    # "rs":Landroid/renderscript/RenderScript;
    .restart local v9    # "a":Landroid/renderscript/Allocation;
    .restart local v10    # "t":Landroid/renderscript/Type;
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Adapters do not support window types with Mipmaps or Faces."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 278
    .end local v8    # "rs":Landroid/renderscript/RenderScript;
    .end local v9    # "a":Landroid/renderscript/Allocation;
    .end local v10    # "t":Landroid/renderscript/Type;
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "a":Landroid/renderscript/Allocation;
    .restart local p2    # "t":Landroid/renderscript/Type;
    :cond_b8
    move-object v8, p0

    move-object v9, p1

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "a":Landroid/renderscript/Allocation;
    .restart local v8    # "rs":Landroid/renderscript/RenderScript;
    .restart local v9    # "a":Landroid/renderscript/Allocation;
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Element must match Allocation type."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 274
    .end local v8    # "rs":Landroid/renderscript/RenderScript;
    .end local v9    # "a":Landroid/renderscript/Allocation;
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "a":Landroid/renderscript/Allocation;
    :cond_c2
    move-object v8, p0

    move-object v9, p1

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "a":Landroid/renderscript/Allocation;
    .restart local v8    # "rs":Landroid/renderscript/RenderScript;
    .restart local v9    # "a":Landroid/renderscript/Allocation;
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Adapters cannot be nested."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o updateOffsets()V
    .registers 18

    .line 77
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "a1":I
    const/4 v2, 0x0

    .local v2, "a2":I
    const/4 v3, 0x0

    .local v3, "a3":I
    const/4 v4, 0x0

    .line 79
    .local v4, "a4":I
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    if-eqz v5, :cond_3e

    .line 80
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v5, v5

    if-lez v5, :cond_14

    .line 81
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    const/4 v6, 0x0

    aget v1, v5, v6

    .line 83
    :cond_14
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v5, v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-le v5, v6, :cond_1f

    .line 84
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v2, v5, v7

    .line 86
    :cond_1f
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v5, v5

    if-le v5, v7, :cond_28

    .line 87
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v3, v5, v7

    .line 89
    :cond_28
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v5, v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_38

    .line 90
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v4, v5, v6

    move v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    goto :goto_43

    .line 89
    :cond_38
    move v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    goto :goto_43

    .line 79
    :cond_3e
    move v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    .line 93
    .end local v1    # "a1":I
    .end local v2    # "a2":I
    .end local v3    # "a3":I
    .end local v4    # "a4":I
    .local v13, "a1":I
    .local v14, "a2":I
    .local v15, "a3":I
    .local v16, "a4":I
    :goto_43
    iget-object v5, v0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/AllocationAdapter;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    iget v8, v0, Landroid/renderscript/AllocationAdapter;->mSelectedX:I

    iget v9, v0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    iget v10, v0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    iget v11, v0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    iget-object v1, v0, Landroid/renderscript/AllocationAdapter;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v12, v1, Landroid/renderscript/Type$CubemapFace;->mID:I

    invoke-virtual/range {v5 .. v16}, Landroid/renderscript/RenderScript;->nAllocationAdapterOffset(JIIIIIIIII)V

    .line 96
    return-void
.end method


# virtual methods
.method greylist-max-o initLOD(I)V
    .registers 9
    .param p1, "lod"    # I

    .line 44
    if-ltz p1, :cond_79

    .line 48
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v0, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 49
    .local v0, "tx":I
    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v1, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    .line 50
    .local v1, "ty":I
    iget-object v2, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v2, v2, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    .line 52
    .local v2, "tz":I
    const/4 v3, 0x0

    .local v3, "ct":I
    :goto_1b
    const/4 v4, 0x1

    if-ge v3, p1, :cond_53

    .line 53
    if-ne v0, v4, :cond_44

    if-ne v1, v4, :cond_44

    if-eq v2, v4, :cond_25

    goto :goto_44

    .line 54
    :cond_25
    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to set lod ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") out of range."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    :cond_44
    :goto_44
    if-le v0, v4, :cond_48

    shr-int/lit8 v0, v0, 0x1

    .line 58
    :cond_48
    if-le v1, v4, :cond_4c

    shr-int/lit8 v1, v1, 0x1

    .line 59
    :cond_4c
    if-le v2, v4, :cond_50

    shr-int/lit8 v2, v2, 0x1

    .line 52
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 62
    .end local v3    # "ct":I
    :cond_53
    iput v0, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimX:I

    .line 63
    iput v1, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    .line 64
    iput v2, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    .line 65
    iget v3, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimX:I

    iput v3, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    .line 66
    iget v3, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    if-le v3, v4, :cond_68

    .line 67
    iget v3, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    iget v5, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    mul-int/2addr v3, v5

    iput v3, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    .line 69
    :cond_68
    iget v3, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    if-le v3, v4, :cond_73

    .line 70
    iget v3, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    mul-int/2addr v3, v4

    iput v3, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    .line 72
    :cond_73
    const/4 v3, 0x0

    iput v3, p0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    .line 73
    iput v3, p0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    .line 74
    return-void

    .line 45
    .end local v0    # "tx":I
    .end local v1    # "ty":I
    .end local v2    # "tz":I
    :cond_79
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to set negative lod ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist resize(I)V
    .registers 4
    .param p1, "dimX"    # I

    monitor-enter p0

    .line 317
    :try_start_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Resize not allowed for Adapters."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    .end local p0    # "this":Landroid/renderscript/AllocationAdapter;
    .end local p1    # "dimX":I
    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public greylist-max-o setArray(II)V
    .registers 5
    .param p1, "arrayNum"    # I
    .param p2, "arrayVal"    # I

    .line 218
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    if-eqz v0, :cond_5d

    .line 221
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    if-le v0, p2, :cond_55

    .line 224
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v1

    if-eq v0, v1, :cond_4d

    .line 227
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 231
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aput p2, v0, p1

    .line 232
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 233
    return-void

    .line 228
    :cond_45
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set (arrayNum + window) which would be larger than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_4d
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set arrayNum when the adapter includes arrayNum."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_55
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set arrayNum greater than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_5d
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set arrayNum when the allocation type does not include arrayNum dim."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFace(Landroid/renderscript/Type$CubemapFace;)V
    .registers 4
    .param p1, "cf"    # Landroid/renderscript/Type$CubemapFace;

    .line 127
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 130
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-nez v0, :cond_24

    .line 133
    if-eqz p1, :cond_1c

    .line 137
    iput-object p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    .line 138
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 139
    return-void

    .line 134
    :cond_1c
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Cannot set null face."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_24
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set face when the adapter includes faces."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2c
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Face when the allocation type does not include faces."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLOD(I)V
    .registers 4
    .param p1, "lod"    # I

    .line 108
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 111
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 115
    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->initLOD(I)V

    .line 116
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    .line 117
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 118
    return-void

    .line 112
    :cond_1d
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set LOD when the adapter includes mipmaps."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_25
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set LOD when the allocation type does not include mipmaps."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setX(I)V
    .registers 4
    .param p1, "x"    # I

    .line 150
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    if-le v0, p1, :cond_47

    .line 153
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-eq v0, v1, :cond_3f

    .line 156
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 160
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedX:I

    .line 161
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 162
    return-void

    .line 157
    :cond_37
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set (X + window) which would be larger than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_3f
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set X when the adapter includes X."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_47
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set X greater than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setY(I)V
    .registers 4
    .param p1, "y"    # I

    .line 172
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-eqz v0, :cond_5b

    .line 175
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-le v0, p1, :cond_53

    .line 178
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v0, v1, :cond_4b

    .line 181
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 185
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    .line 186
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 187
    return-void

    .line 182
    :cond_43
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set (Y + window) which would be larger than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_4b
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Y when the adapter includes Y."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_53
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Y greater than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_5b
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Y when the allocation type does not include Y dim."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setZ(I)V
    .registers 4
    .param p1, "z"    # I

    .line 197
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    if-eqz v0, :cond_5b

    .line 200
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    if-le v0, p1, :cond_53

    .line 203
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-eq v0, v1, :cond_4b

    .line 206
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 210
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    .line 211
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 212
    return-void

    .line 207
    :cond_43
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set (Z + window) which would be larger than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_4b
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Z when the adapter includes Z."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_53
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Z greater than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_5b
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Z when the allocation type does not include Z dim."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
