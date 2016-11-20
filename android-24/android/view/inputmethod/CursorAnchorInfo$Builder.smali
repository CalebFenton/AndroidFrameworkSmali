.class public final Landroid/view/inputmethod/CursorAnchorInfo$Builder;
.super Ljava/lang/Object;
.source "CursorAnchorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/CursorAnchorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

.field private mComposingText:Ljava/lang/CharSequence;

.field private mComposingTextStart:I

.field private mInsertionMarkerBaseline:F

.field private mInsertionMarkerBottom:F

.field private mInsertionMarkerFlags:I

.field private mInsertionMarkerHorizontal:F

.field private mInsertionMarkerTop:F

.field private mMatrixInitialized:Z

.field private mMatrixValues:[F

.field private mSelectionEnd:I

.field private mSelectionStart:I


# direct methods
.method static synthetic -get0(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    #@2
    return v0
.end method

.method static synthetic -get11(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    #@2
    return v0
.end method

.method static synthetic -get7(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    #@2
    return v0
.end method

.method static synthetic -get8(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    #@2
    return v0
.end method

.method static synthetic -get9(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)[F
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, -0x1

    #@3
    const/high16 v0, 0x7fc00000    # NaNf

    #@5
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 258
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    #@a
    .line 259
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    #@c
    .line 260
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    #@e
    .line 261
    iput-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    #@10
    .line 262
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    #@12
    .line 263
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    #@14
    .line 264
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    #@16
    .line 265
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    #@18
    .line 266
    iput v3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    #@1a
    .line 267
    iput-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@1c
    .line 268
    iput-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    #@1e
    .line 269
    iput-boolean v3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    #@20
    .line 257
    return-void
.end method


# virtual methods
.method public addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 7
    .param p1, "index"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "flags"    # I

    #@0
    .prologue
    .line 347
    if-gez p1, :cond_0

    #@2
    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "index must not be a negative integer."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 350
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 351
    new-instance v0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@11
    invoke-direct {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;-><init>()V

    #@14
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@16
    .line 353
    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@18
    move v1, p1

    #@19
    move v2, p2

    #@1a
    move v3, p3

    #@1b
    move v4, p4

    #@1c
    move v5, p5

    #@1d
    move v6, p6

    #@1e
    invoke-virtual/range {v0 .. v6}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->append(IFFFFI)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@21
    .line 354
    return-object p0
.end method

.method public build()Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 377
    iget-boolean v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    #@4
    if-nez v1, :cond_1

    #@6
    .line 380
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 381
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@c
    invoke-virtual {v1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->isEmpty()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 382
    .local v0, "hasCharacterBounds":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    #@14
    .line 383
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    #@16
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_3

    #@1c
    .line 384
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    #@1e
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_3

    #@24
    .line 385
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    #@26
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 386
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    #@2e
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_3

    #@34
    .line 391
    .end local v0    # "hasCharacterBounds":Z
    :cond_1
    new-instance v1, Landroid/view/inputmethod/CursorAnchorInfo;

    #@36
    invoke-direct {v1, p0, v2}, Landroid/view/inputmethod/CursorAnchorInfo;-><init>(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/view/inputmethod/CursorAnchorInfo;)V

    #@39
    return-object v1

    #@3a
    .line 381
    :cond_2
    const/4 v0, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 387
    .restart local v0    # "hasCharacterBounds":Z
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@3e
    const-string/jumbo v2, "Coordinate transformation matrix is required when positional parameters are specified."

    #@41
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v1
.end method

.method public reset()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, -0x1

    #@3
    const/high16 v0, 0x7fc00000    # NaNf

    #@5
    .line 399
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    #@7
    .line 400
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    #@9
    .line 401
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    #@b
    .line 402
    iput-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    #@d
    .line 403
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    #@f
    .line 404
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    #@11
    .line 405
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    #@13
    .line 406
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    #@15
    .line 407
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    #@17
    .line 408
    iput-boolean v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    #@19
    .line 409
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 410
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@1f
    invoke-virtual {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->reset()V

    #@22
    .line 398
    :cond_0
    return-void
.end method

.method public setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 1
    .param p1, "composingTextStart"    # I
    .param p2, "composingText"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 289
    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    #@3
    .line 290
    if-nez p2, :cond_0

    #@5
    .line 291
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    #@7
    .line 296
    :goto_0
    return-object p0

    #@8
    .line 294
    :cond_0
    new-instance v0, Landroid/text/SpannedString;

    #@a
    invoke-direct {v0, p2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    #@d
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    #@f
    goto :goto_0
.end method

.method public setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 0
    .param p1, "horizontalPosition"    # F
    .param p2, "lineTop"    # F
    .param p3, "lineBaseline"    # F
    .param p4, "lineBottom"    # F
    .param p5, "flags"    # I

    #@0
    .prologue
    .line 322
    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    #@2
    .line 323
    iput p2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    #@4
    .line 324
    iput p3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    #@6
    .line 325
    iput p4, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    #@8
    .line 326
    iput p5, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    #@a
    .line 327
    return-object p0
.end method

.method public setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 363
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    #@2
    if-nez v0, :cond_0

    #@4
    .line 364
    const/16 v0, 0x9

    #@6
    new-array v0, v0, [F

    #@8
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    #@a
    .line 366
    :cond_0
    if-eqz p1, :cond_1

    #@c
    .end local p1    # "matrix":Landroid/graphics/Matrix;
    :goto_0
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    #@e
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    #@11
    .line 367
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    #@14
    .line 368
    return-object p0

    #@15
    .line 366
    .restart local p1    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    sget-object p1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@17
    goto :goto_0
.end method

.method public setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 0
    .param p1, "newStart"    # I
    .param p2, "newEnd"    # I

    #@0
    .prologue
    .line 276
    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    #@2
    .line 277
    iput p2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    #@4
    .line 278
    return-object p0
.end method
