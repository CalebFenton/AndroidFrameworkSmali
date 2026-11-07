.class public Landroid/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field greylist-max-o mArray:[I

.field greylist-max-o mDimFaces:Z

.field greylist-max-o mDimMipmaps:Z

.field greylist-max-o mDimX:I

.field greylist-max-o mDimY:I

.field greylist-max-o mDimZ:I

.field greylist-max-o mElement:Landroid/renderscript/Element;

.field greylist-max-o mRS:Landroid/renderscript/RenderScript;

.field greylist-max-o mYuv:I


# direct methods
.method public constructor whitelist <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .registers 4
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "e"    # Landroid/renderscript/Element;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/4 v0, 0x1

    iput v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 345
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    .line 356
    invoke-virtual {p2}, Landroid/renderscript/Element;->checkValid()V

    .line 357
    iput-object p1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 358
    iput-object p2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    .line 359
    return-void
.end method


# virtual methods
.method public whitelist create()Landroid/renderscript/Type;
    .registers 12

    .line 447
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    const/4 v1, 0x1

    if-lez v0, :cond_22

    .line 448
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-lt v0, v1, :cond_1a

    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-lt v0, v1, :cond_1a

    .line 451
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v0, :cond_12

    goto :goto_22

    .line 452
    :cond_12
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps not supported with 3D types."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_1a
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Both X and Y dimension required when Z is present."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_22
    :goto_22
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-lez v0, :cond_33

    .line 456
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-lt v0, v1, :cond_2b

    goto :goto_33

    .line 457
    :cond_2b
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "X dimension required when Y is present."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_33
    :goto_33
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v0, :cond_44

    .line 461
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-lt v0, v1, :cond_3c

    goto :goto_44

    .line 462
    :cond_3c
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps require 2D Types."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_44
    :goto_44
    iget v0, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    if-eqz v0, :cond_5d

    .line 467
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    if-nez v0, :cond_55

    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v0, :cond_55

    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    if-nez v0, :cond_55

    goto :goto_5d

    .line 468
    :cond_55
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "YUV only supports basic 2D."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_5d
    :goto_5d
    const/4 v0, 0x0

    .line 473
    .local v0, "arrays":[I
    const/4 v1, 0x3

    .local v1, "ct":I
    :goto_5f
    if-ltz v1, :cond_7f

    .line 474
    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    aget v2, v2, v1

    if-eqz v2, :cond_6b

    if-nez v0, :cond_6b

    .line 475
    new-array v0, v1, [I

    .line 477
    :cond_6b
    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    aget v2, v2, v1

    if-nez v2, :cond_7c

    if-nez v0, :cond_74

    goto :goto_7c

    .line 478
    :cond_74
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string v3, "Array dimensions must be contigous from 0."

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 473
    :cond_7c
    :goto_7c
    add-int/lit8 v1, v1, -0x1

    goto :goto_5f

    .line 482
    .end local v1    # "ct":I
    :cond_7f
    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iget-object v3, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget v5, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iget v6, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iget v7, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v8, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v9, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iget v10, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    invoke-virtual/range {v2 .. v10}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v1

    .line 484
    .local v1, "id":J
    new-instance v3, Landroid/renderscript/Type;

    iget-object v4, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v3, v1, v2, v4}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 485
    .local v3, "t":Landroid/renderscript/Type;
    iget-object v4, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iput-object v4, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 486
    iget v4, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iput v4, v3, Landroid/renderscript/Type;->mDimX:I

    .line 487
    iget v4, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iput v4, v3, Landroid/renderscript/Type;->mDimY:I

    .line 488
    iget v4, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iput v4, v3, Landroid/renderscript/Type;->mDimZ:I

    .line 489
    iget-boolean v4, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v4, v3, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 490
    iget-boolean v4, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v4, v3, Landroid/renderscript/Type;->mDimFaces:Z

    .line 491
    iget v4, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    iput v4, v3, Landroid/renderscript/Type;->mDimYuv:I

    .line 492
    iput-object v0, v3, Landroid/renderscript/Type;->mArrays:[I

    .line 494
    invoke-virtual {v3}, Landroid/renderscript/Type;->calcElementCount()V

    .line 495
    return-object v3
.end method

.method public greylist-max-o setArray(II)Landroid/renderscript/Type$Builder;
    .registers 5
    .param p1, "dim"    # I
    .param p2, "value"    # I

    .line 401
    if-ltz p1, :cond_a

    const/4 v0, 0x4

    if-ge p1, v0, :cond_a

    .line 404
    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    aput p2, v0, p1

    .line 405
    return-object p0

    .line 402
    :cond_a
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Array dimension out of range."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFaces(Z)Landroid/renderscript/Type$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 414
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    .line 415
    return-object p0
.end method

.method public whitelist setMipmaps(Z)Landroid/renderscript/Type$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 409
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    .line 410
    return-object p0
.end method

.method public whitelist setX(I)Landroid/renderscript/Type$Builder;
    .registers 4
    .param p1, "value"    # I

    .line 368
    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    .line 371
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 372
    return-object p0

    .line 369
    :cond_6
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setY(I)Landroid/renderscript/Type$Builder;
    .registers 4
    .param p1, "value"    # I

    .line 376
    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    .line 379
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    .line 380
    return-object p0

    .line 377
    :cond_6
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setYuvFormat(I)Landroid/renderscript/Type$Builder;
    .registers 4
    .param p1, "yuvFormat"    # I

    .line 425
    sparse-switch p1, :sswitch_data_10

    .line 432
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Only ImageFormat.NV21, .YV12, and .YUV_420_888 are supported.."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :sswitch_b
    nop

    .line 436
    iput p1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    .line 437
    return-object p0

    nop

    :sswitch_data_10
    .sparse-switch
        0x11 -> :sswitch_b
        0x23 -> :sswitch_b
        0x32315659 -> :sswitch_b
    .end sparse-switch
.end method

.method public whitelist setZ(I)Landroid/renderscript/Type$Builder;
    .registers 4
    .param p1, "value"    # I

    .line 384
    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    .line 387
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    .line 388
    return-object p0

    .line 385
    :cond_6
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Z are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
