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
.field private static final FADE_OUT_DURATION:I = 0x190


# instance fields
.field private mEnd:I

.field private mFadingStartTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mStart:I

.field private mTempRectF:Landroid/graphics/RectF;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -wrap0(Landroid/widget/Editor$CorrectionHighlighter;Z)V
    .locals 0
    .param p1, "delayed"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    .line 4939
    iput-object p1, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4932
    new-instance v0, Landroid/graphics/Path;

    #@7
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@a
    iput-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    #@c
    .line 4933
    new-instance v0, Landroid/graphics/Paint;

    #@e
    const/4 v1, 0x1

    #@f
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@12
    iput-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    #@14
    .line 4940
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    #@16
    invoke-static {p1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@21
    move-result-object v1

    #@22
    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    #@27
    .line 4942
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    #@29
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@2b
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@2e
    .line 4939
    return-void
.end method

.method private invalidate(Z)V
    .locals 7
    .param p1, "delayed"    # Z

    #@0
    .prologue
    .line 5000
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@9
    move-result-object v2

    #@a
    if-nez v2, :cond_0

    #@c
    return-void

    #@d
    .line 5002
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    #@f
    if-nez v2, :cond_1

    #@11
    new-instance v2, Landroid/graphics/RectF;

    #@13
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    #@16
    iput-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    #@18
    .line 5003
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    #@1a
    iget-object v3, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    #@20
    .line 5005
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #@22
    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@29
    move-result v0

    #@2a
    .line 5006
    .local v0, "left":I
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #@2c
    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@33
    move-result v2

    #@34
    iget-object v3, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #@36
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@39
    move-result-object v3

    #@3a
    const/4 v4, 0x1

    #@3b
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@3e
    move-result v3

    #@3f
    add-int v1, v2, v3

    #@41
    .line 5008
    .local v1, "top":I
    if-eqz p1, :cond_2

    #@43
    .line 5009
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #@45
    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@48
    move-result-object v2

    #@49
    .line 5010
    iget-object v3, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    #@4b
    iget v3, v3, Landroid/graphics/RectF;->left:F

    #@4d
    float-to-int v3, v3

    #@4e
    add-int/2addr v3, v0

    #@4f
    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    #@51
    iget v4, v4, Landroid/graphics/RectF;->top:F

    #@53
    float-to-int v4, v4

    #@54
    add-int/2addr v4, v1

    #@55
    .line 5011
    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    #@57
    iget v5, v5, Landroid/graphics/RectF;->right:F

    #@59
    float-to-int v5, v5

    #@5a
    add-int/2addr v5, v0

    #@5b
    iget-object v6, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    #@5d
    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    #@5f
    float-to-int v6, v6

    #@60
    add-int/2addr v6, v1

    #@61
    .line 5009
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->postInvalidateOnAnimation(IIII)V

    #@64
    .line 4999
    :goto_0
    return-void

    #@65
    .line 5013
    :cond_2
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #@67
    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@6a
    move-result-object v2

    #@6b
    iget-object v3, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    #@6d
    iget v3, v3, Landroid/graphics/RectF;->left:F

    #@6f
    float-to-int v3, v3

    #@70
    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    #@72
    iget v4, v4, Landroid/graphics/RectF;->top:F

    #@74
    float-to-int v4, v4

    #@75
    .line 5014
    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    #@77
    iget v5, v5, Landroid/graphics/RectF;->right:F

    #@79
    float-to-int v5, v5

    #@7a
    iget-object v6, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    #@7c
    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    #@7e
    float-to-int v6, v6

    #@7f
    .line 5013
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->postInvalidate(IIII)V

    #@82
    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    #@0
    .prologue
    .line 5019
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #@2
    const/4 v1, 0x0

    #@3
    iput-object v1, v0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    #@5
    .line 5018
    return-void
.end method

.method private updatePaint()Z
    .locals 10

    #@0
    .prologue
    .line 4974
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v6

    #@4
    iget-wide v8, p0, Landroid/widget/Editor$CorrectionHighlighter;->mFadingStartTime:J

    #@6
    sub-long v2, v6, v8

    #@8
    .line 4975
    .local v2, "duration":J
    const-wide/16 v6, 0x190

    #@a
    cmp-long v5, v2, v6

    #@c
    if-lez v5, :cond_0

    #@e
    const/4 v5, 0x0

    #@f
    return v5

    #@10
    .line 4977
    :cond_0
    long-to-float v5, v2

    #@11
    const/high16 v6, 0x43c80000    # 400.0f

    #@13
    div-float/2addr v5, v6

    #@14
    const/high16 v6, 0x3f800000    # 1.0f

    #@16
    sub-float v0, v6, v5

    #@18
    .line 4978
    .local v0, "coef":F
    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #@1a
    invoke-static {v5}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1d
    move-result-object v5

    #@1e
    iget v5, v5, Landroid/widget/TextView;->mHighlightColor:I

    #@20
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    #@23
    move-result v4

    #@24
    .line 4979
    .local v4, "highlightColorAlpha":I
    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #@26
    invoke-static {v5}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@29
    move-result-object v5

    #@2a
    iget v5, v5, Landroid/widget/TextView;->mHighlightColor:I

    #@2c
    const v6, 0xffffff

    #@2f
    and-int/2addr v5, v6

    #@30
    .line 4980
    int-to-float v6, v4

    #@31
    mul-float/2addr v6, v0

    #@32
    float-to-int v6, v6

    #@33
    shl-int/lit8 v6, v6, 0x18

    #@35
    .line 4979
    add-int v1, v5, v6

    #@37
    .line 4981
    .local v1, "color":I
    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    #@39
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@3c
    .line 4982
    const/4 v5, 0x1

    #@3d
    return v5
.end method

.method private updatePath()Z
    .locals 5

    #@0
    .prologue
    .line 4986
    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@9
    move-result-object v1

    #@a
    .line 4987
    .local v1, "layout":Landroid/text/Layout;
    if-nez v1, :cond_0

    #@c
    const/4 v4, 0x0

    #@d
    return v4

    #@e
    .line 4990
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #@10
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@17
    move-result-object v4

    #@18
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    #@1b
    move-result v2

    #@1c
    .line 4991
    .local v2, "length":I
    iget v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mStart:I

    #@1e
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    #@21
    move-result v3

    #@22
    .line 4992
    .local v3, "start":I
    iget v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mEnd:I

    #@24
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    #@27
    move-result v0

    #@28
    .line 4994
    .local v0, "end":I
    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    #@2a
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    #@2d
    .line 4995
    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    #@2f
    invoke-virtual {v1, v3, v0, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    #@32
    .line 4996
    const/4 v4, 0x1

    #@33
    return v4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;I)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cursorOffsetVertical"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 4956
    invoke-direct {p0}, Landroid/widget/Editor$CorrectionHighlighter;->updatePath()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_2

    #@8
    invoke-direct {p0}, Landroid/widget/Editor$CorrectionHighlighter;->updatePaint()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 4957
    if-eqz p2, :cond_0

    #@10
    .line 4958
    int-to-float v0, p2

    #@11
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    #@14
    .line 4961
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    #@16
    iget-object v1, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    #@18
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@1b
    .line 4963
    if-eqz p2, :cond_1

    #@1d
    .line 4964
    neg-int v0, p2

    #@1e
    int-to-float v0, v0

    #@1f
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    #@22
    .line 4966
    :cond_1
    const/4 v0, 0x1

    #@23
    invoke-direct {p0, v0}, Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V

    #@26
    .line 4955
    :goto_0
    return-void

    #@27
    .line 4968
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor$CorrectionHighlighter;->stopAnimation()V

    #@2a
    .line 4969
    invoke-direct {p0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V

    #@2d
    goto :goto_0
.end method

.method public highlight(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    #@0
    .prologue
    .line 4946
    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getOffset()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mStart:I

    #@6
    .line 4947
    iget v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mStart:I

    #@8
    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getNewText()Ljava/lang/CharSequence;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@f
    move-result v1

    #@10
    add-int/2addr v0, v1

    #@11
    iput v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mEnd:I

    #@13
    .line 4948
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@16
    move-result-wide v0

    #@17
    iput-wide v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mFadingStartTime:J

    #@19
    .line 4950
    iget v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mStart:I

    #@1b
    if-ltz v0, :cond_0

    #@1d
    iget v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mEnd:I

    #@1f
    if-gez v0, :cond_1

    #@21
    .line 4951
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$CorrectionHighlighter;->stopAnimation()V

    #@24
    .line 4945
    :cond_1
    return-void
.end method
