.class public Landroid/renderscript/Type;
.super Landroid/renderscript/BaseObj;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Type$Builder;,
        Landroid/renderscript/Type$CubemapFace;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final greylist-max-o mMaxArrays:I = 0x4


# instance fields
.field greylist-max-o mArrays:[I

.field greylist-max-o mDimFaces:Z

.field greylist-max-o mDimMipmaps:Z

.field greylist-max-o mDimX:I

.field greylist-max-o mDimY:I

.field greylist-max-o mDimYuv:I

.field greylist-max-o mDimZ:I

.field greylist-max-o mElement:Landroid/renderscript/Element;

.field greylist-max-o mElementCount:I


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 234
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 235
    return-void
.end method

.method public static whitelist createX(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .registers 13
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "dimX"    # I

    .line 269
    const/4 v0, 0x1

    if-lt p2, v0, :cond_1f

    .line 273
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p2

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p2    # "dimX":I
    .local v1, "rs":Landroid/renderscript/RenderScript;
    .local v4, "dimX":I
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v2

    .line 274
    .local v2, "id":J
    new-instance p0, Landroid/renderscript/Type;

    invoke-direct {p0, v2, v3, v1}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 275
    .local p0, "t":Landroid/renderscript/Type;
    iput-object p1, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 276
    iput v4, p0, Landroid/renderscript/Type;->mDimX:I

    .line 277
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 278
    return-object p0

    .line 270
    .end local v1    # "rs":Landroid/renderscript/RenderScript;
    .end local v2    # "id":J
    .end local v4    # "dimX":I
    .local p0, "rs":Landroid/renderscript/RenderScript;
    .restart local p2    # "dimX":I
    :cond_1f
    move-object v1, p0

    move v4, p2

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p2    # "dimX":I
    .restart local v1    # "rs":Landroid/renderscript/RenderScript;
    .restart local v4    # "dimX":I
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p2, "Dimension must be >= 1."

    invoke-direct {p0, p2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;
    .registers 14
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "dimX"    # I
    .param p3, "dimY"    # I

    .line 293
    const/4 v0, 0x1

    if-lt p2, v0, :cond_23

    if-lt p3, v0, :cond_23

    .line 297
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p2

    move v5, p3

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p2    # "dimX":I
    .end local p3    # "dimY":I
    .local v1, "rs":Landroid/renderscript/RenderScript;
    .local v4, "dimX":I
    .local v5, "dimY":I
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide p2

    .line 298
    .local p2, "id":J
    new-instance p0, Landroid/renderscript/Type;

    invoke-direct {p0, p2, p3, v1}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 299
    .local p0, "t":Landroid/renderscript/Type;
    iput-object p1, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 300
    iput v4, p0, Landroid/renderscript/Type;->mDimX:I

    .line 301
    iput v5, p0, Landroid/renderscript/Type;->mDimY:I

    .line 302
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 303
    return-object p0

    .line 293
    .end local v1    # "rs":Landroid/renderscript/RenderScript;
    .end local v4    # "dimX":I
    .end local v5    # "dimY":I
    .local p0, "rs":Landroid/renderscript/RenderScript;
    .local p2, "dimX":I
    .restart local p3    # "dimY":I
    :cond_23
    move-object v1, p0

    move v4, p2

    move v5, p3

    .line 294
    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p2    # "dimX":I
    .end local p3    # "dimY":I
    .restart local v1    # "rs":Landroid/renderscript/RenderScript;
    .restart local v4    # "dimX":I
    .restart local v5    # "dimY":I
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p2, "Dimension must be >= 1."

    invoke-direct {p0, p2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist createXYZ(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;III)Landroid/renderscript/Type;
    .registers 15
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "dimX"    # I
    .param p3, "dimY"    # I
    .param p4, "dimZ"    # I

    .line 319
    const/4 v0, 0x1

    if-lt p2, v0, :cond_27

    if-lt p3, v0, :cond_27

    if-lt p4, v0, :cond_27

    .line 323
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p2    # "dimX":I
    .end local p3    # "dimY":I
    .end local p4    # "dimZ":I
    .local v1, "rs":Landroid/renderscript/RenderScript;
    .local v4, "dimX":I
    .local v5, "dimY":I
    .local v6, "dimZ":I
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide p2

    .line 324
    .local p2, "id":J
    new-instance p0, Landroid/renderscript/Type;

    invoke-direct {p0, p2, p3, v1}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 325
    .local p0, "t":Landroid/renderscript/Type;
    iput-object p1, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 326
    iput v4, p0, Landroid/renderscript/Type;->mDimX:I

    .line 327
    iput v5, p0, Landroid/renderscript/Type;->mDimY:I

    .line 328
    iput v6, p0, Landroid/renderscript/Type;->mDimZ:I

    .line 329
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 330
    return-object p0

    .line 319
    .end local v1    # "rs":Landroid/renderscript/RenderScript;
    .end local v4    # "dimX":I
    .end local v5    # "dimY":I
    .end local v6    # "dimZ":I
    .local p0, "rs":Landroid/renderscript/RenderScript;
    .local p2, "dimX":I
    .restart local p3    # "dimY":I
    .restart local p4    # "dimZ":I
    :cond_27
    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p4

    .line 320
    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p2    # "dimX":I
    .end local p3    # "dimY":I
    .end local p4    # "dimZ":I
    .restart local v1    # "rs":Landroid/renderscript/RenderScript;
    .restart local v4    # "dimX":I
    .restart local v5    # "dimY":I
    .restart local v6    # "dimZ":I
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p2, "Dimension must be >= 1."

    invoke-direct {p0, p2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method greylist-max-o calcElementCount()V
    .registers 9

    .line 189
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    .line 190
    .local v0, "hasLod":Z
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .line 191
    .local v1, "x":I
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    .line 192
    .local v2, "y":I
    invoke-virtual {p0}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    .line 193
    .local v3, "z":I
    const/4 v4, 0x1

    .line 194
    .local v4, "faces":I
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 195
    const/4 v4, 0x6

    .line 197
    :cond_18
    if-nez v1, :cond_1b

    .line 198
    const/4 v1, 0x1

    .line 200
    :cond_1b
    if-nez v2, :cond_1e

    .line 201
    const/4 v2, 0x1

    .line 203
    :cond_1e
    if-nez v3, :cond_21

    .line 204
    const/4 v3, 0x1

    .line 207
    :cond_21
    mul-int v5, v1, v2

    mul-int/2addr v5, v3

    mul-int/2addr v5, v4

    .line 209
    .local v5, "count":I
    :goto_25
    if-eqz v0, :cond_40

    const/4 v6, 0x1

    if-gt v1, v6, :cond_2e

    if-gt v2, v6, :cond_2e

    if-le v3, v6, :cond_40

    .line 210
    :cond_2e
    if-le v1, v6, :cond_32

    .line 211
    shr-int/lit8 v1, v1, 0x1

    .line 213
    :cond_32
    if-le v2, v6, :cond_36

    .line 214
    shr-int/lit8 v2, v2, 0x1

    .line 216
    :cond_36
    if-le v3, v6, :cond_3a

    .line 217
    shr-int/lit8 v3, v3, 0x1

    .line 220
    :cond_3a
    mul-int v6, v1, v2

    mul-int/2addr v6, v3

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    goto :goto_25

    .line 223
    :cond_40
    iget-object v6, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v6, :cond_52

    .line 224
    const/4 v6, 0x0

    .local v6, "ct":I
    :goto_45
    iget-object v7, p0, Landroid/renderscript/Type;->mArrays:[I

    array-length v7, v7

    if-ge v6, v7, :cond_52

    .line 225
    iget-object v7, p0, Landroid/renderscript/Type;->mArrays:[I

    aget v7, v7, v6

    mul-int/2addr v5, v7

    .line 224
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 229
    .end local v6    # "ct":I
    :cond_52
    iput v5, p0, Landroid/renderscript/Type;->mElementCount:I

    .line 230
    return-void
.end method

.method public greylist-max-o getArray(I)I
    .registers 4
    .param p1, "arrayNum"    # I

    .line 165
    if-ltz p1, :cond_16

    const/4 v0, 0x4

    if-ge p1, v0, :cond_16

    .line 169
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    array-length v0, v0

    if-lt p1, v0, :cond_f

    goto :goto_14

    .line 174
    :cond_f
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    aget v0, v0, p1

    return v0

    .line 171
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return v0

    .line 166
    :cond_16
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Array dimension out of range."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getArrayCount()I
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    array-length v0, v0

    return v0

    .line 185
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCount()I
    .registers 2

    .line 154
    iget v0, p0, Landroid/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public whitelist getElement()Landroid/renderscript/Element;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    return-object v0
.end method

.method public whitelist getX()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/renderscript/Type;->mDimX:I

    return v0
.end method

.method public whitelist getY()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/renderscript/Type;->mDimY:I

    return v0
.end method

.method public whitelist getYuv()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/renderscript/Type;->mDimYuv:I

    return v0
.end method

.method public whitelist getZ()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public whitelist hasFaces()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public whitelist hasMipmaps()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    return v0
.end method

.method greylist-max-o updateFromNative()V
    .registers 8

    .line 241
    const/4 v0, 0x6

    new-array v0, v0, [J

    .line 242
    .local v0, "dataBuffer":[J
    iget-object v1, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/renderscript/RenderScript;->nTypeGetNativeData(J[J)V

    .line 244
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    long-to-int v2, v2

    iput v2, p0, Landroid/renderscript/Type;->mDimX:I

    .line 245
    const/4 v2, 0x1

    aget-wide v3, v0, v2

    long-to-int v3, v3

    iput v3, p0, Landroid/renderscript/Type;->mDimY:I

    .line 246
    const/4 v3, 0x2

    aget-wide v3, v0, v3

    long-to-int v3, v3

    iput v3, p0, Landroid/renderscript/Type;->mDimZ:I

    .line 247
    const/4 v3, 0x3

    aget-wide v3, v0, v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2b

    move v3, v2

    goto :goto_2c

    :cond_2b
    move v3, v1

    :goto_2c
    iput-boolean v3, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 248
    const/4 v3, 0x4

    aget-wide v3, v0, v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_36

    move v1, v2

    :cond_36
    iput-boolean v1, p0, Landroid/renderscript/Type;->mDimFaces:Z

    .line 250
    const/4 v1, 0x5

    aget-wide v1, v0, v1

    .line 251
    .local v1, "elementID":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_4f

    .line 252
    new-instance v3, Landroid/renderscript/Element;

    iget-object v4, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v3, v1, v2, v4}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v3, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 253
    iget-object v3, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v3}, Landroid/renderscript/Element;->updateFromNative()V

    .line 255
    :cond_4f
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 256
    return-void
.end method
