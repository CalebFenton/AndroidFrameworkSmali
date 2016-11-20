.class public Landroid/inputmethodservice/InputMethodService;
.super Landroid/inputmethodservice/AbstractInputMethodService;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$1;,
        Landroid/inputmethodservice/InputMethodService$2;,
        Landroid/inputmethodservice/InputMethodService$InputMethodImpl;,
        Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;,
        Landroid/inputmethodservice/InputMethodService$Insets;,
        Landroid/inputmethodservice/InputMethodService$SettingsObserver;
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

.field mExtractAction:Landroid/view/View;

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

.field private mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

.field mShouldClearInsetOfPreviousIme:Z

.field mShowInputFlags:I

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
.method static synthetic -wrap0(Landroid/inputmethodservice/InputMethodService;IZ)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->dispatchOnShowInputRequested(IZ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->clearInsetOfPreviousIme()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/inputmethodservice/InputMethodService;II)V
    .locals 0
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onToggleSoftInput(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->resetStateForNewConfiguration()V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 233
    invoke-direct {p0}, Landroid/inputmethodservice/AbstractInputMethodService;-><init>()V

    #@4
    .line 266
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@6
    .line 267
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    #@8
    .line 324
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    #@a
    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    #@d
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@f
    .line 325
    const/4 v0, 0x2

    #@10
    new-array v0, v0, [I

    #@12
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    #@14
    .line 328
    new-instance v0, Landroid/inputmethodservice/InputMethodService$1;

    #@16
    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    #@19
    .line 327
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@1b
    .line 348
    new-instance v0, Landroid/inputmethodservice/InputMethodService$2;

    #@1d
    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    #@20
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    #@22
    .line 233
    return-void
.end method

.method private clearInsetOfPreviousIme()V
    .locals 2

    #@0
    .prologue
    .line 1717
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1719
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@7
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@9
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V

    #@c
    .line 1720
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    #@f
    .line 1714
    return-void
.end method

.method private dispatchOnShowInputRequested(IZ)Z
    .locals 2
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    #@0
    .prologue
    .line 1564
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    #@3
    move-result v0

    #@4
    .line 1565
    .local v0, "result":Z
    if-eqz v0, :cond_0

    #@6
    .line 1566
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    #@8
    .line 1570
    :goto_0
    return v0

    #@9
    .line 1568
    :cond_0
    const/4 v1, 0x0

    #@a
    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    #@c
    goto :goto_0
.end method

.method private doHideWindow()V
    .locals 4

    #@0
    .prologue
    .line 1678
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
    .line 1679
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    #@d
    .line 1677
    return-void
.end method

.method private finishViews()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1666
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 1668
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    #@8
    .line 1673
    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@a
    .line 1674
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@c
    .line 1665
    return-void

    #@d
    .line 1669
    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 1671
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    #@14
    goto :goto_0
.end method

.method private getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;
    .locals 1

    #@0
    .prologue
    .line 1969
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
    .line 1972
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@e
    return-object v0

    #@f
    .line 1970
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method private getIconForImeAction(I)I
    .locals 1
    .param p1, "imeOptions"    # I

    #@0
    .prologue
    .line 2414
    and-int/lit16 v0, p1, 0xff

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 2428
    const v0, 0x108034d

    #@8
    return v0

    #@9
    .line 2416
    :pswitch_0
    const v0, 0x108034a

    #@c
    return v0

    #@d
    .line 2418
    :pswitch_1
    const v0, 0x108034e

    #@10
    return v0

    #@11
    .line 2420
    :pswitch_2
    const v0, 0x108034f

    #@14
    return v0

    #@15
    .line 2422
    :pswitch_3
    const v0, 0x108034b

    #@18
    return v0

    #@19
    .line 2424
    :pswitch_4
    const v0, 0x1080349

    #@1c
    return v0

    #@1d
    .line 2426
    :pswitch_5
    const v0, 0x108034c

    #@20
    return v0

    #@21
    .line 2414
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
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
    .line 1943
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1946
    if-eqz p1, :cond_0

    #@8
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    #@b
    .line 1947
    :cond_0
    return v2

    #@c
    .line 1948
    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@e
    if-eqz v0, :cond_4

    #@10
    .line 1949
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@12
    if-nez v0, :cond_3

    #@14
    .line 1952
    if-eqz p1, :cond_2

    #@16
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    #@19
    .line 1959
    :cond_2
    :goto_0
    return v2

    #@1a
    .line 1957
    :cond_3
    if-eqz p1, :cond_2

    #@1c
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    #@1f
    goto :goto_0

    #@20
    .line 1961
    :cond_4
    return v1
.end method

.method private onToggleSoftInput(II)V
    .locals 1
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    #@0
    .prologue
    .line 2087
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2088
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    #@9
    .line 2085
    :goto_0
    return-void

    #@a
    .line 2090
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
    .line 1939
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    #@7
    .line 1938
    return-void
.end method

.method private resetStateForNewConfiguration()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 896
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@4
    .line 897
    .local v4, "visible":Z
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    #@6
    .line 898
    .local v1, "showFlags":I
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@8
    .line 899
    .local v3, "showingInput":Z
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    #@a
    .line 900
    .local v0, "completions":[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    #@d
    .line 901
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@f
    .line 902
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@11
    .line 903
    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@13
    if-eqz v6, :cond_0

    #@15
    .line 904
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@18
    move-result-object v6

    #@19
    .line 905
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    #@1c
    move-result-object v7

    #@1d
    .line 904
    invoke-virtual {p0, v6, v7, v8}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    #@20
    .line 907
    :cond_0
    if-eqz v4, :cond_3

    #@22
    .line 908
    if-eqz v3, :cond_5

    #@24
    .line 910
    invoke-direct {p0, v1, v8}, Landroid/inputmethodservice/InputMethodService;->dispatchOnShowInputRequested(IZ)Z

    #@27
    move-result v6

    #@28
    if-eqz v6, :cond_4

    #@2a
    .line 911
    invoke-virtual {p0, v8}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    #@2d
    .line 912
    if-eqz v0, :cond_1

    #@2f
    .line 913
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    #@31
    .line 914
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    #@34
    .line 928
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    #@37
    move-result v2

    #@38
    .line 929
    .local v2, "showing":Z
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@3a
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@3c
    if-eqz v2, :cond_2

    #@3e
    const/4 v5, 0x2

    #@3f
    :cond_2
    or-int/lit8 v5, v5, 0x1

    #@41
    .line 930
    iget v8, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    #@43
    .line 929
    invoke-virtual {v6, v7, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    #@46
    .line 895
    .end local v2    # "showing":Z
    :cond_3
    return-void

    #@47
    .line 917
    :cond_4
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    #@4a
    goto :goto_0

    #@4b
    .line 919
    :cond_5
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@4d
    if-nez v6, :cond_6

    #@4f
    .line 922
    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    #@52
    goto :goto_0

    #@53
    .line 925
    :cond_6
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    #@56
    goto :goto_0
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
    .line 1761
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@5
    if-eqz v0, :cond_2

    #@7
    .line 1763
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    #@a
    .line 1768
    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@c
    .line 1769
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@e
    .line 1770
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1772
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    #@15
    .line 1774
    :cond_1
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@17
    .line 1775
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@19
    .line 1776
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    #@1b
    .line 1760
    return-void

    #@1c
    .line 1764
    :cond_2
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 1766
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
    .line 2117
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    #@5
    move-result-object v1

    #@6
    .line 2118
    .local v1, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v1, :cond_3

    #@8
    .line 2122
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    #@b
    move-result-object v3

    #@c
    .line 2123
    .local v3, "movement":Landroid/text/method/MovementMethod;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getLayout()Landroid/text/Layout;

    #@f
    move-result-object v2

    #@10
    .line 2124
    .local v2, "layout":Landroid/text/Layout;
    if-eqz v3, :cond_2

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 2127
    const/4 v5, -0x1

    #@15
    if-ne p3, v5, :cond_0

    #@17
    .line 2128
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@1a
    move-result-object v5

    #@1b
    invoke-interface {v3, v1, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_2

    #@21
    .line 2129
    invoke-virtual {p0, p1, v6}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    #@24
    .line 2130
    return v6

    #@25
    .line 2132
    :cond_0
    const/4 v5, -0x2

    #@26
    if-ne p3, v5, :cond_1

    #@28
    .line 2133
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@2b
    move-result-object v5

    #@2c
    invoke-interface {v3, v1, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_2

    #@32
    .line 2134
    return v6

    #@33
    .line 2137
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
    .line 2138
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    #@40
    .line 2155
    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_0

    #@43
    .line 2164
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "movement":Landroid/text/method/MovementMethod;
    :cond_3
    return v7

    #@44
    .line 2140
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "movement":Landroid/text/method/MovementMethod;
    :cond_4
    invoke-static {p2, v7}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@47
    move-result-object v0

    #@48
    .line 2141
    .local v0, "down":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@4b
    move-result-object v5

    #@4c
    invoke-interface {v3, v1, v5, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@4f
    move-result v5

    #@50
    if-eqz v5, :cond_2

    #@52
    .line 2142
    invoke-static {p2, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@55
    move-result-object v4

    #@56
    .line 2143
    .local v4, "up":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@59
    move-result-object v5

    #@5a
    invoke-interface {v3, v1, v5, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@5d
    .line 2144
    :goto_1
    add-int/lit8 p3, p3, -0x1

    #@5f
    if-lez p3, :cond_5

    #@61
    .line 2145
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@64
    move-result-object v5

    #@65
    invoke-interface {v3, v1, v5, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@68
    .line 2146
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@6b
    move-result-object v5

    #@6c
    invoke-interface {v3, v1, v5, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@6f
    goto :goto_1

    #@70
    .line 2148
    :cond_5
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    #@73
    goto :goto_0

    #@74
    .line 2160
    .end local v0    # "down":Landroid/view/KeyEvent;
    .end local v4    # "up":Landroid/view/KeyEvent;
    :pswitch_0
    return v6

    #@75
    .line 2155
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
    .line 1780
    if-nez p3, :cond_0

    #@3
    .line 1781
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    #@6
    .line 1783
    :cond_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@8
    .line 1784
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@a
    .line 1785
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@c
    .line 1786
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    #@f
    .line 1788
    invoke-virtual {p0, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    #@12
    .line 1789
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1790
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 1792
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@1c
    .line 1793
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@1e
    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    #@21
    .line 1794
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    #@24
    .line 1779
    :cond_1
    :goto_0
    return-void

    #@25
    .line 1795
    :cond_2
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@27
    if-nez v0, :cond_1

    #@29
    .line 1797
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@2b
    .line 1798
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
    .line 2605
    new-instance v0, Landroid/util/PrintWriterPrinter;

    #@2
    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@5
    .line 2606
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
    .line 2607
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
    .line 2608
    const-string/jumbo v2, " mWindowAdded="

    #@38
    .line 2607
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 2608
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    #@3e
    .line 2607
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
    .line 2609
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
    .line 2610
    const-string/jumbo v2, " mWindowWasVisible="

    #@5e
    .line 2609
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    .line 2610
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    #@64
    .line 2609
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    .line 2611
    const-string/jumbo v2, " mInShowWindow="

    #@6b
    .line 2609
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 2611
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    #@71
    .line 2609
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
    .line 2612
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
    .line 2613
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
    .line 2614
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
    .line 2615
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
    .line 2616
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
    .line 2617
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
    .line 2618
    const-string/jumbo v2, " mInputViewStarted="

    #@114
    .line 2617
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v1

    #@118
    .line 2618
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@11a
    .line 2617
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v1

    #@11e
    .line 2619
    const-string/jumbo v2, " mCandidatesViewStarted="

    #@121
    .line 2617
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v1

    #@125
    .line 2619
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@127
    .line 2617
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
    .line 2621
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@134
    if-eqz v1, :cond_0

    #@136
    .line 2622
    const-string/jumbo v1, "  mInputEditorInfo:"

    #@139
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@13c
    .line 2623
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@13e
    const-string/jumbo v2, "    "

    #@141
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@144
    .line 2628
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
    .line 2629
    const-string/jumbo v2, " mLastShowInputRequested="

    #@159
    .line 2628
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v1

    #@15d
    .line 2629
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    #@15f
    .line 2628
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@162
    move-result-object v1

    #@163
    .line 2630
    const-string/jumbo v2, " mShowInputFlags=0x"

    #@166
    .line 2628
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v1

    #@16a
    .line 2630
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    #@16c
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@16f
    move-result-object v2

    #@170
    .line 2628
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v1

    #@174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object v1

    #@178
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@17b
    .line 2631
    new-instance v1, Ljava/lang/StringBuilder;

    #@17d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@180
    const-string/jumbo v2, "  mCandidatesVisibility="

    #@183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v1

    #@187
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v1

    #@18d
    .line 2632
    const-string/jumbo v2, " mFullscreenApplied="

    #@190
    .line 2631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v1

    #@194
    .line 2632
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    #@196
    .line 2631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@199
    move-result-object v1

    #@19a
    .line 2633
    const-string/jumbo v2, " mIsFullscreen="

    #@19d
    .line 2631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v1

    #@1a1
    .line 2633
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    #@1a3
    .line 2631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v1

    #@1a7
    .line 2634
    const-string/jumbo v2, " mExtractViewHidden="

    #@1aa
    .line 2631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v1

    #@1ae
    .line 2634
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    #@1b0
    .line 2631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v1

    #@1b4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b7
    move-result-object v1

    #@1b8
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1bb
    .line 2636
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@1bd
    if-eqz v1, :cond_1

    #@1bf
    .line 2637
    const-string/jumbo v1, "  mExtractedText:"

    #@1c2
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1c5
    .line 2638
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ca
    const-string/jumbo v2, "    text="

    #@1cd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v1

    #@1d1
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@1d3
    iget-object v2, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@1d5
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    #@1d8
    move-result v2

    #@1d9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v1

    #@1dd
    const-string/jumbo v2, " chars"

    #@1e0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e3
    move-result-object v1

    #@1e4
    .line 2639
    const-string/jumbo v2, " startOffset="

    #@1e7
    .line 2638
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v1

    #@1eb
    .line 2639
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@1ed
    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    #@1ef
    .line 2638
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f2
    move-result-object v1

    #@1f3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f6
    move-result-object v1

    #@1f7
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1fa
    .line 2640
    new-instance v1, Ljava/lang/StringBuilder;

    #@1fc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ff
    const-string/jumbo v2, "    selectionStart="

    #@202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@205
    move-result-object v1

    #@206
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@208
    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    #@20a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v1

    #@20e
    .line 2641
    const-string/jumbo v2, " selectionEnd="

    #@211
    .line 2640
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@214
    move-result-object v1

    #@215
    .line 2641
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@217
    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    #@219
    .line 2640
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21c
    move-result-object v1

    #@21d
    .line 2642
    const-string/jumbo v2, " flags=0x"

    #@220
    .line 2640
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@223
    move-result-object v1

    #@224
    .line 2642
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@226
    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    #@228
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@22b
    move-result-object v2

    #@22c
    .line 2640
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22f
    move-result-object v1

    #@230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@233
    move-result-object v1

    #@234
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@237
    .line 2646
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@239
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23c
    const-string/jumbo v2, "  mExtractedToken="

    #@23f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@242
    move-result-object v1

    #@243
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    #@245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@248
    move-result-object v1

    #@249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24c
    move-result-object v1

    #@24d
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@250
    .line 2647
    new-instance v1, Ljava/lang/StringBuilder;

    #@252
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@255
    const-string/jumbo v2, "  mIsInputViewShown="

    #@258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v1

    #@25c
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    #@25e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@261
    move-result-object v1

    #@262
    .line 2648
    const-string/jumbo v2, " mStatusIcon="

    #@265
    .line 2647
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v1

    #@269
    .line 2648
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    #@26b
    .line 2647
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v1

    #@26f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@272
    move-result-object v1

    #@273
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@276
    .line 2649
    const-string/jumbo v1, "Last computed insets:"

    #@279
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@27c
    .line 2650
    new-instance v1, Ljava/lang/StringBuilder;

    #@27e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@281
    const-string/jumbo v2, "  contentTopInsets="

    #@284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@287
    move-result-object v1

    #@288
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@28a
    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    #@28c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28f
    move-result-object v1

    #@290
    .line 2651
    const-string/jumbo v2, " visibleTopInsets="

    #@293
    .line 2650
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@296
    move-result-object v1

    #@297
    .line 2651
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@299
    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    #@29b
    .line 2650
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29e
    move-result-object v1

    #@29f
    .line 2652
    const-string/jumbo v2, " touchableInsets="

    #@2a2
    .line 2650
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a5
    move-result-object v1

    #@2a6
    .line 2652
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@2a8
    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    #@2aa
    .line 2650
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2ad
    move-result-object v1

    #@2ae
    .line 2653
    const-string/jumbo v2, " touchableRegion="

    #@2b1
    .line 2650
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b4
    move-result-object v1

    #@2b5
    .line 2653
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@2b7
    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    #@2b9
    .line 2650
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2bc
    move-result-object v1

    #@2bd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c0
    move-result-object v1

    #@2c1
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2c4
    .line 2654
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c9
    const-string/jumbo v2, " mShouldClearInsetOfPreviousIme="

    #@2cc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cf
    move-result-object v1

    #@2d0
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    #@2d2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d5
    move-result-object v1

    #@2d6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d9
    move-result-object v1

    #@2da
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2dd
    .line 2655
    new-instance v1, Ljava/lang/StringBuilder;

    #@2df
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e2
    const-string/jumbo v2, " mSettingsObserver="

    #@2e5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e8
    move-result-object v1

    #@2e9
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@2eb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2ee
    move-result-object v1

    #@2ef
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f2
    move-result-object v1

    #@2f3
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2f6
    .line 2604
    return-void

    #@2f7
    .line 2625
    :cond_0
    const-string/jumbo v1, "  mInputEditorInfo: null"

    #@2fa
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2fd
    goto/16 :goto_0

    #@2ff
    .line 2644
    :cond_1
    const-string/jumbo v1, "  mExtractedText: null"

    #@302
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@305
    goto/16 :goto_1
.end method

.method public enableHardwareAcceleration()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 765
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 766
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Must be called before onCreate()"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 768
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 769
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    #@16
    .line 770
    return v1

    #@17
    .line 772
    :cond_1
    const/4 v0, 0x0

    #@18
    return v0
.end method

.method public getBackDisposition()I
    .locals 1

    #@0
    .prologue
    .line 965
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    #@2
    return v0
.end method

.method public getCandidatesHiddenVisibility()I
    .locals 1

    #@0
    .prologue
    .line 1314
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
    .line 994
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    #@2
    return-object v0
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    #@0
    .prologue
    .line 1002
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@2
    .line 1003
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@4
    .line 1004
    return-object v0

    #@5
    .line 1006
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    #@7
    return-object v1
.end method

.method public getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    #@0
    .prologue
    .line 1014
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@2
    return-object v0
.end method

.method public getCurrentInputStarted()Z
    .locals 1

    #@0
    .prologue
    .line 1010
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@2
    return v0
.end method

.method public getInputMethodWindowRecommendedHeight()I
    .locals 1

    #@0
    .prologue
    .line 2597
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
    .line 953
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    #@2
    return-object v0
.end method

.method public getMaxWidth()I
    .locals 2

    #@0
    .prologue
    .line 985
    const-string/jumbo v1, "window"

    #@3
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/view/WindowManager;

    #@9
    .line 986
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
    .line 2384
    and-int/lit16 v0, p1, 0xff

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 2400
    const v0, 0x1040456

    #@8
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 2386
    :pswitch_0
    const/4 v0, 0x0

    #@e
    return-object v0

    #@f
    .line 2388
    :pswitch_1
    const v0, 0x1040450

    #@12
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 2390
    :pswitch_2
    const v0, 0x1040451

    #@1a
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 2392
    :pswitch_3
    const v0, 0x1040452

    #@22
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@25
    move-result-object v0

    #@26
    return-object v0

    #@27
    .line 2394
    :pswitch_4
    const v0, 0x1040453

    #@2a
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@2d
    move-result-object v0

    #@2e
    return-object v0

    #@2f
    .line 2396
    :pswitch_5
    const v0, 0x1040454

    #@32
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    .line 2398
    :pswitch_6
    const v0, 0x1040455

    #@3a
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@3d
    move-result-object v0

    #@3e
    return-object v0

    #@3f
    .line 2384
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
    .line 957
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@2
    return-object v0
.end method

.method public hideStatusIcon()V
    .locals 2

    #@0
    .prologue
    .line 1323
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    #@3
    .line 1324
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@5
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@7
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideStatusIcon(Landroid/os/IBinder;)V

    #@a
    .line 1322
    return-void
.end method

.method public hideWindow()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1683
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishViews()V

    #@4
    .line 1684
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1685
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@a
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    #@d
    .line 1686
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@f
    .line 1687
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    #@12
    .line 1688
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    #@14
    .line 1690
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    #@17
    .line 1682
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
    .line 818
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    #@6
    .line 819
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    #@8
    .line 820
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@a
    .line 821
    iput v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    #@c
    .line 823
    sget-object v0, Landroid/R$styleable;->InputMethodService:[I

    #@e
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    #@14
    .line 824
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    #@16
    .line 825
    const v1, 0x109006d

    #@19
    .line 824
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@1f
    .line 826
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@21
    .line 827
    const/16 v1, 0x300

    #@23
    .line 826
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    #@26
    .line 828
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@28
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@2a
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    #@2d
    .line 829
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
    .line 830
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
    .line 831
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    #@46
    move-result-object v0

    #@47
    .line 832
    const-string/jumbo v1, "fancy_ime_animations"

    #@4a
    .line 831
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@4d
    move-result v0

    #@4e
    if-eqz v0, :cond_0

    #@50
    .line 833
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@52
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@55
    move-result-object v0

    #@56
    .line 834
    const v1, 0x10302ef

    #@59
    .line 833
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    #@5c
    .line 836
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@5e
    const v1, 0x1020381

    #@61
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@64
    move-result-object v0

    #@65
    check-cast v0, Landroid/view/ViewGroup;

    #@67
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@69
    .line 837
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    #@6b
    .line 838
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
    .line 839
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    #@7a
    .line 840
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@7c
    .line 841
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@7e
    .line 842
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@80
    .line 843
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    #@82
    .line 845
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
    .line 846
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
    .line 847
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    #@9e
    .line 848
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    #@a0
    .line 850
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    #@a2
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@a5
    .line 851
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    #@a8
    move-result v0

    #@a9
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@ab
    .line 852
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@ad
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@af
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@b2
    .line 853
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@b4
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@b7
    .line 817
    return-void
.end method

.method initialize()V
    .locals 1

    #@0
    .prologue
    .line 811
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 812
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    #@7
    .line 813
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    #@a
    .line 810
    :cond_0
    return-void
.end method

.method public isExtractViewShown()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1150
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
    .line 1100
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    #@2
    return v0
.end method

.method public isInputViewShown()Z
    .locals 1

    #@0
    .prologue
    .line 1249
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
    .line 1240
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
    .line 2079
    return-void
.end method

.method public onBindInput()V
    .locals 0

    #@0
    .prologue
    .line 1730
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 4
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1191
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    #@3
    .line 1192
    .local v1, "loc":[I
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@5
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_1

    #@b
    .line 1193
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@d
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    #@10
    .line 1198
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 1200
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
    .line 1201
    .local v0, "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@25
    move-result v2

    #@26
    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    #@28
    .line 1205
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
    .line 1206
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@32
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    #@35
    .line 1208
    :cond_0
    aget v2, v1, v3

    #@37
    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    #@39
    .line 1209
    const/4 v2, 0x2

    #@3a
    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    #@3c
    .line 1210
    iget-object v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    #@3e
    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    #@41
    .line 1190
    return-void

    #@42
    .line 1195
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
    .line 1196
    .restart local v0    # "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@51
    move-result v2

    #@52
    aput v2, v1, v3

    #@54
    goto :goto_0

    #@55
    .line 1203
    .end local v0    # "decor":Landroid/view/View;
    :cond_2
    aget v2, v1, v3

    #@57
    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    #@59
    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 891
    invoke-super {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 892
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->resetStateForNewConfiguration()V

    #@6
    .line 890
    return-void
.end method

.method public onConfigureWindow(Landroid/view/Window;ZZ)V
    .locals 5
    .param p1, "win"    # Landroid/view/Window;
    .param p2, "isFullscreen"    # Z
    .param p3, "isCandidatesOnly"    # Z

    #@0
    .prologue
    .line 1085
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
    .line 1086
    .local v0, "currentHeight":I
    if-eqz p2, :cond_1

    #@e
    const/4 v1, -0x1

    #@f
    .line 1087
    .local v1, "newHeight":I
    :goto_0
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    #@11
    if-eqz v2, :cond_0

    #@13
    if-eq v0, v1, :cond_0

    #@15
    .line 1088
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
    .line 1089
    const-string/jumbo v4, " -> "

    #@2b
    .line 1088
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
    .line 1091
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
    .line 1084
    return-void

    #@45
    .line 1086
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
    .line 776
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@7
    .line 777
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@a
    move-result-object v1

    #@b
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@d
    .line 778
    const v2, 0x1030054

    #@10
    .line 779
    const v3, 0x103007f

    #@13
    move v5, v4

    #@14
    .line 776
    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@1a
    .line 782
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@1c
    invoke-super {p0, v0}, Landroid/inputmethodservice/AbstractInputMethodService;->setTheme(I)V

    #@1f
    .line 783
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreate()V

    #@22
    .line 784
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
    .line 785
    invoke-static {p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->createAndRegister(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@33
    .line 788
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@35
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    #@38
    move-result v0

    #@39
    if-lez v0, :cond_1

    #@3b
    const/4 v0, 0x1

    #@3c
    :goto_0
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    #@3e
    .line 790
    const-string/jumbo v0, "layout_inflater"

    #@41
    .line 789
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/view/LayoutInflater;

    #@47
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    #@49
    .line 791
    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    #@4b
    const-string/jumbo v2, "InputMethod"

    #@4e
    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@50
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    #@52
    .line 792
    const/16 v7, 0x7db

    #@54
    const/16 v8, 0x50

    #@56
    move-object v1, p0

    #@57
    move-object v4, v10

    #@58
    move-object v5, v10

    #@59
    .line 791
    invoke-direct/range {v0 .. v9}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    #@5c
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@5e
    .line 793
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    #@60
    if-eqz v0, :cond_0

    #@62
    .line 794
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@64
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@67
    move-result-object v0

    #@68
    const/high16 v1, 0x1000000

    #@6a
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    #@6d
    .line 796
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    #@70
    .line 797
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@72
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@75
    move-result-object v0

    #@76
    const/4 v1, -0x1

    #@77
    const/4 v2, -0x2

    #@78
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    #@7b
    .line 775
    return-void

    #@7c
    :cond_1
    move v0, v9

    #@7d
    .line 788
    goto :goto_0
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 1411
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreateExtractTextView()Landroid/view/View;
    .locals 3

    #@0
    .prologue
    .line 1396
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    #@2
    .line 1397
    const v1, 0x109006e

    #@5
    const/4 v2, 0x0

    #@6
    .line 1396
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
    .line 940
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
    .line 949
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
    .line 1426
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .param p1, "newSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 2573
    return-void
.end method

.method public onDestroy()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 857
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onDestroy()V

    #@4
    .line 858
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@6
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@9
    move-result-object v0

    #@a
    .line 859
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@c
    .line 858
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    #@f
    .line 860
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    #@12
    .line 861
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 865
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@18
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@1b
    move-result-object v0

    #@1c
    const/4 v1, 0x0

    #@1d
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    #@20
    .line 866
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@22
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V

    #@25
    .line 868
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 869
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@2b
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->unregister()V

    #@2e
    .line 870
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@30
    .line 856
    :cond_1
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 1831
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1112
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@8
    move-result-object v0

    #@9
    .line 1113
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    #@b
    const/4 v2, 0x2

    #@c
    if-eq v1, v2, :cond_0

    #@e
    .line 1114
    return v3

    #@f
    .line 1116
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 1117
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
    .line 1118
    return v3

    #@1d
    .line 1120
    :cond_1
    const/4 v1, 0x1

    #@1e
    return v1
.end method

.method public onEvaluateInputViewShown()Z
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1265
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@4
    if-nez v3, :cond_0

    #@6
    .line 1266
    const-string/jumbo v1, "InputMethodService"

    #@9
    const-string/jumbo v3, "onEvaluateInputViewShown: mSettingsObserver must not be null here."

    #@c
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1267
    return v2

    #@10
    .line 1269
    :cond_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@12
    invoke-static {v3}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-wrap0(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 1270
    return v1

    #@19
    .line 1272
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@20
    move-result-object v0

    #@21
    .line 1273
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    #@23
    if-eq v3, v1, :cond_2

    #@25
    .line 1274
    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@27
    const/4 v4, 0x2

    #@28
    if-ne v3, v4, :cond_3

    #@2a
    .line 1273
    :cond_2
    :goto_0
    return v1

    #@2b
    :cond_3
    move v1, v2

    #@2c
    .line 1274
    goto :goto_0
.end method

.method public onExtractTextContextMenuItem(I)Z
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 2365
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 2366
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@6
    .line 2367
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    #@9
    .line 2369
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
    .line 2348
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@3
    if-eqz v0, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 2349
    :cond_0
    return-void

    #@8
    .line 2351
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@a
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 2352
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    #@13
    .line 2347
    :cond_2
    return-void
.end method

.method public onExtractedDeleteText(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 2286
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 2287
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@6
    .line 2288
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@9
    .line 2289
    invoke-interface {v0, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    #@c
    .line 2290
    sub-int v1, p2, p1

    #@e
    const/4 v2, 0x0

    #@f
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    #@12
    .line 2285
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
    .line 2298
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 2299
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@6
    .line 2300
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    #@9
    .line 2301
    const/4 v1, 0x1

    #@a
    invoke-interface {v0, p3, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@d
    .line 2297
    :cond_0
    return-void
.end method

.method public onExtractedSelectionChanged(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 2276
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 2277
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@6
    .line 2278
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    #@9
    .line 2275
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
    .line 2309
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@4
    move-result-object v0

    #@5
    .line 2310
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    #@7
    .line 2311
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    return-void

    #@e
    .line 2312
    :cond_0
    invoke-interface {v0, v5}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    #@11
    move-result-object v1

    #@12
    .line 2313
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    #@14
    if-eqz v2, :cond_1

    #@16
    move-object v2, v1

    #@17
    .line 2314
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
    .line 2315
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    #@24
    .line 2316
    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@27
    .line 2308
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public onExtractedTextClicked()V
    .locals 1

    #@0
    .prologue
    .line 2329
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2330
    return-void

    #@5
    .line 2332
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@7
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 2333
    const/4 v0, 0x0

    #@e
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    #@11
    .line 2328
    :cond_1
    return-void
.end method

.method public onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    .line 2514
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2515
    const/4 v0, 0x2

    #@5
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    #@8
    .line 2513
    :cond_0
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    #@0
    .prologue
    .line 1503
    if-nez p1, :cond_0

    #@2
    .line 1504
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@5
    move-result-object v0

    #@6
    .line 1505
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@8
    .line 1506
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@b
    .line 1502
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public onFinishInput()V
    .locals 1

    #@0
    .prologue
    .line 1816
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 1817
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@6
    .line 1818
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@9
    .line 1815
    :cond_0
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    #@0
    .prologue
    .line 1458
    if-nez p1, :cond_0

    #@2
    .line 1459
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@5
    move-result-object v0

    #@6
    .line 1460
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@8
    .line 1461
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@b
    .line 1457
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2076
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onInitializeInterface()V
    .locals 0

    #@0
    .prologue
    .line 806
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
    .line 1989
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x4

    #@7
    if-ne v1, v2, :cond_2

    #@9
    .line 1990
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    #@c
    move-result-object v0

    #@d
    .line 1991
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_0

    #@f
    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 1992
    return v4

    #@16
    .line 1994
    :cond_0
    invoke-direct {p0, v3}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 1995
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    #@1f
    .line 1996
    return v4

    #@20
    .line 1998
    :cond_1
    return v3

    #@21
    .line 2000
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
    .line 2009
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
    .line 2025
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
    .line 2041
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@4
    move-result v1

    #@5
    const/4 v2, 0x4

    #@6
    if-ne v1, v2, :cond_1

    #@8
    .line 2042
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    #@b
    move-result-object v0

    #@c
    .line 2043
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 2044
    return v3

    #@15
    .line 2046
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
    .line 2050
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
    .line 2047
    .restart local v0    # "eet":Landroid/inputmethodservice/ExtractEditText;
    :cond_2
    invoke-direct {p0, v3}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    #@2a
    move-result v1

    #@2b
    return v1
.end method

.method public onShowInputRequested(IZ)Z
    .locals 3
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1527
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1528
    return v1

    #@9
    .line 1530
    :cond_0
    and-int/lit8 v0, p1, 0x1

    #@b
    if-nez v0, :cond_2

    #@d
    .line 1531
    if-nez p2, :cond_1

    #@f
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1537
    return v1

    #@16
    .line 1539
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@18
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-wrap0(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 1540
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@25
    move-result-object v0

    #@26
    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    #@28
    if-eq v0, v2, :cond_2

    #@2a
    .line 1544
    return v1

    #@2b
    .line 1547
    :cond_2
    return v2
.end method

.method public onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    #@0
    .prologue
    .line 1485
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    #@0
    .prologue
    .line 1756
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    #@0
    .prologue
    .line 1440
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2063
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onUnbindInput()V
    .locals 0

    #@0
    .prologue
    .line 1740
    return-void
.end method

.method public onUpdateCursor(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "newCursor"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1904
    return-void
.end method

.method public onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    #@0
    .prologue
    .line 1915
    return-void
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    #@0
    .prologue
    .line 1842
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1843
    return-void

    #@5
    .line 1845
    :cond_0
    if-eqz p2, :cond_1

    #@7
    .line 1846
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1847
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@d
    .line 1848
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@f
    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    #@12
    .line 1841
    :cond_1
    return-void
.end method

.method public onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V
    .locals 6
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 2468
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 2469
    return-void

    #@a
    .line 2472
    :cond_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@c
    if-nez v3, :cond_1

    #@e
    .line 2473
    return-void

    #@f
    .line 2475
    :cond_1
    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@11
    if-nez v3, :cond_3

    #@13
    .line 2476
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@15
    and-int/lit16 v3, v3, 0xff

    #@17
    if-eq v3, v1, :cond_5

    #@19
    .line 2477
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@1b
    const/high16 v4, 0x20000000

    #@1d
    and-int/2addr v3, v4

    #@1e
    if-nez v3, :cond_5

    #@20
    .line 2478
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@22
    if-eqz v3, :cond_4

    #@24
    :goto_0
    move v0, v1

    #@25
    .line 2479
    .local v0, "hasAction":Z
    :goto_1
    if-eqz v0, :cond_9

    #@27
    .line 2480
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@29
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@2c
    .line 2481
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 2482
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@32
    instance-of v1, v1, Landroid/widget/ImageButton;

    #@34
    if-eqz v1, :cond_7

    #@36
    .line 2483
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@38
    check-cast v1, Landroid/widget/ImageButton;

    #@3a
    .line 2484
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@3c
    invoke-direct {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getIconForImeAction(I)I

    #@3f
    move-result v2

    #@40
    .line 2483
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    #@43
    .line 2485
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@45
    if-eqz v1, :cond_6

    #@47
    .line 2486
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@49
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@4b
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    #@4e
    .line 2497
    :goto_2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@50
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    #@52
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@55
    .line 2467
    :cond_2
    :goto_3
    return-void

    #@56
    .end local v0    # "hasAction":Z
    :cond_3
    move v0, v1

    #@57
    .line 2475
    goto :goto_1

    #@58
    :cond_4
    move v1, v2

    #@59
    .line 2478
    goto :goto_0

    #@5a
    :cond_5
    move v0, v2

    #@5b
    .line 2475
    goto :goto_1

    #@5c
    .line 2488
    .restart local v0    # "hasAction":Z
    :cond_6
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@5e
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@60
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    #@67
    goto :goto_2

    #@68
    .line 2491
    :cond_7
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@6a
    if-eqz v1, :cond_8

    #@6c
    .line 2492
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@6e
    check-cast v1, Landroid/widget/TextView;

    #@70
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@72
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@75
    goto :goto_2

    #@76
    .line 2494
    :cond_8
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@78
    check-cast v1, Landroid/widget/TextView;

    #@7a
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@7c
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@83
    goto :goto_2

    #@84
    .line 2500
    :cond_9
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@86
    const/16 v2, 0x8

    #@88
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@8b
    .line 2501
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@8d
    if-eqz v1, :cond_2

    #@8f
    .line 2502
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@91
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@94
    goto :goto_3
.end method

.method public onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2442
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2443
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@7
    const/high16 v1, 0x10000000

    #@9
    and-int/2addr v0, v1

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 2445
    :cond_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    #@f
    .line 2446
    return-void

    #@10
    .line 2449
    :cond_1
    const/4 v0, 0x1

    #@11
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    #@14
    .line 2441
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
    .line 1870
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@2
    .line 1871
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
    .line 1872
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@10
    iget v2, v3, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    #@12
    .line 1873
    .local v2, "off":I
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    #@15
    .line 1874
    sub-int/2addr p3, v2

    #@16
    .line 1875
    sub-int/2addr p4, v2

    #@17
    .line 1876
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@1a
    move-result-object v3

    #@1b
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    #@1e
    move-result v1

    #@1f
    .line 1877
    .local v1, "len":I
    if-gez p3, :cond_3

    #@21
    const/4 p3, 0x0

    #@22
    .line 1879
    :cond_0
    :goto_0
    if-gez p4, :cond_4

    #@24
    const/4 p4, 0x0

    #@25
    .line 1881
    :cond_1
    :goto_1
    invoke-virtual {v0, p3, p4}, Landroid/inputmethodservice/ExtractEditText;->setSelection(II)V

    #@28
    .line 1882
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    #@2b
    .line 1869
    .end local v1    # "len":I
    .end local v2    # "off":I
    :cond_2
    return-void

    #@2c
    .line 1878
    .restart local v1    # "len":I
    .restart local v2    # "off":I
    :cond_3
    if-le p3, v1, :cond_0

    #@2e
    move p3, v1

    #@2f
    goto :goto_0

    #@30
    .line 1880
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
    .line 1893
    return-void
.end method

.method public onWindowHidden()V
    .locals 0

    #@0
    .prologue
    .line 1706
    return-void
.end method

.method public onWindowShown()V
    .locals 0

    #@0
    .prologue
    .line 1698
    return-void
.end method

.method reportExtractedMovement(II)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 2098
    const/4 v0, 0x0

    #@1
    .local v0, "dx":I
    const/4 v1, 0x0

    #@2
    .line 2099
    .local v1, "dy":I
    packed-switch p1, :pswitch_data_0

    #@5
    .line 2113
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    #@8
    .line 2097
    return-void

    #@9
    .line 2101
    :pswitch_0
    neg-int v0, p2

    #@a
    .line 2102
    goto :goto_0

    #@b
    .line 2104
    :pswitch_1
    move v0, p2

    #@c
    .line 2105
    goto :goto_0

    #@d
    .line 2107
    :pswitch_2
    neg-int v1, p2

    #@e
    .line 2108
    goto :goto_0

    #@f
    .line 2110
    :pswitch_3
    move v1, p2

    #@10
    .line 2111
    goto :goto_0

    #@11
    .line 2099
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
    .line 1928
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    #@7
    .line 1927
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
    .line 2215
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    #@5
    move-result-object v0

    #@6
    .line 2216
    .local v0, "ei":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_2

    #@8
    .line 2217
    if-eqz p1, :cond_0

    #@a
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@c
    .line 2218
    const/high16 v3, 0x40000000    # 2.0f

    #@e
    .line 2217
    and-int/2addr v2, v3

    #@f
    if-nez v2, :cond_2

    #@11
    .line 2219
    :cond_0
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@13
    and-int/lit16 v2, v2, 0xff

    #@15
    if-eq v2, v5, :cond_2

    #@17
    .line 2224
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@1a
    move-result-object v1

    #@1b
    .line 2225
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    #@1d
    .line 2226
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@1f
    and-int/lit16 v2, v2, 0xff

    #@21
    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    #@24
    .line 2228
    :cond_1
    return v5

    #@25
    .line 2231
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    return v4
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 13
    .param p1, "keyEventCode"    # I

    #@0
    .prologue
    .line 2187
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 2188
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 2189
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a
    move-result-wide v2

    #@b
    .line 2190
    .local v2, "eventTime":J
    new-instance v1, Landroid/view/KeyEvent;

    #@d
    .line 2191
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
    .line 2192
    const/4 v12, 0x6

    #@13
    move-wide v4, v2

    #@14
    move v7, p1

    #@15
    .line 2190
    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    #@18
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    #@1b
    .line 2193
    new-instance v1, Landroid/view/KeyEvent;

    #@1d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@20
    move-result-wide v4

    #@21
    .line 2194
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
    .line 2195
    const/4 v12, 0x6

    #@27
    move v7, p1

    #@28
    .line 2193
    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    #@2b
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    #@2e
    .line 2186
    return-void
.end method

.method public sendKeyChar(C)V
    .locals 3
    .param p1, "charCode"    # C

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2249
    packed-switch p1, :pswitch_data_0

    #@4
    .line 2257
    const/16 v1, 0x30

    #@6
    if-lt p1, v1, :cond_1

    #@8
    const/16 v1, 0x39

    #@a
    if-gt p1, v1, :cond_1

    #@c
    .line 2258
    add-int/lit8 v1, p1, -0x30

    #@e
    add-int/lit8 v1, v1, 0x7

    #@10
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    #@13
    .line 2248
    :cond_0
    :goto_0
    return-void

    #@14
    .line 2251
    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 2252
    const/16 v1, 0x42

    #@1c
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    #@1f
    goto :goto_0

    #@20
    .line 2260
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@23
    move-result-object v0

    #@24
    .line 2261
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@26
    .line 2262
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@2d
    goto :goto_0

    #@2e
    .line 2249
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
    .line 961
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    #@2
    .line 960
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1369
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@5
    .line 1370
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@7
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@9
    .line 1371
    const/4 v2, -0x1

    #@a
    .line 1372
    const/4 v3, -0x2

    #@b
    .line 1370
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@e
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    .line 1368
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 1282
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    #@3
    .line 1283
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@5
    if-nez v0, :cond_0

    #@7
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@9
    if-eq v0, p1, :cond_0

    #@b
    .line 1287
    if-eqz p1, :cond_1

    #@d
    .line 1288
    const/4 v0, 0x0

    #@e
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    #@11
    .line 1281
    :cond_0
    :goto_0
    return-void

    #@12
    .line 1290
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
    .line 1339
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    #@4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@7
    .line 1340
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    #@9
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@b
    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@e
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    .line 1343
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    #@13
    .line 1344
    if-eqz p1, :cond_1

    #@15
    .line 1346
    const v0, 0x1020025

    #@18
    .line 1345
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/inputmethodservice/ExtractEditText;

    #@1e
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@20
    .line 1347
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@22
    invoke-virtual {v0, p0}, Landroid/inputmethodservice/ExtractEditText;->setIME(Landroid/inputmethodservice/InputMethodService;)V

    #@25
    .line 1349
    const v0, 0x1020383

    #@28
    .line 1348
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@2e
    .line 1350
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@30
    if-eqz v0, :cond_0

    #@32
    .line 1352
    const v0, 0x1020382

    #@35
    .line 1351
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/view/ViewGroup;

    #@3b
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@3d
    .line 1354
    :cond_0
    const/4 v0, 0x0

    #@3e
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    #@41
    .line 1338
    :goto_0
    return-void

    #@42
    .line 1356
    :cond_1
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@44
    .line 1357
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@46
    .line 1358
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@48
    goto :goto_0
.end method

.method public setExtractViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 1133
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 1134
    if-eqz p1, :cond_1

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    #@9
    .line 1135
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    #@c
    .line 1132
    :cond_0
    return-void

    #@d
    .line 1134
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
    .line 1382
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@5
    .line 1383
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@7
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@9
    .line 1384
    const/4 v2, -0x1

    #@a
    .line 1385
    const/4 v3, -0x2

    #@b
    .line 1383
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@e
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    .line 1386
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    #@13
    .line 1381
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "theme"    # I

    #@0
    .prologue
    .line 746
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 747
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Must be called before onCreate()"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 749
    :cond_0
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@f
    .line 745
    return-void
.end method

.method public showStatusIcon(I)V
    .locals 3
    .param p1, "iconResId"    # I

    #@0
    .prologue
    .line 1318
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    #@2
    .line 1319
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
    .line 1317
    return-void
.end method

.method public showWindow(Z)V
    .locals 4
    .param p1, "showInput"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1582
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1583
    const-string/jumbo v1, "InputMethodService"

    #@9
    const-string/jumbo v2, "Re-entrance in to showWindow"

    #@c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1584
    return-void

    #@10
    .line 1588
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@12
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    #@14
    .line 1589
    const/4 v1, 0x1

    #@15
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    #@17
    .line 1590
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindowInner(Z)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 1604
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    #@1c
    .line 1605
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    #@1e
    .line 1573
    return-void

    #@1f
    .line 1591
    :catch_0
    move-exception v0

    #@20
    .line 1595
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const/4 v1, 0x0

    #@21
    :try_start_1
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@23
    .line 1596
    const/4 v1, 0x0

    #@24
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    #@26
    .line 1601
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 1602
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v1

    #@28
    .line 1604
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    #@2a
    .line 1605
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    #@2c
    .line 1602
    throw v1
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
    .line 1610
    const/4 v0, 0x0

    #@4
    .line 1612
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
    .line 1613
    .local v2, "previousImeWindowStatus":I
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@14
    .line 1614
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@16
    if-nez v4, :cond_0

    #@18
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@1a
    if-eqz v4, :cond_0

    #@1c
    if-eqz p1, :cond_0

    #@1e
    .line 1615
    const/4 v0, 0x1

    #@1f
    .line 1616
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@21
    .line 1620
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    #@24
    .line 1621
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    #@27
    .line 1622
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateInputViewShown()V

    #@2a
    .line 1624
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    #@2c
    if-eqz v4, :cond_8

    #@2e
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    #@30
    if-eqz v4, :cond_8

    #@32
    .line 1635
    :cond_1
    :goto_2
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@34
    if-eqz v4, :cond_9

    #@36
    .line 1636
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@38
    if-nez v4, :cond_2

    #@3a
    .line 1638
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@3c
    .line 1639
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@3e
    invoke-virtual {p0, v4, v6}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    #@41
    .line 1647
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    #@43
    .line 1648
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    #@46
    .line 1651
    :cond_3
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_a

    #@4c
    :goto_4
    or-int/lit8 v1, v8, 0x1

    #@4e
    .line 1652
    .local v1, "nextImeWindowStatus":I
    if-eq v2, v1, :cond_4

    #@50
    .line 1653
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@52
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@54
    iget v7, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    #@56
    invoke-virtual {v4, v5, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    #@59
    .line 1655
    :cond_4
    and-int/lit8 v4, v2, 0x1

    #@5b
    if-nez v4, :cond_5

    #@5d
    .line 1657
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    #@60
    .line 1658
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@62
    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    #@65
    .line 1661
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    #@67
    .line 1609
    :cond_5
    return-void

    #@68
    .end local v1    # "nextImeWindowStatus":I
    .end local v2    # "previousImeWindowStatus":I
    :cond_6
    move v4, v6

    #@69
    .line 1612
    goto :goto_0

    #@6a
    :cond_7
    move v7, v6

    #@6b
    goto :goto_1

    #@6c
    .line 1625
    .restart local v2    # "previousImeWindowStatus":I
    :cond_8
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    #@6e
    .line 1626
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    #@70
    .line 1627
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    #@73
    .line 1629
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    #@76
    move-result-object v3

    #@77
    .line 1631
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1

    #@79
    .line 1632
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->setCandidatesView(Landroid/view/View;)V

    #@7c
    goto :goto_2

    #@7d
    .line 1641
    .end local v3    # "v":Landroid/view/View;
    :cond_9
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@7f
    if-nez v4, :cond_2

    #@81
    .line 1643
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@83
    .line 1644
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@85
    invoke-virtual {p0, v4, v6}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    #@88
    goto :goto_3

    #@89
    :cond_a
    move v8, v6

    #@8a
    .line 1651
    goto :goto_4
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
    .line 2520
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@4
    .line 2521
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_3

    #@6
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputStarted()Z

    #@9
    move-result v6

    #@a
    if-eqz v6, :cond_3

    #@c
    .line 2522
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    #@f
    move-result v6

    #@10
    .line 2521
    if-eqz v6, :cond_3

    #@12
    .line 2523
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    #@14
    add-int/lit8 v6, v6, 0x1

    #@16
    iput v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    #@18
    .line 2524
    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    #@1a
    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    #@1d
    .line 2525
    .local v4, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    #@1f
    iput v6, v4, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    #@21
    .line 2526
    iput v8, v4, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    #@23
    .line 2527
    const/16 v6, 0xa

    #@25
    iput v6, v4, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    #@27
    .line 2528
    const/16 v6, 0x2710

    #@29
    iput v6, v4, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    #@2b
    .line 2529
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@2e
    move-result-object v2

    #@2f
    .line 2530
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_4

    #@31
    :goto_0
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@33
    .line 2532
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@35
    if-eqz v5, :cond_0

    #@37
    if-nez v2, :cond_1

    #@39
    .line 2533
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
    .line 2534
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@4a
    .line 2533
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    .line 2534
    const-string/jumbo v7, ", input connection = "

    #@51
    .line 2533
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
    .line 2536
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    #@63
    move-result-object v1

    #@64
    .line 2539
    .local v1, "ei":Landroid/view/inputmethod/EditorInfo;
    :try_start_0
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    #@67
    .line 2540
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V

    #@6a
    .line 2541
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V

    #@6d
    .line 2542
    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@6f
    .line 2543
    .local v3, "inputType":I
    and-int/lit8 v5, v3, 0xf

    #@71
    if-ne v5, v8, :cond_2

    #@73
    .line 2545
    const/high16 v5, 0x40000

    #@75
    and-int/2addr v5, v3

    #@76
    if-eqz v5, :cond_2

    #@78
    .line 2546
    const/high16 v5, 0x20000

    #@7a
    or-int/2addr v3, v5

    #@7b
    .line 2549
    :cond_2
    invoke-virtual {v0, v3}, Landroid/inputmethodservice/ExtractEditText;->setInputType(I)V

    #@7e
    .line 2550
    iget-object v5, v1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    #@80
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setHint(Ljava/lang/CharSequence;)V

    #@83
    .line 2551
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@85
    if-eqz v5, :cond_5

    #@87
    .line 2552
    const/4 v5, 0x1

    #@88
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    #@8b
    .line 2553
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@8d
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@90
    .line 2559
    :goto_1
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    #@93
    .line 2562
    if-eqz p1, :cond_3

    #@95
    .line 2563
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V

    #@98
    .line 2519
    .end local v1    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "inputType":I
    .end local v4    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_3
    return-void

    #@99
    .line 2531
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v4    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_4
    invoke-interface {v2, v4, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    #@9c
    move-result-object v5

    #@9d
    goto :goto_0

    #@9e
    .line 2555
    .restart local v1    # "ei":Landroid/view/inputmethod/EditorInfo;
    .restart local v3    # "inputType":I
    :cond_5
    const/4 v5, 0x0

    #@9f
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    #@a2
    .line 2556
    const-string/jumbo v5, ""

    #@a5
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a8
    goto :goto_1

    #@a9
    .line 2558
    .end local v3    # "inputType":I
    :catchall_0
    move-exception v5

    #@aa
    .line 2559
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    #@ad
    .line 2558
    throw v5
.end method

.method public switchInputMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1335
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    #@7
    .line 1334
    return-void
.end method

.method updateCandidatesVisibility(Z)V
    .locals 2
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 1296
    if-eqz p1, :cond_1

    #@2
    const/4 v0, 0x0

    #@3
    .line 1297
    .local v0, "vis":I
    :goto_0
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@5
    if-eq v1, v0, :cond_0

    #@7
    .line 1298
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@9
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@c
    .line 1299
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@e
    .line 1295
    :cond_0
    return-void

    #@f
    .line 1296
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
    .line 1155
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 1156
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    #@a
    if-eqz v2, :cond_1

    #@c
    const/4 v1, 0x4

    #@d
    .line 1158
    .local v1, "vis":I
    :goto_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    #@f
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@12
    .line 1163
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
    .line 1164
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
    .line 1165
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    #@28
    if-nez v1, :cond_4

    #@2a
    :goto_3
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2d
    move-result v0

    #@2e
    .line 1169
    .local v0, "animRes":I
    if-eqz v0, :cond_0

    #@30
    .line 1170
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@32
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    #@39
    .line 1174
    .end local v0    # "animRes":I
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@3b
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@3e
    .line 1153
    return-void

    #@3f
    .line 1156
    .end local v1    # "vis":I
    :cond_1
    const/4 v1, 0x0

    #@40
    .restart local v1    # "vis":I
    goto :goto_0

    #@41
    .line 1160
    .end local v1    # "vis":I
    :cond_2
    const/4 v1, 0x0

    #@42
    .line 1161
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
    .line 1163
    goto :goto_2

    #@4c
    .line 1167
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
    .line 1026
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@5
    if-eqz v5, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    #@a
    move-result v2

    #@b
    .line 1027
    :goto_0
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    #@d
    iget-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@f
    if-eq v5, v8, :cond_2

    #@11
    const/4 v0, 0x1

    #@12
    .line 1028
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
    .line 1061
    :goto_2
    if-eqz v0, :cond_0

    #@1c
    .line 1062
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
    .line 1063
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@2c
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    #@2e
    .line 1025
    :cond_0
    return-void

    #@2f
    .line 1026
    .end local v0    # "changed":Z
    :cond_1
    const/4 v2, 0x0

    #@30
    .local v2, "isFullscreen":Z
    goto :goto_0

    #@31
    .line 1027
    .end local v2    # "isFullscreen":Z
    :cond_2
    const/4 v0, 0x0

    #@32
    .restart local v0    # "changed":Z
    goto :goto_1

    #@33
    .line 1029
    :cond_3
    const/4 v0, 0x1

    #@34
    .line 1030
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    #@36
    .line 1031
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@39
    move-result-object v1

    #@3a
    .line 1032
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_4

    #@3c
    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    #@3f
    .line 1033
    :cond_4
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    #@41
    .line 1034
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    #@44
    .line 1036
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@46
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@49
    move-result-object v3

    #@4a
    .line 1035
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    #@4c
    .line 1037
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_7

    #@4e
    .line 1038
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
    .line 1040
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@5b
    .line 1041
    const/high16 v5, 0x3f800000    # 1.0f

    #@5d
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@5f
    .line 1047
    :goto_4
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@61
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@64
    move-result-object v5

    #@65
    check-cast v5, Landroid/view/ViewGroup;

    #@67
    .line 1048
    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@69
    .line 1047
    invoke-virtual {v5, v8, v3}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@6c
    .line 1049
    if-eqz v2, :cond_6

    #@6e
    .line 1050
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    #@70
    if-nez v5, :cond_5

    #@72
    .line 1051
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    #@75
    move-result-object v4

    #@76
    .line 1052
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_5

    #@78
    .line 1053
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->setExtractView(Landroid/view/View;)V

    #@7b
    .line 1056
    .end local v4    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    #@7e
    .line 1058
    :cond_6
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    #@81
    goto :goto_2

    #@82
    .line 1043
    :cond_7
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@84
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@87
    .line 1044
    const/4 v5, -0x2

    #@88
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@8a
    .line 1045
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
    .line 1062
    goto :goto_3
.end method

.method public updateInputViewShown()V
    .locals 4

    #@0
    .prologue
    .line 1222
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@2
    if-eqz v2, :cond_1

    #@4
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    #@7
    move-result v0

    #@8
    .line 1223
    :goto_0
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    #@a
    if-eq v2, v0, :cond_0

    #@c
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1224
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    #@12
    .line 1225
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@14
    if-eqz v0, :cond_2

    #@16
    const/4 v2, 0x0

    #@17
    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@1a
    .line 1226
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 1227
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    #@21
    .line 1228
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    #@24
    move-result-object v1

    #@25
    .line 1229
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    #@27
    .line 1230
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    #@2a
    .line 1221
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void

    #@2b
    .line 1222
    :cond_1
    const/4 v0, 0x0

    #@2c
    .local v0, "isShown":Z
    goto :goto_0

    #@2d
    .line 1225
    .end local v0    # "isShown":Z
    :cond_2
    const/16 v2, 0x8

    #@2f
    goto :goto_1
.end method
