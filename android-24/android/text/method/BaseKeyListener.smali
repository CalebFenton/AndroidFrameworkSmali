.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# static fields
.field private static final synthetic -android-text-method-TextKeyListener$CapitalizeSwitchesValues:[I = null

.field private static final CARRIAGE_RETURN:I = 0xd

.field private static final LINE_FEED:I = 0xa

.field static final OLD_SEL_START:Ljava/lang/Object;

.field static sCachedPaint:Landroid/graphics/Paint;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method private static synthetic -getandroid-text-method-TextKeyListener$CapitalizeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/text/method/BaseKeyListener;->-android-text-method-TextKeyListener$CapitalizeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/text/method/BaseKeyListener;->-android-text-method-TextKeyListener$CapitalizeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    #@10
    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    #@19
    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x4

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    #@22
    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x2

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    #@2b
    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x3

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Landroid/text/method/BaseKeyListener;->-android-text-method-TextKeyListener$CapitalizeSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    #@2
    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    #@5
    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    #@7
    .line 57
    const/4 v0, 0x0

    #@8
    sput-object v0, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    #@a
    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    #@3
    .line 54
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    #@a
    .line 47
    return-void
.end method

.method private static adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "moveToStart"    # Z

    #@0
    .prologue
    .line 91
    instance-of v4, p0, Landroid/text/Spanned;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 92
    return p1

    #@5
    :cond_0
    move-object v4, p0

    #@6
    .line 95
    check-cast v4, Landroid/text/Spanned;

    #@8
    const-class v5, Landroid/text/style/ReplacementSpan;

    #@a
    invoke-interface {v4, p1, p1, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, [Landroid/text/style/ReplacementSpan;

    #@10
    .line 96
    .local v2, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    array-length v4, v2

    #@12
    if-ge v1, v4, :cond_3

    #@14
    move-object v4, p0

    #@15
    .line 97
    check-cast v4, Landroid/text/Spanned;

    #@17
    aget-object v5, v2, v1

    #@19
    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@1c
    move-result v3

    #@1d
    .local v3, "start":I
    move-object v4, p0

    #@1e
    .line 98
    check-cast v4, Landroid/text/Spanned;

    #@20
    aget-object v5, v2, v1

    #@22
    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@25
    move-result v0

    #@26
    .line 100
    .local v0, "end":I
    if-ge v3, p1, :cond_1

    #@28
    if-le v0, p1, :cond_1

    #@2a
    .line 101
    if-eqz p2, :cond_2

    #@2c
    move p1, v3

    #@2d
    .line 96
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 101
    :cond_2
    move p1, v0

    #@31
    goto :goto_1

    #@32
    .line 104
    .end local v0    # "end":I
    .end local v3    # "start":I
    :cond_3
    return p1
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;
    .param p5, "isForwardDelete"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 298
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    #@5
    move-result v6

    #@6
    and-int/lit16 v6, v6, -0x70f4

    #@8
    invoke-static {v6}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    #@b
    move-result v6

    #@c
    if-nez v6, :cond_0

    #@e
    .line 300
    return v9

    #@f
    .line 304
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    #@12
    move-result v6

    #@13
    if-eqz v6, :cond_1

    #@15
    .line 305
    return v8

    #@16
    .line 309
    :cond_1
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    #@19
    move-result v6

    #@1a
    and-int/lit16 v6, v6, 0x1000

    #@1c
    if-eqz v6, :cond_3

    #@1e
    const/4 v2, 0x1

    #@1f
    .line 310
    .local v2, "isCtrlActive":Z
    :goto_0
    invoke-static {p2, v8, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    #@22
    move-result v6

    #@23
    if-ne v6, v8, :cond_4

    #@25
    const/4 v3, 0x1

    #@26
    .line 311
    .local v3, "isShiftActive":Z
    :goto_1
    const/4 v6, 0x2

    #@27
    invoke-static {p2, v6, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    #@2a
    move-result v6

    #@2b
    if-ne v6, v8, :cond_5

    #@2d
    const/4 v1, 0x1

    #@2e
    .line 313
    .local v1, "isAltActive":Z
    :goto_2
    if-eqz v2, :cond_7

    #@30
    .line 314
    if-nez v1, :cond_2

    #@32
    if-eqz v3, :cond_6

    #@34
    .line 316
    :cond_2
    return v9

    #@35
    .line 309
    .end local v1    # "isAltActive":Z
    .end local v2    # "isCtrlActive":Z
    .end local v3    # "isShiftActive":Z
    :cond_3
    const/4 v2, 0x0

    #@36
    .restart local v2    # "isCtrlActive":Z
    goto :goto_0

    #@37
    .line 310
    :cond_4
    const/4 v3, 0x0

    #@38
    .restart local v3    # "isShiftActive":Z
    goto :goto_1

    #@39
    .line 311
    :cond_5
    const/4 v1, 0x0

    #@3a
    .restart local v1    # "isAltActive":Z
    goto :goto_2

    #@3b
    .line 318
    :cond_6
    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z

    #@3e
    move-result v6

    #@3f
    return v6

    #@40
    .line 322
    :cond_7
    if-eqz v1, :cond_8

    #@42
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_8

    #@48
    .line 323
    return v8

    #@49
    .line 327
    :cond_8
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@4c
    move-result v5

    #@4d
    .line 329
    .local v5, "start":I
    if-eqz p5, :cond_b

    #@4f
    .line 331
    instance-of v6, p1, Landroid/widget/TextView;

    #@51
    if-eqz v6, :cond_9

    #@53
    .line 332
    check-cast p1, Landroid/widget/TextView;

    #@55
    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@58
    move-result-object v4

    #@59
    .line 341
    .local v4, "paint":Landroid/graphics/Paint;
    :goto_3
    invoke-static {p2, v5, v4}, Landroid/text/method/BaseKeyListener;->getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I

    #@5c
    move-result v0

    #@5d
    .line 345
    .end local v4    # "paint":Landroid/graphics/Paint;
    .local v0, "end":I
    :goto_4
    if-eq v5, v0, :cond_c

    #@5f
    .line 346
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    #@62
    move-result v6

    #@63
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    #@66
    move-result v7

    #@67
    invoke-interface {p2, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@6a
    .line 347
    return v8

    #@6b
    .line 334
    .end local v0    # "end":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_9
    iget-object v7, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    #@6d
    monitor-enter v7

    #@6e
    .line 335
    :try_start_0
    sget-object v6, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    #@70
    if-nez v6, :cond_a

    #@72
    .line 336
    new-instance v6, Landroid/graphics/Paint;

    #@74
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    #@77
    sput-object v6, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    #@79
    .line 338
    :cond_a
    sget-object v4, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    .restart local v4    # "paint":Landroid/graphics/Paint;
    monitor-exit v7

    #@7c
    goto :goto_3

    #@7d
    .line 334
    .end local v4    # "paint":Landroid/graphics/Paint;
    :catchall_0
    move-exception v6

    #@7e
    monitor-exit v7

    #@7f
    throw v6

    #@80
    .line 343
    :cond_b
    invoke-static {p2, v5}, Landroid/text/method/BaseKeyListener;->getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I

    #@83
    move-result v0

    #@84
    .restart local v0    # "end":I
    goto :goto_4

    #@85
    .line 349
    .end local p1    # "view":Landroid/view/View;
    :cond_c
    return v9
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 416
    instance-of v4, p1, Landroid/widget/TextView;

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 417
    check-cast p1, Landroid/widget/TextView;

    #@6
    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@9
    move-result-object v1

    #@a
    .line 418
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_0

    #@c
    .line 419
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@f
    move-result v4

    #@10
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    #@13
    move-result v2

    #@14
    .line 420
    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    #@17
    move-result v3

    #@18
    .line 421
    .local v3, "start":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    #@1b
    move-result v0

    #@1c
    .line 422
    .local v0, "end":I
    if-eq v0, v3, :cond_0

    #@1e
    .line 423
    invoke-interface {p2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@21
    .line 424
    const/4 v4, 0x1

    #@22
    return v4

    #@23
    .line 428
    .end local v0    # "end":I
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "start":I
    :cond_0
    const/4 v4, 0x0

    #@24
    return v4
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 401
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@3
    move-result v1

    #@4
    .line 402
    .local v1, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@7
    move-result v0

    #@8
    .line 403
    .local v0, "selectionEnd":I
    if-ge v0, v1, :cond_0

    #@a
    .line 404
    move v2, v0

    #@b
    .line 405
    .local v2, "temp":I
    move v0, v1

    #@c
    .line 406
    move v1, v2

    #@d
    .line 408
    .end local v2    # "temp":I
    :cond_0
    if-eq v1, v0, :cond_1

    #@f
    .line 409
    invoke-interface {p2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@12
    .line 410
    const/4 v3, 0x1

    #@13
    return v3

    #@14
    .line 412
    :cond_1
    const/4 v3, 0x0

    #@15
    return v3
.end method

.method private deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "isForwardDelete"    # Z

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 353
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@5
    move-result v0

    #@6
    .line 356
    .local v0, "currentCursorOffset":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@9
    move-result v4

    #@a
    if-eq v0, v4, :cond_0

    #@c
    .line 357
    return v5

    #@d
    .line 361
    :cond_0
    if-nez p3, :cond_2

    #@f
    if-nez v0, :cond_2

    #@11
    .line 363
    :cond_1
    return v5

    #@12
    .line 362
    :cond_2
    if-eqz p3, :cond_3

    #@14
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    #@17
    move-result v4

    #@18
    if-eq v0, v4, :cond_1

    #@1a
    .line 366
    :cond_3
    const/4 v3, 0x0

    #@1b
    .line 367
    .local v3, "wordIterator":Landroid/text/method/WordIterator;
    instance-of v4, p1, Landroid/widget/TextView;

    #@1d
    if-eqz v4, :cond_4

    #@1f
    .line 368
    check-cast p1, Landroid/widget/TextView;

    #@21
    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    #@24
    move-result-object v3

    #@25
    .line 371
    .end local v3    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_4
    if-nez v3, :cond_5

    #@27
    .line 375
    new-instance v3, Landroid/text/method/WordIterator;

    #@29
    invoke-direct {v3}, Landroid/text/method/WordIterator;-><init>()V

    #@2c
    .line 381
    :cond_5
    if-eqz p3, :cond_7

    #@2e
    .line 382
    move v1, v0

    #@2f
    .line 383
    .local v1, "deleteFrom":I
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    #@32
    move-result v4

    #@33
    invoke-virtual {v3, p2, v0, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    #@36
    .line 384
    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->following(I)I

    #@39
    move-result v2

    #@3a
    .line 385
    .local v2, "deleteTo":I
    if-ne v2, v6, :cond_6

    #@3c
    .line 386
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    #@3f
    move-result v2

    #@40
    .line 396
    :cond_6
    :goto_0
    invoke-interface {p2, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@43
    .line 397
    const/4 v4, 0x1

    #@44
    return v4

    #@45
    .line 389
    .end local v1    # "deleteFrom":I
    .end local v2    # "deleteTo":I
    :cond_7
    move v2, v0

    #@46
    .line 390
    .restart local v2    # "deleteTo":I
    invoke-virtual {v3, p2, v5, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    #@49
    .line 391
    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->preceding(I)I

    #@4c
    move-result v1

    #@4d
    .line 392
    .restart local v1    # "deleteFrom":I
    if-ne v1, v6, :cond_6

    #@4f
    .line 393
    const/4 v1, 0x0

    #@50
    goto :goto_0
.end method

.method private static getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I
    .locals 24
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 109
    const/16 v21, 0x1

    #@2
    move/from16 v0, p1

    #@4
    move/from16 v1, v21

    #@6
    if-gt v0, v1, :cond_0

    #@8
    .line 110
    const/16 v21, 0x0

    #@a
    return v21

    #@b
    .line 114
    :cond_0
    const/4 v15, 0x0

    #@c
    .line 117
    .local v15, "STATE_START":I
    const/4 v13, 0x1

    #@d
    .line 120
    .local v13, "STATE_LF":I
    const/4 v4, 0x2

    #@e
    .line 122
    .local v4, "STATE_BEFORE_KEYCAP":I
    const/4 v7, 0x3

    #@f
    .line 125
    .local v7, "STATE_BEFORE_VS_AND_KEYCAP":I
    const/4 v3, 0x4

    #@10
    .line 127
    .local v3, "STATE_BEFORE_EMOJI_MODIFIER":I
    const/4 v6, 0x5

    #@11
    .line 130
    .local v6, "STATE_BEFORE_VS_AND_EMOJI_MODIFIER":I
    const/4 v5, 0x6

    #@12
    .line 133
    .local v5, "STATE_BEFORE_VS":I
    const/4 v10, 0x7

    #@13
    .line 135
    .local v10, "STATE_BEFORE_ZWJ_EMOJI":I
    const/16 v9, 0x8

    #@15
    .line 138
    .local v9, "STATE_BEFORE_ZWJ":I
    const/16 v8, 0x9

    #@17
    .line 141
    .local v8, "STATE_BEFORE_VS_AND_ZWJ":I
    const/16 v14, 0xa

    #@19
    .line 143
    .local v14, "STATE_ODD_NUMBERED_RIS":I
    const/16 v11, 0xb

    #@1b
    .line 146
    .local v11, "STATE_EVEN_NUMBERED_RIS":I
    const/16 v12, 0xc

    #@1d
    .line 148
    .local v12, "STATE_FINISHED":I
    const/16 v17, 0x0

    #@1f
    .line 149
    .local v17, "deleteCharCount":I
    const/16 v18, 0x0

    #@21
    .line 151
    .local v18, "lastSeenVSCharCount":I
    const/16 v19, 0x0

    #@23
    .line 153
    .local v19, "state":I
    move/from16 v20, p1

    #@25
    .line 155
    .local v20, "tmpOffset":I
    :cond_1
    move-object/from16 v0, p0

    #@27
    move/from16 v1, v20

    #@29
    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@2c
    move-result v16

    #@2d
    .line 156
    .local v16, "codePoint":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    #@30
    move-result v21

    #@31
    sub-int v20, v20, v21

    #@33
    .line 158
    packed-switch v19, :pswitch_data_0

    #@36
    .line 274
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@38
    new-instance v22, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v23, "state "

    #@40
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v22

    #@44
    move-object/from16 v0, v22

    #@46
    move/from16 v1, v19

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v22

    #@4c
    const-string/jumbo v23, " is unknown"

    #@4f
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v22

    #@53
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v22

    #@57
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v21

    #@5b
    .line 160
    :pswitch_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    #@5e
    move-result v17

    #@5f
    .line 161
    const/16 v21, 0xa

    #@61
    move/from16 v0, v16

    #@63
    move/from16 v1, v21

    #@65
    if-ne v0, v1, :cond_3

    #@67
    .line 162
    const/16 v19, 0x1

    #@69
    .line 276
    :goto_0
    if-lez v20, :cond_2

    #@6b
    const/16 v21, 0xc

    #@6d
    move/from16 v0, v19

    #@6f
    move/from16 v1, v21

    #@71
    if-ne v0, v1, :cond_1

    #@73
    .line 278
    :cond_2
    sub-int v21, p1, v17

    #@75
    const/16 v22, 0x1

    #@77
    move-object/from16 v0, p0

    #@79
    move/from16 v1, v21

    #@7b
    move/from16 v2, v22

    #@7d
    invoke-static {v0, v1, v2}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    #@80
    move-result v21

    #@81
    return v21

    #@82
    .line 163
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    #@85
    move-result v21

    #@86
    if-eqz v21, :cond_4

    #@88
    .line 164
    const/16 v19, 0x6

    #@8a
    goto :goto_0

    #@8b
    .line 165
    :cond_4
    invoke-static/range {v16 .. v16}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    #@8e
    move-result v21

    #@8f
    if-eqz v21, :cond_5

    #@91
    .line 166
    const/16 v19, 0xa

    #@93
    goto :goto_0

    #@94
    .line 167
    :cond_5
    invoke-static/range {v16 .. v16}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    #@97
    move-result v21

    #@98
    if-eqz v21, :cond_6

    #@9a
    .line 168
    const/16 v19, 0x4

    #@9c
    goto :goto_0

    #@9d
    .line 169
    :cond_6
    sget v21, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    #@9f
    move/from16 v0, v16

    #@a1
    move/from16 v1, v21

    #@a3
    if-ne v0, v1, :cond_7

    #@a5
    .line 170
    const/16 v19, 0x2

    #@a7
    goto :goto_0

    #@a8
    .line 171
    :cond_7
    invoke-static/range {v16 .. v16}, Landroid/text/Emoji;->isEmoji(I)Z

    #@ab
    move-result v21

    #@ac
    if-eqz v21, :cond_8

    #@ae
    .line 172
    const/16 v19, 0x7

    #@b0
    goto :goto_0

    #@b1
    .line 174
    :cond_8
    const/16 v19, 0xc

    #@b3
    goto :goto_0

    #@b4
    .line 178
    :pswitch_1
    const/16 v21, 0xd

    #@b6
    move/from16 v0, v16

    #@b8
    move/from16 v1, v21

    #@ba
    if-ne v0, v1, :cond_9

    #@bc
    .line 179
    add-int/lit8 v17, v17, 0x1

    #@be
    .line 181
    :cond_9
    const/16 v19, 0xc

    #@c0
    .line 183
    :pswitch_2
    invoke-static/range {v16 .. v16}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    #@c3
    move-result v21

    #@c4
    if-eqz v21, :cond_a

    #@c6
    .line 184
    add-int/lit8 v17, v17, 0x2

    #@c8
    .line 185
    const/16 v19, 0xb

    #@ca
    goto :goto_0

    #@cb
    .line 187
    :cond_a
    const/16 v19, 0xc

    #@cd
    goto :goto_0

    #@ce
    .line 191
    :pswitch_3
    invoke-static/range {v16 .. v16}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    #@d1
    move-result v21

    #@d2
    if-eqz v21, :cond_b

    #@d4
    .line 192
    add-int/lit8 v17, v17, -0x2

    #@d6
    .line 193
    const/16 v19, 0xa

    #@d8
    goto :goto_0

    #@d9
    .line 195
    :cond_b
    const/16 v19, 0xc

    #@db
    goto :goto_0

    #@dc
    .line 199
    :pswitch_4
    invoke-static/range {v16 .. v16}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    #@df
    move-result v21

    #@e0
    if-eqz v21, :cond_c

    #@e2
    .line 200
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    #@e5
    move-result v18

    #@e6
    .line 201
    const/16 v19, 0x3

    #@e8
    .line 202
    goto :goto_0

    #@e9
    .line 205
    :cond_c
    invoke-static/range {v16 .. v16}, Landroid/text/Emoji;->isKeycapBase(I)Z

    #@ec
    move-result v21

    #@ed
    if-eqz v21, :cond_d

    #@ef
    .line 206
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    #@f2
    move-result v21

    #@f3
    add-int v17, v17, v21

    #@f5
    .line 208
    :cond_d
    const/16 v19, 0xc

    #@f7
    .line 209
    goto/16 :goto_0

    #@f9
    .line 211
    :pswitch_5
    invoke-static/range {v16 .. v16}, Landroid/text/Emoji;->isKeycapBase(I)Z

    #@fc
    move-result v21

    #@fd
    if-eqz v21, :cond_e

    #@ff
    .line 212
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    #@102
    move-result v21

    #@103
    add-int v21, v21, v18

    #@105
    add-int v17, v17, v21

    #@107
    .line 214
    :cond_e
    const/16 v19, 0xc

    #@109
    .line 215
    goto/16 :goto_0

    #@10b
    .line 217
    :pswitch_6
    invoke-static/range {v16 .. v16}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    #@10e
    move-result v21

    #@10f
    if-eqz v21, :cond_f

    #@111
    .line 218
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    #@114
    move-result v18

    #@115
    .line 219
    const/16 v19, 0x5

    #@117
    .line 220
    goto/16 :goto_0

    #@119
    .line 221
    :cond_f
    invoke-static/range {v16 .. v16}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    #@11c
    move-result v21

    #@11d
    if-eqz v21, :cond_10

    #@11f
    .line 222
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    #@122
    move-result v21

    #@123
    add-int v17, v17, v21

    #@125
    .line 224
    :cond_10
    const/16 v19, 0xc

    #@127
    .line 225
    goto/16 :goto_0

    #@129
    .line 227
    :pswitch_7
    invoke-static/range {v16 .. v16}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    #@12c
    move-result v21

    #@12d
    if-eqz v21, :cond_11

    #@12f
    .line 228
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    #@132
    move-result v21

    #@133
    add-int v21, v21, v18

    #@135
    add-int v17, v17, v21

    #@137
    .line 230
    :cond_11
    const/16 v19, 0xc

    #@139
    .line 231
    goto/16 :goto_0

    #@13b
    .line 233
    :pswitch_8
    invoke-static/range {v16 .. v16}, Landroid/text/Emoji;->isEmoji(I)Z

    #@13e
    move-result v21

    #@13f
    if-eqz v21, :cond_12

    #@141
    .line 234
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    #@144
    move-result v21

    #@145
    add-int v17, v17, v21

    #@147
    .line 235
    const/16 v19, 0x7

    #@149
    .line 236
    goto/16 :goto_0

    #@14b
    .line 239
    :cond_12
    invoke-static/range {v16 .. v16}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    #@14e
    move-result v21

    #@14f
    if-nez v21, :cond_13

    #@151
    .line 240
    invoke-static/range {v16 .. v16}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    #@154
    move-result v21

    #@155
    if-nez v21, :cond_13

    #@157
    .line 241
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    #@15a
    move-result v21

    #@15b
    add-int v17, v17, v21

    #@15d
    .line 243
    :cond_13
    const/16 v19, 0xc

    #@15f
    .line 244
    goto/16 :goto_0

    #@161
    .line 246
    :pswitch_9
    sget v21, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    #@163
    move/from16 v0, v16

    #@165
    move/from16 v1, v21

    #@167
    if-ne v0, v1, :cond_14

    #@169
    .line 247
    const/16 v19, 0x8

    #@16b
    goto/16 :goto_0

    #@16d
    .line 249
    :cond_14
    const/16 v19, 0xc

    #@16f
    goto/16 :goto_0

    #@171
    .line 253
    :pswitch_a
    invoke-static/range {v16 .. v16}, Landroid/text/Emoji;->isEmoji(I)Z

    #@174
    move-result v21

    #@175
    if-eqz v21, :cond_15

    #@177
    .line 254
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    #@17a
    move-result v21

    #@17b
    add-int/lit8 v21, v21, 0x1

    #@17d
    add-int v17, v17, v21

    #@17f
    .line 255
    const/16 v19, 0x7

    #@181
    goto/16 :goto_0

    #@183
    .line 256
    :cond_15
    invoke-static/range {v16 .. v16}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    #@186
    move-result v21

    #@187
    if-eqz v21, :cond_16

    #@189
    .line 257
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    #@18c
    move-result v18

    #@18d
    .line 258
    const/16 v19, 0x9

    #@18f
    goto/16 :goto_0

    #@191
    .line 260
    :cond_16
    const/16 v19, 0xc

    #@193
    goto/16 :goto_0

    #@195
    .line 264
    :pswitch_b
    invoke-static/range {v16 .. v16}, Landroid/text/Emoji;->isEmoji(I)Z

    #@198
    move-result v21

    #@199
    if-eqz v21, :cond_17

    #@19b
    .line 266
    add-int/lit8 v21, v18, 0x1

    #@19d
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    #@1a0
    move-result v22

    #@1a1
    add-int v21, v21, v22

    #@1a3
    add-int v17, v17, v21

    #@1a5
    .line 267
    const/16 v18, 0x0

    #@1a7
    .line 268
    const/16 v19, 0x7

    #@1a9
    goto/16 :goto_0

    #@1ab
    .line 270
    :cond_17
    const/16 v19, 0xc

    #@1ad
    goto/16 :goto_0

    #@1af
    .line 158
    nop

    #@1b0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 283
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v3

    #@5
    .line 285
    .local v3, "len":I
    add-int/lit8 v0, v3, -0x1

    #@7
    if-lt p1, v0, :cond_0

    #@9
    .line 286
    return v3

    #@a
    :cond_0
    move-object v0, p2

    #@b
    move-object v1, p0

    #@c
    move v2, p1

    #@d
    move v5, p1

    #@e
    move v6, v4

    #@f
    .line 289
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    #@12
    move-result p1

    #@13
    .line 292
    invoke-static {p0, p1, v4}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method private static isVariationSelector(I)Z
    .locals 1
    .param p0, "codepoint"    # I

    #@0
    .prologue
    .line 85
    const/16 v0, 0x24

    #@2
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 3
    .param p0, "caps"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p1, "autoText"    # Z

    #@0
    .prologue
    .line 432
    const/4 v0, 0x1

    #@1
    .line 433
    .local v0, "contentType":I
    invoke-static {}, Landroid/text/method/BaseKeyListener;->-getandroid-text-method-TextKeyListener$CapitalizeSwitchesValues()[I

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    #@8
    move-result v2

    #@9
    aget v1, v1, v2

    #@b
    packed-switch v1, :pswitch_data_0

    #@e
    .line 444
    :goto_0
    if-eqz p1, :cond_0

    #@10
    .line 445
    const v1, 0x8000

    #@13
    or-int/2addr v0, v1

    #@14
    .line 447
    :cond_0
    return v0

    #@15
    .line 435
    :pswitch_0
    const/16 v0, 0x1001

    #@17
    .line 436
    goto :goto_0

    #@18
    .line 438
    :pswitch_1
    const/16 v0, 0x2001

    #@1a
    .line 439
    goto :goto_0

    #@1b
    .line 441
    :pswitch_2
    const/16 v0, 0x4001

    #@1d
    .line 442
    goto :goto_0

    #@1e
    .line 433
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 68
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 80
    const/4 v5, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 453
    sparse-switch p3, :sswitch_data_0

    #@3
    .line 461
    const/4 v0, 0x0

    #@4
    .line 465
    :goto_0
    if-eqz v0, :cond_0

    #@6
    .line 466
    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    #@9
    .line 467
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 455
    :sswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@e
    move-result v0

    #@f
    .local v0, "handled":Z
    goto :goto_0

    #@10
    .line 458
    .end local v0    # "handled":Z
    :sswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@13
    move-result v0

    #@14
    .restart local v0    # "handled":Z
    goto :goto_0

    #@15
    .line 470
    .end local v0    # "handled":Z
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@18
    move-result v1

    #@19
    return v1

    #@1a
    .line 453
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x70 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 478
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@4
    move-result v4

    #@5
    const/4 v5, 0x2

    #@6
    if-ne v4, v5, :cond_0

    #@8
    .line 479
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 481
    :cond_0
    return v6

    #@f
    .line 484
    :cond_1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@12
    move-result v1

    #@13
    .line 485
    .local v1, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@16
    move-result v0

    #@17
    .line 486
    .local v0, "selectionEnd":I
    if-ge v0, v1, :cond_2

    #@19
    .line 487
    move v2, v0

    #@1a
    .line 488
    .local v2, "temp":I
    move v0, v1

    #@1b
    .line 489
    move v1, v2

    #@1c
    .line 492
    .end local v2    # "temp":I
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 493
    .local v3, "text":Ljava/lang/CharSequence;
    if-nez v3, :cond_3

    #@22
    .line 494
    return v6

    #@23
    .line 497
    :cond_3
    invoke-interface {p2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@26
    .line 498
    const/4 v4, 0x1

    #@27
    return v4
.end method
