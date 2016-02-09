.class public Landroid/inputmethodservice/InputMethodService;
.super Landroid/inputmethodservice/AbstractInputMethodService;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$InputMethodImpl;,
        Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;,
        Landroid/inputmethodservice/InputMethodService$Insets;,
        Landroid/inputmethodservice/InputMethodService$1;,
        Landroid/inputmethodservice/InputMethodService$2;
    }
.end annotation


# static fields
.field public static final BACK_DISPOSITION_DEFAULT:I = 0x0

.field public static final BACK_DISPOSITION_WILL_DISMISS:I = 0x2

.field public static final BACK_DISPOSITION_WILL_NOT_DISMISS:I = 0x1

.field static final DEBUG:Z = false

.field public static final IME_ACTIVE:I = 0x1

.field public static final IME_VISIBLE:I = 0x2

.field static final MOVEMENT_DOWN:I = -0x1

.field static final MOVEMENT_UP:I = -0x2

.field static final TAG:Ljava/lang/String; = "InputMethodService"


# instance fields
.field final mActionClickListener:Landroid/view/View$OnClickListener;

.field mBackDisposition:I

.field mCandidatesFrame:Landroid/widget/FrameLayout;

.field mCandidatesViewStarted:Z

.field mCandidatesVisibility:I

.field mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mExtractAccessories:Landroid/view/ViewGroup;

.field mExtractAction:Landroid/widget/Button;

.field mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

.field mExtractFrame:Landroid/widget/FrameLayout;

.field mExtractView:Landroid/view/View;

.field mExtractViewHidden:Z

.field mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field mExtractedToken:I

.field mFullscreenApplied:Z

.field mFullscreenArea:Landroid/view/ViewGroup;

.field mHardwareAccelerated:Z

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field mInShowWindow:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mInitialized:Z

.field mInputBinding:Landroid/view/inputmethod/InputBinding;

.field mInputConnection:Landroid/view/inputmethod/InputConnection;

.field mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field mInputFrame:Landroid/widget/FrameLayout;

.field mInputStarted:Z

.field mInputView:Landroid/view/View;

.field mInputViewStarted:Z

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field mIsFullscreen:Z

.field mIsInputViewShown:Z

.field mLastShowInputRequested:Z

.field mRootView:Landroid/view/View;

.field mShouldClearInsetOfPreviousIme:Z

.field mShowInputFlags:I

.field mShowInputForced:Z

.field mShowInputRequested:Z

.field mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

.field mStatusIcon:I

.field mTheme:I

.field mThemeAttrs:Landroid/content/res/TypedArray;

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I

.field mToken:Landroid/os/IBinder;

.field mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field mWindowAdded:Z

.field mWindowCreated:Z

.field mWindowVisible:Z

.field mWindowWasVisible:Z


# direct methods
.method static synthetic -wrap0(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->clearInsetOfPreviousIme()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/inputmethodservice/InputMethodService;II)V
    .locals 0
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onToggleSoftInput(II)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 224
    invoke-direct {p0}, Landroid/inputmethodservice/AbstractInputMethodService;-><init>()V

    #@4
    .line 257
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@6
    .line 258
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    #@8
    .line 317
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    #@a
    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    #@d
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@f
    .line 318
    const/4 v0, 0x2

    #@10
    new-array v0, v0, [I

    #@12
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    #@14
    .line 321
    new-instance v0, Landroid/inputmethodservice/InputMethodService$1;

    #@16
    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    #@19
    .line 320
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@1b
    .line 341
    new-instance v0, Landroid/inputmethodservice/InputMethodService$2;

    #@1d
    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    #@20
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    #@22
    .line 224
    return-void
.end method

.method private clearInsetOfPreviousIme()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1567
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@7
    if-nez v1, :cond_1

    #@9
    :cond_0
    return-void

    #@a
    .line 1572
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@c
    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    #@f
    .line 1573
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@11
    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->hide()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1579
    :goto_0
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    #@16
    .line 1564
    return-void

    #@17
    .line 1574
    :catch_0
    move-exception v0

    #@18
    .line 1576
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@1a
    .line 1577
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    #@1c
    goto :goto_0
.end method

.method private doHideWindow()V
    .locals 4

    #@0
    .prologue
    .line 1529
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@4
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    #@6
    const/4 v3, 0x0

    #@7
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    #@a
    .line 1530
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    #@d
    .line 1528
    return-void
.end method

.method private finishViews()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1517
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 1519
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    #@8
    .line 1524
    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@a
    .line 1525
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@c
    .line 1516
    return-void

    #@d
    .line 1520
    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 1522
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    #@14
    goto :goto_0
.end method

.method private getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;
    .locals 1

    #@0
    .prologue
    .line 1828
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1831
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@e
    return-object v0

    #@f
    .line 1829
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method private handleBack(Z)Z
    .locals 3
    .param p1, "doIt"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1802
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1805
    if-eqz p1, :cond_0

    #@8
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    #@b
    .line 1806
    :cond_0
    return v2

    #@c
    .line 1807
    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@e
    if-eqz v0, :cond_4

    #@10
    .line 1808
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@12
    if-nez v0, :cond_3

    #@14
    .line 1811
    if-eqz p1, :cond_2

    #@16
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    #@19
    .line 1818
    :cond_2
    :goto_0
    return v2

    #@1a
    .line 1816
    :cond_3
    if-eqz p1, :cond_2

    #@1c
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    #@1f
    goto :goto_0

    #@20
    .line 1820
    :cond_4
    return v1
.end method

.method private onToggleSoftInput(II)V
    .locals 1
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    #@0
    .prologue
    .line 1946
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1947
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    #@9
    .line 1944
    :goto_0
    return-void

    #@a
    .line 1949
    :cond_0
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(I)V

    #@d
    goto :goto_0
.end method

.method private requestShowSelf(I)V
    .locals 2
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1798
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    #@7
    .line 1797
    return-void
.end method


# virtual methods
.method doFinishInput()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 1620
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@5
    if-eqz v0, :cond_2

    #@7
    .line 1622
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    #@a
    .line 1627
    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@c
    .line 1628
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@e
    .line 1629
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1631
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    #@15
    .line 1633
    :cond_1
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@17
    .line 1634
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@19
    .line 1635
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    #@1b
    .line 1619
    return-void

    #@1c
    .line 1623
    :cond_2
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 1625
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    #@23
    goto :goto_0
.end method

.method doMovementKey(ILandroid/view/KeyEvent;I)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "count"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 1976
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    #@5
    move-result-object v1

    #@6
    .line 1977
    .local v1, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v1, :cond_3

    #@8
    .line 1981
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    #@b
    move-result-object v3

    #@c
    .line 1982
    .local v3, "movement":Landroid/text/method/MovementMethod;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getLayout()Landroid/text/Layout;

    #@f
    move-result-object v2

    #@10
    .line 1983
    .local v2, "layout":Landroid/text/Layout;
    if-eqz v3, :cond_2

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 1986
    const/4 v5, -0x1

    #@15
    if-ne p3, v5, :cond_0

    #@17
    .line 1988
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@1a
    move-result-object v5

    #@1b
    .line 1987
    invoke-interface {v3, v1, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_2

    #@21
    .line 1989
    invoke-virtual {p0, p1, v6}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    #@24
    .line 1990
    return v6

    #@25
    .line 1992
    :cond_0
    const/4 v5, -0x2

    #@26
    if-ne p3, v5, :cond_1

    #@28
    .line 1994
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@2b
    move-result-object v5

    #@2c
    .line 1993
    invoke-interface {v3, v1, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_2

    #@32
    .line 1995
    return v6

    #@33
    .line 1998
    :cond_1
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@36
    move-result-object v5

    #@37
    invoke-interface {v3, v1, v5, p2}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_4

    #@3d
    .line 1999
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    #@40
    .line 2020
    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_0

    #@43
    .line 2029
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "movement":Landroid/text/method/MovementMethod;
    :cond_3
    return v7

    #@44
    .line 2001
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "movement":Landroid/text/method/MovementMethod;
    :cond_4
    invoke-static {p2, v7}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@47
    move-result-object v0

    #@48
    .line 2003
    .local v0, "down":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@4b
    move-result-object v5

    #@4c
    .line 2002
    invoke-interface {v3, v1, v5, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@4f
    move-result v5

    #@50
    if-eqz v5, :cond_2

    #@52
    .line 2004
    invoke-static {p2, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@55
    move-result-object v4

    #@56
    .line 2006
    .local v4, "up":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@59
    move-result-object v5

    #@5a
    .line 2005
    invoke-interface {v3, v1, v5, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@5d
    .line 2007
    :goto_1
    add-int/lit8 p3, p3, -0x1

    #@5f
    if-lez p3, :cond_5

    #@61
    .line 2009
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@64
    move-result-object v5

    #@65
    .line 2008
    invoke-interface {v3, v1, v5, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@68
    .line 2011
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@6b
    move-result-object v5

    #@6c
    .line 2010
    invoke-interface {v3, v1, v5, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@6f
    goto :goto_1

    #@70
    .line 2013
    :cond_5
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    #@73
    goto :goto_0

    #@74
    .line 2025
    .end local v0    # "down":Landroid/view/KeyEvent;
    .end local v4    # "up":Landroid/view/KeyEvent;
    :pswitch_0
    return v6

    #@75
    .line 2020
    nop

    #@76
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1639
    if-nez p3, :cond_0

    #@3
    .line 1640
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    #@6
    .line 1642
    :cond_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@8
    .line 1643
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@a
    .line 1644
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@c
    .line 1645
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    #@f
    .line 1647
    invoke-virtual {p0, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    #@12
    .line 1648
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1649
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 1651
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@1c
    .line 1652
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@1e
    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    #@21
    .line 1653
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    #@24
    .line 1638
    :cond_1
    :goto_0
    return-void

    #@25
    .line 1654
    :cond_2
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@27
    if-nez v0, :cond_1

    #@29
    .line 1656
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@2b
    .line 1657
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@2d
    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    #@30
    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2431
    new-instance v0, Landroid/util/PrintWriterPrinter;

    #@2
    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@5
    .line 2432
    .local v0, "p":Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Input method service state for "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, ":"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@23
    .line 2433
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "  mWindowCreated="

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 2434
    const-string/jumbo v2, " mWindowAdded="

    #@38
    .line 2433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 2434
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    #@3e
    .line 2433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@49
    .line 2435
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v2, "  mWindowVisible="

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    .line 2436
    const-string/jumbo v2, " mWindowWasVisible="

    #@5e
    .line 2435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    .line 2436
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    #@64
    .line 2435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    .line 2437
    const-string/jumbo v2, " mInShowWindow="

    #@6b
    .line 2435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 2437
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    #@71
    .line 2435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@7c
    .line 2438
    new-instance v1, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v2, "  Configuration="

    #@84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v1

    #@98
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@9b
    .line 2439
    new-instance v1, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v2, "  mToken="

    #@a3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v1

    #@a7
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@a9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v1

    #@ad
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v1

    #@b1
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@b4
    .line 2440
    new-instance v1, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v2, "  mInputBinding="

    #@bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v1

    #@c0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    #@c2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v1

    #@c6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v1

    #@ca
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@cd
    .line 2441
    new-instance v1, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v2, "  mInputConnection="

    #@d5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v1

    #@d9
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    #@db
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v1

    #@df
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v1

    #@e3
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@e6
    .line 2442
    new-instance v1, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v2, "  mStartedInputConnection="

    #@ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v1

    #@f2
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@f4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v1

    #@f8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v1

    #@fc
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@ff
    .line 2443
    new-instance v1, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    const-string/jumbo v2, "  mInputStarted="

    #@107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v1

    #@10b
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@10d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@110
    move-result-object v1

    #@111
    .line 2444
    const-string/jumbo v2, " mInputViewStarted="

    #@114
    .line 2443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v1

    #@118
    .line 2444
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@11a
    .line 2443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v1

    #@11e
    .line 2445
    const-string/jumbo v2, " mCandidatesViewStarted="

    #@121
    .line 2443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v1

    #@125
    .line 2445
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@127
    .line 2443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v1

    #@12b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v1

    #@12f
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@132
    .line 2447
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@134
    if-eqz v1, :cond_0

    #@136
    .line 2448
    const-string/jumbo v1, "  mInputEditorInfo:"

    #@139
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@13c
    .line 2449
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@13e
    const-string/jumbo v2, "    "

    #@141
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@144
    .line 2454
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@146
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@149
    const-string/jumbo v2, "  mShowInputRequested="

    #@14c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v1

    #@150
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@155
    move-result-object v1

    #@156
    .line 2455
    const-string/jumbo v2, " mLastShowInputRequested="

    #@159
    .line 2454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v1

    #@15d
    .line 2455
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    #@15f
    .line 2454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@162
    move-result-object v1

    #@163
    .line 2456
    const-string/jumbo v2, " mShowInputForced="

    #@166
    .line 2454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v1

    #@16a
    .line 2456
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    #@16c
    .line 2454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v1

    #@170
    .line 2457
    const-string/jumbo v2, " mShowInputFlags=0x"

    #@173
    .line 2454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v1

    #@177
    .line 2457
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    #@179
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@17c
    move-result-object v2

    #@17d
    .line 2454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v1

    #@181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@184
    move-result-object v1

    #@185
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@188
    .line 2458
    new-instance v1, Ljava/lang/StringBuilder;

    #@18a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18d
    const-string/jumbo v2, "  mCandidatesVisibility="

    #@190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v1

    #@194
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@199
    move-result-object v1

    #@19a
    .line 2459
    const-string/jumbo v2, " mFullscreenApplied="

    #@19d
    .line 2458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v1

    #@1a1
    .line 2459
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    #@1a3
    .line 2458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v1

    #@1a7
    .line 2460
    const-string/jumbo v2, " mIsFullscreen="

    #@1aa
    .line 2458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v1

    #@1ae
    .line 2460
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    #@1b0
    .line 2458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v1

    #@1b4
    .line 2461
    const-string/jumbo v2, " mExtractViewHidden="

    #@1b7
    .line 2458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v1

    #@1bb
    .line 2461
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    #@1bd
    .line 2458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v1

    #@1c1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c4
    move-result-object v1

    #@1c5
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1c8
    .line 2463
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@1ca
    if-eqz v1, :cond_1

    #@1cc
    .line 2464
    const-string/jumbo v1, "  mExtractedText:"

    #@1cf
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1d2
    .line 2465
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d7
    const-string/jumbo v2, "    text="

    #@1da
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v1

    #@1de
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@1e0
    iget-object v2, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@1e2
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    #@1e5
    move-result v2

    #@1e6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v1

    #@1ea
    const-string/jumbo v2, " chars"

    #@1ed
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v1

    #@1f1
    .line 2466
    const-string/jumbo v2, " startOffset="

    #@1f4
    .line 2465
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v1

    #@1f8
    .line 2466
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@1fa
    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    #@1fc
    .line 2465
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ff
    move-result-object v1

    #@200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@203
    move-result-object v1

    #@204
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@207
    .line 2467
    new-instance v1, Ljava/lang/StringBuilder;

    #@209
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20c
    const-string/jumbo v2, "    selectionStart="

    #@20f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@212
    move-result-object v1

    #@213
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@215
    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    #@217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v1

    #@21b
    .line 2468
    const-string/jumbo v2, " selectionEnd="

    #@21e
    .line 2467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v1

    #@222
    .line 2468
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@224
    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    #@226
    .line 2467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@229
    move-result-object v1

    #@22a
    .line 2469
    const-string/jumbo v2, " flags=0x"

    #@22d
    .line 2467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@230
    move-result-object v1

    #@231
    .line 2469
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@233
    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    #@235
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@238
    move-result-object v2

    #@239
    .line 2467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23c
    move-result-object v1

    #@23d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@240
    move-result-object v1

    #@241
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@244
    .line 2473
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@246
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@249
    const-string/jumbo v2, "  mExtractedToken="

    #@24c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v1

    #@250
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    #@252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@255
    move-result-object v1

    #@256
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@259
    move-result-object v1

    #@25a
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@25d
    .line 2474
    new-instance v1, Ljava/lang/StringBuilder;

    #@25f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@262
    const-string/jumbo v2, "  mIsInputViewShown="

    #@265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v1

    #@269
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    #@26b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v1

    #@26f
    .line 2475
    const-string/jumbo v2, " mStatusIcon="

    #@272
    .line 2474
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@275
    move-result-object v1

    #@276
    .line 2475
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    #@278
    .line 2474
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27b
    move-result-object v1

    #@27c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27f
    move-result-object v1

    #@280
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@283
    .line 2476
    const-string/jumbo v1, "Last computed insets:"

    #@286
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@289
    .line 2477
    new-instance v1, Ljava/lang/StringBuilder;

    #@28b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28e
    const-string/jumbo v2, "  contentTopInsets="

    #@291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@294
    move-result-object v1

    #@295
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@297
    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    #@299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29c
    move-result-object v1

    #@29d
    .line 2478
    const-string/jumbo v2, " visibleTopInsets="

    #@2a0
    .line 2477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v1

    #@2a4
    .line 2478
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@2a6
    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    #@2a8
    .line 2477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2ab
    move-result-object v1

    #@2ac
    .line 2479
    const-string/jumbo v2, " touchableInsets="

    #@2af
    .line 2477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b2
    move-result-object v1

    #@2b3
    .line 2479
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@2b5
    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    #@2b7
    .line 2477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v1

    #@2bb
    .line 2480
    const-string/jumbo v2, " touchableRegion="

    #@2be
    .line 2477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c1
    move-result-object v1

    #@2c2
    .line 2480
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@2c4
    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    #@2c6
    .line 2477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c9
    move-result-object v1

    #@2ca
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cd
    move-result-object v1

    #@2ce
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2d1
    .line 2481
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d6
    const-string/jumbo v2, " mShouldClearInsetOfPreviousIme="

    #@2d9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2dc
    move-result-object v1

    #@2dd
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    #@2df
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2e2
    move-result-object v1

    #@2e3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e6
    move-result-object v1

    #@2e7
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2ea
    .line 2430
    return-void

    #@2eb
    .line 2451
    :cond_0
    const-string/jumbo v1, "  mInputEditorInfo: null"

    #@2ee
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2f1
    goto/16 :goto_0

    #@2f3
    .line 2471
    :cond_1
    const-string/jumbo v1, "  mExtractedText: null"

    #@2f6
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2f9
    goto/16 :goto_1
.end method

.method public enableHardwareAcceleration()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 662
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 663
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Must be called before onCreate()"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 665
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 666
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    #@16
    .line 667
    return v1

    #@17
    .line 669
    :cond_1
    const/4 v0, 0x0

    #@18
    return v0
.end method

.method public getBackDisposition()I
    .locals 1

    #@0
    .prologue
    .line 854
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    #@2
    return v0
.end method

.method public getCandidatesHiddenVisibility()I
    .locals 1

    #@0
    .prologue
    .line 1192
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/16 v0, 0x8

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x4

    #@a
    goto :goto_0
.end method

.method public getCurrentInputBinding()Landroid/view/inputmethod/InputBinding;
    .locals 1

    #@0
    .prologue
    .line 883
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    #@2
    return-object v0
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    #@0
    .prologue
    .line 891
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@2
    .line 892
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@4
    .line 893
    return-object v0

    #@5
    .line 895
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    #@7
    return-object v1
.end method

.method public getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    #@0
    .prologue
    .line 903
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@2
    return-object v0
.end method

.method public getCurrentInputStarted()Z
    .locals 1

    #@0
    .prologue
    .line 899
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@2
    return v0
.end method

.method public getInputMethodWindowRecommendedHeight()I
    .locals 1

    #@0
    .prologue
    .line 2423
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@2
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    #@0
    .prologue
    .line 842
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    #@2
    return-object v0
.end method

.method public getMaxWidth()I
    .locals 2

    #@0
    .prologue
    .line 874
    const-string/jumbo v1, "window"

    #@3
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/view/WindowManager;

    #@9
    .line 875
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    #@10
    move-result v1

    #@11
    return v1
.end method

.method public getTextForImeAction(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "imeOptions"    # I

    #@0
    .prologue
    .line 2248
    and-int/lit16 v0, p1, 0xff

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 2264
    const v0, 0x104041d

    #@8
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 2250
    :pswitch_0
    const/4 v0, 0x0

    #@e
    return-object v0

    #@f
    .line 2252
    :pswitch_1
    const v0, 0x1040417

    #@12
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 2254
    :pswitch_2
    const v0, 0x1040418

    #@1a
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 2256
    :pswitch_3
    const v0, 0x1040419

    #@22
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@25
    move-result-object v0

    #@26
    return-object v0

    #@27
    .line 2258
    :pswitch_4
    const v0, 0x104041a

    #@2a
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@2d
    move-result-object v0

    #@2e
    return-object v0

    #@2f
    .line 2260
    :pswitch_5
    const v0, 0x104041b

    #@32
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    .line 2262
    :pswitch_6
    const v0, 0x104041c

    #@3a
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@3d
    move-result-object v0

    #@3e
    return-object v0

    #@3f
    .line 2248
    nop

    #@40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getWindow()Landroid/app/Dialog;
    .locals 1

    #@0
    .prologue
    .line 846
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@2
    return-object v0
.end method

.method public hideStatusIcon()V
    .locals 2

    #@0
    .prologue
    .line 1201
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    #@3
    .line 1202
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@5
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@7
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideStatusIcon(Landroid/os/IBinder;)V

    #@a
    .line 1200
    return-void
.end method

.method public hideWindow()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1534
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishViews()V

    #@4
    .line 1535
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1536
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@a
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    #@d
    .line 1537
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@f
    .line 1538
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    #@12
    .line 1539
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    #@14
    .line 1533
    :cond_0
    return-void
.end method

.method initViews()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 714
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    #@6
    .line 715
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    #@8
    .line 716
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@a
    .line 717
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    #@c
    .line 719
    sget-object v0, Landroid/R$styleable;->InputMethodService:[I

    #@e
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    #@14
    .line 720
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    #@16
    .line 721
    const v1, 0x1090069

    #@19
    .line 720
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@1f
    .line 722
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@21
    .line 723
    const/16 v1, 0x300

    #@23
    .line 722
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    #@26
    .line 724
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@28
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@2a
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    #@2d
    .line 725
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@2f
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@32
    move-result-object v0

    #@33
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@35
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    #@38
    .line 726
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@3a
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@3d
    move-result-object v0

    #@3e
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@40
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    #@43
    .line 727
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    #@46
    move-result-object v0

    #@47
    .line 728
    const-string/jumbo v1, "fancy_ime_animations"

    #@4a
    .line 727
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@4d
    move-result v0

    #@4e
    if-eqz v0, :cond_0

    #@50
    .line 729
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@52
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@55
    move-result-object v0

    #@56
    .line 730
    const v1, 0x10302e7

    #@59
    .line 729
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    #@5c
    .line 732
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@5e
    const v1, 0x1020348

    #@61
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@64
    move-result-object v0

    #@65
    check-cast v0, Landroid/view/ViewGroup;

    #@67
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@69
    .line 733
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    #@6b
    .line 734
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@6d
    const v1, 0x102001c

    #@70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@73
    move-result-object v0

    #@74
    check-cast v0, Landroid/widget/FrameLayout;

    #@76
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    #@78
    .line 735
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    #@7a
    .line 736
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@7c
    .line 737
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@7e
    .line 738
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    #@80
    .line 739
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    #@82
    .line 741
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@84
    const v1, 0x102001d

    #@87
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@8a
    move-result-object v0

    #@8b
    check-cast v0, Landroid/widget/FrameLayout;

    #@8d
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@8f
    .line 742
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@91
    const v1, 0x102001e

    #@94
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@97
    move-result-object v0

    #@98
    check-cast v0, Landroid/widget/FrameLayout;

    #@9a
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@9c
    .line 743
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    #@9e
    .line 744
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    #@a0
    .line 746
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    #@a2
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@a5
    .line 747
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    #@a8
    move-result v0

    #@a9
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@ab
    .line 748
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@ad
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@af
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@b2
    .line 749
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@b4
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@b7
    .line 713
    return-void
.end method

.method initialize()V
    .locals 1

    #@0
    .prologue
    .line 707
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 708
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    #@7
    .line 709
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    #@a
    .line 706
    :cond_0
    return-void
.end method

.method public isExtractViewShown()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1039
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public isFullscreenMode()Z
    .locals 1

    #@0
    .prologue
    .line 989
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    #@2
    return v0
.end method

.method public isInputViewShown()Z
    .locals 1

    #@0
    .prologue
    .line 1138
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isShowInputRequested()Z
    .locals 1

    #@0
    .prologue
    .line 1129
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@2
    return v0
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1938
    return-void
.end method

.method public onBindInput()V
    .locals 0

    #@0
    .prologue
    .line 1589
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 4
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1080
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    #@3
    .line 1081
    .local v1, "loc":[I
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@5
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_1

    #@b
    .line 1082
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@d
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    #@10
    .line 1087
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 1089
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@21
    move-result-object v0

    #@22
    .line 1090
    .local v0, "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@25
    move-result v2

    #@26
    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    #@28
    .line 1094
    .end local v0    # "decor":Landroid/view/View;
    :goto_1
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@2a
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    #@2d
    move-result v2

    #@2e
    if-nez v2, :cond_0

    #@30
    .line 1095
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@32
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    #@35
    .line 1097
    :cond_0
    aget v2, v1, v3

    #@37
    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    #@39
    .line 1098
    const/4 v2, 0x2

    #@3a
    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    #@3c
    .line 1099
    iget-object v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    #@3e
    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    #@41
    .line 1079
    return-void

    #@42
    .line 1084
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@4d
    move-result-object v0

    #@4e
    .line 1085
    .restart local v0    # "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@51
    move-result v2

    #@52
    aput v2, v1, v3

    #@54
    goto :goto_0

    #@55
    .line 1092
    .end local v0    # "decor":Landroid/view/View;
    :cond_2
    aget v2, v1, v3

    #@57
    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    #@59
    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 783
    invoke-super {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@5
    .line 785
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@7
    .line 786
    .local v4, "visible":Z
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    #@9
    .line 787
    .local v1, "showFlags":I
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@b
    .line 788
    .local v3, "showingInput":Z
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    #@d
    .line 789
    .local v0, "completions":[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    #@10
    .line 790
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@12
    .line 791
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@14
    .line 792
    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@16
    if-eqz v6, :cond_0

    #@18
    .line 793
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@1b
    move-result-object v6

    #@1c
    .line 794
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    #@1f
    move-result-object v7

    #@20
    .line 793
    invoke-virtual {p0, v6, v7, v8}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    #@23
    .line 796
    :cond_0
    if-eqz v4, :cond_3

    #@25
    .line 797
    if-eqz v3, :cond_5

    #@27
    .line 799
    invoke-virtual {p0, v1, v8}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_4

    #@2d
    .line 800
    invoke-virtual {p0, v8}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    #@30
    .line 801
    if-eqz v0, :cond_1

    #@32
    .line 802
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    #@34
    .line 803
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    #@37
    .line 817
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    #@3a
    move-result v2

    #@3b
    .line 818
    .local v2, "showing":Z
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@3d
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@3f
    if-eqz v2, :cond_2

    #@41
    const/4 v5, 0x2

    #@42
    :cond_2
    or-int/lit8 v5, v5, 0x1

    #@44
    .line 819
    iget v8, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    #@46
    .line 818
    invoke-virtual {v6, v7, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    #@49
    .line 782
    .end local v2    # "showing":Z
    :cond_3
    return-void

    #@4a
    .line 806
    :cond_4
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    #@4d
    goto :goto_0

    #@4e
    .line 808
    :cond_5
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@50
    if-nez v6, :cond_6

    #@52
    .line 811
    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    #@55
    goto :goto_0

    #@56
    .line 814
    :cond_6
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    #@59
    goto :goto_0
.end method

.method public onConfigureWindow(Landroid/view/Window;ZZ)V
    .locals 5
    .param p1, "win"    # Landroid/view/Window;
    .param p2, "isFullscreen"    # Z
    .param p3, "isCandidatesOnly"    # Z

    #@0
    .prologue
    .line 974
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@2
    invoke-virtual {v2}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@9
    move-result-object v2

    #@a
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    #@c
    .line 975
    .local v0, "currentHeight":I
    if-eqz p2, :cond_1

    #@e
    const/4 v1, -0x1

    #@f
    .line 976
    .local v1, "newHeight":I
    :goto_0
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    #@11
    if-eqz v2, :cond_0

    #@13
    if-eq v0, v1, :cond_0

    #@15
    .line 977
    const-string/jumbo v2, "InputMethodService"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Window size has been changed. This may cause jankiness of resizing window: "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    .line 978
    const-string/jumbo v4, " -> "

    #@2b
    .line 977
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 980
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@3c
    invoke-virtual {v2}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@3f
    move-result-object v2

    #@40
    const/4 v3, -0x1

    #@41
    invoke-virtual {v2, v3, v1}, Landroid/view/Window;->setLayout(II)V

    #@44
    .line 973
    return-void

    #@45
    .line 975
    .end local v1    # "newHeight":I
    :cond_1
    const/4 v1, -0x2

    #@46
    .restart local v1    # "newHeight":I
    goto :goto_0
.end method

.method public onCreate()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const v4, 0x103013e

    #@4
    const/4 v9, 0x0

    #@5
    .line 673
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@7
    .line 674
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@a
    move-result-object v1

    #@b
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@d
    .line 675
    const v2, 0x1030054

    #@10
    .line 676
    const v3, 0x103007f

    #@13
    move v5, v4

    #@14
    .line 673
    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@1a
    .line 679
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@1c
    invoke-super {p0, v0}, Landroid/inputmethodservice/AbstractInputMethodService;->setTheme(I)V

    #@1f
    .line 680
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreate()V

    #@22
    .line 681
    const-string/jumbo v0, "input_method"

    #@25
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@2b
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@2d
    .line 684
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@2f
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    #@32
    move-result v0

    #@33
    if-lez v0, :cond_1

    #@35
    const/4 v0, 0x1

    #@36
    :goto_0
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    #@38
    .line 686
    const-string/jumbo v0, "layout_inflater"

    #@3b
    .line 685
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Landroid/view/LayoutInflater;

    #@41
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    #@43
    .line 687
    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    #@45
    const-string/jumbo v2, "InputMethod"

    #@48
    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@4a
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    #@4c
    .line 688
    const/16 v7, 0x7db

    #@4e
    const/16 v8, 0x50

    #@50
    move-object v1, p0

    #@51
    move-object v4, v10

    #@52
    move-object v5, v10

    #@53
    .line 687
    invoke-direct/range {v0 .. v9}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    #@56
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@58
    .line 689
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    #@5a
    if-eqz v0, :cond_0

    #@5c
    .line 690
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@5e
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@61
    move-result-object v0

    #@62
    const/high16 v1, 0x1000000

    #@64
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    #@67
    .line 692
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    #@6a
    .line 693
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@6c
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@6f
    move-result-object v0

    #@70
    const/4 v1, -0x1

    #@71
    const/4 v2, -0x2

    #@72
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    #@75
    .line 672
    return-void

    #@76
    :cond_1
    move v0, v9

    #@77
    .line 684
    goto :goto_0
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 1289
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreateExtractTextView()Landroid/view/View;
    .locals 3

    #@0
    .prologue
    .line 1274
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    #@2
    .line 1275
    const v1, 0x109006a

    #@5
    const/4 v2, 0x0

    #@6
    .line 1274
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    .locals 1

    #@0
    .prologue
    .line 829
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    #@2
    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    #@5
    return-object v0
.end method

.method public onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
    .locals 1

    #@0
    .prologue
    .line 838
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    #@2
    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    #@5
    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 1304
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .param p1, "newSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 2399
    return-void
.end method

.method public onDestroy()V
    .locals 2

    #@0
    .prologue
    .line 753
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onDestroy()V

    #@3
    .line 754
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@8
    move-result-object v0

    #@9
    .line 755
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@b
    .line 754
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    #@e
    .line 756
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    #@11
    .line 757
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 761
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@17
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@1a
    move-result-object v0

    #@1b
    const/4 v1, 0x0

    #@1c
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    #@1f
    .line 762
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@21
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V

    #@24
    .line 752
    :cond_0
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 1690
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1001
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@8
    move-result-object v0

    #@9
    .line 1002
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    #@b
    const/4 v2, 0x2

    #@c
    if-eq v1, v2, :cond_0

    #@e
    .line 1003
    return v3

    #@f
    .line 1005
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 1006
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@15
    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@17
    const/high16 v2, 0x2000000

    #@19
    and-int/2addr v1, v2

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 1007
    return v3

    #@1d
    .line 1009
    :cond_1
    const/4 v1, 0x1

    #@1e
    return v1
.end method

.method public onEvaluateInputViewShown()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1150
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@8
    move-result-object v0

    #@9
    .line 1151
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    #@b
    if-eq v2, v1, :cond_0

    #@d
    .line 1152
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@f
    const/4 v3, 0x2

    #@10
    if-ne v2, v3, :cond_1

    #@12
    .line 1151
    :cond_0
    :goto_0
    return v1

    #@13
    .line 1152
    :cond_1
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method

.method public onExtractTextContextMenuItem(I)Z
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 2229
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 2230
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@6
    .line 2231
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    #@9
    .line 2233
    :cond_0
    const/4 v1, 0x1

    #@a
    return v1
.end method

.method public onExtractedCursorMovement(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2212
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@3
    if-eqz v0, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 2213
    :cond_0
    return-void

    #@8
    .line 2215
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@a
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 2216
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    #@13
    .line 2211
    :cond_2
    return-void
.end method

.method public onExtractedDeleteText(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 2151
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 2152
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@6
    .line 2153
    invoke-interface {v0, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    #@9
    .line 2154
    sub-int v1, p2, p1

    #@b
    const/4 v2, 0x0

    #@c
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    #@f
    .line 2150
    :cond_0
    return-void
.end method

.method public onExtractedReplaceText(IILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2162
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 2163
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@6
    .line 2164
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    #@9
    .line 2165
    const/4 v1, 0x1

    #@a
    invoke-interface {v0, p3, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@d
    .line 2161
    :cond_0
    return-void
.end method

.method public onExtractedSelectionChanged(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 2141
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 2142
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@6
    .line 2143
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    #@9
    .line 2140
    :cond_0
    return-void
.end method

.method public onExtractedSetSpan(Ljava/lang/Object;III)V
    .locals 6
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 2173
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@4
    move-result-object v0

    #@5
    .line 2174
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    #@7
    .line 2175
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    return-void

    #@e
    .line 2176
    :cond_0
    invoke-interface {v0, v5}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    #@11
    move-result-object v1

    #@12
    .line 2177
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    #@14
    if-eqz v2, :cond_1

    #@16
    move-object v2, v1

    #@17
    .line 2178
    check-cast v2, Landroid/text/Spannable;

    #@19
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@1c
    move-result v3

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v2, p1, v4, v3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@21
    .line 2179
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    #@24
    .line 2180
    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@27
    .line 2172
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public onExtractedTextClicked()V
    .locals 1

    #@0
    .prologue
    .line 2193
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2194
    return-void

    #@5
    .line 2196
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@7
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 2197
    const/4 v0, 0x0

    #@e
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    #@11
    .line 2192
    :cond_1
    return-void
.end method

.method public onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    .line 2340
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2341
    const/4 v0, 0x2

    #@5
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    #@8
    .line 2339
    :cond_0
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    #@0
    .prologue
    .line 1381
    if-nez p1, :cond_0

    #@2
    .line 1382
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@5
    move-result-object v0

    #@6
    .line 1383
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@8
    .line 1384
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@b
    .line 1380
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public onFinishInput()V
    .locals 1

    #@0
    .prologue
    .line 1675
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 1676
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@6
    .line 1677
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@9
    .line 1674
    :cond_0
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    #@0
    .prologue
    .line 1336
    if-nez p1, :cond_0

    #@2
    .line 1337
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@5
    move-result-object v0

    #@6
    .line 1338
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@8
    .line 1339
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@b
    .line 1335
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1935
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onInitializeInterface()V
    .locals 0

    #@0
    .prologue
    .line 702
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1848
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x4

    #@7
    if-ne v1, v2, :cond_2

    #@9
    .line 1849
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    #@c
    move-result-object v0

    #@d
    .line 1850
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_0

    #@f
    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 1851
    return v4

    #@16
    .line 1853
    :cond_0
    invoke-direct {p0, v3}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 1854
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    #@1f
    .line 1855
    return v4

    #@20
    .line 1857
    :cond_1
    return v3

    #@21
    .line 1859
    .end local v0    # "eet":Landroid/inputmethodservice/ExtractEditText;
    :cond_2
    const/4 v1, -0x1

    #@22
    invoke-virtual {p0, p1, p2, v1}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    #@25
    move-result v1

    #@26
    return v1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1868
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1884
    invoke-virtual {p0, p1, p3, p2}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1900
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@4
    move-result v1

    #@5
    const/4 v2, 0x4

    #@6
    if-ne v1, v2, :cond_1

    #@8
    .line 1901
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    #@b
    move-result-object v0

    #@c
    .line 1902
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 1903
    return v3

    #@15
    .line 1905
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 1909
    .end local v0    # "eet":Landroid/inputmethodservice/ExtractEditText;
    :cond_1
    const/4 v1, -0x2

    #@22
    invoke-virtual {p0, p1, p2, v1}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    #@25
    move-result v1

    #@26
    return v1

    #@27
    .line 1906
    .restart local v0    # "eet":Landroid/inputmethodservice/ExtractEditText;
    :cond_2
    invoke-direct {p0, v3}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    #@2a
    move-result v1

    #@2b
    return v1
.end method

.method public onShowInputRequested(IZ)Z
    .locals 4
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1405
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 1406
    return v2

    #@9
    .line 1408
    :cond_0
    and-int/lit8 v1, p1, 0x1

    #@b
    if-nez v1, :cond_2

    #@d
    .line 1409
    if-nez p2, :cond_1

    #@f
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 1415
    return v2

    #@16
    .line 1417
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@1d
    move-result-object v0

    #@1e
    .line 1418
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    #@20
    if-eq v1, v3, :cond_2

    #@22
    .line 1422
    return v2

    #@23
    .line 1425
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_2
    and-int/lit8 v1, p1, 0x2

    #@25
    if-eqz v1, :cond_3

    #@27
    .line 1426
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    #@29
    .line 1428
    :cond_3
    return v3
.end method

.method public onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    #@0
    .prologue
    .line 1363
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    #@0
    .prologue
    .line 1615
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    #@0
    .prologue
    .line 1318
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1922
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onUnbindInput()V
    .locals 0

    #@0
    .prologue
    .line 1599
    return-void
.end method

.method public onUpdateCursor(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "newCursor"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1763
    return-void
.end method

.method public onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    #@0
    .prologue
    .line 1774
    return-void
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    #@0
    .prologue
    .line 1701
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1702
    return-void

    #@5
    .line 1704
    :cond_0
    if-eqz p2, :cond_1

    #@7
    .line 1705
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1706
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@d
    .line 1707
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@f
    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    #@12
    .line 1700
    :cond_1
    return-void
.end method

.method public onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V
    .locals 5
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 2304
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 2305
    return-void

    #@9
    .line 2308
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@b
    if-nez v1, :cond_1

    #@d
    .line 2309
    return-void

    #@e
    .line 2311
    :cond_1
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@10
    if-nez v1, :cond_3

    #@12
    .line 2312
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@14
    and-int/lit16 v1, v1, 0xff

    #@16
    const/4 v2, 0x1

    #@17
    if-eq v1, v2, :cond_5

    #@19
    .line 2313
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@1b
    const/high16 v2, 0x20000000

    #@1d
    and-int/2addr v1, v2

    #@1e
    if-nez v1, :cond_5

    #@20
    .line 2314
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@22
    if-eqz v1, :cond_4

    #@24
    const/4 v0, 0x1

    #@25
    .line 2315
    .local v0, "hasAction":Z
    :goto_0
    if-eqz v0, :cond_7

    #@27
    .line 2316
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@29
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@2c
    .line 2317
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 2318
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@32
    if-eqz v1, :cond_6

    #@34
    .line 2319
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    #@36
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@38
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@3b
    .line 2323
    :goto_1
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    #@3d
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    #@3f
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@42
    .line 2303
    :cond_2
    :goto_2
    return-void

    #@43
    .line 2311
    .end local v0    # "hasAction":Z
    :cond_3
    const/4 v0, 0x1

    #@44
    .restart local v0    # "hasAction":Z
    goto :goto_0

    #@45
    .line 2314
    .end local v0    # "hasAction":Z
    :cond_4
    const/4 v0, 0x0

    #@46
    .restart local v0    # "hasAction":Z
    goto :goto_0

    #@47
    .line 2311
    .end local v0    # "hasAction":Z
    :cond_5
    const/4 v0, 0x0

    #@48
    .restart local v0    # "hasAction":Z
    goto :goto_0

    #@49
    .line 2321
    :cond_6
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    #@4b
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@4d
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@54
    goto :goto_1

    #@55
    .line 2326
    :cond_7
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@57
    const/16 v2, 0x8

    #@59
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@5c
    .line 2327
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    #@5e
    if-eqz v1, :cond_2

    #@60
    .line 2328
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    #@62
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@65
    goto :goto_2
.end method

.method public onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2278
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2279
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@7
    const/high16 v1, 0x10000000

    #@9
    and-int/2addr v0, v1

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 2281
    :cond_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    #@f
    .line 2282
    return-void

    #@10
    .line 2285
    :cond_1
    const/4 v0, 0x1

    #@11
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    #@14
    .line 2277
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 4
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    #@0
    .prologue
    .line 1729
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@2
    .line 1730
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_2

    #@4
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_2

    #@a
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@c
    if-eqz v3, :cond_2

    #@e
    .line 1731
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@10
    iget v2, v3, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    #@12
    .line 1732
    .local v2, "off":I
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    #@15
    .line 1733
    sub-int/2addr p3, v2

    #@16
    .line 1734
    sub-int/2addr p4, v2

    #@17
    .line 1735
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@1a
    move-result-object v3

    #@1b
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    #@1e
    move-result v1

    #@1f
    .line 1736
    .local v1, "len":I
    if-gez p3, :cond_3

    #@21
    const/4 p3, 0x0

    #@22
    .line 1738
    :cond_0
    :goto_0
    if-gez p4, :cond_4

    #@24
    const/4 p4, 0x0

    #@25
    .line 1740
    :cond_1
    :goto_1
    invoke-virtual {v0, p3, p4}, Landroid/inputmethodservice/ExtractEditText;->setSelection(II)V

    #@28
    .line 1741
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    #@2b
    .line 1728
    .end local v1    # "len":I
    .end local v2    # "off":I
    :cond_2
    return-void

    #@2c
    .line 1737
    .restart local v1    # "len":I
    .restart local v2    # "off":I
    :cond_3
    if-le p3, v1, :cond_0

    #@2e
    move p3, v1

    #@2f
    goto :goto_0

    #@30
    .line 1739
    :cond_4
    if-le p4, v1, :cond_1

    #@32
    move p4, v1

    #@33
    goto :goto_1
.end method

.method public onViewClicked(Z)V
    .locals 0
    .param p1, "focusChanged"    # Z

    #@0
    .prologue
    .line 1752
    return-void
.end method

.method public onWindowHidden()V
    .locals 0

    #@0
    .prologue
    .line 1556
    return-void
.end method

.method public onWindowShown()V
    .locals 0

    #@0
    .prologue
    .line 1548
    return-void
.end method

.method reportExtractedMovement(II)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 1957
    const/4 v0, 0x0

    #@1
    .local v0, "dx":I
    const/4 v1, 0x0

    #@2
    .line 1958
    .local v1, "dy":I
    packed-switch p1, :pswitch_data_0

    #@5
    .line 1972
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    #@8
    .line 1956
    return-void

    #@9
    .line 1960
    :pswitch_0
    neg-int v0, p2

    #@a
    .line 1961
    goto :goto_0

    #@b
    .line 1963
    :pswitch_1
    move v0, p2

    #@c
    .line 1964
    goto :goto_0

    #@d
    .line 1966
    :pswitch_2
    neg-int v1, p2

    #@e
    .line 1967
    goto :goto_0

    #@f
    .line 1969
    :pswitch_3
    move v1, p2

    #@10
    .line 1970
    goto :goto_0

    #@11
    .line 1958
    nop

    #@12
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestHideSelf(I)V
    .locals 2
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1787
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    #@7
    .line 1786
    return-void
.end method

.method public sendDefaultEditorAction(Z)Z
    .locals 6
    .param p1, "fromEnterKey"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2080
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    #@5
    move-result-object v0

    #@6
    .line 2081
    .local v0, "ei":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_2

    #@8
    .line 2082
    if-eqz p1, :cond_0

    #@a
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@c
    .line 2083
    const/high16 v3, 0x40000000    # 2.0f

    #@e
    .line 2082
    and-int/2addr v2, v3

    #@f
    if-nez v2, :cond_2

    #@11
    .line 2084
    :cond_0
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@13
    and-int/lit16 v2, v2, 0xff

    #@15
    if-eq v2, v5, :cond_2

    #@17
    .line 2089
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@1a
    move-result-object v1

    #@1b
    .line 2090
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    #@1d
    .line 2091
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@1f
    and-int/lit16 v2, v2, 0xff

    #@21
    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    #@24
    .line 2093
    :cond_1
    return v5

    #@25
    .line 2096
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    return v4
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 13
    .param p1, "keyEventCode"    # I

    #@0
    .prologue
    .line 2052
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 2053
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 2054
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a
    move-result-wide v2

    #@b
    .line 2055
    .local v2, "eventTime":J
    new-instance v1, Landroid/view/KeyEvent;

    #@d
    .line 2056
    const/4 v6, 0x0

    #@e
    const/4 v8, 0x0

    #@f
    const/4 v9, 0x0

    #@10
    const/4 v10, -0x1

    #@11
    const/4 v11, 0x0

    #@12
    .line 2057
    const/4 v12, 0x6

    #@13
    move-wide v4, v2

    #@14
    move v7, p1

    #@15
    .line 2055
    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    #@18
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    #@1b
    .line 2058
    new-instance v1, Landroid/view/KeyEvent;

    #@1d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@20
    move-result-wide v4

    #@21
    .line 2059
    const/4 v6, 0x1

    #@22
    const/4 v8, 0x0

    #@23
    const/4 v9, 0x0

    #@24
    const/4 v10, -0x1

    #@25
    const/4 v11, 0x0

    #@26
    .line 2060
    const/4 v12, 0x6

    #@27
    move v7, p1

    #@28
    .line 2058
    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    #@2b
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    #@2e
    .line 2051
    return-void
.end method

.method public sendKeyChar(C)V
    .locals 3
    .param p1, "charCode"    # C

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2114
    packed-switch p1, :pswitch_data_0

    #@4
    .line 2122
    const/16 v1, 0x30

    #@6
    if-lt p1, v1, :cond_1

    #@8
    const/16 v1, 0x39

    #@a
    if-gt p1, v1, :cond_1

    #@c
    .line 2123
    add-int/lit8 v1, p1, -0x30

    #@e
    add-int/lit8 v1, v1, 0x7

    #@10
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    #@13
    .line 2113
    :cond_0
    :goto_0
    return-void

    #@14
    .line 2116
    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 2117
    const/16 v1, 0x42

    #@1c
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    #@1f
    goto :goto_0

    #@20
    .line 2125
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@23
    move-result-object v0

    #@24
    .line 2126
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@26
    .line 2127
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@2d
    goto :goto_0

    #@2e
    .line 2114
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public setBackDisposition(I)V
    .locals 0
    .param p1, "disposition"    # I

    #@0
    .prologue
    .line 850
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    #@2
    .line 849
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1247
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@5
    .line 1248
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@7
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@9
    .line 1249
    const/4 v2, -0x1

    #@a
    .line 1250
    const/4 v3, -0x2

    #@b
    .line 1248
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@e
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    .line 1246
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 1160
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    #@3
    .line 1161
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@5
    if-nez v0, :cond_0

    #@7
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@9
    if-eq v0, p1, :cond_0

    #@b
    .line 1165
    if-eqz p1, :cond_1

    #@d
    .line 1166
    const/4 v0, 0x0

    #@e
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    #@11
    .line 1159
    :cond_0
    :goto_0
    return-void

    #@12
    .line 1168
    :cond_1
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    #@15
    goto :goto_0
.end method

.method public setExtractView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1217
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    #@4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@7
    .line 1218
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    #@9
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@b
    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@e
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    .line 1221
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    #@13
    .line 1222
    if-eqz p1, :cond_1

    #@15
    .line 1224
    const v0, 0x1020025

    #@18
    .line 1223
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/inputmethodservice/ExtractEditText;

    #@1e
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@20
    .line 1225
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@22
    invoke-virtual {v0, p0}, Landroid/inputmethodservice/ExtractEditText;->setIME(Landroid/inputmethodservice/InputMethodService;)V

    #@25
    .line 1227
    const v0, 0x102034a

    #@28
    .line 1226
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Landroid/widget/Button;

    #@2e
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    #@30
    .line 1228
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    #@32
    if-eqz v0, :cond_0

    #@34
    .line 1230
    const v0, 0x1020349

    #@37
    .line 1229
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/view/ViewGroup;

    #@3d
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@3f
    .line 1232
    :cond_0
    const/4 v0, 0x0

    #@40
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    #@43
    .line 1216
    :goto_0
    return-void

    #@44
    .line 1234
    :cond_1
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@46
    .line 1235
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@48
    .line 1236
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    #@4a
    goto :goto_0
.end method

.method public setExtractViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 1022
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 1023
    if-eqz p1, :cond_1

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    #@9
    .line 1024
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    #@c
    .line 1021
    :cond_0
    return-void

    #@d
    .line 1023
    :cond_1
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1260
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@5
    .line 1261
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@7
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@9
    .line 1262
    const/4 v2, -0x1

    #@a
    .line 1263
    const/4 v3, -0x2

    #@b
    .line 1261
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@e
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    .line 1264
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    #@13
    .line 1259
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "theme"    # I

    #@0
    .prologue
    .line 643
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 644
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Must be called before onCreate()"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 646
    :cond_0
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@f
    .line 642
    return-void
.end method

.method public showStatusIcon(I)V
    .locals 3
    .param p1, "iconResId"    # I

    #@0
    .prologue
    .line 1196
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    #@2
    .line 1197
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@4
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@6
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    #@d
    .line 1195
    return-void
.end method

.method public showWindow(Z)V
    .locals 3
    .param p1, "showInput"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1439
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1440
    const-string/jumbo v0, "InputMethodService"

    #@9
    const-string/jumbo v1, "Re-entrance in to showWindow"

    #@c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1441
    return-void

    #@10
    .line 1445
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@12
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    #@14
    .line 1446
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    #@17
    .line 1447
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindowInner(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 1449
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    #@1c
    .line 1450
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    #@1e
    .line 1431
    return-void

    #@1f
    .line 1448
    :catchall_0
    move-exception v0

    #@20
    .line 1449
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    #@22
    .line 1450
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    #@24
    .line 1448
    throw v0
.end method

.method showWindowInner(Z)V
    .locals 9
    .param p1, "showInput"    # Z

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 1455
    const/4 v0, 0x0

    #@4
    .line 1457
    .local v0, "doShowInput":Z
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@6
    if-eqz v4, :cond_6

    #@8
    move v4, v5

    #@9
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    #@c
    move-result v7

    #@d
    if-eqz v7, :cond_7

    #@f
    move v7, v8

    #@10
    :goto_1
    or-int v2, v4, v7

    #@12
    .line 1458
    .local v2, "previousImeWindowStatus":I
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@14
    .line 1459
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@16
    if-nez v4, :cond_8

    #@18
    .line 1460
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 1461
    if-eqz p1, :cond_0

    #@1e
    .line 1462
    const/4 v0, 0x1

    #@1f
    .line 1463
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@21
    .line 1471
    .end local p1    # "showInput":Z
    :cond_0
    :goto_2
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    #@24
    .line 1472
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    #@27
    .line 1473
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateInputViewShown()V

    #@2a
    .line 1475
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    #@2c
    if-eqz v4, :cond_9

    #@2e
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    #@30
    if-eqz v4, :cond_9

    #@32
    .line 1486
    :cond_1
    :goto_3
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@34
    if-eqz v4, :cond_a

    #@36
    .line 1487
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@38
    if-nez v4, :cond_2

    #@3a
    .line 1489
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@3c
    .line 1490
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@3e
    invoke-virtual {p0, v4, v6}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    #@41
    .line 1498
    :cond_2
    :goto_4
    if-eqz v0, :cond_3

    #@43
    .line 1499
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    #@46
    .line 1502
    :cond_3
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_b

    #@4c
    :goto_5
    or-int/lit8 v1, v8, 0x1

    #@4e
    .line 1503
    .local v1, "nextImeWindowStatus":I
    if-eq v2, v1, :cond_4

    #@50
    .line 1504
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@52
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@54
    iget v7, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    #@56
    invoke-virtual {v4, v5, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    #@59
    .line 1506
    :cond_4
    and-int/lit8 v4, v2, 0x1

    #@5b
    if-nez v4, :cond_5

    #@5d
    .line 1508
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    #@60
    .line 1509
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@62
    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    #@65
    .line 1512
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    #@67
    .line 1454
    :cond_5
    return-void

    #@68
    .end local v1    # "nextImeWindowStatus":I
    .end local v2    # "previousImeWindowStatus":I
    .restart local p1    # "showInput":Z
    :cond_6
    move v4, v6

    #@69
    .line 1457
    goto :goto_0

    #@6a
    :cond_7
    move v7, v6

    #@6b
    goto :goto_1

    #@6c
    .line 1467
    .restart local v2    # "previousImeWindowStatus":I
    :cond_8
    const/4 p1, 0x1

    #@6d
    .local p1, "showInput":Z
    goto :goto_2

    #@6e
    .line 1476
    .end local p1    # "showInput":Z
    :cond_9
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    #@70
    .line 1477
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    #@72
    .line 1478
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    #@75
    .line 1480
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    #@78
    move-result-object v3

    #@79
    .line 1482
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1

    #@7b
    .line 1483
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->setCandidatesView(Landroid/view/View;)V

    #@7e
    goto :goto_3

    #@7f
    .line 1492
    .end local v3    # "v":Landroid/view/View;
    :cond_a
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@81
    if-nez v4, :cond_2

    #@83
    .line 1494
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@85
    .line 1495
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@87
    invoke-virtual {p0, v4, v6}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    #@8a
    goto :goto_4

    #@8b
    :cond_b
    move v8, v6

    #@8c
    .line 1502
    goto :goto_5
.end method

.method startExtractingText(Z)V
    .locals 9
    .param p1, "inputChanged"    # Z

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2346
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@4
    .line 2347
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_3

    #@6
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputStarted()Z

    #@9
    move-result v6

    #@a
    if-eqz v6, :cond_3

    #@c
    .line 2348
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    #@f
    move-result v6

    #@10
    .line 2347
    if-eqz v6, :cond_3

    #@12
    .line 2349
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    #@14
    add-int/lit8 v6, v6, 0x1

    #@16
    iput v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    #@18
    .line 2350
    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    #@1a
    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    #@1d
    .line 2351
    .local v4, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    #@1f
    iput v6, v4, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    #@21
    .line 2352
    iput v8, v4, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    #@23
    .line 2353
    const/16 v6, 0xa

    #@25
    iput v6, v4, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    #@27
    .line 2354
    const/16 v6, 0x2710

    #@29
    iput v6, v4, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    #@2b
    .line 2355
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@2e
    move-result-object v2

    #@2f
    .line 2356
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_4

    #@31
    :goto_0
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@33
    .line 2358
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@35
    if-eqz v5, :cond_0

    #@37
    if-nez v2, :cond_1

    #@39
    .line 2359
    :cond_0
    const-string/jumbo v5, "InputMethodService"

    #@3c
    new-instance v6, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v7, "Unexpected null in startExtractingText : mExtractedText = "

    #@44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    .line 2360
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@4a
    .line 2359
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    .line 2360
    const-string/jumbo v7, ", input connection = "

    #@51
    .line 2359
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v6

    #@5d
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 2362
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    #@63
    move-result-object v1

    #@64
    .line 2365
    .local v1, "ei":Landroid/view/inputmethod/EditorInfo;
    :try_start_0
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    #@67
    .line 2366
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V

    #@6a
    .line 2367
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V

    #@6d
    .line 2368
    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@6f
    .line 2369
    .local v3, "inputType":I
    and-int/lit8 v5, v3, 0xf

    #@71
    if-ne v5, v8, :cond_2

    #@73
    .line 2371
    const/high16 v5, 0x40000

    #@75
    and-int/2addr v5, v3

    #@76
    if-eqz v5, :cond_2

    #@78
    .line 2372
    const/high16 v5, 0x20000

    #@7a
    or-int/2addr v3, v5

    #@7b
    .line 2375
    :cond_2
    invoke-virtual {v0, v3}, Landroid/inputmethodservice/ExtractEditText;->setInputType(I)V

    #@7e
    .line 2376
    iget-object v5, v1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    #@80
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setHint(Ljava/lang/CharSequence;)V

    #@83
    .line 2377
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@85
    if-eqz v5, :cond_5

    #@87
    .line 2378
    const/4 v5, 0x1

    #@88
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    #@8b
    .line 2379
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@8d
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@90
    .line 2385
    :goto_1
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    #@93
    .line 2388
    if-eqz p1, :cond_3

    #@95
    .line 2389
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V

    #@98
    .line 2345
    .end local v1    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "inputType":I
    .end local v4    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_3
    return-void

    #@99
    .line 2357
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v4    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_4
    invoke-interface {v2, v4, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    #@9c
    move-result-object v5

    #@9d
    goto :goto_0

    #@9e
    .line 2381
    .restart local v1    # "ei":Landroid/view/inputmethod/EditorInfo;
    .restart local v3    # "inputType":I
    :cond_5
    const/4 v5, 0x0

    #@9f
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    #@a2
    .line 2382
    const-string/jumbo v5, ""

    #@a5
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a8
    goto :goto_1

    #@a9
    .line 2384
    .end local v3    # "inputType":I
    :catchall_0
    move-exception v5

    #@aa
    .line 2385
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    #@ad
    .line 2384
    throw v5
.end method

.method public switchInputMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1213
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    #@7
    .line 1212
    return-void
.end method

.method updateCandidatesVisibility(Z)V
    .locals 2
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 1174
    if-eqz p1, :cond_1

    #@2
    const/4 v0, 0x0

    #@3
    .line 1175
    .local v0, "vis":I
    :goto_0
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@5
    if-eq v1, v0, :cond_0

    #@7
    .line 1176
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@9
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@c
    .line 1177
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@e
    .line 1173
    :cond_0
    return-void

    #@f
    .line 1174
    .end local v0    # "vis":I
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    #@12
    move-result v0

    #@13
    .restart local v0    # "vis":I
    goto :goto_0
.end method

.method updateExtractFrameVisibility()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1044
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 1045
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    #@a
    if-eqz v2, :cond_1

    #@c
    const/4 v1, 0x4

    #@d
    .line 1047
    .local v1, "vis":I
    :goto_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    #@f
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@12
    .line 1052
    :goto_1
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@14
    if-nez v2, :cond_3

    #@16
    move v2, v3

    #@17
    :goto_2
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    #@1a
    .line 1053
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    #@1c
    if-eqz v2, :cond_0

    #@1e
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@20
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    #@23
    move-result v2

    #@24
    if-eq v2, v1, :cond_0

    #@26
    .line 1054
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    #@28
    if-nez v1, :cond_4

    #@2a
    :goto_3
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2d
    move-result v0

    #@2e
    .line 1058
    .local v0, "animRes":I
    if-eqz v0, :cond_0

    #@30
    .line 1059
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@32
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    #@39
    .line 1063
    .end local v0    # "animRes":I
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@3b
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@3e
    .line 1042
    return-void

    #@3f
    .line 1045
    .end local v1    # "vis":I
    :cond_1
    const/4 v1, 0x0

    #@40
    .restart local v1    # "vis":I
    goto :goto_0

    #@41
    .line 1049
    .end local v1    # "vis":I
    :cond_2
    const/4 v1, 0x0

    #@42
    .line 1050
    .restart local v1    # "vis":I
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    #@44
    const/16 v5, 0x8

    #@46
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@49
    goto :goto_1

    #@4a
    :cond_3
    move v2, v4

    #@4b
    .line 1052
    goto :goto_2

    #@4c
    .line 1056
    :cond_4
    const/4 v3, 0x2

    #@4d
    goto :goto_3
.end method

.method public updateFullscreenMode()V
    .locals 10

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 915
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@5
    if-eqz v5, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    #@a
    move-result v2

    #@b
    .line 916
    :goto_0
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    #@d
    iget-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@f
    if-eq v5, v8, :cond_2

    #@11
    const/4 v0, 0x1

    #@12
    .line 917
    .local v0, "changed":Z
    :goto_1
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    #@14
    if-ne v5, v2, :cond_3

    #@16
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    #@18
    if-eqz v5, :cond_3

    #@1a
    .line 950
    :goto_2
    if-eqz v0, :cond_0

    #@1c
    .line 951
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@1e
    invoke-virtual {v5}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@21
    move-result-object v8

    #@22
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@24
    if-eqz v5, :cond_8

    #@26
    move v5, v6

    #@27
    :goto_3
    invoke-virtual {p0, v8, v2, v5}, Landroid/inputmethodservice/InputMethodService;->onConfigureWindow(Landroid/view/Window;ZZ)V

    #@2a
    .line 952
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@2c
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    #@2e
    .line 914
    :cond_0
    return-void

    #@2f
    .line 915
    .end local v0    # "changed":Z
    :cond_1
    const/4 v2, 0x0

    #@30
    .local v2, "isFullscreen":Z
    goto :goto_0

    #@31
    .line 916
    .end local v2    # "isFullscreen":Z
    :cond_2
    const/4 v0, 0x0

    #@32
    .restart local v0    # "changed":Z
    goto :goto_1

    #@33
    .line 918
    :cond_3
    const/4 v0, 0x1

    #@34
    .line 919
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    #@36
    .line 920
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@39
    move-result-object v1

    #@3a
    .line 921
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_4

    #@3c
    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    #@3f
    .line 922
    :cond_4
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    #@41
    .line 923
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    #@44
    .line 925
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@46
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@49
    move-result-object v3

    #@4a
    .line 924
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    #@4c
    .line 926
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_7

    #@4e
    .line 927
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@50
    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    #@52
    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@55
    move-result-object v8

    #@56
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@59
    .line 929
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@5b
    .line 930
    const/high16 v5, 0x3f800000    # 1.0f

    #@5d
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@5f
    .line 936
    :goto_4
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@61
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@64
    move-result-object v5

    #@65
    check-cast v5, Landroid/view/ViewGroup;

    #@67
    .line 937
    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@69
    .line 936
    invoke-virtual {v5, v8, v3}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@6c
    .line 938
    if-eqz v2, :cond_6

    #@6e
    .line 939
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    #@70
    if-nez v5, :cond_5

    #@72
    .line 940
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    #@75
    move-result-object v4

    #@76
    .line 941
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_5

    #@78
    .line 942
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->setExtractView(Landroid/view/View;)V

    #@7b
    .line 945
    .end local v4    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    #@7e
    .line 947
    :cond_6
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    #@81
    goto :goto_2

    #@82
    .line 932
    :cond_7
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@84
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@87
    .line 933
    const/4 v5, -0x2

    #@88
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@8a
    .line 934
    const/4 v5, 0x0

    #@8b
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@8d
    goto :goto_4

    #@8e
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    move v5, v7

    #@8f
    .line 951
    goto :goto_3
.end method

.method public updateInputViewShown()V
    .locals 4

    #@0
    .prologue
    .line 1111
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@2
    if-eqz v2, :cond_1

    #@4
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    #@7
    move-result v0

    #@8
    .line 1112
    :goto_0
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    #@a
    if-eq v2, v0, :cond_0

    #@c
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1113
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    #@12
    .line 1114
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@14
    if-eqz v0, :cond_2

    #@16
    const/4 v2, 0x0

    #@17
    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@1a
    .line 1115
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 1116
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    #@21
    .line 1117
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    #@24
    move-result-object v1

    #@25
    .line 1118
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    #@27
    .line 1119
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    #@2a
    .line 1110
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void

    #@2b
    .line 1111
    :cond_1
    const/4 v0, 0x0

    #@2c
    .local v0, "isShown":Z
    goto :goto_0

    #@2d
    .line 1114
    .end local v0    # "isShown":Z
    :cond_2
    const/16 v2, 0x8

    #@2f
    goto :goto_1
.end method
