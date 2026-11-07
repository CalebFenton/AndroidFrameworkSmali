.class public Landroid/text/method/BaseMovementMethod;
.super Ljava/lang/Object;
.source "BaseMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o getBottomLine(Landroid/widget/TextView;)I
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;

    .line 437
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getCharacterWidth(Landroid/widget/TextView;)I
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;

    .line 449
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private greylist-max-o getInnerHeight(Landroid/widget/TextView;)I
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;

    .line 445
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o getInnerWidth(Landroid/widget/TextView;)I
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;

    .line 441
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o getScrollBoundsLeft(Landroid/widget/TextView;)I
    .registers 9
    .param p1, "widget"    # Landroid/widget/TextView;

    .line 453
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 454
    .local v0, "layout":Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v1

    .line 455
    .local v1, "topLine":I
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result v2

    .line 456
    .local v2, "bottomLine":I
    if-le v1, v2, :cond_10

    .line 457
    const/4 v3, 0x0

    return v3

    .line 459
    :cond_10
    const v3, 0x7fffffff

    .line 460
    .local v3, "left":I
    move v4, v1

    .local v4, "line":I
    :goto_14
    if-gt v4, v2, :cond_26

    .line 461
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 462
    .local v5, "lineLeft":I
    if-ge v5, v3, :cond_23

    .line 463
    move v3, v5

    .line 460
    .end local v5    # "lineLeft":I
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 466
    .end local v4    # "line":I
    :cond_26
    return v3
.end method

.method private greylist-max-o getScrollBoundsRight(Landroid/widget/TextView;)I
    .registers 9
    .param p1, "widget"    # Landroid/widget/TextView;

    .line 470
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 471
    .local v0, "layout":Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v1

    .line 472
    .local v1, "topLine":I
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result v2

    .line 473
    .local v2, "bottomLine":I
    if-le v1, v2, :cond_10

    .line 474
    const/4 v3, 0x0

    return v3

    .line 476
    :cond_10
    const/high16 v3, -0x80000000

    .line 477
    .local v3, "right":I
    move v4, v1

    .local v4, "line":I
    :goto_13
    if-gt v4, v2, :cond_25

    .line 478
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 479
    .local v5, "lineRight":I
    if-le v5, v3, :cond_22

    .line 480
    move v3, v5

    .line 477
    .end local v5    # "lineRight":I
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 483
    .end local v4    # "line":I
    :cond_25
    return v3
.end method

.method private greylist-max-o getTopLine(Landroid/widget/TextView;)I
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;

    .line 433
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected whitelist bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist canSelectArbitrarily()Z
    .registers 2

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I
    .registers 5
    .param p1, "buffer"    # Landroid/text/Spannable;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 140
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result v0

    and-int/lit16 v0, v0, -0x601

    .line 142
    .local v0, "metaState":I
    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    and-int/lit16 v1, v1, -0xc2

    return v1
.end method

.method protected whitelist handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "movementMetaState"    # I
    .param p5, "event"    # Landroid/view/KeyEvent;

    .line 164
    const/16 v0, 0x1000

    const/4 v1, 0x2

    sparse-switch p3, :sswitch_data_e6

    goto/16 :goto_e4

    .line 241
    :sswitch_8
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 242
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->end(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 243
    :cond_13
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 245
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 232
    :sswitch_1e
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 233
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->home(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 234
    :cond_29
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 236
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 223
    :sswitch_34
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 224
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 225
    :cond_3f
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 227
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 214
    :sswitch_4a
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 215
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 216
    :cond_55
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 218
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 178
    :sswitch_60
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 179
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 180
    :cond_6b
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 182
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 183
    :cond_76
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 185
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 166
    :sswitch_81
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 167
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 168
    :cond_8c
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 170
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 171
    :cond_97
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 173
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 202
    :sswitch_a2
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 203
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 204
    :cond_ad
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 206
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 207
    :cond_b8
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 209
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->nextParagraph(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 190
    :sswitch_c3
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 191
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 192
    :cond_ce
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 194
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 195
    :cond_d9
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 197
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->previousParagraph(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 249
    :cond_e4
    :goto_e4
    const/4 v0, 0x0

    return v0

    :sswitch_data_e6
    .sparse-switch
        0x13 -> :sswitch_c3
        0x14 -> :sswitch_a2
        0x15 -> :sswitch_81
        0x16 -> :sswitch_60
        0x5c -> :sswitch_4a
        0x5d -> :sswitch_34
        0x7a -> :sswitch_1e
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method protected whitelist home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .registers 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;

    .line 39
    return-void
.end method

.method protected whitelist left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist nextParagraph(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 96
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6e

    .line 97
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_70

    goto :goto_6e

    .line 101
    :pswitch_10
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/16 v1, 0x9

    if-eqz v0, :cond_20

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "vscroll":F
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .local v1, "hscroll":F
    goto :goto_2b

    .line 105
    .end local v0    # "vscroll":F
    .end local v1    # "hscroll":F
    :cond_20
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    .line 106
    .restart local v0    # "vscroll":F
    const/16 v1, 0xa

    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 109
    .restart local v1    # "hscroll":F
    :goto_2b
    const/4 v2, 0x0

    .line 110
    .local v2, "handled":Z
    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-gez v4, :cond_3e

    .line 111
    neg-float v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p0, p1, p2, v4}, Landroid/text/method/BaseMovementMethod;->scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v4

    or-int/2addr v2, v4

    goto :goto_4d

    .line 112
    :cond_3e
    cmpl-float v4, v1, v3

    if-lez v4, :cond_4d

    .line 113
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p0, p1, p2, v4}, Landroid/text/method/BaseMovementMethod;->scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v4

    or-int/2addr v2, v4

    .line 115
    :cond_4d
    :goto_4d
    cmpg-float v4, v0, v3

    if-gez v4, :cond_5e

    .line 116
    neg-float v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, p1, p2, v3}, Landroid/text/method/BaseMovementMethod;->scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_6d

    .line 117
    :cond_5e
    cmpl-float v3, v0, v3

    if-lez v3, :cond_6d

    .line 118
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, p1, p2, v3}, Landroid/text/method/BaseMovementMethod;->scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v3

    or-int/2addr v2, v3

    .line 120
    :cond_6d
    :goto_6d
    return v2

    .line 124
    .end local v0    # "vscroll":F
    .end local v1    # "hscroll":F
    .end local v2    # "handled":Z
    :cond_6e
    :goto_6e
    const/4 v0, 0x0

    return v0

    :pswitch_data_70
    .packed-switch 0x8
        :pswitch_10
    .end packed-switch
.end method

.method public whitelist onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 43
    invoke-virtual {p0, p2, p4}, Landroid/text/method/BaseMovementMethod;->getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I

    move-result v4

    .line 44
    .local v4, "movementMetaState":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .end local p1    # "widget":Landroid/widget/TextView;
    .end local p2    # "text":Landroid/text/Spannable;
    .end local p3    # "keyCode":I
    .end local p4    # "event":Landroid/view/KeyEvent;
    .local v1, "widget":Landroid/widget/TextView;
    .local v2, "text":Landroid/text/Spannable;
    .local v3, "keyCode":I
    .local v5, "event":Landroid/view/KeyEvent;
    invoke-virtual/range {v0 .. v5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result p1

    .line 45
    .local p1, "handled":Z
    if-eqz p1, :cond_15

    .line 46
    invoke-static {v2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 47
    invoke-static {v2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 49
    :cond_15
    return p1
.end method

.method public whitelist onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .registers 13
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 54
    invoke-virtual {p0, p2, p3}, Landroid/text/method/BaseMovementMethod;->getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I

    move-result v4

    .line 55
    .local v4, "movementMetaState":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 56
    .local v3, "keyCode":I
    if-eqz v3, :cond_3d

    .line 57
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_39

    .line 58
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    .line 59
    .local v6, "repeat":I
    const/4 v0, 0x0

    .line 60
    .local v0, "handled":Z
    const/4 v1, 0x0

    move v7, v0

    move v8, v1

    .end local v0    # "handled":Z
    .local v7, "handled":Z
    .local v8, "i":I
    :goto_19
    if-ge v8, v6, :cond_2d

    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .end local p1    # "widget":Landroid/widget/TextView;
    .end local p2    # "text":Landroid/text/Spannable;
    .end local p3    # "event":Landroid/view/KeyEvent;
    .local v1, "widget":Landroid/widget/TextView;
    .local v2, "text":Landroid/text/Spannable;
    .local v5, "event":Landroid/view/KeyEvent;
    invoke-virtual/range {v0 .. v5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 62
    goto :goto_30

    .line 64
    :cond_26
    const/4 v7, 0x1

    .line 60
    add-int/lit8 v8, v8, 0x1

    move-object p1, v1

    move-object p2, v2

    move-object p3, v5

    goto :goto_19

    .end local v1    # "widget":Landroid/widget/TextView;
    .end local v2    # "text":Landroid/text/Spannable;
    .end local v5    # "event":Landroid/view/KeyEvent;
    .restart local p1    # "widget":Landroid/widget/TextView;
    .restart local p2    # "text":Landroid/text/Spannable;
    .restart local p3    # "event":Landroid/view/KeyEvent;
    :cond_2d
    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 66
    .end local v8    # "i":I
    .end local p1    # "widget":Landroid/widget/TextView;
    .end local p2    # "text":Landroid/text/Spannable;
    .end local p3    # "event":Landroid/view/KeyEvent;
    .restart local v1    # "widget":Landroid/widget/TextView;
    .restart local v2    # "text":Landroid/text/Spannable;
    .restart local v5    # "event":Landroid/view/KeyEvent;
    :goto_30
    if-eqz v7, :cond_38

    .line 67
    invoke-static {v2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 68
    invoke-static {v2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 70
    :cond_38
    return v7

    .line 57
    .end local v1    # "widget":Landroid/widget/TextView;
    .end local v2    # "text":Landroid/text/Spannable;
    .end local v5    # "event":Landroid/view/KeyEvent;
    .end local v6    # "repeat":I
    .end local v7    # "handled":Z
    .restart local p1    # "widget":Landroid/widget/TextView;
    .restart local p2    # "text":Landroid/text/Spannable;
    .restart local p3    # "event":Landroid/view/KeyEvent;
    :cond_39
    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .end local p1    # "widget":Landroid/widget/TextView;
    .end local p2    # "text":Landroid/text/Spannable;
    .end local p3    # "event":Landroid/view/KeyEvent;
    .restart local v1    # "widget":Landroid/widget/TextView;
    .restart local v2    # "text":Landroid/text/Spannable;
    .restart local v5    # "event":Landroid/view/KeyEvent;
    goto :goto_40

    .line 56
    .end local v1    # "widget":Landroid/widget/TextView;
    .end local v2    # "text":Landroid/text/Spannable;
    .end local v5    # "event":Landroid/view/KeyEvent;
    .restart local p1    # "widget":Landroid/widget/TextView;
    .restart local p2    # "text":Landroid/text/Spannable;
    .restart local p3    # "event":Landroid/view/KeyEvent;
    :cond_3d
    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 72
    .end local p1    # "widget":Landroid/widget/TextView;
    .end local p2    # "text":Landroid/text/Spannable;
    .end local p3    # "event":Landroid/view/KeyEvent;
    .restart local v1    # "widget":Landroid/widget/TextView;
    .restart local v2    # "text":Landroid/text/Spannable;
    .restart local v5    # "event":Landroid/view/KeyEvent;
    :goto_40
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "direction"    # I

    .line 82
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist previousParagraph(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o scrollBottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 8
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 656
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 657
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 658
    .local v1, "lineCount":I
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    if-gt v2, v3, :cond_22

    .line 659
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    .line 660
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 659
    invoke-static {p1, v0, v2, v3}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 661
    const/4 v2, 0x1

    return v2

    .line 663
    :cond_22
    const/4 v2, 0x0

    return v2
.end method

.method protected greylist-max-o scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .registers 12
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "amount"    # I

    .line 566
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 567
    .local v0, "layout":Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v1

    .line 568
    .local v1, "innerHeight":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v1

    .line 569
    .local v2, "bottom":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 570
    .local v3, "bottomLine":I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    if-ge v4, v5, :cond_1d

    .line 574
    add-int/lit8 v3, v3, 0x1

    .line 576
    :cond_1d
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 577
    .local v4, "limit":I
    if-gt v3, v4, :cond_3b

    .line 578
    add-int v6, v3, p3

    sub-int/2addr v6, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 579
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    .line 580
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    sub-int/2addr v7, v1

    .line 579
    invoke-static {p1, v0, v6, v7}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 581
    return v5

    .line 583
    :cond_3b
    const/4 v5, 0x0

    return v5
.end method

.method protected greylist-max-o scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .registers 7
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "amount"    # I

    .line 497
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsLeft(Landroid/widget/TextView;)I

    move-result v0

    .line 498
    .local v0, "minScrollX":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 499
    .local v1, "scrollX":I
    if-le v1, v0, :cond_1e

    .line 500
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getCharacterWidth(Landroid/widget/TextView;)I

    move-result v2

    mul-int/2addr v2, p3

    sub-int v2, v1, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 501
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 502
    const/4 v2, 0x1

    return v2

    .line 504
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method protected greylist-max-o scrollLineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 6
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 695
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsRight(Landroid/widget/TextView;)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerWidth(Landroid/widget/TextView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 696
    .local v0, "maxScrollX":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 697
    .local v1, "scrollX":I
    if-ge v1, v0, :cond_18

    .line 698
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 699
    const/4 v2, 0x1

    return v2

    .line 701
    :cond_18
    const/4 v2, 0x0

    return v2
.end method

.method protected greylist-max-o scrollLineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 6
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 676
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsLeft(Landroid/widget/TextView;)I

    move-result v0

    .line 677
    .local v0, "minScrollX":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 678
    .local v1, "scrollX":I
    if-le v1, v0, :cond_13

    .line 679
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 680
    const/4 v2, 0x1

    return v2

    .line 682
    :cond_13
    const/4 v2, 0x0

    return v2
.end method

.method protected greylist-max-o scrollPageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 10
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 616
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 617
    .local v0, "layout":Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v1

    .line 618
    .local v1, "innerHeight":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v1

    .line 619
    .local v2, "bottom":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 620
    .local v3, "bottomLine":I
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_29

    .line 621
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/lit8 v6, v3, 0x1

    .line 622
    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    sub-int/2addr v6, v1

    .line 621
    invoke-static {p1, v0, v4, v6}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 623
    return v5

    .line 625
    :cond_29
    const/4 v4, 0x0

    return v4
.end method

.method protected greylist-max-o scrollPageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 8
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 596
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 597
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 598
    .local v1, "top":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 599
    .local v2, "topLine":I
    if-ltz v2, :cond_20

    .line 600
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-static {p1, v0, v3, v4}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 601
    const/4 v3, 0x1

    return v3

    .line 603
    :cond_20
    const/4 v3, 0x0

    return v3
.end method

.method protected greylist-max-o scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .registers 7
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "amount"    # I

    .line 518
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsRight(Landroid/widget/TextView;)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerWidth(Landroid/widget/TextView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 519
    .local v0, "maxScrollX":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 520
    .local v1, "scrollX":I
    if-ge v1, v0, :cond_22

    .line 521
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getCharacterWidth(Landroid/widget/TextView;)I

    move-result v2

    mul-int/2addr v2, p3

    add-int/2addr v2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 522
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 523
    const/4 v2, 0x1

    return v2

    .line 525
    :cond_22
    const/4 v2, 0x0

    return v2
.end method

.method protected greylist-max-o scrollTop(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 6
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 638
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 639
    .local v0, "layout":Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_18

    .line 640
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 641
    const/4 v1, 0x1

    return v1

    .line 643
    :cond_18
    return v2
.end method

.method protected greylist-max-o scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .registers 10
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "amount"    # I

    .line 539
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 540
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    .line 541
    .local v1, "top":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 542
    .local v2, "topLine":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-ne v3, v1, :cond_14

    .line 545
    add-int/lit8 v2, v2, -0x1

    .line 547
    :cond_14
    const/4 v3, 0x0

    if-ltz v2, :cond_2b

    .line 548
    sub-int v4, v2, p3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 549
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-static {p1, v0, v3, v4}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 550
    return v5

    .line 552
    :cond_2b
    return v3
.end method

.method protected whitelist top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 285
    const/4 v0, 0x0

    return v0
.end method
