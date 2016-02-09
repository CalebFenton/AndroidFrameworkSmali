.class public Landroid/renderscript/Type;
.super Landroid/renderscript/BaseObj;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Type$CubemapFace;,
        Landroid/renderscript/Type$Builder;
    }
.end annotation


# static fields
.field static final mMaxArrays:I = 0x4


# instance fields
.field mArrays:[I

.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimYuv:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mElementCount:I


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 229
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 228
    return-void
.end method

.method public static createX(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .locals 12
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "dimX"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 264
    const/4 v1, 0x1

    #@2
    if-ge p2, v1, :cond_0

    #@4
    .line 265
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    #@6
    const-string/jumbo v2, "Dimension must be >= 1."

    #@9
    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 268
    :cond_0
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    #@10
    move-result-wide v2

    #@11
    move-object v1, p0

    #@12
    move v4, p2

    #@13
    move v6, v5

    #@14
    move v7, v5

    #@15
    move v8, v5

    #@16
    move v9, v5

    #@17
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    #@1a
    move-result-wide v10

    #@1b
    .line 269
    .local v10, "id":J
    new-instance v0, Landroid/renderscript/Type;

    #@1d
    invoke-direct {v0, v10, v11, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    #@20
    .line 270
    .local v0, "t":Landroid/renderscript/Type;
    iput-object p1, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@22
    .line 271
    iput p2, v0, Landroid/renderscript/Type;->mDimX:I

    #@24
    .line 272
    invoke-virtual {v0}, Landroid/renderscript/Type;->calcElementCount()V

    #@27
    .line 273
    return-object v0
.end method

.method public static createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;
    .locals 12
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "dimX"    # I
    .param p3, "dimY"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 288
    if-lt p2, v1, :cond_0

    #@4
    if-ge p3, v1, :cond_1

    #@6
    .line 289
    :cond_0
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    #@8
    const-string/jumbo v2, "Dimension must be >= 1."

    #@b
    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 292
    :cond_1
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    #@12
    move-result-wide v2

    #@13
    move-object v1, p0

    #@14
    move v4, p2

    #@15
    move v5, p3

    #@16
    move v7, v6

    #@17
    move v8, v6

    #@18
    move v9, v6

    #@19
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    #@1c
    move-result-wide v10

    #@1d
    .line 293
    .local v10, "id":J
    new-instance v0, Landroid/renderscript/Type;

    #@1f
    invoke-direct {v0, v10, v11, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    #@22
    .line 294
    .local v0, "t":Landroid/renderscript/Type;
    iput-object p1, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@24
    .line 295
    iput p2, v0, Landroid/renderscript/Type;->mDimX:I

    #@26
    .line 296
    iput p3, v0, Landroid/renderscript/Type;->mDimY:I

    #@28
    .line 297
    invoke-virtual {v0}, Landroid/renderscript/Type;->calcElementCount()V

    #@2b
    .line 298
    return-object v0
.end method

.method public static createXYZ(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;III)Landroid/renderscript/Type;
    .locals 14
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "dimX"    # I
    .param p3, "dimY"    # I
    .param p4, "dimZ"    # I

    #@0
    .prologue
    .line 314
    const/4 v3, 0x1

    #@1
    move/from16 v0, p2

    #@3
    if-lt v0, v3, :cond_0

    #@5
    const/4 v3, 0x1

    #@6
    move/from16 v0, p3

    #@8
    if-ge v0, v3, :cond_1

    #@a
    .line 315
    :cond_0
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    #@c
    const-string/jumbo v4, "Dimension must be >= 1."

    #@f
    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v3

    #@13
    .line 314
    :cond_1
    const/4 v3, 0x1

    #@14
    move/from16 v0, p4

    #@16
    if-lt v0, v3, :cond_0

    #@18
    .line 318
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    #@1b
    move-result-wide v4

    #@1c
    const/4 v9, 0x0

    #@1d
    const/4 v10, 0x0

    #@1e
    const/4 v11, 0x0

    #@1f
    move-object v3, p0

    #@20
    move/from16 v6, p2

    #@22
    move/from16 v7, p3

    #@24
    move/from16 v8, p4

    #@26
    invoke-virtual/range {v3 .. v11}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    #@29
    move-result-wide v12

    #@2a
    .line 319
    .local v12, "id":J
    new-instance v2, Landroid/renderscript/Type;

    #@2c
    invoke-direct {v2, v12, v13, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    #@2f
    .line 320
    .local v2, "t":Landroid/renderscript/Type;
    iput-object p1, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@31
    .line 321
    move/from16 v0, p2

    #@33
    iput v0, v2, Landroid/renderscript/Type;->mDimX:I

    #@35
    .line 322
    move/from16 v0, p3

    #@37
    iput v0, v2, Landroid/renderscript/Type;->mDimY:I

    #@39
    .line 323
    move/from16 v0, p4

    #@3b
    iput v0, v2, Landroid/renderscript/Type;->mDimZ:I

    #@3d
    .line 324
    invoke-virtual {v2}, Landroid/renderscript/Type;->calcElementCount()V

    #@40
    .line 325
    return-object v2
.end method


# virtual methods
.method calcElementCount()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 184
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasMipmaps()Z

    #@4
    move-result v3

    #@5
    .line 185
    .local v3, "hasLod":Z
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    #@8
    move-result v4

    #@9
    .line 186
    .local v4, "x":I
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    #@c
    move-result v5

    #@d
    .line 187
    .local v5, "y":I
    invoke-virtual {p0}, Landroid/renderscript/Type;->getZ()I

    #@10
    move-result v6

    #@11
    .line 188
    .local v6, "z":I
    const/4 v2, 0x1

    #@12
    .line 189
    .local v2, "faces":I
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasFaces()Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_0

    #@18
    .line 190
    const/4 v2, 0x6

    #@19
    .line 192
    :cond_0
    if-nez v4, :cond_1

    #@1b
    .line 193
    const/4 v4, 0x1

    #@1c
    .line 195
    :cond_1
    if-nez v5, :cond_2

    #@1e
    .line 196
    const/4 v5, 0x1

    #@1f
    .line 198
    :cond_2
    if-nez v6, :cond_3

    #@21
    .line 199
    const/4 v6, 0x1

    #@22
    .line 202
    :cond_3
    mul-int v7, v4, v5

    #@24
    mul-int/2addr v7, v6

    #@25
    mul-int v0, v7, v2

    #@27
    .line 204
    .local v0, "count":I
    :goto_0
    if-eqz v3, :cond_9

    #@29
    if-gt v4, v8, :cond_4

    #@2b
    if-le v5, v8, :cond_8

    #@2d
    .line 205
    :cond_4
    if-le v4, v8, :cond_5

    #@2f
    .line 206
    shr-int/lit8 v4, v4, 0x1

    #@31
    .line 208
    :cond_5
    if-le v5, v8, :cond_6

    #@33
    .line 209
    shr-int/lit8 v5, v5, 0x1

    #@35
    .line 211
    :cond_6
    if-le v6, v8, :cond_7

    #@37
    .line 212
    shr-int/lit8 v6, v6, 0x1

    #@39
    .line 215
    :cond_7
    mul-int v7, v4, v5

    #@3b
    mul-int/2addr v7, v6

    #@3c
    mul-int/2addr v7, v2

    #@3d
    add-int/2addr v0, v7

    #@3e
    goto :goto_0

    #@3f
    .line 204
    :cond_8
    if-gt v6, v8, :cond_4

    #@41
    .line 218
    :cond_9
    iget-object v7, p0, Landroid/renderscript/Type;->mArrays:[I

    #@43
    if-eqz v7, :cond_a

    #@45
    .line 219
    const/4 v1, 0x0

    #@46
    .local v1, "ct":I
    :goto_1
    iget-object v7, p0, Landroid/renderscript/Type;->mArrays:[I

    #@48
    array-length v7, v7

    #@49
    if-ge v1, v7, :cond_a

    #@4b
    .line 220
    iget-object v7, p0, Landroid/renderscript/Type;->mArrays:[I

    #@4d
    aget v7, v7, v1

    #@4f
    mul-int/2addr v0, v7

    #@50
    .line 219
    add-int/lit8 v1, v1, 0x1

    #@52
    goto :goto_1

    #@53
    .line 224
    .end local v1    # "ct":I
    :cond_a
    iput v0, p0, Landroid/renderscript/Type;->mElementCount:I

    #@55
    .line 183
    return-void
.end method

.method public getArray(I)I
    .locals 2
    .param p1, "arrayNum"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 160
    if-ltz p1, :cond_0

    #@3
    const/4 v0, 0x4

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 161
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@8
    const-string/jumbo v1, "Array dimension out of range."

    #@b
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 164
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    #@11
    if-eqz v0, :cond_2

    #@13
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    #@15
    array-length v0, v0

    #@16
    if-lt p1, v0, :cond_3

    #@18
    .line 166
    :cond_2
    return v1

    #@19
    .line 169
    :cond_3
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    #@1b
    aget v0, v0, p1

    #@1d
    return v0
.end method

.method public getArrayCount()I
    .locals 1

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    #@6
    array-length v0, v0

    #@7
    return v0

    #@8
    .line 180
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 149
    iget v0, p0, Landroid/renderscript/Type;->mElementCount:I

    #@2
    return v0
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@2
    return-object v0
.end method

.method public getX()I
    .locals 1

    #@0
    .prologue
    .line 94
    iget v0, p0, Landroid/renderscript/Type;->mDimX:I

    #@2
    return v0
.end method

.method public getY()I
    .locals 1

    #@0
    .prologue
    .line 103
    iget v0, p0, Landroid/renderscript/Type;->mDimY:I

    #@2
    return v0
.end method

.method public getYuv()I
    .locals 1

    #@0
    .prologue
    .line 122
    iget v0, p0, Landroid/renderscript/Type;->mDimYuv:I

    #@2
    return v0
.end method

.method public getZ()I
    .locals 1

    #@0
    .prologue
    .line 112
    iget v0, p0, Landroid/renderscript/Type;->mDimZ:I

    #@2
    return v0
.end method

.method public hasFaces()Z
    .locals 1

    #@0
    .prologue
    .line 140
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimFaces:Z

    #@2
    return v0
.end method

.method public hasMipmaps()Z
    .locals 1

    #@0
    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    #@2
    return v0
.end method

.method updateFromNative()V
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x1

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 236
    const/4 v1, 0x6

    #@5
    new-array v0, v1, [J

    #@7
    .line 237
    .local v0, "dataBuffer":[J
    iget-object v1, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    #@9
    iget-object v6, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    #@b
    invoke-virtual {p0, v6}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@e
    move-result-wide v6

    #@f
    invoke-virtual {v1, v6, v7, v0}, Landroid/renderscript/RenderScript;->nTypeGetNativeData(J[J)V

    #@12
    .line 239
    aget-wide v6, v0, v5

    #@14
    long-to-int v1, v6

    #@15
    iput v1, p0, Landroid/renderscript/Type;->mDimX:I

    #@17
    .line 240
    aget-wide v6, v0, v4

    #@19
    long-to-int v1, v6

    #@1a
    iput v1, p0, Landroid/renderscript/Type;->mDimY:I

    #@1c
    .line 241
    const/4 v1, 0x2

    #@1d
    aget-wide v6, v0, v1

    #@1f
    long-to-int v1, v6

    #@20
    iput v1, p0, Landroid/renderscript/Type;->mDimZ:I

    #@22
    .line 242
    const/4 v1, 0x3

    #@23
    aget-wide v6, v0, v1

    #@25
    cmp-long v1, v6, v8

    #@27
    if-nez v1, :cond_1

    #@29
    move v1, v4

    #@2a
    :goto_0
    iput-boolean v1, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    #@2c
    .line 243
    const/4 v1, 0x4

    #@2d
    aget-wide v6, v0, v1

    #@2f
    cmp-long v1, v6, v8

    #@31
    if-nez v1, :cond_2

    #@33
    :goto_1
    iput-boolean v4, p0, Landroid/renderscript/Type;->mDimFaces:Z

    #@35
    .line 245
    const/4 v1, 0x5

    #@36
    aget-wide v2, v0, v1

    #@38
    .line 246
    .local v2, "elementID":J
    const-wide/16 v4, 0x0

    #@3a
    cmp-long v1, v2, v4

    #@3c
    if-eqz v1, :cond_0

    #@3e
    .line 247
    new-instance v1, Landroid/renderscript/Element;

    #@40
    iget-object v4, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    #@42
    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;)V

    #@45
    iput-object v1, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@47
    .line 248
    iget-object v1, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@49
    invoke-virtual {v1}, Landroid/renderscript/Element;->updateFromNative()V

    #@4c
    .line 250
    :cond_0
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    #@4f
    .line 233
    return-void

    #@50
    .end local v2    # "elementID":J
    :cond_1
    move v1, v5

    #@51
    .line 242
    goto :goto_0

    #@52
    :cond_2
    move v4, v5

    #@53
    .line 243
    goto :goto_1
.end method
