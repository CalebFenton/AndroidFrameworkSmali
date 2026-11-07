.class public Landroid/text/method/ArrowKeyMovementMethod;
.super Landroid/text/method/BaseMovementMethod;
.source "ArrowKeyMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# static fields
.field private static final greylist-max-o LAST_TAP_DOWN:Ljava/lang/Object;

.field private static greylist-max-o sInstance:Landroid/text/method/ArrowKeyMovementMethod;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 387
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/text/method/BaseMovementMethod;-><init>()V

    return-void
.end method

.method private static greylist-max-o getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I
    .registers 3
    .param p0, "buffer"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 41
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getInstance()Landroid/text/method/MovementMethod;
    .registers 1

    .line 380
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    if-nez v0, :cond_b

    .line 381
    new-instance v0, Landroid/text/method/ArrowKeyMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    .line 384
    :cond_b
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    return-object v0
.end method

.method private static greylist-max-o getPageHeight(Landroid/widget/TextView;)I
    .registers 3
    .param p0, "widget"    # Landroid/widget/TextView;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 49
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private static greylist-max-o isSelecting(Landroid/text/Spannable;)Z
    .registers 3
    .param p0, "buffer"    # Landroid/text/Spannable;

    .line 36
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eq v1, v0, :cond_12

    .line 37
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    nop

    .line 36
    :goto_13
    return v0
.end method


# virtual methods
.method protected whitelist bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 188
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 189
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_15

    .line 191
    :cond_e
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 193
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist canSelectArbitrarily()Z
    .registers 2

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 111
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 112
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 115
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 116
    invoke-static {p2, v0}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 118
    :cond_17
    invoke-static {p2, v0}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected whitelist end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 247
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected whitelist handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "movementMetaState"    # I
    .param p5, "event"    # Landroid/view/KeyEvent;

    .line 55
    packed-switch p3, :pswitch_data_28

    goto :goto_23

    .line 57
    :pswitch_4
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 58
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_23

    .line 59
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_23

    .line 60
    const/16 v0, 0x800

    invoke-static {p2, v0, p5}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v0

    if-eqz v0, :cond_23

    .line 62
    invoke-virtual {p1}, Landroid/widget/TextView;->showContextMenu()Z

    move-result v0

    return v0

    .line 67
    :cond_23
    :goto_23
    invoke-super/range {p0 .. p5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_28
    .packed-switch 0x17
        :pswitch_4
    .end packed-switch
.end method

.method protected whitelist home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 242
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method public whitelist initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;

    .line 364
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 365
    return-void
.end method

.method protected whitelist left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 72
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 73
    const/4 v0, 0x0

    return v0

    .line 75
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 76
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 77
    invoke-static {p2, v0}, Landroid/text/Selection;->extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 79
    :cond_17
    invoke-static {p2, v0}, Landroid/text/Selection;->moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected greylist-max-o leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 6
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 225
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 226
    .local v0, "selectionEnd":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v1

    .line 227
    .local v1, "wordIterator":Landroid/text/method/WordIterator;
    invoke-virtual {v1, p2, v0, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 228
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/text/Selection;->moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z

    move-result v2

    return v2
.end method

.method protected whitelist lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 211
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 212
    const/4 v0, 0x0

    return v0

    .line 214
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 215
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 216
    invoke-static {p2, v0}, Landroid/text/Selection;->extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 218
    :cond_17
    invoke-static {p2, v0}, Landroid/text/Selection;->moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected whitelist lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 198
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 199
    const/4 v0, 0x0

    return v0

    .line 201
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 202
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 203
    invoke-static {p2, v0}, Landroid/text/Selection;->extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 205
    :cond_17
    invoke-static {p2, v0}, Landroid/text/Selection;->moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method public whitelist nextParagraph(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 265
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 266
    const/4 v0, 0x0

    return v0

    .line 268
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 269
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 270
    invoke-static {p2}, Landroid/text/Selection;->extendToParagraphEnd(Landroid/text/Spannable;)Z

    move-result v1

    return v1

    .line 272
    :cond_17
    invoke-static {p2, v0}, Landroid/text/Selection;->moveToParagraphEnd(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method public whitelist onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 5
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "dir"    # I

    .line 369
    and-int/lit16 v0, p3, 0x82

    if-eqz v0, :cond_12

    .line 370
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_19

    .line 372
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_19

    .line 375
    :cond_12
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 377
    :cond_19
    :goto_19
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 278
    const/4 v0, -0x1

    .line 279
    .local v0, "initialScrollX":I
    const/4 v1, -0x1

    .line 280
    .local v1, "initialScrollY":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 282
    .local v2, "action":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 283
    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v0

    .line 284
    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v1

    .line 287
    :cond_11
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v4

    .line 288
    .local v4, "wasTouchSelecting":Z
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v5

    .line 290
    .local v5, "handled":Z
    invoke-virtual {p1}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 291
    return v5

    .line 293
    :cond_20
    if-nez v2, :cond_51

    .line 295
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v6

    if-eqz v6, :cond_c4

    .line 296
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_35

    .line 297
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    move-result v6

    if-nez v6, :cond_35

    .line 298
    return v5

    .line 301
    :cond_35
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v6

    .line 302
    .local v6, "offset":I
    sget-object v7, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    const/16 v8, 0x22

    invoke-interface {p2, v7, v6, v6, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 307
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 308
    .end local v6    # "offset":I
    goto/16 :goto_c4

    .line 309
    :cond_51
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_c4

    .line 310
    const/4 v6, 0x2

    if-ne v2, v6, :cond_83

    .line 311
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v6

    if-eqz v6, :cond_c4

    if-eqz v5, :cond_c4

    .line 312
    sget-object v6, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    invoke-interface {p2, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 319
    .local v6, "startOffset":I
    invoke-virtual {p1}, Landroid/widget/TextView;->cancelLongPress()V

    .line 324
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v7

    .line 325
    .local v7, "offset":I
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 326
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 325
    invoke-static {p2, v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 327
    return v3

    .line 329
    .end local v6    # "startOffset":I
    .end local v7    # "offset":I
    :cond_83
    if-ne v2, v3, :cond_c4

    .line 334
    if-ltz v1, :cond_8d

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    if-ne v1, v6, :cond_95

    :cond_8d
    if-ltz v0, :cond_99

    .line 335
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    if-eq v0, v6, :cond_99

    .line 336
    :cond_95
    invoke-virtual {p1}, Landroid/widget/TextView;->moveCursorToVisibleOffset()Z

    .line 337
    return v3

    .line 340
    :cond_99
    if-eqz v4, :cond_bd

    .line 341
    sget-object v6, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    invoke-interface {p2, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 342
    .restart local v6    # "startOffset":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v7

    .line 343
    .local v7, "endOffset":I
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 344
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 343
    invoke-static {p2, v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 345
    sget-object v8, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    invoke-interface {p2, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 348
    .end local v6    # "startOffset":I
    .end local v7    # "endOffset":I
    :cond_bd
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 349
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 351
    return v3

    .line 354
    :cond_c4
    :goto_c4
    return v5
.end method

.method protected whitelist pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 9
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 151
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 152
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 155
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    .line 156
    .local v1, "selecting":Z
    invoke-static {p2, v0}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    move-result v2

    invoke-static {p1}, Landroid/text/method/ArrowKeyMovementMethod;->getPageHeight(Landroid/widget/TextView;)I

    move-result v3

    add-int/2addr v2, v3

    .line 157
    .local v2, "targetY":I
    const/4 v3, 0x0

    .line 159
    .local v3, "handled":Z
    :goto_1a
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 160
    .local v4, "previousSelectionEnd":I
    if-eqz v1, :cond_24

    .line 161
    invoke-static {p2, v0}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_27

    .line 163
    :cond_24
    invoke-static {p2, v0}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 165
    :goto_27
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-ne v5, v4, :cond_2e

    .line 166
    goto :goto_36

    .line 168
    :cond_2e
    const/4 v3, 0x1

    .line 169
    invoke-static {p2, v0}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    move-result v5

    if-lt v5, v2, :cond_37

    .line 170
    nop

    .line 173
    .end local v4    # "previousSelectionEnd":I
    :goto_36
    return v3

    .line 172
    :cond_37
    goto :goto_1a
.end method

.method protected whitelist pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 9
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 124
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 125
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 128
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    .line 129
    .local v1, "selecting":Z
    invoke-static {p2, v0}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    move-result v2

    invoke-static {p1}, Landroid/text/method/ArrowKeyMovementMethod;->getPageHeight(Landroid/widget/TextView;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 130
    .local v2, "targetY":I
    const/4 v3, 0x0

    .line 132
    .local v3, "handled":Z
    :goto_1a
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 133
    .local v4, "previousSelectionEnd":I
    if-eqz v1, :cond_24

    .line 134
    invoke-static {p2, v0}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_27

    .line 136
    :cond_24
    invoke-static {p2, v0}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 138
    :goto_27
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-ne v5, v4, :cond_2e

    .line 139
    goto :goto_36

    .line 141
    :cond_2e
    const/4 v3, 0x1

    .line 142
    invoke-static {p2, v0}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    move-result v5

    if-gt v5, v2, :cond_37

    .line 143
    nop

    .line 146
    .end local v4    # "previousSelectionEnd":I
    :goto_36
    return v3

    .line 145
    :cond_37
    goto :goto_1a
.end method

.method public whitelist previousParagraph(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 252
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 253
    const/4 v0, 0x0

    return v0

    .line 255
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 256
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 257
    invoke-static {p2}, Landroid/text/Selection;->extendToParagraphStart(Landroid/text/Spannable;)Z

    move-result v1

    return v1

    .line 259
    :cond_17
    invoke-static {p2, v0}, Landroid/text/Selection;->moveToParagraphStart(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected whitelist right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 85
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 86
    const/4 v0, 0x0

    return v0

    .line 88
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 89
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 90
    invoke-static {p2, v0}, Landroid/text/Selection;->extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 92
    :cond_17
    invoke-static {p2, v0}, Landroid/text/Selection;->moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected greylist-max-o rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 6
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 234
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 235
    .local v0, "selectionEnd":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v1

    .line 236
    .local v1, "wordIterator":Landroid/text/method/WordIterator;
    invoke-virtual {v1, p2, v0, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 237
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/text/Selection;->moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z

    move-result v2

    return v2
.end method

.method protected whitelist top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 178
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 179
    invoke-static {p2, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_e

    .line 181
    :cond_b
    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 183
    :goto_e
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 98
    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 99
    const/4 v0, 0x0

    return v0

    .line 101
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 102
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 103
    invoke-static {p2, v0}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 105
    :cond_17
    invoke-static {p2, v0}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method
