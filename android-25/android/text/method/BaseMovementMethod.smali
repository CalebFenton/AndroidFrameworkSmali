.class public Landroid/text/method/BaseMovementMethod;
.super Ljava/lang/Object;
.source "BaseMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private getBottomLine(Landroid/widget/TextView;)I
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 407
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    #@b
    move-result v2

    #@c
    add-int/2addr v1, v2

    #@d
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method private getCharacterWidth(Landroid/widget/TextView;)I
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    #@7
    move-result v0

    #@8
    float-to-double v0, v0

    #@9
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@c
    move-result-wide v0

    #@d
    double-to-int v0, v0

    #@e
    return v0
.end method

.method private getInnerHeight(Landroid/widget/TextView;)I
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 415
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    #@c
    move-result v1

    #@d
    sub-int/2addr v0, v1

    #@e
    return v0
.end method

.method private getInnerWidth(Landroid/widget/TextView;)I
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 411
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    #@c
    move-result v1

    #@d
    sub-int/2addr v0, v1

    #@e
    return v0
.end method

.method private getScrollBoundsLeft(Landroid/widget/TextView;)I
    .locals 8
    .param p1, "widget"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 423
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v1

    #@4
    .line 424
    .local v1, "layout":Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    #@7
    move-result v5

    #@8
    .line 425
    .local v5, "topLine":I
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    #@b
    move-result v0

    #@c
    .line 426
    .local v0, "bottomLine":I
    if-le v5, v0, :cond_0

    #@e
    .line 427
    const/4 v6, 0x0

    #@f
    return v6

    #@10
    .line 429
    :cond_0
    const v2, 0x7fffffff

    #@13
    .line 430
    .local v2, "left":I
    move v3, v5

    #@14
    .local v3, "line":I
    :goto_0
    if-gt v3, v0, :cond_2

    #@16
    .line 431
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineLeft(I)F

    #@19
    move-result v6

    #@1a
    float-to-double v6, v6

    #@1b
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    #@1e
    move-result-wide v6

    #@1f
    double-to-int v4, v6

    #@20
    .line 432
    .local v4, "lineLeft":I
    if-ge v4, v2, :cond_1

    #@22
    .line 433
    move v2, v4

    #@23
    .line 430
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@25
    goto :goto_0

    #@26
    .line 436
    .end local v4    # "lineLeft":I
    :cond_2
    return v2
.end method

.method private getScrollBoundsRight(Landroid/widget/TextView;)I
    .locals 8
    .param p1, "widget"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 440
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v1

    #@4
    .line 441
    .local v1, "layout":Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    #@7
    move-result v5

    #@8
    .line 442
    .local v5, "topLine":I
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    #@b
    move-result v0

    #@c
    .line 443
    .local v0, "bottomLine":I
    if-le v5, v0, :cond_0

    #@e
    .line 444
    const/4 v6, 0x0

    #@f
    return v6

    #@10
    .line 446
    :cond_0
    const/high16 v4, -0x80000000

    #@12
    .line 447
    .local v4, "right":I
    move v2, v5

    #@13
    .local v2, "line":I
    :goto_0
    if-gt v2, v0, :cond_2

    #@15
    .line 448
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineRight(I)F

    #@18
    move-result v6

    #@19
    float-to-double v6, v6

    #@1a
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    #@1d
    move-result-wide v6

    #@1e
    double-to-int v3, v6

    #@1f
    .line 449
    .local v3, "lineRight":I
    if-le v3, v4, :cond_1

    #@21
    .line 450
    move v4, v3

    #@22
    .line 447
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 453
    .end local v3    # "lineRight":I
    :cond_2
    return v4
.end method

.method private getTopLine(Landroid/widget/TextView;)I
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 403
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    #@b
    move-result v0

    #@c
    return v0
.end method


# virtual methods
.method protected bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 337
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public canSelectArbitrarily()Z
    .locals 1

    #@0
    .prologue
    .line 32
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 289
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 399
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I
    .locals 2
    .param p1, "buffer"    # Landroid/text/Spannable;
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 138
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    #@3
    move-result v1

    #@4
    and-int/lit16 v0, v1, -0x601

    #@6
    .line 140
    .local v0, "metaState":I
    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@9
    move-result v1

    #@a
    and-int/lit16 v1, v1, -0xc2

    #@c
    return v1
.end method

.method protected handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "movementMetaState"    # I
    .param p5, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/16 v2, 0x1000

    #@2
    const/4 v1, 0x2

    #@3
    .line 162
    sparse-switch p3, :sswitch_data_0

    #@6
    .line 241
    :cond_0
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 164
    :sswitch_0
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 165
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 166
    :cond_1
    invoke-static {p4, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 168
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@1c
    move-result v0

    #@1d
    return v0

    #@1e
    .line 169
    :cond_2
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 171
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@27
    move-result v0

    #@28
    return v0

    #@29
    .line 176
    :sswitch_1
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 177
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@32
    move-result v0

    #@33
    return v0

    #@34
    .line 178
    :cond_3
    invoke-static {p4, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_4

    #@3a
    .line 180
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@3d
    move-result v0

    #@3e
    return v0

    #@3f
    .line 181
    :cond_4
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_0

    #@45
    .line 183
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@48
    move-result v0

    #@49
    return v0

    #@4a
    .line 188
    :sswitch_2
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    #@4d
    move-result v0

    #@4e
    if-eqz v0, :cond_5

    #@50
    .line 189
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@53
    move-result v0

    #@54
    return v0

    #@55
    .line 190
    :cond_5
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    #@58
    move-result v0

    #@59
    if-eqz v0, :cond_0

    #@5b
    .line 192
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@5e
    move-result v0

    #@5f
    return v0

    #@60
    .line 197
    :sswitch_3
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    #@63
    move-result v0

    #@64
    if-eqz v0, :cond_6

    #@66
    .line 198
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@69
    move-result v0

    #@6a
    return v0

    #@6b
    .line 199
    :cond_6
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    #@6e
    move-result v0

    #@6f
    if-eqz v0, :cond_0

    #@71
    .line 201
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@74
    move-result v0

    #@75
    return v0

    #@76
    .line 206
    :sswitch_4
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    #@79
    move-result v0

    #@7a
    if-eqz v0, :cond_7

    #@7c
    .line 207
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@7f
    move-result v0

    #@80
    return v0

    #@81
    .line 208
    :cond_7
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    #@84
    move-result v0

    #@85
    if-eqz v0, :cond_0

    #@87
    .line 210
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@8a
    move-result v0

    #@8b
    return v0

    #@8c
    .line 215
    :sswitch_5
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    #@8f
    move-result v0

    #@90
    if-eqz v0, :cond_8

    #@92
    .line 216
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@95
    move-result v0

    #@96
    return v0

    #@97
    .line 217
    :cond_8
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    #@9a
    move-result v0

    #@9b
    if-eqz v0, :cond_0

    #@9d
    .line 219
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@a0
    move-result v0

    #@a1
    return v0

    #@a2
    .line 224
    :sswitch_6
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    #@a5
    move-result v0

    #@a6
    if-eqz v0, :cond_9

    #@a8
    .line 225
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->home(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@ab
    move-result v0

    #@ac
    return v0

    #@ad
    .line 226
    :cond_9
    invoke-static {p4, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    #@b0
    move-result v0

    #@b1
    if-eqz v0, :cond_0

    #@b3
    .line 228
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@b6
    move-result v0

    #@b7
    return v0

    #@b8
    .line 233
    :sswitch_7
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    #@bb
    move-result v0

    #@bc
    if-eqz v0, :cond_a

    #@be
    .line 234
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->end(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@c1
    move-result v0

    #@c2
    return v0

    #@c3
    .line 235
    :cond_a
    invoke-static {p4, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    #@c6
    move-result v0

    #@c7
    if-eqz v0, :cond_0

    #@c9
    .line 237
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@cc
    move-result v0

    #@cd
    return v0

    #@ce
    .line 162
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_4
        0x5d -> :sswitch_5
        0x7a -> :sswitch_6
        0x7b -> :sswitch_7
    .end sparse-switch
.end method

.method protected home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 385
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 0
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 36
    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 253
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 366
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 361
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 349
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/16 v5, 0x9

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v6, 0x0

    #@4
    .line 94
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    #@7
    move-result v3

    #@8
    and-int/lit8 v3, v3, 0x2

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 95
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    #@f
    move-result v3

    #@10
    packed-switch v3, :pswitch_data_0

    #@13
    .line 122
    :cond_0
    return v4

    #@14
    .line 99
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getMetaState()I

    #@17
    move-result v3

    #@18
    and-int/lit8 v3, v3, 0x1

    #@1a
    if-eqz v3, :cond_3

    #@1c
    .line 100
    const/4 v2, 0x0

    #@1d
    .line 101
    .local v2, "vscroll":F
    invoke-virtual {p3, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@20
    move-result v1

    #@21
    .line 107
    .local v1, "hscroll":F
    :goto_0
    const/4 v0, 0x0

    #@22
    .line 108
    .local v0, "handled":Z
    cmpg-float v3, v1, v6

    #@24
    if-gez v3, :cond_4

    #@26
    .line 109
    neg-float v3, v1

    #@27
    float-to-double v4, v3

    #@28
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@2b
    move-result-wide v4

    #@2c
    double-to-int v3, v4

    #@2d
    invoke-virtual {p0, p1, p2, v3}, Landroid/text/method/BaseMovementMethod;->scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    #@30
    move-result v0

    #@31
    .line 113
    .end local v0    # "handled":Z
    :cond_1
    :goto_1
    cmpg-float v3, v2, v6

    #@33
    if-gez v3, :cond_5

    #@35
    .line 114
    neg-float v3, v2

    #@36
    float-to-double v4, v3

    #@37
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@3a
    move-result-wide v4

    #@3b
    double-to-int v3, v4

    #@3c
    invoke-virtual {p0, p1, p2, v3}, Landroid/text/method/BaseMovementMethod;->scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    #@3f
    move-result v3

    #@40
    or-int/2addr v0, v3

    #@41
    .line 118
    :cond_2
    :goto_2
    return v0

    #@42
    .line 103
    .end local v1    # "hscroll":F
    .end local v2    # "vscroll":F
    :cond_3
    invoke-virtual {p3, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@45
    move-result v3

    #@46
    neg-float v2, v3

    #@47
    .line 104
    .restart local v2    # "vscroll":F
    const/16 v3, 0xa

    #@49
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@4c
    move-result v1

    #@4d
    .restart local v1    # "hscroll":F
    goto :goto_0

    #@4e
    .line 110
    .restart local v0    # "handled":Z
    :cond_4
    cmpl-float v3, v1, v6

    #@50
    if-lez v3, :cond_1

    #@52
    .line 111
    float-to-double v4, v1

    #@53
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@56
    move-result-wide v4

    #@57
    double-to-int v3, v4

    #@58
    invoke-virtual {p0, p1, p2, v3}, Landroid/text/method/BaseMovementMethod;->scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    #@5b
    move-result v0

    #@5c
    .local v0, "handled":Z
    goto :goto_1

    #@5d
    .line 115
    .end local v0    # "handled":Z
    :cond_5
    cmpl-float v3, v2, v6

    #@5f
    if-lez v3, :cond_2

    #@61
    .line 116
    float-to-double v4, v2

    #@62
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@65
    move-result-wide v4

    #@66
    double-to-int v3, v4

    #@67
    invoke-virtual {p0, p1, p2, v3}, Landroid/text/method/BaseMovementMethod;->scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    #@6a
    move-result v3

    #@6b
    or-int/2addr v0, v3

    #@6c
    .restart local v0    # "handled":Z
    goto :goto_2

    #@6d
    .line 95
    nop

    #@6e
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 41
    invoke-virtual {p0, p2, p4}, Landroid/text/method/BaseMovementMethod;->getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I

    #@3
    move-result v4

    #@4
    .local v4, "movementMetaState":I
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move v3, p3

    #@8
    move-object v5, p4

    #@9
    .line 42
    invoke-virtual/range {v0 .. v5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    #@c
    move-result v6

    #@d
    .line 43
    .local v6, "handled":Z
    if-eqz v6, :cond_0

    #@f
    .line 44
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    #@12
    .line 45
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    #@15
    .line 47
    :cond_0
    return v6
.end method

.method public onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 52
    invoke-virtual {p0, p2, p3}, Landroid/text/method/BaseMovementMethod;->getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I

    #@4
    move-result v4

    #@5
    .line 53
    .local v4, "movementMetaState":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    #@8
    move-result v3

    #@9
    .line 54
    .local v3, "keyCode":I
    if-eqz v3, :cond_3

    #@b
    .line 55
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x2

    #@10
    if-ne v0, v1, :cond_3

    #@12
    .line 56
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@15
    move-result v8

    #@16
    .line 57
    .local v8, "repeat":I
    const/4 v6, 0x0

    #@17
    .line 58
    .local v6, "handled":Z
    const/4 v7, 0x0

    #@18
    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    #@1a
    move-object v0, p0

    #@1b
    move-object v1, p1

    #@1c
    move-object v2, p2

    #@1d
    move-object v5, p3

    #@1e
    .line 59
    invoke-virtual/range {v0 .. v5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_2

    #@24
    .line 64
    :cond_0
    if-eqz v6, :cond_1

    #@26
    .line 65
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    #@29
    .line 66
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    #@2c
    .line 68
    :cond_1
    return v6

    #@2d
    .line 62
    :cond_2
    const/4 v6, 0x1

    #@2e
    .line 58
    add-int/lit8 v7, v7, 0x1

    #@30
    goto :goto_0

    #@31
    .line 70
    .end local v6    # "handled":Z
    .end local v7    # "i":I
    .end local v8    # "repeat":I
    :cond_3
    return v2
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 75
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 0
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "direction"    # I

    #@0
    .prologue
    .line 79
    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 84
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 89
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 313
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 301
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 265
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 371
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected scrollBottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 626
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v0

    #@4
    .line 627
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    #@7
    move-result v1

    #@8
    .line 628
    .local v1, "lineCount":I
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    #@b
    move-result v2

    #@c
    add-int/lit8 v3, v1, -0x1

    #@e
    if-gt v2, v3, :cond_0

    #@10
    .line 629
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    #@13
    move-result v2

    #@14
    .line 630
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    #@17
    move-result v3

    #@18
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    #@1b
    move-result v4

    #@1c
    sub-int/2addr v3, v4

    #@1d
    .line 629
    invoke-static {p1, v0, v2, v3}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    #@20
    .line 631
    const/4 v2, 0x1

    #@21
    return v2

    #@22
    .line 633
    :cond_0
    const/4 v2, 0x0

    #@23
    return v2
.end method

.method protected scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 7
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "amount"    # I

    #@0
    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v3

    #@4
    .line 537
    .local v3, "layout":Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    #@7
    move-result v2

    #@8
    .line 538
    .local v2, "innerHeight":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    #@b
    move-result v5

    #@c
    add-int v0, v5, v2

    #@e
    .line 539
    .local v0, "bottom":I
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    #@11
    move-result v1

    #@12
    .line 540
    .local v1, "bottomLine":I
    add-int/lit8 v5, v1, 0x1

    #@14
    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineTop(I)I

    #@17
    move-result v5

    #@18
    add-int/lit8 v6, v0, 0x1

    #@1a
    if-ge v5, v6, :cond_0

    #@1c
    .line 544
    add-int/lit8 v1, v1, 0x1

    #@1e
    .line 546
    :cond_0
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    #@21
    move-result v5

    #@22
    add-int/lit8 v4, v5, -0x1

    #@24
    .line 547
    .local v4, "limit":I
    if-gt v1, v4, :cond_1

    #@26
    .line 548
    add-int v5, v1, p3

    #@28
    add-int/lit8 v5, v5, -0x1

    #@2a
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    #@2d
    move-result v1

    #@2e
    .line 549
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    #@31
    move-result v5

    #@32
    .line 550
    add-int/lit8 v6, v1, 0x1

    #@34
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineTop(I)I

    #@37
    move-result v6

    #@38
    sub-int/2addr v6, v2

    #@39
    .line 549
    invoke-static {p1, v3, v5, v6}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    #@3c
    .line 551
    const/4 v5, 0x1

    #@3d
    return v5

    #@3e
    .line 553
    :cond_1
    const/4 v5, 0x0

    #@3f
    return v5
.end method

.method protected scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "amount"    # I

    #@0
    .prologue
    .line 467
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsLeft(Landroid/widget/TextView;)I

    #@3
    move-result v0

    #@4
    .line 468
    .local v0, "minScrollX":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    #@7
    move-result v1

    #@8
    .line 469
    .local v1, "scrollX":I
    if-le v1, v0, :cond_0

    #@a
    .line 470
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getCharacterWidth(Landroid/widget/TextView;)I

    #@d
    move-result v2

    #@e
    mul-int/2addr v2, p3

    #@f
    sub-int v2, v1, v2

    #@11
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    #@14
    move-result v1

    #@15
    .line 471
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    #@18
    move-result v2

    #@19
    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    #@1c
    .line 472
    const/4 v2, 0x1

    #@1d
    return v2

    #@1e
    .line 474
    :cond_0
    const/4 v2, 0x0

    #@1f
    return v2
.end method

.method protected scrollLineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 665
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsRight(Landroid/widget/TextView;)I

    #@3
    move-result v2

    #@4
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerWidth(Landroid/widget/TextView;)I

    #@7
    move-result v3

    #@8
    sub-int v0, v2, v3

    #@a
    .line 666
    .local v0, "maxScrollX":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    #@d
    move-result v1

    #@e
    .line 667
    .local v1, "scrollX":I
    if-ge v1, v0, :cond_0

    #@10
    .line 668
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    #@13
    move-result v2

    #@14
    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->scrollTo(II)V

    #@17
    .line 669
    const/4 v2, 0x1

    #@18
    return v2

    #@19
    .line 671
    :cond_0
    const/4 v2, 0x0

    #@1a
    return v2
.end method

.method protected scrollLineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 646
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsLeft(Landroid/widget/TextView;)I

    #@3
    move-result v0

    #@4
    .line 647
    .local v0, "minScrollX":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    #@7
    move-result v1

    #@8
    .line 648
    .local v1, "scrollX":I
    if-le v1, v0, :cond_0

    #@a
    .line 649
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    #@d
    move-result v2

    #@e
    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->scrollTo(II)V

    #@11
    .line 650
    const/4 v2, 0x1

    #@12
    return v2

    #@13
    .line 652
    :cond_0
    const/4 v2, 0x0

    #@14
    return v2
.end method

.method protected scrollPageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 6
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 586
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v3

    #@4
    .line 587
    .local v3, "layout":Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    #@7
    move-result v2

    #@8
    .line 588
    .local v2, "innerHeight":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    #@b
    move-result v4

    #@c
    add-int/2addr v4, v2

    #@d
    add-int v0, v4, v2

    #@f
    .line 589
    .local v0, "bottom":I
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    #@12
    move-result v1

    #@13
    .line 590
    .local v1, "bottomLine":I
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    #@16
    move-result v4

    #@17
    add-int/lit8 v4, v4, -0x1

    #@19
    if-gt v1, v4, :cond_0

    #@1b
    .line 591
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    #@1e
    move-result v4

    #@1f
    .line 592
    add-int/lit8 v5, v1, 0x1

    #@21
    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineTop(I)I

    #@24
    move-result v5

    #@25
    sub-int/2addr v5, v2

    #@26
    .line 591
    invoke-static {p1, v3, v4, v5}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    #@29
    .line 593
    const/4 v4, 0x1

    #@2a
    return v4

    #@2b
    .line 595
    :cond_0
    const/4 v4, 0x0

    #@2c
    return v4
.end method

.method protected scrollPageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 6
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 566
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@4
    move-result-object v0

    #@5
    .line 567
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    #@8
    move-result v3

    #@9
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    #@c
    move-result v4

    #@d
    sub-int v1, v3, v4

    #@f
    .line 568
    .local v1, "top":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    #@12
    move-result v2

    #@13
    .line 569
    .local v2, "topLine":I
    if-ltz v2, :cond_0

    #@15
    .line 570
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    #@18
    move-result v3

    #@19
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    #@1c
    move-result v4

    #@1d
    invoke-static {p1, v0, v3, v4}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    #@20
    .line 571
    const/4 v3, 0x1

    #@21
    return v3

    #@22
    .line 573
    :cond_0
    return v5
.end method

.method protected scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "amount"    # I

    #@0
    .prologue
    .line 488
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsRight(Landroid/widget/TextView;)I

    #@3
    move-result v2

    #@4
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerWidth(Landroid/widget/TextView;)I

    #@7
    move-result v3

    #@8
    sub-int v0, v2, v3

    #@a
    .line 489
    .local v0, "maxScrollX":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    #@d
    move-result v1

    #@e
    .line 490
    .local v1, "scrollX":I
    if-ge v1, v0, :cond_0

    #@10
    .line 491
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getCharacterWidth(Landroid/widget/TextView;)I

    #@13
    move-result v2

    #@14
    mul-int/2addr v2, p3

    #@15
    add-int/2addr v2, v1

    #@16
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    #@19
    move-result v1

    #@1a
    .line 492
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    #@21
    .line 493
    const/4 v2, 0x1

    #@22
    return v2

    #@23
    .line 495
    :cond_0
    const/4 v2, 0x0

    #@24
    return v2
.end method

.method protected scrollTop(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 608
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@4
    move-result-object v0

    #@5
    .line 609
    .local v0, "layout":Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    #@8
    move-result v1

    #@9
    if-ltz v1, :cond_0

    #@b
    .line 610
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    #@e
    move-result v1

    #@f
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    #@12
    move-result v2

    #@13
    invoke-static {p1, v0, v1, v2}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    #@16
    .line 611
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 613
    :cond_0
    return v2
.end method

.method protected scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "amount"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 509
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@4
    move-result-object v0

    #@5
    .line 510
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    #@8
    move-result v1

    #@9
    .line 511
    .local v1, "top":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    #@c
    move-result v2

    #@d
    .line 512
    .local v2, "topLine":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    #@10
    move-result v3

    #@11
    if-ne v3, v1, :cond_0

    #@13
    .line 515
    add-int/lit8 v2, v2, -0x1

    #@15
    .line 517
    :cond_0
    if-ltz v2, :cond_1

    #@17
    .line 518
    sub-int v3, v2, p3

    #@19
    add-int/lit8 v3, v3, 0x1

    #@1b
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@1e
    move-result v2

    #@1f
    .line 519
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    #@22
    move-result v3

    #@23
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    #@26
    move-result v4

    #@27
    invoke-static {p1, v0, v3, v4}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    #@2a
    .line 520
    const/4 v3, 0x1

    #@2b
    return v3

    #@2c
    .line 522
    :cond_1
    return v4
.end method

.method protected top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 325
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 277
    const/4 v0, 0x0

    #@1
    return v0
.end method
