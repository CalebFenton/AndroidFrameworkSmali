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

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mMatrixInitialized:Z

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

.method static synthetic -get8(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/graphics/Matrix;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrix:Landroid/graphics/Matrix;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    #@2
    return v0
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
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 247
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    #@a
    .line 248
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    #@c
    .line 249
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    #@e
    .line 250
    iput-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    #@10
    .line 251
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    #@12
    .line 252
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    #@14
    .line 253
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    #@16
    .line 254
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    #@18
    .line 255
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    #@1a
    .line 256
    iput-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@1c
    .line 257
    new-instance v0, Landroid/graphics/Matrix;

    #@1e
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@20
    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@23
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrix:Landroid/graphics/Matrix;

    #@25
    .line 258
    iput-boolean v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    #@27
    .line 246
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
    .line 336
    if-gez p1, :cond_0

    #@2
    .line 337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "index must not be a negative integer."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 339
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 340
    new-instance v0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@11
    invoke-direct {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;-><init>()V

    #@14
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@16
    .line 342
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
    .line 343
    return-object p0
.end method

.method public build()Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 363
    iget-boolean v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 366
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@7
    if-eqz v1, :cond_2

    #@9
    .line 367
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@b
    invoke-virtual {v1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->isEmpty()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    const/4 v0, 0x0

    #@12
    .line 368
    .local v0, "hasCharacterBounds":Z
    :goto_0
    if-nez v0, :cond_3

    #@14
    .line 369
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    #@16
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_3

    #@1c
    .line 370
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    #@1e
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_3

    #@24
    .line 371
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    #@26
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 372
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    #@2e
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_3

    #@34
    .line 377
    .end local v0    # "hasCharacterBounds":Z
    :cond_0
    new-instance v1, Landroid/view/inputmethod/CursorAnchorInfo;

    #@36
    invoke-direct {v1, p0, v2}, Landroid/view/inputmethod/CursorAnchorInfo;-><init>(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/view/inputmethod/CursorAnchorInfo;)V

    #@39
    return-object v1

    #@3a
    .line 367
    :cond_1
    const/4 v0, 0x1

    #@3b
    .restart local v0    # "hasCharacterBounds":Z
    goto :goto_0

    #@3c
    .line 366
    .end local v0    # "hasCharacterBounds":Z
    :cond_2
    const/4 v0, 0x0

    #@3d
    .restart local v0    # "hasCharacterBounds":Z
    goto :goto_0

    #@3e
    .line 373
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@40
    const-string/jumbo v2, "Coordinate transformation matrix is required when positional parameters are specified."

    #@43
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
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
    .line 385
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    #@7
    .line 386
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    #@9
    .line 387
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    #@b
    .line 388
    iput-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    #@d
    .line 389
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    #@f
    .line 390
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    #@11
    .line 391
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    #@13
    .line 392
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    #@15
    .line 393
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    #@17
    .line 394
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrix:Landroid/graphics/Matrix;

    #@19
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@1b
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@1e
    .line 395
    iput-boolean v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    #@20
    .line 396
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 397
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@26
    invoke-virtual {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->reset()V

    #@29
    .line 384
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
    .line 278
    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    #@3
    .line 279
    if-nez p2, :cond_0

    #@5
    .line 280
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    #@7
    .line 285
    :goto_0
    return-object p0

    #@8
    .line 283
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
    .line 311
    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    #@2
    .line 312
    iput p2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    #@4
    .line 313
    iput p3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    #@6
    .line 314
    iput p4, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    #@8
    .line 315
    iput p5, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    #@a
    .line 316
    return-object p0
.end method

.method public setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrix:Landroid/graphics/Matrix;

    #@2
    if-eqz p1, :cond_0

    #@4
    .end local p1    # "matrix":Landroid/graphics/Matrix;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@7
    .line 353
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    #@a
    .line 354
    return-object p0

    #@b
    .line 352
    .restart local p1    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    sget-object p1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@d
    goto :goto_0
.end method

.method public setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 0
    .param p1, "newStart"    # I
    .param p2, "newEnd"    # I

    #@0
    .prologue
    .line 265
    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    #@2
    .line 266
    iput p2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    #@4
    .line 267
    return-object p0
.end method
