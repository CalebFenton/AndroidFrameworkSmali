.class public Landroid/text/method/ArrowKeyMovementMethod;
.super Landroid/text/method/BaseMovementMethod;
.source "ArrowKeyMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# static fields
.field private static final LAST_TAP_DOWN:Ljava/lang/Object;

.field private static sInstance:Landroid/text/method/ArrowKeyMovementMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 335
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Landroid/text/method/BaseMovementMethod;-><init>()V

    #@3
    return-void
.end method

.method private static getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I
    .locals 1
    .param p0, "buffer"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    .line 39
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineTop(I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    #@0
    .prologue
    .line 328
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 329
    new-instance v0, Landroid/text/method/ArrowKeyMovementMethod;

    #@6
    invoke-direct {v0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    #@9
    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    #@b
    .line 332
    :cond_0
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    #@d
    return-object v0
.end method

.method private static getPageHeight(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "widget"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 46
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5
    .line 47
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@e
    move-result v1

    #@f
    :goto_0
    return v1

    #@10
    :cond_0
    const/4 v1, 0x0

    #@11
    goto :goto_0
.end method

.method private static isSelecting(Landroid/text/Spannable;)Z
    .locals 3
    .param p0, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 34
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    #@5
    move-result v2

    #@6
    if-eq v2, v0, :cond_0

    #@8
    .line 35
    const/16 v2, 0x800

    #@a
    invoke-static {p0, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 34
    :cond_0
    :goto_0
    return v0

    #@11
    :cond_1
    move v0, v1

    #@12
    .line 35
    goto :goto_0
.end method


# virtual methods
.method protected bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 168
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 169
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    #@9
    move-result v0

    #@a
    invoke-static {p2, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@d
    .line 173
    :goto_0
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 171
    :cond_0
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    #@12
    move-result v0

    #@13
    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@16
    goto :goto_0
.end method

.method public canSelectArbitrarily()Z
    .locals 1

    #@0
    .prologue
    .line 307
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v0

    #@4
    .line 101
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 102
    invoke-static {p2, v0}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 104
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@12
    move-result v1

    #@13
    return v1
.end method

.method protected end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 221
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "movementMetaState"    # I
    .param p5, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 53
    packed-switch p3, :pswitch_data_0

    #@3
    .line 65
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 55
    :pswitch_0
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 56
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 57
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 59
    const/16 v0, 0x800

    #@1c
    .line 58
    invoke-static {p2, v0, p5}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 60
    invoke-virtual {p1}, Landroid/widget/TextView;->showContextMenu()Z

    #@25
    move-result v0

    #@26
    return v0

    #@27
    .line 53
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 216
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 312
    const/4 v0, 0x0

    #@1
    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@4
    .line 311
    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v0

    #@4
    .line 71
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 72
    invoke-static {p2, v0}, Landroid/text/Selection;->extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 74
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@12
    move-result v1

    #@13
    return v1
.end method

.method protected leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    #@3
    move-result v0

    #@4
    .line 200
    .local v0, "selectionEnd":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    #@7
    move-result-object v1

    #@8
    .line 201
    .local v1, "wordIterator":Landroid/text/method/WordIterator;
    invoke-virtual {v1, p2, v0, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    #@b
    .line 202
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@e
    move-result v2

    #@f
    invoke-static {p2, v1, v2}, Landroid/text/Selection;->moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z

    #@12
    move-result v2

    #@13
    return v2
.end method

.method protected lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v0

    #@4
    .line 189
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 190
    invoke-static {p2, v0}, Landroid/text/Selection;->extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 192
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@12
    move-result v1

    #@13
    return v1
.end method

.method protected lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v0

    #@4
    .line 179
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 180
    invoke-static {p2, v0}, Landroid/text/Selection;->extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 182
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@12
    move-result v1

    #@13
    return v1
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "dir"    # I

    #@0
    .prologue
    .line 317
    and-int/lit16 v0, p3, 0x82

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 318
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 320
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    #@d
    move-result v0

    #@e
    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@11
    .line 316
    :cond_0
    :goto_0
    return-void

    #@12
    .line 323
    :cond_1
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    #@15
    move-result v0

    #@16
    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@19
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 226
    const/4 v3, -0x1

    #@2
    .line 227
    .local v3, "initialScrollX":I
    const/4 v4, -0x1

    #@3
    .line 228
    .local v4, "initialScrollY":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    #@6
    move-result v0

    #@7
    .line 230
    .local v0, "action":I
    if-ne v0, v10, :cond_0

    #@9
    .line 231
    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    #@c
    move-result v3

    #@d
    .line 232
    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    #@10
    move-result v4

    #@11
    .line 235
    :cond_0
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@14
    move-result v7

    #@15
    .line 236
    .local v7, "wasTouchSelecting":Z
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    #@18
    move-result v2

    #@19
    .line 238
    .local v2, "handled":Z
    invoke-virtual {p1}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    #@1c
    move-result v8

    #@1d
    if-eqz v8, :cond_1

    #@1f
    .line 239
    return v2

    #@20
    .line 241
    :cond_1
    if-nez v0, :cond_4

    #@22
    .line 243
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@25
    move-result v8

    #@26
    if-eqz v8, :cond_3

    #@28
    .line 244
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    #@2b
    move-result v8

    #@2c
    if-nez v8, :cond_2

    #@2e
    .line 245
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    #@31
    move-result v8

    #@32
    if-nez v8, :cond_2

    #@34
    .line 246
    return v2

    #@35
    .line 249
    :cond_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    #@38
    move-result v8

    #@39
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@3c
    move-result v9

    #@3d
    invoke-virtual {p1, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@40
    move-result v5

    #@41
    .line 250
    .local v5, "offset":I
    sget-object v8, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    #@43
    const/16 v9, 0x22

    #@45
    invoke-interface {p2, v8, v5, v5, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@48
    .line 255
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    #@4b
    move-result-object v8

    #@4c
    invoke-interface {v8, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@4f
    .line 302
    .end local v5    # "offset":I
    :cond_3
    return v2

    #@50
    .line 257
    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    #@53
    move-result v8

    #@54
    if-eqz v8, :cond_3

    #@56
    .line 258
    const/4 v8, 0x2

    #@57
    if-ne v0, v8, :cond_5

    #@59
    .line 259
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@5c
    move-result v8

    #@5d
    if-eqz v8, :cond_3

    #@5f
    if-eqz v2, :cond_3

    #@61
    .line 260
    sget-object v8, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    #@63
    invoke-interface {p2, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@66
    move-result v6

    #@67
    .line 267
    .local v6, "startOffset":I
    invoke-virtual {p1}, Landroid/widget/TextView;->cancelLongPress()V

    #@6a
    .line 272
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    #@6d
    move-result v8

    #@6e
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@71
    move-result v9

    #@72
    invoke-virtual {p1, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@75
    move-result v5

    #@76
    .line 273
    .restart local v5    # "offset":I
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    #@79
    move-result v8

    #@7a
    .line 274
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    #@7d
    move-result v9

    #@7e
    .line 273
    invoke-static {p2, v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@81
    .line 275
    return v10

    #@82
    .line 277
    .end local v5    # "offset":I
    .end local v6    # "startOffset":I
    :cond_5
    if-ne v0, v10, :cond_3

    #@84
    .line 282
    if-ltz v4, :cond_7

    #@86
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    #@89
    move-result v8

    #@8a
    if-eq v4, v8, :cond_7

    #@8c
    .line 284
    :cond_6
    invoke-virtual {p1}, Landroid/widget/TextView;->moveCursorToVisibleOffset()Z

    #@8f
    .line 285
    return v10

    #@90
    .line 283
    :cond_7
    if-ltz v3, :cond_8

    #@92
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    #@95
    move-result v8

    #@96
    if-ne v3, v8, :cond_6

    #@98
    .line 288
    :cond_8
    if-eqz v7, :cond_9

    #@9a
    .line 289
    sget-object v8, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    #@9c
    invoke-interface {p2, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@9f
    move-result v6

    #@a0
    .line 290
    .restart local v6    # "startOffset":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    #@a3
    move-result v8

    #@a4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@a7
    move-result v9

    #@a8
    invoke-virtual {p1, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@ab
    move-result v1

    #@ac
    .line 291
    .local v1, "endOffset":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    #@af
    move-result v8

    #@b0
    .line 292
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    #@b3
    move-result v9

    #@b4
    .line 291
    invoke-static {p2, v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@b7
    .line 293
    sget-object v8, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    #@b9
    invoke-interface {p2, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@bc
    .line 296
    .end local v1    # "endOffset":I
    .end local v6    # "startOffset":I
    :cond_9
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    #@bf
    .line 297
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    #@c2
    .line 299
    return v10
.end method

.method protected pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 7
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v1

    #@4
    .line 135
    .local v1, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@7
    move-result v3

    #@8
    .line 136
    .local v3, "selecting":Z
    invoke-static {p2, v1}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    #@b
    move-result v5

    #@c
    invoke-static {p1}, Landroid/text/method/ArrowKeyMovementMethod;->getPageHeight(Landroid/widget/TextView;)I

    #@f
    move-result v6

    #@10
    add-int v4, v5, v6

    #@12
    .line 137
    .local v4, "targetY":I
    const/4 v0, 0x0

    #@13
    .line 139
    .local v0, "handled":Z
    :cond_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@16
    move-result v2

    #@17
    .line 140
    .local v2, "previousSelectionEnd":I
    if-eqz v3, :cond_1

    #@19
    .line 141
    invoke-static {p2, v1}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@1c
    .line 145
    :goto_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@1f
    move-result v5

    #@20
    if-ne v5, v2, :cond_2

    #@22
    .line 153
    :goto_1
    return v0

    #@23
    .line 143
    :cond_1
    invoke-static {p2, v1}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@26
    goto :goto_0

    #@27
    .line 148
    :cond_2
    const/4 v0, 0x1

    #@28
    .line 149
    invoke-static {p2, v1}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    #@2b
    move-result v5

    #@2c
    if-lt v5, v4, :cond_0

    #@2e
    goto :goto_1
.end method

.method protected pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 7
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v1

    #@4
    .line 111
    .local v1, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@7
    move-result v3

    #@8
    .line 112
    .local v3, "selecting":Z
    invoke-static {p2, v1}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    #@b
    move-result v5

    #@c
    invoke-static {p1}, Landroid/text/method/ArrowKeyMovementMethod;->getPageHeight(Landroid/widget/TextView;)I

    #@f
    move-result v6

    #@10
    sub-int v4, v5, v6

    #@12
    .line 113
    .local v4, "targetY":I
    const/4 v0, 0x0

    #@13
    .line 115
    .local v0, "handled":Z
    :cond_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@16
    move-result v2

    #@17
    .line 116
    .local v2, "previousSelectionEnd":I
    if-eqz v3, :cond_1

    #@19
    .line 117
    invoke-static {p2, v1}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@1c
    .line 121
    :goto_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@1f
    move-result v5

    #@20
    if-ne v5, v2, :cond_2

    #@22
    .line 129
    :goto_1
    return v0

    #@23
    .line 119
    :cond_1
    invoke-static {p2, v1}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@26
    goto :goto_0

    #@27
    .line 124
    :cond_2
    const/4 v0, 0x1

    #@28
    .line 125
    invoke-static {p2, v1}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    #@2b
    move-result v5

    #@2c
    if-gt v5, v4, :cond_0

    #@2e
    goto :goto_1
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v0

    #@4
    .line 81
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 82
    invoke-static {p2, v0}, Landroid/text/Selection;->extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 84
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@12
    move-result v1

    #@13
    return v1
.end method

.method protected rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    #@3
    move-result v0

    #@4
    .line 209
    .local v0, "selectionEnd":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    #@7
    move-result-object v1

    #@8
    .line 210
    .local v1, "wordIterator":Landroid/text/method/WordIterator;
    invoke-virtual {v1, p2, v0, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    #@b
    .line 211
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@e
    move-result v2

    #@f
    invoke-static {p2, v1, v2}, Landroid/text/Selection;->moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z

    #@12
    move-result v2

    #@13
    return v2
.end method

.method protected top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 158
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 159
    invoke-static {p2, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@a
    .line 163
    :goto_0
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 161
    :cond_0
    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@f
    goto :goto_0
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v0

    #@4
    .line 91
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 92
    invoke-static {p2, v0}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 94
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@12
    move-result v1

    #@13
    return v1
.end method
