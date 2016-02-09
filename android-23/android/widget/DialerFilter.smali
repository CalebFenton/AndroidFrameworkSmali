.class public Landroid/widget/DialerFilter;
.super Landroid/widget/RelativeLayout;
.source "DialerFilter.java"


# static fields
.field public static final DIGITS_AND_LETTERS:I = 0x1

.field public static final DIGITS_AND_LETTERS_NO_DIGITS:I = 0x2

.field public static final DIGITS_AND_LETTERS_NO_LETTERS:I = 0x3

.field public static final DIGITS_ONLY:I = 0x4

.field public static final LETTERS_ONLY:I = 0x5


# instance fields
.field mDigits:Landroid/widget/EditText;

.field mHint:Landroid/widget/EditText;

.field mIcon:Landroid/widget/ImageView;

.field mInputFilters:[Landroid/text/InputFilter;

.field private mIsQwerty:Z

.field mLetters:Landroid/widget/EditText;

.field mMode:I

.field mPrimary:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 42
    return-void
.end method

.method private makeDigitsPrimary()V
    .locals 2

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    #@2
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 262
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Landroid/widget/DialerFilter;->swapPrimaryAndHint(Z)V

    #@a
    .line 260
    :cond_0
    return-void
.end method

.method private makeLettersPrimary()V
    .locals 2

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    #@2
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 256
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, v0}, Landroid/widget/DialerFilter;->swapPrimaryAndHint(Z)V

    #@a
    .line 254
    :cond_0
    return-void
.end method

.method private swapPrimaryAndHint(Z)V
    .locals 6
    .param p1, "makeLettersPrimary"    # Z

    #@0
    .prologue
    .line 267
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@2
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@5
    move-result-object v3

    #@6
    .line 268
    .local v3, "lettersText":Landroid/text/Editable;
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@8
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@b
    move-result-object v1

    #@c
    .line 269
    .local v1, "digitsText":Landroid/text/Editable;
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@e
    invoke-virtual {v4}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    #@11
    move-result-object v2

    #@12
    .line 270
    .local v2, "lettersInput":Landroid/text/method/KeyListener;
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@14
    invoke-virtual {v4}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    #@17
    move-result-object v0

    #@18
    .line 272
    .local v0, "digitsInput":Landroid/text/method/KeyListener;
    if-eqz p1, :cond_0

    #@1a
    .line 273
    iget-object v4, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    #@1c
    iput-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@1e
    .line 274
    iget-object v4, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    #@20
    iput-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@22
    .line 280
    :goto_0
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@24
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    #@27
    .line 281
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@29
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@2c
    .line 282
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@2e
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@31
    move-result-object v3

    #@32
    .line 283
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    #@35
    move-result v4

    #@36
    invoke-static {v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@39
    .line 285
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@3b
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    #@3e
    .line 286
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@40
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@43
    .line 287
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@45
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@48
    move-result-object v1

    #@49
    .line 288
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    #@4c
    move-result v4

    #@4d
    invoke-static {v1, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@50
    .line 291
    iget-object v4, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    #@52
    iget-object v5, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    #@54
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    #@57
    .line 292
    iget-object v4, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    #@59
    iget-object v5, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    #@5b
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    #@5e
    .line 266
    return-void

    #@5f
    .line 276
    :cond_0
    iget-object v4, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    #@61
    iput-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@63
    .line 277
    iget-object v4, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    #@65
    iput-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@67
    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 321
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 320
    :goto_0
    return-void

    #@6
    .line 323
    :pswitch_0
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@8
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    #@f
    .line 324
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@11
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@14
    move-result-object v0

    #@15
    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    #@18
    goto :goto_0

    #@19
    .line 329
    :pswitch_1
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@1b
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@1e
    move-result-object v0

    #@1f
    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    #@22
    goto :goto_0

    #@23
    .line 334
    :pswitch_2
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@25
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@28
    move-result-object v0

    #@29
    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    #@2c
    goto :goto_0

    #@2d
    .line 321
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public clearText()V
    .locals 2

    #@0
    .prologue
    .line 345
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@2
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@5
    move-result-object v0

    #@6
    .line 346
    .local v0, "text":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    #@9
    .line 348
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@b
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@e
    move-result-object v0

    #@f
    .line 349
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    #@12
    .line 352
    iget-boolean v1, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 353
    const/4 v1, 0x1

    #@17
    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->setMode(I)V

    #@1a
    .line 342
    :goto_0
    return-void

    #@1b
    .line 355
    :cond_0
    const/4 v1, 0x4

    #@1c
    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->setMode(I)V

    #@1f
    goto :goto_0
.end method

.method public getDigits()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 305
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@2
    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 306
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@a
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 308
    :cond_0
    const-string/jumbo v0, ""

    #@12
    return-object v0
.end method

.method public getFilterText()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 313
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    #@2
    const/4 v1, 0x4

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 314
    invoke-virtual {p0}, Landroid/widget/DialerFilter;->getLetters()Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 316
    :cond_0
    invoke-virtual {p0}, Landroid/widget/DialerFilter;->getDigits()Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getLetters()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@2
    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 298
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@a
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 300
    :cond_0
    const-string/jumbo v0, ""

    #@12
    return-object v0
.end method

.method public getMode()I
    .locals 1

    #@0
    .prologue
    .line 208
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    #@2
    return v0
.end method

.method public isQwertyKeyboard()Z
    .locals 1

    #@0
    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    #@2
    return v0
.end method

.method protected onFinishInflate()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 48
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    #@6
    .line 51
    new-array v0, v2, [Landroid/text/InputFilter;

    #@8
    new-instance v1, Landroid/text/InputFilter$AllCaps;

    #@a
    invoke-direct {v1}, Landroid/text/InputFilter$AllCaps;-><init>()V

    #@d
    aput-object v1, v0, v4

    #@f
    iput-object v0, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    #@11
    .line 53
    const v0, 0x1020005

    #@14
    invoke-virtual {p0, v0}, Landroid/widget/DialerFilter;->findViewById(I)Landroid/view/View;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/widget/EditText;

    #@1a
    iput-object v0, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    #@1c
    .line 54
    iget-object v0, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    #@1e
    if-nez v0, :cond_0

    #@20
    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    #@22
    const-string/jumbo v1, "DialerFilter must have a child EditText named hint"

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 57
    :cond_0
    iget-object v0, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    #@2b
    iget-object v1, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    #@2d
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    #@30
    .line 59
    iget-object v0, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    #@32
    iput-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@34
    .line 60
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@36
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    #@3d
    .line 61
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@3f
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    #@42
    .line 62
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@44
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    #@47
    .line 65
    const v0, 0x102000c

    #@4a
    invoke-virtual {p0, v0}, Landroid/widget/DialerFilter;->findViewById(I)Landroid/view/View;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, Landroid/widget/EditText;

    #@50
    iput-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    #@52
    .line 66
    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    #@54
    if-nez v0, :cond_1

    #@56
    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    #@58
    const-string/jumbo v1, "DialerFilter must have a child EditText named primary"

    #@5b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v0

    #@5f
    .line 69
    :cond_1
    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    #@61
    iget-object v1, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    #@63
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    #@66
    .line 71
    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    #@68
    iput-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@6a
    .line 72
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@6c
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    #@73
    .line 73
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@75
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    #@78
    .line 74
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@7a
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    #@7d
    .line 77
    const v0, 0x1020006

    #@80
    invoke-virtual {p0, v0}, Landroid/widget/DialerFilter;->findViewById(I)Landroid/view/View;

    #@83
    move-result-object v0

    #@84
    check-cast v0, Landroid/widget/ImageView;

    #@86
    iput-object v0, p0, Landroid/widget/DialerFilter;->mIcon:Landroid/widget/ImageView;

    #@88
    .line 80
    invoke-virtual {p0, v2}, Landroid/widget/DialerFilter;->setFocusable(Z)V

    #@8b
    .line 83
    iput-boolean v2, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    #@8d
    .line 84
    invoke-virtual {p0, v2}, Landroid/widget/DialerFilter;->setMode(I)V

    #@90
    .line 47
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@3
    .line 94
    iget-object v0, p0, Landroid/widget/DialerFilter;->mIcon:Landroid/widget/ImageView;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 95
    iget-object v1, p0, Landroid/widget/DialerFilter;->mIcon:Landroid/widget/ImageView;

    #@9
    if-eqz p1, :cond_1

    #@b
    const/4 v0, 0x0

    #@c
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    #@f
    .line 91
    :cond_0
    return-void

    #@10
    .line 95
    :cond_1
    const/16 v0, 0x8

    #@12
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 106
    const/4 v1, 0x0

    #@2
    .line 108
    .local v1, "handled":Z
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 152
    iget v3, p0, Landroid/widget/DialerFilter;->mMode:I

    #@7
    packed-switch v3, :pswitch_data_0

    #@a
    .line 193
    .end local v1    # "handled":Z
    :cond_0
    :goto_0
    :sswitch_0
    if-nez v1, :cond_6

    #@c
    .line 194
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@f
    move-result v3

    #@10
    return v3

    #@11
    .line 118
    .restart local v1    # "handled":Z
    :sswitch_1
    iget v3, p0, Landroid/widget/DialerFilter;->mMode:I

    #@13
    packed-switch v3, :pswitch_data_1

    #@16
    goto :goto_0

    #@17
    .line 120
    :pswitch_0
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@19
    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@1c
    move-result v1

    #@1d
    .line 121
    .local v1, "handled":Z
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@1f
    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@22
    move-result v3

    #@23
    and-int/2addr v1, v3

    #@24
    .line 122
    goto :goto_0

    #@25
    .line 125
    .local v1, "handled":Z
    :pswitch_1
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@27
    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@2a
    move-result v1

    #@2b
    .line 126
    .local v1, "handled":Z
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@2d
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@30
    move-result-object v3

    #@31
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    #@34
    move-result v3

    #@35
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@37
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@3a
    move-result-object v4

    #@3b
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    #@3e
    move-result v4

    #@3f
    if-ne v3, v4, :cond_0

    #@41
    .line 127
    invoke-virtual {p0, v5}, Landroid/widget/DialerFilter;->setMode(I)V

    #@44
    goto :goto_0

    #@45
    .line 132
    .local v1, "handled":Z
    :pswitch_2
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@47
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@4a
    move-result-object v3

    #@4b
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    #@4e
    move-result v3

    #@4f
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@51
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@54
    move-result-object v4

    #@55
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    #@58
    move-result v4

    #@59
    if-ne v3, v4, :cond_1

    #@5b
    .line 133
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@5d
    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@60
    .line 134
    invoke-virtual {p0, v5}, Landroid/widget/DialerFilter;->setMode(I)V

    #@63
    .line 136
    :cond_1
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@65
    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@68
    move-result v1

    #@69
    .local v1, "handled":Z
    goto :goto_0

    #@6a
    .line 140
    .local v1, "handled":Z
    :pswitch_3
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@6c
    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@6f
    move-result v1

    #@70
    .local v1, "handled":Z
    goto :goto_0

    #@71
    .line 144
    .local v1, "handled":Z
    :pswitch_4
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@73
    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@76
    move-result v1

    #@77
    .local v1, "handled":Z
    goto :goto_0

    #@78
    .line 154
    .local v1, "handled":Z
    :pswitch_5
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@7a
    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@7d
    move-result v1

    #@7e
    .line 158
    .local v1, "handled":Z
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    #@81
    move-result v3

    #@82
    if-eqz v3, :cond_2

    #@84
    .line 159
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@86
    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@89
    .line 160
    const/4 v1, 0x1

    #@8a
    .line 161
    .local v1, "handled":Z
    goto :goto_0

    #@8b
    .line 169
    .local v1, "handled":Z
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isPrintingKey()Z

    #@8e
    move-result v2

    #@8f
    .line 170
    .local v2, "isPrint":Z
    if-nez v2, :cond_3

    #@91
    const/16 v3, 0x3e

    #@93
    if-ne p1, v3, :cond_4

    #@95
    .line 172
    :cond_3
    :goto_1
    sget-object v3, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    #@97
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getMatch([C)C

    #@9a
    move-result v0

    #@9b
    .line 173
    .local v0, "c":C
    if-eqz v0, :cond_5

    #@9d
    .line 174
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@9f
    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@a2
    move-result v3

    #@a3
    and-int/2addr v1, v3

    #@a4
    goto/16 :goto_0

    #@a6
    .line 171
    .end local v0    # "c":C
    :cond_4
    const/16 v3, 0x3d

    #@a8
    if-ne p1, v3, :cond_0

    #@aa
    goto :goto_1

    #@ab
    .line 176
    .restart local v0    # "c":C
    :cond_5
    const/4 v3, 0x2

    #@ac
    invoke-virtual {p0, v3}, Landroid/widget/DialerFilter;->setMode(I)V

    #@af
    goto/16 :goto_0

    #@b1
    .line 183
    .end local v0    # "c":C
    .end local v2    # "isPrint":Z
    .local v1, "handled":Z
    :pswitch_6
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@b3
    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@b6
    move-result v1

    #@b7
    .local v1, "handled":Z
    goto/16 :goto_0

    #@b9
    .line 188
    .local v1, "handled":Z
    :pswitch_7
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@bb
    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@be
    move-result v1

    #@bf
    .local v1, "handled":Z
    goto/16 :goto_0

    #@c1
    .line 196
    .end local v1    # "handled":Z
    :cond_6
    return v5

    #@c2
    .line 108
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch

    #@e0
    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

    #@ee
    .line 118
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 202
    iget-object v2, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@2
    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    .line 203
    .local v0, "a":Z
    iget-object v2, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@8
    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@b
    move-result v1

    #@c
    .line 204
    .local v1, "b":Z
    if-nez v0, :cond_0

    #@e
    .end local v1    # "b":Z
    :goto_0
    return v1

    #@f
    .restart local v1    # "b":Z
    :cond_0
    const/4 v1, 0x1

    #@10
    goto :goto_0
.end method

.method protected onModeChange(II)V
    .locals 0
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I

    #@0
    .prologue
    .line 393
    return-void
.end method

.method public removeFilterWatcher(Landroid/text/TextWatcher;)V
    .locals 3
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    #@0
    .prologue
    .line 381
    iget v1, p0, Landroid/widget/DialerFilter;->mMode:I

    #@2
    const/4 v2, 0x4

    #@3
    if-eq v1, v2, :cond_0

    #@5
    .line 382
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@7
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@a
    move-result-object v0

    #@b
    .line 386
    .local v0, "text":Landroid/text/Spannable;
    :goto_0
    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@e
    .line 379
    return-void

    #@f
    .line 384
    .end local v0    # "text":Landroid/text/Spannable;
    :cond_0
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@11
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@14
    move-result-object v0

    #@15
    .restart local v0    # "text":Landroid/text/Spannable;
    goto :goto_0
.end method

.method public setDigitsWatcher(Landroid/text/TextWatcher;)V
    .locals 5
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    #@0
    .prologue
    .line 366
    iget-object v2, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@2
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@5
    move-result-object v1

    #@6
    .local v1, "text":Ljava/lang/CharSequence;
    move-object v0, v1

    #@7
    .line 367
    check-cast v0, Landroid/text/Spannable;

    #@9
    .line 368
    .local v0, "span":Landroid/text/Spannable;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@c
    move-result v2

    #@d
    const/4 v3, 0x0

    #@e
    const/16 v4, 0x12

    #@10
    invoke-interface {v0, p1, v3, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@13
    .line 365
    return-void
.end method

.method public setFilterWatcher(Landroid/text/TextWatcher;)V
    .locals 2
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    #@0
    .prologue
    .line 372
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    #@2
    const/4 v1, 0x4

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 373
    invoke-virtual {p0, p1}, Landroid/widget/DialerFilter;->setLettersWatcher(Landroid/text/TextWatcher;)V

    #@8
    .line 371
    :goto_0
    return-void

    #@9
    .line 375
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/DialerFilter;->setDigitsWatcher(Landroid/text/TextWatcher;)V

    #@c
    goto :goto_0
.end method

.method public setLettersWatcher(Landroid/text/TextWatcher;)V
    .locals 5
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    #@0
    .prologue
    .line 360
    iget-object v2, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@2
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@5
    move-result-object v1

    #@6
    .local v1, "text":Ljava/lang/CharSequence;
    move-object v0, v1

    #@7
    .line 361
    check-cast v0, Landroid/text/Spannable;

    #@9
    .line 362
    .local v0, "span":Landroid/text/Spannable;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@c
    move-result v2

    #@d
    const/4 v3, 0x0

    #@e
    const/16 v4, 0x12

    #@10
    invoke-interface {v0, p1, v3, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@13
    .line 359
    return-void
.end method

.method public setMode(I)V
    .locals 5
    .param p1, "newMode"    # I

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    const/4 v3, 0x4

    #@3
    const/4 v2, 0x0

    #@4
    .line 217
    packed-switch p1, :pswitch_data_0

    #@7
    .line 249
    :goto_0
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    #@9
    .line 250
    .local v0, "oldMode":I
    iput p1, p0, Landroid/widget/DialerFilter;->mMode:I

    #@b
    .line 251
    invoke-virtual {p0, v0, p1}, Landroid/widget/DialerFilter;->onModeChange(II)V

    #@e
    .line 216
    return-void

    #@f
    .line 219
    .end local v0    # "oldMode":I
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeDigitsPrimary()V

    #@12
    .line 220
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@14
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    #@17
    .line 221
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@19
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    #@1c
    goto :goto_0

    #@1d
    .line 225
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeDigitsPrimary()V

    #@20
    .line 226
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@22
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    #@25
    .line 227
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@27
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    #@2a
    goto :goto_0

    #@2b
    .line 231
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeLettersPrimary()V

    #@2e
    .line 232
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@30
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    #@33
    .line 233
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@35
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    #@38
    goto :goto_0

    #@39
    .line 237
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeDigitsPrimary()V

    #@3c
    .line 238
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@3e
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    #@41
    .line 239
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@43
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    #@46
    goto :goto_0

    #@47
    .line 243
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeLettersPrimary()V

    #@4a
    .line 244
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    #@4c
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    #@4f
    .line 245
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    #@51
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    #@54
    goto :goto_0

    #@55
    .line 217
    nop

    #@56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
