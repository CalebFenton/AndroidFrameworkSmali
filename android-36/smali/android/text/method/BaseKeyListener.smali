.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# static fields
.field private static final greylist-max-o CARRIAGE_RETURN:I = 0xd

.field private static final greylist-max-o LINE_FEED:I = 0xa

.field static final greylist-max-o OLD_SEL_START:Ljava/lang/Object;

.field static greylist-max-o sCachedPaint:Landroid/graphics/Paint;


# instance fields
.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static greylist-max-o adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I
    .registers 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "moveToStart"    # Z

    .line 95
    instance-of v0, p0, Landroid/text/Spanned;

    if-nez v0, :cond_5

    .line 96
    return p1

    .line 99
    :cond_5
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p1, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    .line 100
    .local v0, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, v0

    if-ge v1, v2, :cond_33

    .line 101
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 102
    .local v2, "start":I
    move-object v3, p0

    check-cast v3, Landroid/text/Spanned;

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 104
    .local v3, "end":I
    if-ge v2, p1, :cond_30

    if-le v3, p1, :cond_30

    .line 105
    if-eqz p2, :cond_2e

    move v4, v2

    goto :goto_2f

    :cond_2e
    move v4, v3

    :goto_2f
    move p1, v4

    .line 100
    .end local v2    # "start":I
    .end local v3    # "end":I
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 108
    .end local v1    # "i":I
    :cond_33
    return p1
.end method

.method private greylist-max-o backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;
    .param p5, "isForwardDelete"    # Z

    .line 325
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0x70f4

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 327
    return v1

    .line 331
    :cond_e
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    .line 332
    return v2

    .line 336
    :cond_16
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v1

    .line 337
    .local v0, "isCtrlActive":Z
    :goto_21
    invoke-static {p2, v2, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v3

    if-ne v3, v2, :cond_29

    move v3, v2

    goto :goto_2a

    :cond_29
    move v3, v1

    .line 338
    .local v3, "isShiftActive":Z
    :goto_2a
    const/4 v4, 0x2

    invoke-static {p2, v4, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v4

    if-ne v4, v2, :cond_33

    move v4, v2

    goto :goto_34

    :cond_33
    move v4, v1

    .line 340
    .local v4, "isAltActive":Z
    :goto_34
    if-eqz v0, :cond_41

    .line 341
    if-nez v4, :cond_40

    if-eqz v3, :cond_3b

    goto :goto_40

    .line 345
    :cond_3b
    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z

    move-result v1

    return v1

    .line 343
    :cond_40
    :goto_40
    return v1

    .line 349
    :cond_41
    if-eqz v4, :cond_4a

    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteLineFromCursor(Landroid/view/View;Landroid/text/Editable;Z)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 350
    return v2

    .line 354
    :cond_4a
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    .line 356
    .local v5, "start":I
    if-eqz p5, :cond_76

    .line 358
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_5c

    .line 359
    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .local v6, "paint":Landroid/graphics/Paint;
    goto :goto_6e

    .line 361
    .end local v6    # "paint":Landroid/graphics/Paint;
    :cond_5c
    iget-object v6, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 362
    :try_start_5f
    sget-object v7, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    if-nez v7, :cond_6a

    .line 363
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    sput-object v7, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    .line 365
    :cond_6a
    sget-object v7, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    .line 366
    .local v7, "paint":Landroid/graphics/Paint;
    monitor-exit v6
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_73

    move-object v6, v7

    .line 368
    .end local v7    # "paint":Landroid/graphics/Paint;
    .restart local v6    # "paint":Landroid/graphics/Paint;
    :goto_6e
    invoke-static {p2, v5, v6}, Landroid/text/method/BaseKeyListener;->getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I

    move-result v6

    .line 369
    .local v6, "end":I
    goto :goto_7a

    .line 366
    .end local v6    # "end":I
    :catchall_73
    move-exception v1

    :try_start_74
    monitor-exit v6
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v1

    .line 370
    :cond_76
    invoke-static {p2, v5}, Landroid/text/method/BaseKeyListener;->getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 372
    .restart local v6    # "end":I
    :goto_7a
    if-eq v5, v6, :cond_88

    .line 373
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {p2, v1, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 374
    return v2

    .line 376
    :cond_88
    return v1
.end method

.method private blacklist deleteLineFromCursor(Landroid/view/View;Landroid/text/Editable;Z)Z
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "forward"    # Z

    .line 443
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3d

    .line 444
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 445
    .local v0, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 448
    .local v1, "selectionEnd":I
    if-ge v0, v1, :cond_11

    .line 449
    move v2, v0

    .line 450
    .local v2, "selectionMin":I
    move v3, v1

    .local v3, "selectionMax":I
    goto :goto_13

    .line 452
    .end local v2    # "selectionMin":I
    .end local v3    # "selectionMax":I
    :cond_11
    move v2, v1

    .line 453
    .restart local v2    # "selectionMin":I
    move v3, v0

    .line 456
    .restart local v3    # "selectionMax":I
    :goto_13
    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    .line 457
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 458
    .local v5, "layout":Landroid/text/Layout;
    if-eqz v5, :cond_3d

    invoke-virtual {v4}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v6

    if-nez v6, :cond_3d

    .line 459
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 460
    .local v6, "line":I
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    .line 461
    .local v7, "start":I
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 463
    .local v8, "end":I
    if-eqz p3, :cond_38

    .line 464
    invoke-interface {p2, v2, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_3b

    .line 466
    :cond_38
    invoke-interface {p2, v7, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 469
    :goto_3b
    const/4 v9, 0x1

    return v9

    .line 472
    .end local v0    # "selectionStart":I
    .end local v1    # "selectionEnd":I
    .end local v2    # "selectionMin":I
    .end local v3    # "selectionMax":I
    .end local v4    # "textView":Landroid/widget/TextView;
    .end local v5    # "layout":Landroid/text/Layout;
    .end local v6    # "line":I
    .end local v7    # "start":I
    .end local v8    # "end":I
    :cond_3d
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    .line 428
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 429
    .local v0, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 430
    .local v1, "selectionEnd":I
    if-ge v1, v0, :cond_d

    .line 431
    move v2, v1

    .line 432
    .local v2, "temp":I
    move v1, v0

    .line 433
    move v0, v2

    .line 435
    .end local v2    # "temp":I
    :cond_d
    if-eq v0, v1, :cond_14

    .line 436
    invoke-interface {p2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 437
    const/4 v2, 0x1

    return v2

    .line 439
    :cond_14
    const/4 v2, 0x0

    return v2
.end method

.method private greylist-max-o deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "isForwardDelete"    # Z

    .line 380
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 383
    .local v0, "currentCursorOffset":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 384
    return v2

    .line 388
    :cond_c
    if-nez p3, :cond_10

    if-eqz v0, :cond_18

    :cond_10
    if-eqz p3, :cond_19

    .line 389
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 390
    :cond_18
    return v2

    .line 393
    :cond_19
    const/4 v1, 0x0

    .line 394
    .local v1, "wordIterator":Landroid/text/method/WordIterator;
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_25

    .line 395
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v1

    .line 398
    :cond_25
    if-nez v1, :cond_2d

    .line 402
    new-instance v3, Landroid/text/method/WordIterator;

    invoke-direct {v3}, Landroid/text/method/WordIterator;-><init>()V

    move-object v1, v3

    .line 408
    :cond_2d
    const/4 v3, -0x1

    if-eqz p3, :cond_43

    .line 409
    move v2, v0

    .line 410
    .local v2, "deleteFrom":I
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v1, p2, v2, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 411
    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->following(I)I

    move-result v4

    .line 412
    .local v4, "deleteTo":I
    if-ne v4, v3, :cond_4e

    .line 413
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    goto :goto_4e

    .line 416
    .end local v2    # "deleteFrom":I
    .end local v4    # "deleteTo":I
    :cond_43
    move v4, v0

    .line 417
    .restart local v4    # "deleteTo":I
    invoke-virtual {v1, p2, v2, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 418
    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v2

    .line 419
    .restart local v2    # "deleteFrom":I
    if-ne v2, v3, :cond_4e

    .line 420
    const/4 v2, 0x0

    .line 423
    :cond_4e
    :goto_4e
    invoke-interface {p2, v2, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 424
    const/4 v3, 0x1

    return v3
.end method

.method private static greylist-max-o getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I
    .registers 26
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 113
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_9

    .line 114
    const/4 v2, 0x0

    return v2

    .line 118
    :cond_9
    const/4 v3, 0x0

    .line 121
    .local v3, "STATE_START":I
    const/4 v4, 0x1

    .line 124
    .local v4, "STATE_LF":I
    const/4 v5, 0x2

    .line 126
    .local v5, "STATE_BEFORE_KEYCAP":I
    const/4 v6, 0x3

    .line 129
    .local v6, "STATE_BEFORE_VS_AND_KEYCAP":I
    const/4 v7, 0x4

    .line 131
    .local v7, "STATE_BEFORE_EMOJI_MODIFIER":I
    const/4 v8, 0x5

    .line 134
    .local v8, "STATE_BEFORE_VS_AND_EMOJI_MODIFIER":I
    const/4 v9, 0x6

    .line 137
    .local v9, "STATE_BEFORE_VS":I
    const/4 v10, 0x7

    .line 139
    .local v10, "STATE_BEFORE_EMOJI":I
    const/16 v11, 0x8

    .line 142
    .local v11, "STATE_BEFORE_ZWJ":I
    const/16 v12, 0x9

    .line 145
    .local v12, "STATE_BEFORE_VS_AND_ZWJ":I
    const/16 v13, 0xa

    .line 147
    .local v13, "STATE_ODD_NUMBERED_RIS":I
    const/16 v14, 0xb

    .line 150
    .local v14, "STATE_EVEN_NUMBERED_RIS":I
    const/16 v15, 0xc

    .line 153
    .local v15, "STATE_IN_TAG_SEQUENCE":I
    const/16 v16, 0xd

    .line 155
    .local v16, "STATE_FINISHED":I
    const/16 v17, 0x0

    .line 156
    .local v17, "deleteCharCount":I
    const/16 v18, 0x0

    .line 158
    .local v18, "lastSeenVSCharCount":I
    const/16 v19, 0x0

    .line 160
    .local v19, "state":I
    move/from16 v20, p1

    move/from16 v1, v19

    move/from16 v19, v2

    move v2, v1

    move/from16 v1, v20

    .line 162
    .end local v19    # "state":I
    .local v1, "tmpOffset":I
    .local v2, "state":I
    :goto_2c
    move/from16 v20, v3

    .end local v3    # "STATE_START":I
    .local v20, "STATE_START":I
    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 163
    .local v3, "codePoint":I
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v21

    sub-int v1, v1, v21

    .line 165
    move/from16 v21, v1

    .end local v1    # "tmpOffset":I
    .local v21, "tmpOffset":I
    packed-switch v2, :pswitch_data_1ea

    .line 301
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    .end local v3    # "codePoint":I
    .local v19, "codePoint":I
    const-string/jumbo v3, "state "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is unknown"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    .end local v19    # "codePoint":I
    .restart local v3    # "codePoint":I
    :pswitch_5f
    invoke-static {v3}, Landroid/text/Emoji;->isTagSpecChar(I)Z

    move-result v22

    if-eqz v22, :cond_69

    .line 288
    add-int/lit8 v17, v17, 0x2

    goto/16 :goto_1d3

    .line 290
    :cond_69
    invoke-static {v3}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_79

    .line 291
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v17, v17, v22

    .line 292
    const/16 v2, 0xd

    goto/16 :goto_1d3

    .line 295
    :cond_79
    const/16 v17, 0x2

    .line 296
    const/16 v2, 0xd

    .line 299
    goto/16 :goto_1d3

    .line 201
    :pswitch_7f
    invoke-static {v3}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v22

    if-eqz v22, :cond_8b

    .line 202
    add-int/lit8 v17, v17, -0x2

    .line 203
    const/16 v2, 0xa

    goto/16 :goto_1d3

    .line 205
    :cond_8b
    const/16 v2, 0xd

    .line 207
    goto/16 :goto_1d3

    .line 193
    :pswitch_8f
    invoke-static {v3}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v22

    if-eqz v22, :cond_9b

    .line 194
    add-int/lit8 v17, v17, 0x2

    .line 195
    const/16 v2, 0xb

    goto/16 :goto_1d3

    .line 197
    :cond_9b
    const/16 v2, 0xd

    .line 199
    goto/16 :goto_1d3

    .line 277
    :pswitch_9f
    invoke-static {v3}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_b4

    .line 279
    add-int/lit8 v22, v18, 0x1

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v23

    add-int v22, v22, v23

    add-int v17, v17, v22

    .line 280
    const/16 v18, 0x0

    .line 281
    const/4 v2, 0x7

    goto/16 :goto_1d3

    .line 283
    :cond_b4
    const/16 v2, 0xd

    .line 285
    goto/16 :goto_1d3

    .line 265
    :pswitch_b8
    invoke-static {v3}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_d5

    .line 266
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    add-int v17, v17, v22

    .line 267
    invoke-static {v3}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v22

    if-eqz v22, :cond_cf

    .line 268
    const/16 v22, 0x4

    goto :goto_d1

    :cond_cf
    const/16 v22, 0x7

    :goto_d1
    move/from16 v2, v22

    .end local v2    # "state":I
    .local v22, "state":I
    goto/16 :goto_1d3

    .line 269
    .end local v22    # "state":I
    .restart local v2    # "state":I
    :cond_d5
    invoke-static {v3}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-eqz v22, :cond_e3

    .line 270
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v18

    .line 271
    const/16 v2, 0x9

    goto/16 :goto_1d3

    .line 273
    :cond_e3
    const/16 v2, 0xd

    .line 275
    goto/16 :goto_1d3

    .line 258
    :pswitch_e7
    sget v1, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    if-ne v3, v1, :cond_f0

    .line 259
    const/16 v1, 0x8

    move v2, v1

    .end local v2    # "state":I
    .local v1, "state":I
    goto/16 :goto_1d3

    .line 261
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_f0
    const/16 v1, 0xd

    .line 263
    .end local v2    # "state":I
    .restart local v1    # "state":I
    move v2, v1

    goto/16 :goto_1d3

    .line 245
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :pswitch_f5
    invoke-static {v3}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 246
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v17, v17, v1

    .line 247
    const/4 v1, 0x7

    .line 248
    .end local v2    # "state":I
    .restart local v1    # "state":I
    move v2, v1

    goto/16 :goto_1d3

    .line 251
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_105
    invoke-static {v3}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v1

    if-nez v1, :cond_117

    .line 252
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v1

    if-nez v1, :cond_117

    .line 253
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v17, v17, v1

    .line 255
    :cond_117
    const/16 v1, 0xd

    .line 256
    .end local v2    # "state":I
    .restart local v1    # "state":I
    move v2, v1

    goto/16 :goto_1d3

    .line 239
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :pswitch_11c
    invoke-static {v3}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 240
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v1, v18, v1

    add-int v17, v17, v1

    .line 242
    :cond_12a
    const/16 v1, 0xd

    .line 243
    .end local v2    # "state":I
    .restart local v1    # "state":I
    move v2, v1

    goto/16 :goto_1d3

    .line 227
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :pswitch_12f
    invoke-static {v3}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 228
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    .line 229
    .end local v18    # "lastSeenVSCharCount":I
    .local v1, "lastSeenVSCharCount":I
    const/4 v2, 0x5

    .line 230
    move/from16 v18, v1

    goto/16 :goto_1d3

    .line 231
    .end local v1    # "lastSeenVSCharCount":I
    .restart local v18    # "lastSeenVSCharCount":I
    :cond_13e
    invoke-static {v3}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v1

    if-eqz v1, :cond_14e

    .line 232
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v17, v17, v1

    .line 233
    const/4 v1, 0x7

    .line 234
    .end local v2    # "state":I
    .local v1, "state":I
    move v2, v1

    goto/16 :goto_1d3

    .line 236
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_14e
    const/16 v1, 0xd

    .line 237
    .end local v2    # "state":I
    .restart local v1    # "state":I
    move v2, v1

    goto/16 :goto_1d3

    .line 221
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :pswitch_153
    invoke-static {v3}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v1

    if-eqz v1, :cond_161

    .line 222
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v1, v18, v1

    add-int v17, v17, v1

    .line 224
    :cond_161
    const/16 v1, 0xd

    .line 225
    .end local v2    # "state":I
    .restart local v1    # "state":I
    move v2, v1

    goto/16 :goto_1d3

    .line 209
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :pswitch_166
    invoke-static {v3}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v1

    if-eqz v1, :cond_175

    .line 210
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    .line 211
    .end local v18    # "lastSeenVSCharCount":I
    .local v1, "lastSeenVSCharCount":I
    const/4 v2, 0x3

    .line 212
    move/from16 v18, v1

    goto/16 :goto_1d3

    .line 215
    .end local v1    # "lastSeenVSCharCount":I
    .restart local v18    # "lastSeenVSCharCount":I
    :cond_175
    invoke-static {v3}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v1

    if-eqz v1, :cond_181

    .line 216
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v17, v17, v1

    .line 218
    :cond_181
    const/16 v1, 0xd

    .line 219
    .end local v2    # "state":I
    .local v1, "state":I
    move v2, v1

    goto :goto_1d3

    .line 187
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :pswitch_185
    const/16 v1, 0xd

    if-ne v3, v1, :cond_18b

    .line 188
    add-int/lit8 v17, v17, 0x1

    .line 190
    :cond_18b
    const/16 v1, 0xd

    .line 191
    .end local v2    # "state":I
    .restart local v1    # "state":I
    move v2, v1

    goto :goto_1d3

    .line 167
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :pswitch_18f
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    .line 168
    .end local v17    # "deleteCharCount":I
    .local v1, "deleteCharCount":I
    move/from16 v17, v1

    .end local v1    # "deleteCharCount":I
    .restart local v17    # "deleteCharCount":I
    const/16 v1, 0xa

    if-ne v3, v1, :cond_19c

    .line 169
    const/4 v1, 0x1

    move v2, v1

    .end local v2    # "state":I
    .local v1, "state":I
    goto :goto_1d3

    .line 170
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_19c
    invoke-static {v3}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v1

    if-eqz v1, :cond_1a5

    .line 171
    const/4 v1, 0x6

    move v2, v1

    .end local v2    # "state":I
    .restart local v1    # "state":I
    goto :goto_1d3

    .line 172
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_1a5
    invoke-static {v3}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_1af

    .line 173
    const/16 v1, 0xa

    move v2, v1

    .end local v2    # "state":I
    .restart local v1    # "state":I
    goto :goto_1d3

    .line 174
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_1af
    invoke-static {v3}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v1

    if-eqz v1, :cond_1b8

    .line 175
    const/4 v1, 0x4

    move v2, v1

    .end local v2    # "state":I
    .restart local v1    # "state":I
    goto :goto_1d3

    .line 176
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_1b8
    sget v1, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    if-ne v3, v1, :cond_1bf

    .line 177
    const/4 v1, 0x2

    move v2, v1

    .end local v2    # "state":I
    .restart local v1    # "state":I
    goto :goto_1d3

    .line 178
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_1bf
    invoke-static {v3}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v1

    if-eqz v1, :cond_1c8

    .line 179
    const/4 v1, 0x7

    move v2, v1

    .end local v2    # "state":I
    .restart local v1    # "state":I
    goto :goto_1d3

    .line 180
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_1c8
    sget v1, Landroid/text/Emoji;->CANCEL_TAG:I

    if-ne v3, v1, :cond_1d0

    .line 181
    const/16 v1, 0xc

    move v2, v1

    .end local v2    # "state":I
    .restart local v1    # "state":I
    goto :goto_1d3

    .line 183
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_1d0
    const/16 v1, 0xd

    .line 185
    .end local v2    # "state":I
    .restart local v1    # "state":I
    move v2, v1

    .line 303
    .end local v1    # "state":I
    .end local v3    # "codePoint":I
    .restart local v2    # "state":I
    :goto_1d3
    if-lez v21, :cond_1e0

    const/16 v1, 0xd

    if-ne v2, v1, :cond_1da

    goto :goto_1e0

    :cond_1da
    move/from16 v3, v20

    move/from16 v1, v21

    goto/16 :goto_2c

    .line 305
    :cond_1e0
    :goto_1e0
    sub-int v1, p1, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v3}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result v1

    return v1

    nop

    :pswitch_data_1ea
    .packed-switch 0x0
        :pswitch_18f
        :pswitch_185
        :pswitch_166
        :pswitch_153
        :pswitch_12f
        :pswitch_11c
        :pswitch_f5
        :pswitch_e7
        :pswitch_b8
        :pswitch_9f
        :pswitch_8f
        :pswitch_7f
        :pswitch_5f
    .end packed-switch
.end method

.method private static greylist-max-o getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I
    .registers 10
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 310
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 312
    .local v3, "len":I
    add-int/lit8 v0, v3, -0x1

    if-lt p1, v0, :cond_9

    .line 313
    return v3

    .line 316
    :cond_9
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p1

    move-object v1, p0

    move v2, p1

    move-object v0, p2

    .end local p0    # "text":Ljava/lang/CharSequence;
    .end local p1    # "offset":I
    .end local p2    # "paint":Landroid/graphics/Paint;
    .local v0, "paint":Landroid/graphics/Paint;
    .local v1, "text":Ljava/lang/CharSequence;
    .local v2, "offset":I
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIZII)I

    move-result p0

    .line 319
    .end local v2    # "offset":I
    .local p0, "offset":I
    const/4 p1, 0x0

    invoke-static {v1, p0, p1}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result p1

    return p1
.end method

.method private static greylist-max-o isVariationSelector(I)Z
    .registers 2
    .param p0, "codepoint"    # I

    .line 89
    const/16 v0, 0x24

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method static greylist-max-o makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .registers 5
    .param p0, "caps"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p1, "autoText"    # Z

    .line 476
    const/4 v0, 0x1

    .line 477
    .local v0, "contentType":I
    sget-object v1, Landroid/text/method/BaseKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1e

    goto :goto_16

    .line 485
    :pswitch_d
    or-int/lit16 v0, v0, 0x4000

    goto :goto_16

    .line 482
    :pswitch_10
    or-int/lit16 v0, v0, 0x2000

    .line 483
    goto :goto_16

    .line 479
    :pswitch_13
    or-int/lit16 v0, v0, 0x1000

    .line 480
    nop

    .line 488
    :goto_16
    if-eqz p1, :cond_1c

    .line 489
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 491
    :cond_1c
    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public whitelist backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 72
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "content":Landroid/text/Editable;
    .end local p3    # "keyCode":I
    .end local p4    # "event":Landroid/view/KeyEvent;
    .local v1, "view":Landroid/view/View;
    .local v2, "content":Landroid/text/Editable;
    .local v3, "keyCode":I
    .local v4, "event":Landroid/view/KeyEvent;
    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 84
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "content":Landroid/text/Editable;
    .end local p3    # "keyCode":I
    .end local p4    # "event":Landroid/view/KeyEvent;
    .local v1, "view":Landroid/view/View;
    .local v2, "content":Landroid/text/Editable;
    .local v3, "keyCode":I
    .local v4, "event":Landroid/view/KeyEvent;
    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 497
    sparse-switch p3, :sswitch_data_1c

    .line 505
    const/4 v0, 0x0

    .local v0, "handled":Z
    goto :goto_f

    .line 502
    .end local v0    # "handled":Z
    :sswitch_5
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 503
    .restart local v0    # "handled":Z
    goto :goto_f

    .line 499
    .end local v0    # "handled":Z
    :sswitch_a
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 500
    .restart local v0    # "handled":Z
    nop

    .line 509
    :goto_f
    if-eqz v0, :cond_16

    .line 510
    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 511
    const/4 v1, 0x1

    return v1

    .line 514
    :cond_16
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_1c
    .sparse-switch
        0x43 -> :sswitch_a
        0x70 -> :sswitch_5
    .end sparse-switch
.end method

.method public whitelist onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 522
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_28

    .line 523
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_28

    .line 528
    :cond_f
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 529
    .local v0, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 530
    .local v1, "selectionEnd":I
    if-ge v1, v0, :cond_1c

    .line 531
    move v3, v1

    .line 532
    .local v3, "temp":I
    move v1, v0

    .line 533
    move v0, v3

    .line 536
    .end local v3    # "temp":I
    :cond_1c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, "text":Ljava/lang/CharSequence;
    if-nez v3, :cond_23

    .line 538
    return v2

    .line 541
    :cond_23
    invoke-interface {p2, v0, v1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 542
    const/4 v2, 0x1

    return v2

    .line 525
    .end local v0    # "selectionStart":I
    .end local v1    # "selectionEnd":I
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_28
    :goto_28
    return v2
.end method
