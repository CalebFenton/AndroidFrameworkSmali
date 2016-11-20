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
.field mArray:[I

.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "e"    # Landroid/renderscript/Element;

    #@0
    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 335
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    #@6
    .line 341
    const/4 v0, 0x4

    #@7
    new-array v0, v0, [I

    #@9
    iput-object v0, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    #@b
    .line 352
    invoke-virtual {p2}, Landroid/renderscript/BaseObj;->checkValid()V

    #@e
    .line 353
    iput-object p1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@10
    .line 354
    iput-object p2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    #@12
    .line 351
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/Type;
    .locals 14

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 443
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    #@3
    if-lez v1, :cond_2

    #@5
    .line 444
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    #@7
    if-lt v1, v2, :cond_0

    #@9
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    #@b
    if-ge v1, v2, :cond_1

    #@d
    .line 445
    :cond_0
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    #@f
    const-string/jumbo v2, "Both X and Y dimension required when Z is present."

    #@12
    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 447
    :cond_1
    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 448
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    #@1c
    const-string/jumbo v2, "Cube maps not supported with 3D types."

    #@1f
    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 451
    :cond_2
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    #@25
    if-lez v1, :cond_3

    #@27
    .line 452
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    #@29
    if-ge v1, v2, :cond_3

    #@2b
    .line 453
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    #@2d
    const-string/jumbo v2, "X dimension required when Y is present."

    #@30
    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1

    #@34
    .line 456
    :cond_3
    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    #@36
    if-eqz v1, :cond_4

    #@38
    .line 457
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    #@3a
    if-ge v1, v2, :cond_4

    #@3c
    .line 458
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    #@3e
    const-string/jumbo v2, "Cube maps require 2D Types."

    #@41
    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@44
    throw v1

    #@45
    .line 462
    :cond_4
    iget v1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    #@47
    if-eqz v1, :cond_6

    #@49
    .line 463
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    #@4b
    if-nez v1, :cond_5

    #@4d
    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    #@4f
    if-nez v1, :cond_5

    #@51
    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    #@53
    if-eqz v1, :cond_6

    #@55
    .line 464
    :cond_5
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    #@57
    const-string/jumbo v2, "YUV only supports basic 2D."

    #@5a
    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v1

    #@5e
    .line 468
    :cond_6
    const/4 v0, 0x0

    #@5f
    .line 469
    .local v0, "arrays":[I
    const/4 v10, 0x3

    #@60
    .end local v0    # "arrays":[I
    .local v10, "ct":I
    :goto_0
    if-ltz v10, :cond_9

    #@62
    .line 470
    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    #@64
    aget v1, v1, v10

    #@66
    if-eqz v1, :cond_7

    #@68
    if-nez v0, :cond_7

    #@6a
    .line 471
    new-array v0, v10, [I

    #@6c
    .line 473
    :cond_7
    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    #@6e
    aget v1, v1, v10

    #@70
    if-nez v1, :cond_8

    #@72
    if-eqz v0, :cond_8

    #@74
    .line 474
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    #@76
    const-string/jumbo v2, "Array dimensions must be contigous from 0."

    #@79
    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v1

    #@7d
    .line 469
    :cond_8
    add-int/lit8 v10, v10, -0x1

    #@7f
    goto :goto_0

    #@80
    .line 478
    :cond_9
    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@82
    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    #@84
    iget-object v3, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@86
    invoke-virtual {v2, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    #@89
    move-result-wide v2

    #@8a
    .line 479
    iget v4, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    #@8c
    iget v5, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    #@8e
    iget v6, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    #@90
    iget-boolean v7, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    #@92
    iget-boolean v8, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    #@94
    iget v9, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    #@96
    .line 478
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    #@99
    move-result-wide v12

    #@9a
    .line 480
    .local v12, "id":J
    new-instance v11, Landroid/renderscript/Type;

    #@9c
    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@9e
    invoke-direct {v11, v12, v13, v1}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    #@a1
    .line 481
    .local v11, "t":Landroid/renderscript/Type;
    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    #@a3
    iput-object v1, v11, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@a5
    .line 482
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    #@a7
    iput v1, v11, Landroid/renderscript/Type;->mDimX:I

    #@a9
    .line 483
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    #@ab
    iput v1, v11, Landroid/renderscript/Type;->mDimY:I

    #@ad
    .line 484
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    #@af
    iput v1, v11, Landroid/renderscript/Type;->mDimZ:I

    #@b1
    .line 485
    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    #@b3
    iput-boolean v1, v11, Landroid/renderscript/Type;->mDimMipmaps:Z

    #@b5
    .line 486
    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    #@b7
    iput-boolean v1, v11, Landroid/renderscript/Type;->mDimFaces:Z

    #@b9
    .line 487
    iget v1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    #@bb
    iput v1, v11, Landroid/renderscript/Type;->mDimYuv:I

    #@bd
    .line 488
    iput-object v0, v11, Landroid/renderscript/Type;->mArrays:[I

    #@bf
    .line 490
    invoke-virtual {v11}, Landroid/renderscript/Type;->calcElementCount()V

    #@c2
    .line 491
    return-object v11
.end method

.method public setArray(II)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "dim"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 397
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x4

    #@3
    if-lt p1, v0, :cond_1

    #@5
    .line 398
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@7
    const-string/jumbo v1, "Array dimension out of range."

    #@a
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 400
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    #@10
    aput p2, v0, p1

    #@12
    .line 401
    return-object p0
.end method

.method public setFaces(Z)Landroid/renderscript/Type$Builder;
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 410
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    #@2
    .line 411
    return-object p0
.end method

.method public setMipmaps(Z)Landroid/renderscript/Type$Builder;
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 405
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    #@2
    .line 406
    return-object p0
.end method

.method public setX(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 364
    const/4 v0, 0x1

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 365
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@5
    const-string/jumbo v1, "Values of less than 1 for Dimension X are not valid."

    #@8
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 367
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    #@e
    .line 368
    return-object p0
.end method

.method public setY(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 372
    const/4 v0, 0x1

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 373
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@5
    const-string/jumbo v1, "Values of less than 1 for Dimension Y are not valid."

    #@8
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 375
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    #@e
    .line 376
    return-object p0
.end method

.method public setYuvFormat(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "yuvFormat"    # I

    #@0
    .prologue
    .line 421
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 428
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@5
    .line 429
    const-string/jumbo v1, "Only ImageFormat.NV21, .YV12, and .YUV_420_888 are supported.."

    #@8
    .line 428
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 432
    :sswitch_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    #@e
    .line 433
    return-object p0

    #@f
    .line 421
    nop

    #@10
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x23 -> :sswitch_0
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public setZ(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 380
    const/4 v0, 0x1

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 381
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@5
    const-string/jumbo v1, "Values of less than 1 for Dimension Z are not valid."

    #@8
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 383
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    #@e
    .line 384
    return-object p0
.end method
