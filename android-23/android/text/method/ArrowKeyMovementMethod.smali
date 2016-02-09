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
    .line 348
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
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
    .line 40
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
    .line 341
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 342
    new-instance v0, Landroid/text/method/ArrowKeyMovementMethod;

    #@6
    invoke-direct {v0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    #@9
    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    #@b
    .line 345
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
    .line 47
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5
    .line 48
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
    .line 35
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    #@5
    move-result v2

    #@6
    if-eq v2, v0, :cond_0

    #@8
    .line 36
    const/16 v2, 0x800

    #@a
    invoke-static {p0, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 35
    :cond_0
    :goto_0
    return v0

    #@11
    :cond_1
    move v0, v1

    #@12
    .line 36
    goto :goto_0
.end method

.method private static isTouchSelecting(ZLandroid/text/Spannable;)Z
    .locals 1
    .param p0, "isMouse"    # Z
    .param p1, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 226
    if-eqz p0, :cond_0

    #@2
    invoke-static {p1}, Landroid/text/method/Touch;->isActivelySelecting(Landroid/text/Spannable;)Z

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    invoke-static {p1}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@a
    move-result v0

    #@b
    goto :goto_0
.end method


# virtual methods
.method protected bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 169
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 170
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    #@9
    move-result v0

    #@a
    invoke-static {p2, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@d
    .line 174
    :goto_0
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 172
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
    .line 320
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
    .line 101
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v0

    #@4
    .line 102
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 103
    invoke-static {p2, v0}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 105
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
    .line 222
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
    .line 54
    packed-switch p3, :pswitch_data_0

    #@3
    .line 66
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 56
    :pswitch_0
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 57
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 58
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 60
    const/16 v0, 0x800

    #@1c
    .line 59
    invoke-static {p2, v0, p5}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 61
    invoke-virtual {p1}, Landroid/widget/TextView;->showContextMenu()Z

    #@25
    move-result v0

    #@26
    return v0

    #@27
    .line 54
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
    .line 217
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
    .line 325
    const/4 v0, 0x0

    #@1
    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@4
    .line 324
    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v0

    #@4
    .line 72
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 73
    invoke-static {p2, v0}, Landroid/text/Selection;->extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 75
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
    .line 200
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    #@3
    move-result v0

    #@4
    .line 201
    .local v0, "selectionEnd":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    #@7
    move-result-object v1

    #@8
    .line 202
    .local v1, "wordIterator":Landroid/text/method/WordIterator;
    invoke-virtual {v1, p2, v0, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    #@b
    .line 203
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
    .line 189
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v0

    #@4
    .line 190
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 191
    invoke-static {p2, v0}, Landroid/text/Selection;->extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 193
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
    .line 179
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v0

    #@4
    .line 180
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 181
    invoke-static {p2, v0}, Landroid/text/Selection;->extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 183
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
    .line 330
    and-int/lit16 v0, p3, 0x82

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 331
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 333
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    #@d
    move-result v0

    #@e
    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@11
    .line 329
    :cond_0
    :goto_0
    return-void

    #@12
    .line 336
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
    .locals 9
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 231
    const/4 v2, -0x1

    #@2
    .line 232
    .local v2, "initialScrollX":I
    const/4 v3, -0x1

    #@3
    .line 233
    .local v3, "initialScrollY":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    #@6
    move-result v0

    #@7
    .line 234
    .local v0, "action":I
    const/16 v6, 0x2002

    #@9
    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    #@c
    move-result v4

    #@d
    .line 236
    .local v4, "isMouse":Z
    if-ne v0, v8, :cond_0

    #@f
    .line 237
    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    #@12
    move-result v2

    #@13
    .line 238
    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    #@16
    move-result v3

    #@17
    .line 241
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    #@1a
    move-result v1

    #@1b
    .line 243
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    #@1e
    move-result v6

    #@1f
    if-eqz v6, :cond_1

    #@21
    if-eqz v4, :cond_3

    #@23
    .line 246
    :cond_1
    if-nez v0, :cond_6

    #@25
    .line 251
    if-nez v4, :cond_2

    #@27
    invoke-static {v4, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isTouchSelecting(ZLandroid/text/Spannable;)Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_5

    #@2d
    .line 252
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    #@30
    move-result v6

    #@31
    if-nez v6, :cond_4

    #@33
    .line 253
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    #@36
    move-result v6

    #@37
    if-nez v6, :cond_4

    #@39
    .line 254
    return v1

    #@3a
    .line 244
    :cond_3
    return v1

    #@3b
    .line 257
    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    #@3e
    move-result v6

    #@3f
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@42
    move-result v7

    #@43
    invoke-virtual {p1, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@46
    move-result v5

    #@47
    .line 258
    .local v5, "offset":I
    sget-object v6, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    #@49
    const/16 v7, 0x22

    #@4b
    invoke-interface {p2, v6, v5, v5, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@4e
    .line 263
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    #@51
    move-result-object v6

    #@52
    invoke-interface {v6, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@55
    .line 315
    .end local v5    # "offset":I
    :cond_5
    return v1

    #@56
    .line 265
    :cond_6
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    #@59
    move-result v6

    #@5a
    if-eqz v6, :cond_5

    #@5c
    .line 266
    const/4 v6, 0x2

    #@5d
    if-ne v0, v6, :cond_8

    #@5f
    .line 270
    if-eqz v4, :cond_7

    #@61
    invoke-static {p2}, Landroid/text/method/Touch;->isSelectionStarted(Landroid/text/Spannable;)Z

    #@64
    move-result v6

    #@65
    if-eqz v6, :cond_7

    #@67
    .line 271
    sget-object v6, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    #@69
    invoke-interface {p2, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@6c
    move-result v5

    #@6d
    .line 272
    .restart local v5    # "offset":I
    invoke-static {p2, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@70
    .line 275
    .end local v5    # "offset":I
    :cond_7
    invoke-static {v4, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isTouchSelecting(ZLandroid/text/Spannable;)Z

    #@73
    move-result v6

    #@74
    if-eqz v6, :cond_5

    #@76
    if-eqz v1, :cond_5

    #@78
    .line 282
    invoke-virtual {p1}, Landroid/widget/TextView;->cancelLongPress()V

    #@7b
    .line 287
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    #@7e
    move-result v6

    #@7f
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@82
    move-result v7

    #@83
    invoke-virtual {p1, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@86
    move-result v5

    #@87
    .line 289
    .restart local v5    # "offset":I
    invoke-static {p2, v5}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@8a
    .line 290
    return v8

    #@8b
    .line 292
    .end local v5    # "offset":I
    :cond_8
    if-ne v0, v8, :cond_5

    #@8d
    .line 297
    if-ltz v3, :cond_a

    #@8f
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    #@92
    move-result v6

    #@93
    if-eq v3, v6, :cond_a

    #@95
    .line 299
    :cond_9
    invoke-virtual {p1}, Landroid/widget/TextView;->moveCursorToVisibleOffset()Z

    #@98
    .line 300
    return v8

    #@99
    .line 298
    :cond_a
    if-ltz v2, :cond_b

    #@9b
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    #@9e
    move-result v6

    #@9f
    if-ne v2, v6, :cond_9

    #@a1
    .line 303
    :cond_b
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    #@a4
    move-result v6

    #@a5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@a8
    move-result v7

    #@a9
    invoke-virtual {p1, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@ac
    move-result v5

    #@ad
    .line 304
    .restart local v5    # "offset":I
    invoke-static {v4, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isTouchSelecting(ZLandroid/text/Spannable;)Z

    #@b0
    move-result v6

    #@b1
    if-eqz v6, :cond_c

    #@b3
    .line 305
    sget-object v6, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    #@b5
    invoke-interface {p2, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@b8
    .line 306
    invoke-static {p2, v5}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@bb
    .line 309
    :cond_c
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    #@be
    .line 310
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    #@c1
    .line 312
    return v8
.end method

.method protected pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 7
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v1

    #@4
    .line 136
    .local v1, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@7
    move-result v3

    #@8
    .line 137
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
    .line 138
    .local v4, "targetY":I
    const/4 v0, 0x0

    #@13
    .line 140
    .local v0, "handled":Z
    :cond_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@16
    move-result v2

    #@17
    .line 141
    .local v2, "previousSelectionEnd":I
    if-eqz v3, :cond_1

    #@19
    .line 142
    invoke-static {p2, v1}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@1c
    .line 146
    :goto_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@1f
    move-result v5

    #@20
    if-ne v5, v2, :cond_2

    #@22
    .line 154
    :goto_1
    return v0

    #@23
    .line 144
    :cond_1
    invoke-static {p2, v1}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@26
    goto :goto_0

    #@27
    .line 149
    :cond_2
    const/4 v0, 0x1

    #@28
    .line 150
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
    .line 111
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v1

    #@4
    .line 112
    .local v1, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@7
    move-result v3

    #@8
    .line 113
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
    .line 114
    .local v4, "targetY":I
    const/4 v0, 0x0

    #@13
    .line 116
    .local v0, "handled":Z
    :cond_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@16
    move-result v2

    #@17
    .line 117
    .local v2, "previousSelectionEnd":I
    if-eqz v3, :cond_1

    #@19
    .line 118
    invoke-static {p2, v1}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@1c
    .line 122
    :goto_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@1f
    move-result v5

    #@20
    if-ne v5, v2, :cond_2

    #@22
    .line 130
    :goto_1
    return v0

    #@23
    .line 120
    :cond_1
    invoke-static {p2, v1}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@26
    goto :goto_0

    #@27
    .line 125
    :cond_2
    const/4 v0, 0x1

    #@28
    .line 126
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
    .line 81
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v0

    #@4
    .line 82
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 83
    invoke-static {p2, v0}, Landroid/text/Selection;->extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 85
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
    .line 209
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    #@3
    move-result v0

    #@4
    .line 210
    .local v0, "selectionEnd":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    #@7
    move-result-object v1

    #@8
    .line 211
    .local v1, "wordIterator":Landroid/text/method/WordIterator;
    invoke-virtual {v1, p2, v0, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    #@b
    .line 212
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
    .line 159
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 160
    invoke-static {p2, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@a
    .line 164
    :goto_0
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 162
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
    .line 91
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v0

    #@4
    .line 92
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 93
    invoke-static {p2, v0}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 95
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    #@12
    move-result v1

    #@13
    return v1
.end method
