.class public Landroid/widget/DialerFilter;
.super Landroid/widget/RelativeLayout;
.source "DialerFilter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist DIGITS_AND_LETTERS:I = 0x1

.field public static final whitelist DIGITS_AND_LETTERS_NO_DIGITS:I = 0x2

.field public static final whitelist DIGITS_AND_LETTERS_NO_LETTERS:I = 0x3

.field public static final whitelist DIGITS_ONLY:I = 0x4

.field public static final whitelist LETTERS_ONLY:I = 0x5


# instance fields
.field greylist-max-o mDigits:Landroid/widget/EditText;

.field greylist-max-o mHint:Landroid/widget/EditText;

.field greylist-max-o mIcon:Landroid/widget/ImageView;

.field greylist-max-o mInputFilters:[Landroid/text/InputFilter;

.field private greylist-max-o mIsQwerty:Z

.field greylist-max-o mLetters:Landroid/widget/EditText;

.field greylist-max-o mMode:I

.field greylist-max-o mPrimary:Landroid/widget/EditText;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private greylist-max-o makeDigitsPrimary()V
    .registers 3

    .line 266
    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    if-ne v0, v1, :cond_a

    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/DialerFilter;->swapPrimaryAndHint(Z)V

    .line 269
    :cond_a
    return-void
.end method

.method private greylist-max-o makeLettersPrimary()V
    .registers 3

    .line 260
    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    if-ne v0, v1, :cond_a

    .line 261
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/DialerFilter;->swapPrimaryAndHint(Z)V

    .line 263
    :cond_a
    return-void
.end method

.method private greylist-max-o swapPrimaryAndHint(Z)V
    .registers 8
    .param p1, "makeLettersPrimary"    # Z

    .line 272
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 273
    .local v0, "lettersText":Landroid/text/Editable;
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 274
    .local v1, "digitsText":Landroid/text/Editable;
    iget-object v2, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    .line 275
    .local v2, "lettersInput":Landroid/text/method/KeyListener;
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    .line 277
    .local v3, "digitsInput":Landroid/text/method/KeyListener;
    if-eqz p1, :cond_23

    .line 278
    iget-object v4, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    .line 279
    iget-object v4, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    goto :goto_2b

    .line 281
    :cond_23
    iget-object v4, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    .line 282
    iget-object v4, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    .line 285
    :goto_2b
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 286
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 290
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 291
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 293
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v1, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 296
    iget-object v4, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v5, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 297
    iget-object v4, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iget-object v5, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 298
    return-void
.end method


# virtual methods
.method public whitelist append(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 326
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_2d

    .line 334
    :pswitch_6
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 335
    goto :goto_2d

    .line 339
    :pswitch_10
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2d

    .line 328
    :pswitch_1a
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 329
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 330
    nop

    .line 342
    :goto_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_10
        :pswitch_6
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method

.method public whitelist clearText()V
    .registers 3

    .line 350
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 351
    .local v0, "text":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 353
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 354
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 357
    iget-boolean v1, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    if-eqz v1, :cond_1b

    .line 358
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->setMode(I)V

    goto :goto_1f

    .line 360
    :cond_1b
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->setMode(I)V

    .line 362
    :goto_1f
    return-void
.end method

.method public whitelist getDigits()Ljava/lang/CharSequence;
    .registers 2

    .line 310
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 311
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 313
    :cond_f
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getFilterText()Ljava/lang/CharSequence;
    .registers 3

    .line 318
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    .line 319
    invoke-virtual {p0}, Landroid/widget/DialerFilter;->getLetters()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 321
    :cond_a
    invoke-virtual {p0}, Landroid/widget/DialerFilter;->getDigits()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLetters()Ljava/lang/CharSequence;
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 303
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 305
    :cond_f
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getMode()I
    .registers 2

    .line 213
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    return v0
.end method

.method public whitelist isQwertyKeyboard()Z
    .registers 2

    .line 106
    iget-boolean v0, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    return v0
.end method

.method protected whitelist onFinishInflate()V
    .registers 6

    .line 53
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 56
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v2}, Landroid/text/InputFilter$AllCaps;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    .line 58
    const v1, 0x1020005

    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    .line 59
    iget-object v1, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    if-eqz v1, :cond_87

    .line 62
    iget-object v1, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 64
    iget-object v1, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    .line 65
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 66
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 67
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 70
    const v1, 0x102000c

    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    .line 71
    iget-object v1, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    if-eqz v1, :cond_7f

    .line 74
    iget-object v1, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v4, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 76
    iget-object v1, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    .line 77
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 78
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 79
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 82
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/widget/DialerFilter;->mIcon:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/DialerFilter;->setFocusable(Z)V

    .line 88
    iput-boolean v0, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/DialerFilter;->setMode(I)V

    .line 90
    return-void

    .line 72
    :cond_7f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialerFilter must have a child EditText named primary"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialerFilter must have a child EditText named hint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 97
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 99
    iget-object v0, p0, Landroid/widget/DialerFilter;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 100
    iget-object v0, p0, Landroid/widget/DialerFilter;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    const/4 v1, 0x0

    goto :goto_f

    :cond_d
    const/16 v1, 0x8

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    :cond_12
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "handled":Z
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_c2

    .line 157
    iget v2, p0, Landroid/widget/DialerFilter;->mMode:I

    packed-switch v2, :pswitch_data_e0

    goto/16 :goto_b9

    .line 123
    :sswitch_c
    iget v2, p0, Landroid/widget/DialerFilter;->mMode:I

    packed-switch v2, :pswitch_data_ee

    goto :goto_73

    .line 149
    :pswitch_12
    iget-object v2, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_73

    .line 145
    :pswitch_19
    iget-object v2, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 146
    goto :goto_73

    .line 137
    :pswitch_20
    iget-object v2, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v2, v3, :cond_3e

    .line 138
    iget-object v2, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 139
    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->setMode(I)V

    .line 141
    :cond_3e
    iget-object v2, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 142
    goto :goto_73

    .line 130
    :pswitch_45
    iget-object v2, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 131
    iget-object v2, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v2, v3, :cond_73

    .line 132
    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->setMode(I)V

    goto :goto_73

    .line 125
    :pswitch_65
    iget-object v2, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 126
    iget-object v2, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 127
    nop

    .line 152
    :cond_73
    :goto_73
    goto :goto_b9

    .line 120
    :sswitch_74
    goto :goto_b9

    .line 188
    :pswitch_75
    iget-object v2, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 189
    goto :goto_b9

    .line 193
    :pswitch_7c
    iget-object v2, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b9

    .line 159
    :pswitch_83
    iget-object v2, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 163
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 164
    iget-object v2, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 165
    const/4 v0, 0x1

    .line 166
    goto :goto_b9

    .line 174
    :cond_96
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v2

    .line 175
    .local v2, "isPrint":Z
    if-nez v2, :cond_a4

    const/16 v3, 0x3e

    if-eq p1, v3, :cond_a4

    const/16 v3, 0x3d

    if-ne p1, v3, :cond_b9

    .line 177
    :cond_a4
    sget-object v3, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v3

    .line 178
    .local v3, "c":C
    if-eqz v3, :cond_b4

    .line 179
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    and-int/2addr v0, v4

    goto :goto_b8

    .line 181
    :cond_b4
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/widget/DialerFilter;->setMode(I)V

    .line 183
    .end local v3    # "c":C
    :goto_b8
    nop

    .line 198
    .end local v2    # "isPrint":Z
    :cond_b9
    :goto_b9
    if-nez v0, :cond_c0

    .line 199
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 201
    :cond_c0
    return v1

    nop

    :sswitch_data_c2
    .sparse-switch
        0x13 -> :sswitch_74
        0x14 -> :sswitch_74
        0x15 -> :sswitch_74
        0x16 -> :sswitch_74
        0x17 -> :sswitch_74
        0x42 -> :sswitch_74
        0x43 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_83
        :pswitch_7c
        :pswitch_75
        :pswitch_75
        :pswitch_7c
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_65
        :pswitch_45
        :pswitch_20
        :pswitch_19
        :pswitch_12
    .end packed-switch
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 207
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 208
    .local v0, "a":Z
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 209
    .local v1, "b":Z
    if-nez v0, :cond_13

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v2, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v2, 0x1

    :goto_14
    return v2
.end method

.method protected whitelist onModeChange(II)V
    .registers 3
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I

    .line 399
    return-void
.end method

.method public whitelist removeFilterWatcher(Landroid/text/TextWatcher;)V
    .registers 4
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .line 386
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    .line 387
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .local v0, "text":Landroid/text/Spannable;
    goto :goto_12

    .line 389
    .end local v0    # "text":Landroid/text/Spannable;
    :cond_c
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 391
    .restart local v0    # "text":Landroid/text/Spannable;
    :goto_12
    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 392
    return-void
.end method

.method public whitelist setDigitsWatcher(Landroid/text/TextWatcher;)V
    .registers 7
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .line 371
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 372
    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    .line 373
    .local v1, "span":Landroid/text/Spannable;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v1, p1, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 374
    return-void
.end method

.method public whitelist setFilterWatcher(Landroid/text/TextWatcher;)V
    .registers 4
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .line 377
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 378
    invoke-virtual {p0, p1}, Landroid/widget/DialerFilter;->setLettersWatcher(Landroid/text/TextWatcher;)V

    goto :goto_c

    .line 380
    :cond_9
    invoke-virtual {p0, p1}, Landroid/widget/DialerFilter;->setDigitsWatcher(Landroid/text/TextWatcher;)V

    .line 382
    :goto_c
    return-void
.end method

.method public whitelist setLettersWatcher(Landroid/text/TextWatcher;)V
    .registers 7
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .line 365
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 366
    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    .line 367
    .local v1, "span":Landroid/text/Spannable;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v1, p1, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 368
    return-void
.end method

.method public whitelist setMode(I)V
    .registers 5
    .param p1, "newMode"    # I

    .line 222
    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_56

    goto :goto_4e

    .line 236
    :pswitch_8
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeLettersPrimary()V

    .line 237
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 238
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 239
    goto :goto_4e

    .line 230
    :pswitch_16
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeDigitsPrimary()V

    .line 231
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 233
    goto :goto_4e

    .line 242
    :pswitch_24
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeDigitsPrimary()V

    .line 243
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 245
    goto :goto_4e

    .line 248
    :pswitch_32
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeLettersPrimary()V

    .line 249
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_4e

    .line 224
    :pswitch_40
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeDigitsPrimary()V

    .line 225
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 227
    nop

    .line 254
    :goto_4e
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    .line 255
    .local v0, "oldMode":I
    iput p1, p0, Landroid/widget/DialerFilter;->mMode:I

    .line 256
    invoke-virtual {p0, v0, p1}, Landroid/widget/DialerFilter;->onModeChange(II)V

    .line 257
    return-void

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_40
        :pswitch_32
        :pswitch_24
        :pswitch_16
        :pswitch_8
    .end packed-switch
.end method
