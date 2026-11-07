.class final Landroid/widget/Editor$InsertModeController;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InsertModeController"
.end annotation


# instance fields
.field private final blacklist mHighlightPaint:Landroid/graphics/Paint;

.field private final blacklist mHighlightPath:Landroid/graphics/Path;

.field private blacklist mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

.field private blacklist mIsInsertModeActive:Z

.field private final blacklist mTextView:Landroid/widget/TextView;

.field private blacklist mUpdatingTransformationMethod:Z


# direct methods
.method constructor blacklist <init>(Landroid/widget/TextView;)V
    .registers 5
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 8227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8228
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    .line 8229
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    .line 8230
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    .line 8231
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPaint:Landroid/graphics/Paint;

    .line 8232
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPath:Landroid/graphics/Path;

    .line 8235
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 8236
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 8237
    iget-object v1, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 8238
    return-void
.end method

.method private blacklist setTransformationMethod(Landroid/text/method/TransformationMethod;Z)V
    .registers 4
    .param p1, "method"    # Landroid/text/method/TransformationMethod;
    .param p2, "updateText"    # Z

    .line 8309
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mUpdatingTransformationMethod:Z

    .line 8310
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTransformationMethodInternal(Landroid/text/method/TransformationMethod;Z)V

    .line 8311
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mUpdatingTransformationMethod:Z

    .line 8312
    return-void
.end method


# virtual methods
.method blacklist beforeSetText()V
    .registers 2

    .line 8322
    iget-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mUpdatingTransformationMethod:Z

    if-eqz v0, :cond_5

    .line 8323
    return-void

    .line 8327
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$InsertModeController;->exitInsertMode(Z)V

    .line 8328
    return-void
.end method

.method blacklist enterInsertMode(I)Z
    .registers 6
    .param p1, "offset"    # I

    .line 8247
    iget-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 8249
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    .line 8250
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 8251
    .local v0, "oldTransformationMethod":Landroid/text/method/TransformationMethod;
    instance-of v2, v0, Landroid/text/method/OffsetMapping;

    if-eqz v2, :cond_11

    .line 8253
    return v1

    .line 8256
    :cond_11
    iget-object v1, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v1

    .line 8257
    .local v1, "isSingleLine":Z
    new-instance v2, Landroid/text/method/InsertModeTransformationMethod;

    invoke-direct {v2, p1, v1, v0}, Landroid/text/method/InsertModeTransformationMethod;-><init>(IZLandroid/text/method/TransformationMethod;)V

    iput-object v2, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    .line 8259
    iget-object v2, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/widget/Editor$InsertModeController;->setTransformationMethod(Landroid/text/method/TransformationMethod;Z)V

    .line 8260
    iget-object v2, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8262
    iput-boolean v3, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    .line 8263
    return v3
.end method

.method blacklist exitInsertMode()V
    .registers 2

    .line 8267
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Editor$InsertModeController;->exitInsertMode(Z)V

    .line 8268
    return-void
.end method

.method blacklist exitInsertMode(Z)V
    .registers 7
    .param p1, "updateText"    # Z

    .line 8271
    iget-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    if-nez v0, :cond_5

    return-void

    .line 8272
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    iget-object v2, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    .line 8273
    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-eq v0, v2, :cond_15

    goto :goto_38

    .line 8279
    :cond_15
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 8280
    .local v0, "selectionStart":I
    iget-object v2, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 8281
    .local v2, "selectionEnd":I
    iget-object v3, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    .line 8282
    invoke-virtual {v3}, Landroid/text/method/InsertModeTransformationMethod;->getOldTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    .line 8283
    .local v3, "oldTransformationMethod":Landroid/text/method/TransformationMethod;
    invoke-direct {p0, v3, p1}, Landroid/widget/Editor$InsertModeController;->setTransformationMethod(Landroid/text/method/TransformationMethod;Z)V

    .line 8284
    iget-object v4, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8285
    iput-boolean v1, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    .line 8286
    return-void

    .line 8274
    .end local v0    # "selectionStart":I
    .end local v2    # "selectionEnd":I
    .end local v3    # "oldTransformationMethod":Landroid/text/method/TransformationMethod;
    :cond_38
    :goto_38
    iput-boolean v1, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    .line 8275
    return-void
.end method

.method blacklist onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 8289
    iget-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    if-nez v0, :cond_5

    return-void

    .line 8290
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 8291
    .local v0, "transformedText":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;

    if-eqz v1, :cond_2f

    .line 8292
    iget-object v1, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 8293
    .local v1, "layout":Landroid/text/Layout;
    if-nez v1, :cond_18

    return-void

    .line 8294
    :cond_18
    move-object v2, v0

    check-cast v2, Landroid/text/method/InsertModeTransformationMethod$TransformedText;

    .line 8296
    .local v2, "insertModeTransformedText":Landroid/text/method/InsertModeTransformationMethod$TransformedText;
    invoke-virtual {v2}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getHighlightStart()I

    move-result v3

    .line 8297
    .local v3, "highlightStart":I
    invoke-virtual {v2}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getHighlightEnd()I

    move-result v4

    .line 8298
    .local v4, "highlightEnd":I
    iget-object v5, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 8299
    iget-object v5, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPath:Landroid/graphics/Path;

    iget-object v6, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 8301
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "insertModeTransformedText":Landroid/text/method/InsertModeTransformationMethod$TransformedText;
    .end local v3    # "highlightStart":I
    .end local v4    # "highlightEnd":I
    :cond_2f
    return-void
.end method

.method blacklist updateTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .registers 7
    .param p1, "transformationMethod"    # Landroid/text/method/TransformationMethod;

    .line 8340
    iget-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 8341
    invoke-direct {p0, p1, v1}, Landroid/widget/Editor$InsertModeController;->setTransformationMethod(Landroid/text/method/TransformationMethod;Z)V

    .line 8342
    return-void

    .line 8347
    :cond_9
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 8348
    .local v0, "selectionStart":I
    iget-object v2, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 8349
    .local v2, "selectionEnd":I
    iget-object v3, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    iget-object v4, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    .line 8350
    invoke-virtual {v4}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v4

    .line 8349
    invoke-virtual {v3, p1, v4}, Landroid/text/method/InsertModeTransformationMethod;->update(Landroid/text/method/TransformationMethod;Z)Landroid/text/method/InsertModeTransformationMethod;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    .line 8351
    iget-object v3, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    invoke-direct {p0, v3, v1}, Landroid/widget/Editor$InsertModeController;->setTransformationMethod(Landroid/text/method/TransformationMethod;Z)V

    .line 8352
    iget-object v1, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8353
    return-void
.end method
