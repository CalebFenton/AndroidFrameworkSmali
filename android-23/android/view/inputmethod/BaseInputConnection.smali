.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "BaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final COMPOSING:Ljava/lang/Object;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field final mDummyMode:Z

.field mEditable:Landroid/text/Editable;

.field protected final mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 51
    new-instance v0, Landroid/view/inputmethod/ComposingText;

    #@2
    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    #@5
    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    #@7
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "fullEditor"    # Z

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    .line 71
    const-string/jumbo v1, "input_method"

    #@a
    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@10
    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@12
    .line 72
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    #@14
    .line 73
    if-eqz p2, :cond_0

    #@16
    const/4 v0, 0x0

    #@17
    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    #@19
    .line 69
    return-void

    #@1a
    .line 73
    :cond_0
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method

.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 1
    .param p1, "mgr"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "fullEditor"    # Z

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@5
    .line 65
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    #@8
    .line 66
    if-eqz p2, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    #@d
    .line 63
    return-void

    #@e
    .line 66
    :cond_0
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method private ensureDefaultComposingSpans()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 582
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 584
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 585
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    #@b
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@e
    move-result-object v0

    #@f
    .line 591
    :goto_0
    if-eqz v0, :cond_0

    #@11
    .line 592
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@14
    move-result-object v3

    #@15
    .line 593
    const/4 v4, 0x1

    #@16
    new-array v4, v4, [I

    #@18
    .line 594
    const v5, 0x1010230

    #@1b
    aput v5, v4, v6

    #@1d
    .line 592
    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@20
    move-result-object v2

    #@21
    .line 596
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@24
    move-result-object v1

    #@25
    .line 597
    .local v1, "style":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@28
    .line 598
    if-eqz v1, :cond_0

    #@2a
    instance-of v3, v1, Landroid/text/Spanned;

    #@2c
    if-eqz v3, :cond_0

    #@2e
    move-object v3, v1

    #@2f
    .line 599
    check-cast v3, Landroid/text/Spanned;

    #@31
    .line 600
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@34
    move-result v4

    #@35
    const-class v5, Ljava/lang/Object;

    #@37
    .line 599
    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    iput-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    #@3d
    .line 581
    .end local v1    # "style":Ljava/lang/CharSequence;
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    return-void

    #@3e
    .line 586
    :cond_1
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@40
    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@42
    if-eqz v3, :cond_2

    #@44
    .line 587
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@46
    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@48
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@4b
    move-result-object v0

    #@4c
    .local v0, "context":Landroid/content/Context;
    goto :goto_0

    #@4d
    .line 589
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    const/4 v0, 0x0

    #@4e
    .local v0, "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public static getComposingSpanEnd(Landroid/text/Spannable;)I
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 124
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    #@2
    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getComposingSpanStart(Landroid/text/Spannable;)I
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 120
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    #@2
    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static final removeComposingSpans(Landroid/text/Spannable;)V
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 77
    sget-object v3, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    #@3
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@6
    .line 78
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    #@9
    move-result v3

    #@a
    const-class v4, Ljava/lang/Object;

    #@c
    invoke-interface {p0, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    .line 79
    .local v2, "sps":[Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@12
    .line 80
    array-length v3, v2

    #@13
    add-int/lit8 v0, v3, -0x1

    #@15
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@17
    .line 81
    aget-object v1, v2, v0

    #@19
    .line 82
    .local v1, "o":Ljava/lang/Object;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    #@1c
    move-result v3

    #@1d
    and-int/lit16 v3, v3, 0x100

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 83
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@24
    .line 80
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_0

    #@27
    .line 76
    .end local v0    # "i":I
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "composing"    # Z

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 608
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    #@5
    move-result-object v2

    #@6
    .line 609
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_0

    #@8
    .line 610
    return-void

    #@9
    .line 613
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    #@c
    .line 616
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    #@f
    move-result v0

    #@10
    .line 617
    .local v0, "a":I
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    #@13
    move-result v1

    #@14
    .line 621
    .local v1, "b":I
    if-ge v1, v0, :cond_1

    #@16
    .line 622
    move v5, v0

    #@17
    .line 623
    .local v5, "tmp":I
    move v0, v1

    #@18
    .line 624
    move v1, v5

    #@19
    .line 627
    .end local v5    # "tmp":I
    :cond_1
    if-eq v0, v6, :cond_3

    #@1b
    if-eq v1, v6, :cond_3

    #@1d
    .line 628
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    #@20
    .line 641
    :cond_2
    :goto_0
    if-eqz p3, :cond_8

    #@22
    .line 642
    const/4 v4, 0x0

    #@23
    .line 643
    .local v4, "sp":Landroid/text/Spannable;
    instance-of v6, p1, Landroid/text/Spannable;

    #@25
    if-nez v6, :cond_6

    #@27
    .line 644
    new-instance v4, Landroid/text/SpannableStringBuilder;

    #@29
    .end local v4    # "sp":Landroid/text/Spannable;
    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@2c
    .line 645
    .local v4, "sp":Landroid/text/Spannable;
    move-object p1, v4

    #@2d
    .line 646
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    #@30
    .line 647
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    #@32
    if-eqz v6, :cond_7

    #@34
    .line 648
    const/4 v3, 0x0

    #@35
    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    #@37
    array-length v6, v6

    #@38
    if-ge v3, v6, :cond_7

    #@3a
    .line 649
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    #@3c
    aget-object v6, v6, v3

    #@3e
    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    #@41
    move-result v7

    #@42
    .line 650
    const/16 v8, 0x121

    #@44
    .line 649
    invoke-interface {v4, v6, v9, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@47
    .line 648
    add-int/lit8 v3, v3, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 630
    .end local v3    # "i":I
    .end local v4    # "sp":Landroid/text/Spannable;
    :cond_3
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@4d
    move-result v0

    #@4e
    .line 631
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@51
    move-result v1

    #@52
    .line 632
    if-gez v0, :cond_4

    #@54
    const/4 v0, 0x0

    #@55
    .line 633
    :cond_4
    if-gez v1, :cond_5

    #@57
    const/4 v1, 0x0

    #@58
    .line 634
    :cond_5
    if-ge v1, v0, :cond_2

    #@5a
    .line 635
    move v5, v0

    #@5b
    .line 636
    .restart local v5    # "tmp":I
    move v0, v1

    #@5c
    .line 637
    move v1, v5

    #@5d
    goto :goto_0

    #@5e
    .end local v5    # "tmp":I
    .local v4, "sp":Landroid/text/Spannable;
    :cond_6
    move-object v4, p1

    #@5f
    .line 654
    check-cast v4, Landroid/text/Spannable;

    #@61
    .line 656
    .local v4, "sp":Landroid/text/Spannable;
    :cond_7
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    #@64
    .line 675
    .end local v4    # "sp":Landroid/text/Spannable;
    :cond_8
    if-lez p2, :cond_b

    #@66
    .line 676
    add-int/lit8 v6, v1, -0x1

    #@68
    add-int/2addr p2, v6

    #@69
    .line 680
    :goto_2
    if-gez p2, :cond_9

    #@6b
    const/4 p2, 0x0

    #@6c
    .line 681
    :cond_9
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    #@6f
    move-result v6

    #@70
    if-le p2, v6, :cond_a

    #@72
    .line 682
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    #@75
    move-result p2

    #@76
    .line 683
    :cond_a
    invoke-static {v2, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@79
    .line 685
    invoke-interface {v2, v0, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@7c
    .line 693
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    #@7f
    .line 607
    return-void

    #@80
    .line 678
    :cond_b
    add-int/2addr p2, v0

    #@81
    goto :goto_2
.end method

.method private sendCurrentText()V
    .locals 11

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 543
    iget-boolean v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    #@5
    if-nez v2, :cond_0

    #@7
    .line 544
    return-void

    #@8
    .line 547
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    #@b
    move-result-object v8

    #@c
    .line 548
    .local v8, "content":Landroid/text/Editable;
    if-eqz v8, :cond_5

    #@e
    .line 549
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    #@11
    move-result v0

    #@12
    .line 550
    .local v0, "N":I
    if-nez v0, :cond_1

    #@14
    .line 551
    return-void

    #@15
    .line 553
    :cond_1
    if-ne v0, v3, :cond_4

    #@17
    .line 556
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    #@19
    if-nez v2, :cond_2

    #@1b
    .line 557
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    #@1e
    move-result-object v2

    #@1f
    iput-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    #@21
    .line 559
    :cond_2
    new-array v7, v3, [C

    #@23
    .line 560
    .local v7, "chars":[C
    invoke-interface {v8, v6, v3, v7, v6}, Landroid/text/Editable;->getChars(II[CI)V

    #@26
    .line 561
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    #@28
    invoke-virtual {v2, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    #@2b
    move-result-object v9

    #@2c
    .line 562
    .local v9, "events":[Landroid/view/KeyEvent;
    if-eqz v9, :cond_4

    #@2e
    .line 563
    const/4 v10, 0x0

    #@2f
    .local v10, "i":I
    :goto_0
    array-length v2, v9

    #@30
    if-ge v10, v2, :cond_3

    #@32
    .line 565
    aget-object v2, v9, v10

    #@34
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    #@37
    .line 563
    add-int/lit8 v10, v10, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 567
    :cond_3
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    #@3d
    .line 568
    return-void

    #@3e
    .line 574
    .end local v7    # "chars":[C
    .end local v9    # "events":[Landroid/view/KeyEvent;
    .end local v10    # "i":I
    :cond_4
    new-instance v1, Landroid/view/KeyEvent;

    #@40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@43
    move-result-wide v2

    #@44
    .line 575
    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    .line 574
    invoke-direct/range {v1 .. v6}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    #@4b
    .line 576
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    #@4e
    .line 577
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    #@51
    .line 542
    .end local v0    # "N":I
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_5
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 90
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p0, v1, v0}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    #@8
    .line 89
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;II)V
    .locals 8
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/16 v7, 0x121

    #@2
    .line 95
    const-class v4, Ljava/lang/Object;

    #@4
    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    .line 96
    .local v3, "sps":[Ljava/lang/Object;
    if-eqz v3, :cond_2

    #@a
    .line 97
    array-length v4, v3

    #@b
    add-int/lit8 v1, v4, -0x1

    #@d
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@f
    .line 98
    aget-object v2, v3, v1

    #@11
    .line 99
    .local v2, "o":Ljava/lang/Object;
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    #@13
    if-ne v2, v4, :cond_1

    #@15
    .line 100
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@18
    .line 97
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 104
    :cond_1
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    #@1e
    move-result v0

    #@1f
    .line 105
    .local v0, "fl":I
    and-int/lit16 v4, v0, 0x133

    #@21
    if-eq v4, v7, :cond_0

    #@23
    .line 107
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@26
    move-result v4

    #@27
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@2a
    move-result v5

    #@2b
    .line 108
    and-int/lit8 v6, v0, -0x34

    #@2d
    or-int/lit16 v6, v6, 0x100

    #@2f
    or-int/lit8 v6, v6, 0x21

    #@31
    .line 107
    invoke-interface {p0, v2, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@34
    goto :goto_1

    #@35
    .line 115
    .end local v0    # "fl":I
    .end local v1    # "i":I
    .end local v2    # "o":Ljava/lang/Object;
    :cond_2
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    #@37
    invoke-interface {p0, v4, p1, p2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@3a
    .line 94
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    #@0
    .prologue
    .line 145
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .param p1, "states"    # I

    #@0
    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    #@3
    move-result-object v0

    #@4
    .line 171
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    #@6
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 172
    :cond_0
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    #@b
    .line 173
    const/4 v1, 0x1

    #@c
    return v1
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 180
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    #@0
    .prologue
    .line 187
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    #@0
    .prologue
    .line 197
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    #@4
    .line 198
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@6
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->notifyUserAction()V

    #@9
    .line 199
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    #@c
    .line 200
    const/4 v0, 0x1

    #@d
    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 11
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 212
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    #@5
    move-result-object v4

    #@6
    .line 213
    .local v4, "content":Landroid/text/Editable;
    if-nez v4, :cond_0

    #@8
    return v9

    #@9
    .line 215
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    #@c
    .line 217
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@f
    move-result v0

    #@10
    .line 218
    .local v0, "a":I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@13
    move-result v1

    #@14
    .line 220
    .local v1, "b":I
    if-le v0, v1, :cond_1

    #@16
    .line 221
    move v8, v0

    #@17
    .line 222
    .local v8, "tmp":I
    move v0, v1

    #@18
    .line 223
    move v1, v8

    #@19
    .line 227
    .end local v8    # "tmp":I
    :cond_1
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    #@1c
    move-result v2

    #@1d
    .line 228
    .local v2, "ca":I
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    #@20
    move-result v3

    #@21
    .line 229
    .local v3, "cb":I
    if-ge v3, v2, :cond_2

    #@23
    .line 230
    move v8, v2

    #@24
    .line 231
    .restart local v8    # "tmp":I
    move v2, v3

    #@25
    .line 232
    move v3, v8

    #@26
    .line 234
    .end local v8    # "tmp":I
    :cond_2
    if-eq v2, v10, :cond_4

    #@28
    if-eq v3, v10, :cond_4

    #@2a
    .line 235
    if-ge v2, v0, :cond_3

    #@2c
    move v0, v2

    #@2d
    .line 236
    :cond_3
    if-le v3, v1, :cond_4

    #@2f
    move v1, v3

    #@30
    .line 239
    :cond_4
    const/4 v5, 0x0

    #@31
    .line 241
    .local v5, "deleted":I
    if-lez p1, :cond_6

    #@33
    .line 242
    sub-int v7, v0, p1

    #@35
    .line 243
    .local v7, "start":I
    if-gez v7, :cond_5

    #@37
    const/4 v7, 0x0

    #@38
    .line 244
    :cond_5
    invoke-interface {v4, v7, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@3b
    .line 245
    sub-int v5, v0, v7

    #@3d
    .line 248
    .end local v7    # "start":I
    :cond_6
    if-lez p2, :cond_8

    #@3f
    .line 249
    sub-int/2addr v1, v5

    #@40
    .line 251
    add-int v6, v1, p2

    #@42
    .line 252
    .local v6, "end":I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    #@45
    move-result v9

    #@46
    if-le v6, v9, :cond_7

    #@48
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    #@4b
    move-result v6

    #@4c
    .line 254
    :cond_7
    invoke-interface {v4, v1, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@4f
    .line 257
    .end local v6    # "end":I
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    #@52
    .line 259
    const/4 v9, 0x1

    #@53
    return v9
.end method

.method public endBatchEdit()Z
    .locals 1

    #@0
    .prologue
    .line 152
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public finishComposingText()Z
    .locals 2

    #@0
    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    #@3
    move-result-object v0

    #@4
    .line 270
    .local v0, "content":Landroid/text/Editable;
    if-eqz v0, :cond_0

    #@6
    .line 271
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    #@9
    .line 272
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    #@c
    .line 274
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    #@f
    .line 275
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    #@12
    .line 277
    :cond_0
    const/4 v1, 0x1

    #@13
    return v1
.end method

.method public getCursorCapsMode(I)I
    .locals 6
    .param p1, "reqModes"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 286
    iget-boolean v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    return v5

    #@6
    .line 288
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    #@9
    move-result-object v2

    #@a
    .line 289
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_1

    #@c
    return v5

    #@d
    .line 291
    :cond_1
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@10
    move-result v0

    #@11
    .line 292
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@14
    move-result v1

    #@15
    .line 294
    .local v1, "b":I
    if-le v0, v1, :cond_2

    #@17
    .line 295
    move v3, v0

    #@18
    .line 296
    .local v3, "tmp":I
    move v0, v1

    #@19
    .line 297
    move v1, v3

    #@1a
    .line 300
    .end local v3    # "tmp":I
    :cond_2
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    #@1d
    move-result v4

    #@1e
    return v4
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 135
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, ""

    #@b
    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    #@11
    .line 136
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@17
    .line 138
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    #@19
    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 307
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 346
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    #@4
    move-result-object v2

    #@5
    .line 347
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_0

    #@7
    return-object v4

    #@8
    .line 349
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@b
    move-result v0

    #@c
    .line 350
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@f
    move-result v1

    #@10
    .line 352
    .local v1, "b":I
    if-le v0, v1, :cond_1

    #@12
    .line 353
    move v3, v0

    #@13
    .line 354
    .local v3, "tmp":I
    move v0, v1

    #@14
    .line 355
    move v1, v3

    #@15
    .line 358
    .end local v3    # "tmp":I
    :cond_1
    if-ne v0, v1, :cond_2

    #@17
    return-object v4

    #@18
    .line 360
    :cond_2
    and-int/lit8 v4, p1, 0x1

    #@1a
    if-eqz v4, :cond_3

    #@1c
    .line 361
    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    #@1f
    move-result-object v4

    #@20
    return-object v4

    #@21
    .line 363
    :cond_3
    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    return-object v4
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "length"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 371
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    #@4
    move-result-object v2

    #@5
    .line 372
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_0

    #@7
    return-object v4

    #@8
    .line 374
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@b
    move-result v0

    #@c
    .line 375
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@f
    move-result v1

    #@10
    .line 377
    .local v1, "b":I
    if-le v0, v1, :cond_1

    #@12
    .line 378
    move v3, v0

    #@13
    .line 379
    .local v3, "tmp":I
    move v0, v1

    #@14
    .line 380
    move v1, v3

    #@15
    .line 384
    .end local v3    # "tmp":I
    :cond_1
    if-gez v1, :cond_2

    #@17
    .line 385
    const/4 v1, 0x0

    #@18
    .line 388
    :cond_2
    add-int v4, v1, p1

    #@1a
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    #@1d
    move-result v5

    #@1e
    if-le v4, v5, :cond_3

    #@20
    .line 389
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    #@23
    move-result v4

    #@24
    sub-int p1, v4, v1

    #@26
    .line 393
    :cond_3
    and-int/lit8 v4, p2, 0x1

    #@28
    if-eqz v4, :cond_4

    #@2a
    .line 394
    add-int v4, v1, p1

    #@2c
    invoke-interface {v2, v1, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    #@2f
    move-result-object v4

    #@30
    return-object v4

    #@31
    .line 396
    :cond_4
    add-int v4, v1, p1

    #@33
    invoke-static {v2, v1, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    return-object v4
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "length"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 315
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    #@4
    move-result-object v2

    #@5
    .line 316
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_0

    #@7
    return-object v4

    #@8
    .line 318
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@b
    move-result v0

    #@c
    .line 319
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@f
    move-result v1

    #@10
    .line 321
    .local v1, "b":I
    if-le v0, v1, :cond_1

    #@12
    .line 322
    move v3, v0

    #@13
    .line 323
    .local v3, "tmp":I
    move v0, v1

    #@14
    .line 324
    move v1, v3

    #@15
    .line 327
    .end local v3    # "tmp":I
    :cond_1
    if-gtz v0, :cond_2

    #@17
    .line 328
    const-string/jumbo v4, ""

    #@1a
    return-object v4

    #@1b
    .line 331
    :cond_2
    if-le p1, v0, :cond_3

    #@1d
    .line 332
    move p1, v0

    #@1e
    .line 335
    :cond_3
    and-int/lit8 v4, p2, 0x1

    #@20
    if-eqz v4, :cond_4

    #@22
    .line 336
    sub-int v4, v0, p1

    #@24
    invoke-interface {v2, v4, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    #@27
    move-result-object v4

    #@28
    return-object v4

    #@29
    .line 338
    :cond_4
    sub-int v4, v0, p1

    #@2b
    invoke-static {v2, v4, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    return-object v4
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 421
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public performEditorAction(I)Z
    .locals 19
    .param p1, "actionCode"    # I

    #@0
    .prologue
    .line 403
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 404
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    #@6
    .line 405
    const/4 v8, 0x0

    #@7
    const/16 v9, 0x42

    #@9
    const/4 v10, 0x0

    #@a
    const/4 v11, 0x0

    #@b
    .line 406
    const/4 v12, -0x1

    #@c
    const/4 v13, 0x0

    #@d
    .line 407
    const/16 v14, 0x16

    #@f
    move-wide v6, v4

    #@10
    .line 404
    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    #@13
    move-object/from16 v0, p0

    #@15
    invoke-virtual {v0, v3}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    #@18
    .line 409
    new-instance v7, Landroid/view/KeyEvent;

    #@1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1d
    move-result-wide v8

    #@1e
    .line 410
    const/4 v12, 0x1

    #@1f
    const/16 v13, 0x42

    #@21
    const/4 v14, 0x0

    #@22
    const/4 v15, 0x0

    #@23
    .line 411
    const/16 v16, -0x1

    #@25
    const/16 v17, 0x0

    #@27
    .line 412
    const/16 v18, 0x16

    #@29
    move-wide v10, v4

    #@2a
    .line 409
    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    #@2d
    move-object/from16 v0, p0

    #@2f
    invoke-virtual {v0, v7}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    #@32
    .line 414
    const/4 v2, 0x1

    #@33
    return v2
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 428
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected reportFinish()V
    .locals 0

    #@0
    .prologue
    .line 160
    return-void
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 538
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->setFullscreenMode(Z)V

    #@5
    .line 539
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public requestCursorUpdates(I)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I

    #@0
    .prologue
    .line 435
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 519
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@4
    monitor-enter v2

    #@5
    .line 520
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    #@7
    if-eqz v1, :cond_2

    #@9
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    #@b
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@e
    move-result-object v0

    #@f
    .line 521
    :goto_0
    if-nez v0, :cond_0

    #@11
    .line 522
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@13
    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 523
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@19
    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@1b
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@1e
    move-result-object v0

    #@1f
    .line 526
    :cond_0
    if-eqz v0, :cond_1

    #@21
    .line 527
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :cond_1
    monitor-exit v2

    #@25
    .line 530
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@27
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->notifyUserAction()V

    #@2a
    .line 531
    const/4 v1, 0x0

    #@2b
    return v1

    #@2c
    .line 520
    :cond_2
    const/4 v0, 0x0

    #@2d
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    goto :goto_0

    #@2e
    .line 519
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1
.end method

.method public setComposingRegion(II)Z
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/16 v7, 0x121

    #@2
    .line 451
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    #@5
    move-result-object v2

    #@6
    .line 452
    .local v2, "content":Landroid/text/Editable;
    if-eqz v2, :cond_6

    #@8
    .line 453
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    #@b
    .line 454
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    #@e
    .line 455
    move v0, p1

    #@f
    .line 456
    .local v0, "a":I
    move v1, p2

    #@10
    .line 457
    .local v1, "b":I
    if-le v0, v1, :cond_0

    #@12
    .line 458
    move v5, v0

    #@13
    .line 459
    .local v5, "tmp":I
    move v0, v1

    #@14
    .line 460
    move v1, v5

    #@15
    .line 463
    .end local v5    # "tmp":I
    :cond_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    #@18
    move-result v4

    #@19
    .line 464
    .local v4, "length":I
    if-gez v0, :cond_1

    #@1b
    const/4 v0, 0x0

    #@1c
    .line 465
    :cond_1
    if-gez v1, :cond_2

    #@1e
    const/4 v1, 0x0

    #@1f
    .line 466
    :cond_2
    if-le v0, v4, :cond_3

    #@21
    move v0, v4

    #@22
    .line 467
    :cond_3
    if-le v1, v4, :cond_4

    #@24
    move v1, v4

    #@25
    .line 469
    :cond_4
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    #@28
    .line 470
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    #@2a
    if-eqz v6, :cond_5

    #@2c
    .line 471
    const/4 v3, 0x0

    #@2d
    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    #@2f
    array-length v6, v6

    #@30
    if-ge v3, v6, :cond_5

    #@32
    .line 472
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    #@34
    aget-object v6, v6, v3

    #@36
    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@39
    .line 471
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 477
    .end local v3    # "i":I
    :cond_5
    sget-object v6, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    #@3e
    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@41
    .line 481
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    #@44
    .line 482
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    #@47
    .line 484
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v4    # "length":I
    :cond_6
    const/4 v6, 0x1

    #@48
    return v6
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 445
    invoke-direct {p0, p1, p2, v1}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    #@4
    .line 446
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@6
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->notifyUserAction()V

    #@9
    .line 447
    return v1
.end method

.method public setSelection(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 493
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    #@5
    move-result-object v0

    #@6
    .line 494
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    #@8
    return v2

    #@9
    .line 495
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    #@c
    move-result v1

    #@d
    .line 496
    .local v1, "len":I
    if-gt p1, v1, :cond_1

    #@f
    if-le p2, v1, :cond_2

    #@11
    .line 501
    :cond_1
    return v3

    #@12
    .line 496
    :cond_2
    if-ltz p1, :cond_1

    #@14
    if-ltz p2, :cond_1

    #@16
    .line 503
    if-ne p1, p2, :cond_3

    #@18
    .line 504
    const/16 v2, 0x800

    #@1a
    .line 503
    invoke-static {v0, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_3

    #@20
    .line 507
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@23
    .line 511
    :goto_0
    return v3

    #@24
    .line 509
    :cond_3
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@27
    goto :goto_0
.end method
