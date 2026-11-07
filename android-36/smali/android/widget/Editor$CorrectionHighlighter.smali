.class Landroid/widget/Editor$CorrectionHighlighter;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorrectionHighlighter"
.end annotation


# static fields
.field private static final greylist-max-o FADE_OUT_DURATION:I = 0x190


# instance fields
.field private greylist-max-o mEnd:I

.field private greylist-max-o mFadingStartTime:J

.field private final greylist-max-o mPaint:Landroid/graphics/Paint;

.field private final greylist-max-o mPath:Landroid/graphics/Path;

.field private greylist-max-o mStart:I

.field private greylist-max-o mTempRectF:Landroid/graphics/RectF;

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$minvalidate(Landroid/widget/Editor$CorrectionHighlighter;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/Editor;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 7331
    iput-object p1, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7324
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    .line 7325
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    .line 7332
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    .line 7333
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 7332
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 7334
    iget-object p1, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7335
    return-void
.end method

.method private greylist-max-o invalidate(Z)V
    .registers 9
    .param p1, "delayed"    # Z

    .line 7395
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 7397
    :cond_d
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_18

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    .line 7398
    :cond_18
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 7400
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 7401
    .local v0, "left":I
    iget-object v1, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 7403
    .local v1, "top":I
    if-eqz p1, :cond_64

    .line 7404
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    add-int/2addr v3, v0

    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    add-int/2addr v5, v0

    iget-object v6, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->postInvalidateOnAnimation(IIII)V

    goto :goto_81

    .line 7408
    :cond_64
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->postInvalidate(IIII)V

    .line 7411
    :goto_81
    return-void
.end method

.method private greylist-max-o stopAnimation()V
    .registers 3

    .line 7414
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor;->-$$Nest$fputmCorrectionHighlighter(Landroid/widget/Editor;Landroid/widget/Editor$CorrectionHighlighter;)V

    .line 7415
    return-void
.end method

.method private greylist-max-o updatePaint()Z
    .registers 7

    .line 7366
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->mFadingStartTime:J

    sub-long/2addr v0, v2

    .line 7367
    .local v0, "duration":J
    const-wide/16 v2, 0x190

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    const/4 v2, 0x0

    return v2

    .line 7369
    :cond_f
    long-to-float v2, v0

    const/high16 v3, 0x43c80000    # 400.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    .line 7370
    .local v3, "coef":F
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mHighlightColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 7371
    .local v2, "highlightColorAlpha":I
    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    iget v4, v4, Landroid/widget/TextView;->mHighlightColor:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v5, v3

    float-to-int v5, v5

    shl-int/lit8 v5, v5, 0x18

    add-int/2addr v4, v5

    .line 7373
    .local v4, "color":I
    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 7374
    const/4 v5, 0x1

    return v5
.end method

.method private greylist-max-o updatePath()Z
    .registers 8

    .line 7378
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 7379
    .local v0, "layout":Landroid/text/Layout;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 7382
    :cond_e
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 7383
    .local v2, "length":I
    iget v3, p0, Landroid/widget/Editor$CorrectionHighlighter;->mStart:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 7384
    .local v3, "start":I
    iget v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mEnd:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 7386
    .local v4, "end":I
    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 7387
    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    .line 7388
    invoke-virtual {v5, v3, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    .line 7389
    invoke-virtual {v6, v4, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v1

    iget-object v6, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    .line 7387
    invoke-virtual {v0, v5, v1, v6}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 7391
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public greylist-max-o draw(Landroid/graphics/Canvas;I)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cursorOffsetVertical"    # I

    .line 7348
    invoke-direct {p0}, Landroid/widget/Editor$CorrectionHighlighter;->updatePath()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0}, Landroid/widget/Editor$CorrectionHighlighter;->updatePaint()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 7349
    const/4 v0, 0x0

    if-eqz p2, :cond_13

    .line 7350
    int-to-float v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7353
    :cond_13
    iget-object v1, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 7355
    if-eqz p2, :cond_21

    .line 7356
    neg-int v1, p2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7358
    :cond_21
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V

    goto :goto_2d

    .line 7360
    :cond_26
    invoke-direct {p0}, Landroid/widget/Editor$CorrectionHighlighter;->stopAnimation()V

    .line 7361
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V

    .line 7363
    :goto_2d
    return-void
.end method

.method public greylist-max-o highlight(Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 7338
    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getOffset()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mStart:I

    .line 7339
    iget v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mStart:I

    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getNewText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mEnd:I

    .line 7340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mFadingStartTime:J

    .line 7342
    iget v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mStart:I

    if-ltz v0, :cond_21

    iget v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mEnd:I

    if-gez v0, :cond_24

    .line 7343
    :cond_21
    invoke-direct {p0}, Landroid/widget/Editor$CorrectionHighlighter;->stopAnimation()V

    .line 7345
    :cond_24
    return-void
.end method
