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
    .line 235
    invoke-direct {p0}, Landroid/inputmethodservice/AbstractInputMethodService;-><init>()V

    #@4
    .line 268
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@6
    .line 269
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    #@8
    .line 326
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    #@a
    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    #@d
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@f
    .line 327
    const/4 v0, 0x2

    #@10
    new-array v0, v0, [I

    #@12
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    #@14
    .line 330
    new-instance v0, Landroid/inputmethodservice/InputMethodService$1;

    #@16
    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    #@19
    .line 329
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@1b
    .line 350
    new-instance v0, Landroid/inputmethodservice/InputMethodService$2;

    #@1d
    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    #@20
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    #@22
    .line 235
    return-void
.end method

.method private clearInsetOfPreviousIme()V
    .locals 2

    #@0
    .prologue
    .line 1719
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1721
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@7
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@9
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V

    #@c
    .line 1722
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    #@f
    .line 1716
    return-void
.end method

.method private dispatchOnShowInputRequested(IZ)Z
    .locals 2
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    #@0
    .prologue
    .line 1566
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    #@3
    move-result v0

    #@4
    .line 1567
    .local v0, "result":Z
    if-eqz v0, :cond_0

    #@6
    .line 1568
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    #@8
    .line 1572
    :goto_0
    return v0

    #@9
    .line 1570
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
    .line 1680
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
    .line 1681
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    #@d
    .line 1679
    return-void
.end method

.method private finishViews()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1668
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 1670
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    #@8
    .line 1675
    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@a
    .line 1676
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@c
    .line 1667
    return-void

    #@d
    .line 1671
    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 1673
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    #@14
    goto :goto_0
.end method

.method private getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;
    .locals 1

    #@0
    .prologue
    .line 1971
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
    .line 1974
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@e
    return-object v0

    #@f
    .line 1972
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
    .line 2416
    and-int/lit16 v0, p1, 0xff

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 2430
    const v0, 0x1080362

    #@8
    return v0

    #@9
    .line 2418
    :pswitch_0
    const v0, 0x108035f

    #@c
    return v0

    #@d
    .line 2420
    :pswitch_1
    const v0, 0x1080363

    #@10
    return v0

    #@11
    .line 2422
    :pswitch_2
    const v0, 0x1080364

    #@14
    return v0

    #@15
    .line 2424
    :pswitch_3
    const v0, 0x1080360

    #@18
    return v0

    #@19
    .line 2426
    :pswitch_4
    const v0, 0x108035e

    #@1c
    return v0

    #@1d
    .line 2428
    :pswitch_5
    const v0, 0x1080361

    #@20
    return v0

    #@21
    .line 2416
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
    .line 1945
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1948
    if-eqz p1, :cond_0

    #@8
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    #@b
    .line 1949
    :cond_0
    return v2

    #@c
    .line 1950
    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@e
    if-eqz v0, :cond_4

    #@10
    .line 1951
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@12
    if-nez v0, :cond_3

    #@14
    .line 1954
    if-eqz p1, :cond_2

    #@16
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    #@19
    .line 1961
    :cond_2
    :goto_0
    return v2

    #@1a
    .line 1959
    :cond_3
    if-eqz p1, :cond_2

    #@1c
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    #@1f
    goto :goto_0

    #@20
    .line 1963
    :cond_4
    return v1
.end method

.method private onToggleSoftInput(II)V
    .locals 1
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    #@0
    .prologue
    .line 2089
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2090
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    #@9
    .line 2087
    :goto_0
    return-void

    #@a
    .line 2092
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
    .line 1941
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    #@7
    .line 1940
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
    .line 898
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@4
    .line 899
    .local v4, "visible":Z
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    #@6
    .line 900
    .local v1, "showFlags":I
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@8
    .line 901
    .local v3, "showingInput":Z
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    #@a
    .line 902
    .local v0, "completions":[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    #@d
    .line 903
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@f
    .line 904
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@11
    .line 905
    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@13
    if-eqz v6, :cond_0

    #@15
    .line 906
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@18
    move-result-object v6

    #@19
    .line 907
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    #@1c
    move-result-object v7

    #@1d
    .line 906
    invoke-virtual {p0, v6, v7, v8}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    #@20
    .line 909
    :cond_0
    if-eqz v4, :cond_3

    #@22
    .line 910
    if-eqz v3, :cond_5

    #@24
    .line 912
    invoke-direct {p0, v1, v8}, Landroid/inputmethodservice/InputMethodService;->dispatchOnShowInputRequested(IZ)Z

    #@27
    move-result v6

    #@28
    if-eqz v6, :cond_4

    #@2a
    .line 913
    invoke-virtual {p0, v8}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    #@2d
    .line 914
    if-eqz v0, :cond_1

    #@2f
    .line 915
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    #@31
    .line 916
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    #@34
    .line 930
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    #@37
    move-result v2

    #@38
    .line 931
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
    .line 932
    iget v8, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    #@43
    .line 931
    invoke-virtual {v6, v7, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    #@46
    .line 897
    .end local v2    # "showing":Z
    :cond_3
    return-void

    #@47
    .line 919
    :cond_4
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    #@4a
    goto :goto_0

    #@4b
    .line 921
    :cond_5
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@4d
    if-nez v6, :cond_6

    #@4f
    .line 924
    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    #@52
    goto :goto_0

    #@53
    .line 927
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
    .line 1763
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@5
    if-eqz v0, :cond_2

    #@7
    .line 1765
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    #@a
    .line 1770
    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@c
    .line 1771
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@e
    .line 1772
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1774
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    #@15
    .line 1776
    :cond_1
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@17
    .line 1777
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@19
    .line 1778
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    #@1b
    .line 1762
    return-void

    #@1c
    .line 1766
    :cond_2
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 1768
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
    .line 2119
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    #@5
    move-result-object v1

    #@6
    .line 2120
    .local v1, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v1, :cond_3

    #@8
    .line 2124
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    #@b
    move-result-object v3

    #@c
    .line 2125
    .local v3, "movement":Landroid/text/method/MovementMethod;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getLayout()Landroid/text/Layout;

    #@f
    move-result-object v2

    #@10
    .line 2126
    .local v2, "layout":Landroid/text/Layout;
    if-eqz v3, :cond_2

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 2129
    const/4 v5, -0x1

    #@15
    if-ne p3, v5, :cond_0

    #@17
    .line 2130
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
    .line 2131
    invoke-virtual {p0, p1, v6}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    #@24
    .line 2132
    return v6

    #@25
    .line 2134
    :cond_0
    const/4 v5, -0x2

    #@26
    if-ne p3, v5, :cond_1

    #@28
    .line 2135
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
    .line 2136
    return v6

    #@33
    .line 2139
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
    .line 2140
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    #@40
    .line 2157
    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_0

    #@43
    .line 2166
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "movement":Landroid/text/method/MovementMethod;
    :cond_3
    return v7

    #@44
    .line 2142
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "movement":Landroid/text/method/MovementMethod;
    :cond_4
    invoke-static {p2, v7}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@47
    move-result-object v0

    #@48
    .line 2143
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
    .line 2144
    invoke-static {p2, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@55
    move-result-object v4

    #@56
    .line 2145
    .local v4, "up":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@59
    move-result-object v5

    #@5a
    invoke-interface {v3, v1, v5, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@5d
    .line 2146
    :goto_1
    add-int/lit8 p3, p3, -0x1

    #@5f
    if-lez p3, :cond_5

    #@61
    .line 2147
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@64
    move-result-object v5

    #@65
    invoke-interface {v3, v1, v5, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@68
    .line 2148
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@6b
    move-result-object v5

    #@6c
    invoke-interface {v3, v1, v5, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@6f
    goto :goto_1

    #@70
    .line 2150
    :cond_5
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    #@73
    goto :goto_0

    #@74
    .line 2162
    .end local v0    # "down":Landroid/view/KeyEvent;
    .end local v4    # "up":Landroid/view/KeyEvent;
    :pswitch_0
    return v6

    #@75
    .line 2157
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
    .line 1782
    if-nez p3, :cond_0

    #@3
    .line 1783
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    #@6
    .line 1785
    :cond_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@8
    .line 1786
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@a
    .line 1787
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@c
    .line 1788
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    #@f
    .line 1790
    invoke-virtual {p0, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    #@12
    .line 1791
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1792
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 1794
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@1c
    .line 1795
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@1e
    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    #@21
    .line 1796
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    #@24
    .line 1781
    :cond_1
    :goto_0
    return-void

    #@25
    .line 1797
    :cond_2
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@27
    if-nez v0, :cond_1

    #@29
    .line 1799
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@2b
    .line 1800
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
    .line 2630
    new-instance v0, Landroid/util/PrintWriterPrinter;

    #@2
    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@5
    .line 2631
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
    .line 2632
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
    .line 2633
    const-string/jumbo v2, " mWindowAdded="

    #@38
    .line 2632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 2633
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    #@3e
    .line 2632
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
    .line 2634
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
    .line 2635
    const-string/jumbo v2, " mWindowWasVisible="

    #@5e
    .line 2634
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    .line 2635
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    #@64
    .line 2634
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    .line 2636
    const-string/jumbo v2, " mInShowWindow="

    #@6b
    .line 2634
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 2636
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    #@71
    .line 2634
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
    .line 2637
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
    .line 2638
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
    .line 2639
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
    .line 2640
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
    .line 2641
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
    .line 2642
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
    .line 2643
    const-string/jumbo v2, " mInputViewStarted="

    #@114
    .line 2642
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v1

    #@118
    .line 2643
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@11a
    .line 2642
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v1

    #@11e
    .line 2644
    const-string/jumbo v2, " mCandidatesViewStarted="

    #@121
    .line 2642
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v1

    #@125
    .line 2644
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@127
    .line 2642
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
    .line 2646
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@134
    if-eqz v1, :cond_0

    #@136
    .line 2647
    const-string/jumbo v1, "  mInputEditorInfo:"

    #@139
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@13c
    .line 2648
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@13e
    const-string/jumbo v2, "    "

    #@141
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@144
    .line 2653
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
    .line 2654
    const-string/jumbo v2, " mLastShowInputRequested="

    #@159
    .line 2653
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v1

    #@15d
    .line 2654
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    #@15f
    .line 2653
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@162
    move-result-object v1

    #@163
    .line 2655
    const-string/jumbo v2, " mShowInputFlags=0x"

    #@166
    .line 2653
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v1

    #@16a
    .line 2655
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    #@16c
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@16f
    move-result-object v2

    #@170
    .line 2653
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
    .line 2656
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
    .line 2657
    const-string/jumbo v2, " mFullscreenApplied="

    #@190
    .line 2656
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v1

    #@194
    .line 2657
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    #@196
    .line 2656
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@199
    move-result-object v1

    #@19a
    .line 2658
    const-string/jumbo v2, " mIsFullscreen="

    #@19d
    .line 2656
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v1

    #@1a1
    .line 2658
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    #@1a3
    .line 2656
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v1

    #@1a7
    .line 2659
    const-string/jumbo v2, " mExtractViewHidden="

    #@1aa
    .line 2656
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v1

    #@1ae
    .line 2659
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    #@1b0
    .line 2656
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
    .line 2661
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@1bd
    if-eqz v1, :cond_1

    #@1bf
    .line 2662
    const-string/jumbo v1, "  mExtractedText:"

    #@1c2
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1c5
    .line 2663
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
    .line 2664
    const-string/jumbo v2, " startOffset="

    #@1e7
    .line 2663
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v1

    #@1eb
    .line 2664
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@1ed
    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    #@1ef
    .line 2663
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
    .line 2665
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
    .line 2666
    const-string/jumbo v2, " selectionEnd="

    #@211
    .line 2665
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@214
    move-result-object v1

    #@215
    .line 2666
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@217
    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    #@219
    .line 2665
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21c
    move-result-object v1

    #@21d
    .line 2667
    const-string/jumbo v2, " flags=0x"

    #@220
    .line 2665
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@223
    move-result-object v1

    #@224
    .line 2667
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@226
    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    #@228
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@22b
    move-result-object v2

    #@22c
    .line 2665
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
    .line 2671
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
    .line 2672
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
    .line 2673
    const-string/jumbo v2, " mStatusIcon="

    #@265
    .line 2672
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v1

    #@269
    .line 2673
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    #@26b
    .line 2672
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
    .line 2674
    const-string/jumbo v1, "Last computed insets:"

    #@279
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@27c
    .line 2675
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
    .line 2676
    const-string/jumbo v2, " visibleTopInsets="

    #@293
    .line 2675
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@296
    move-result-object v1

    #@297
    .line 2676
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@299
    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    #@29b
    .line 2675
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29e
    move-result-object v1

    #@29f
    .line 2677
    const-string/jumbo v2, " touchableInsets="

    #@2a2
    .line 2675
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a5
    move-result-object v1

    #@2a6
    .line 2677
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@2a8
    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    #@2aa
    .line 2675
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2ad
    move-result-object v1

    #@2ae
    .line 2678
    const-string/jumbo v2, " touchableRegion="

    #@2b1
    .line 2675
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b4
    move-result-object v1

    #@2b5
    .line 2678
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@2b7
    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    #@2b9
    .line 2675
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
    .line 2679
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
    .line 2680
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
    .line 2629
    return-void

    #@2f7
    .line 2650
    :cond_0
    const-string/jumbo v1, "  mInputEditorInfo: null"

    #@2fa
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2fd
    goto/16 :goto_0

    #@2ff
    .line 2669
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
    .line 767
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 768
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Must be called before onCreate()"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 770
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 771
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    #@16
    .line 772
    return v1

    #@17
    .line 774
    :cond_1
    const/4 v0, 0x0

    #@18
    return v0
.end method

.method public final exposeContent(Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "inputConnection"    # Landroid/view/inputmethod/InputConnection;

    #@0
    .prologue
    .line 2616
    if-nez p2, :cond_0

    #@2
    .line 2617
    return-void

    #@3
    .line 2619
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@6
    move-result-object v0

    #@7
    if-eq v0, p2, :cond_1

    #@9
    .line 2620
    return-void

    #@a
    .line 2622
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@c
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@e
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->exposeContent(Landroid/os/IBinder;Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/EditorInfo;)V

    #@15
    .line 2615
    return-void
.end method

.method public getBackDisposition()I
    .locals 1

    #@0
    .prologue
    .line 967
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    #@2
    return v0
.end method

.method public getCandidatesHiddenVisibility()I
    .locals 1

    #@0
    .prologue
    .line 1316
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
    .line 996
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    #@2
    return-object v0
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    #@0
    .prologue
    .line 1004
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@2
    .line 1005
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@4
    .line 1006
    return-object v0

    #@5
    .line 1008
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    #@7
    return-object v1
.end method

.method public getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    #@0
    .prologue
    .line 1016
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@2
    return-object v0
.end method

.method public getCurrentInputStarted()Z
    .locals 1

    #@0
    .prologue
    .line 1012
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    #@2
    return v0
.end method

.method public getInputMethodWindowRecommendedHeight()I
    .locals 1

    #@0
    .prologue
    .line 2599
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
    .line 955
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    #@2
    return-object v0
.end method

.method public getMaxWidth()I
    .locals 2

    #@0
    .prologue
    .line 987
    const-string/jumbo v1, "window"

    #@3
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/view/WindowManager;

    #@9
    .line 988
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
    .line 2386
    and-int/lit16 v0, p1, 0xff

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 2402
    const v0, 0x1040463

    #@8
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 2388
    :pswitch_0
    const/4 v0, 0x0

    #@e
    return-object v0

    #@f
    .line 2390
    :pswitch_1
    const v0, 0x104045d

    #@12
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 2392
    :pswitch_2
    const v0, 0x104045e

    #@1a
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 2394
    :pswitch_3
    const v0, 0x104045f

    #@22
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@25
    move-result-object v0

    #@26
    return-object v0

    #@27
    .line 2396
    :pswitch_4
    const v0, 0x1040460

    #@2a
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@2d
    move-result-object v0

    #@2e
    return-object v0

    #@2f
    .line 2398
    :pswitch_5
    const v0, 0x1040461

    #@32
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    .line 2400
    :pswitch_6
    const v0, 0x1040462

    #@3a
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    #@3d
    move-result-object v0

    #@3e
    return-object v0

    #@3f
    .line 2386
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
    .line 959
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@2
    return-object v0
.end method

.method public hideStatusIcon()V
    .locals 2

    #@0
    .prologue
    .line 1325
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    #@3
    .line 1326
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@5
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@7
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideStatusIcon(Landroid/os/IBinder;)V

    #@a
    .line 1324
    return-void
.end method

.method public hideWindow()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1685
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishViews()V

    #@4
    .line 1686
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1687
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@a
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    #@d
    .line 1688
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@f
    .line 1689
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    #@12
    .line 1690
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    #@14
    .line 1692
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    #@17
    .line 1684
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
    .line 820
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    #@6
    .line 821
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    #@8
    .line 822
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@a
    .line 823
    iput v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    #@c
    .line 825
    sget-object v0, Landroid/R$styleable;->InputMethodService:[I

    #@e
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    #@14
    .line 826
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    #@16
    .line 827
    const v1, 0x109006d

    #@19
    .line 826
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@1f
    .line 828
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@21
    .line 829
    const/16 v1, 0x300

    #@23
    .line 828
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    #@26
    .line 830
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@28
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@2a
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    #@2d
    .line 831
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
    .line 832
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
    .line 833
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    #@46
    move-result-object v0

    #@47
    .line 834
    const-string/jumbo v1, "fancy_ime_animations"

    #@4a
    .line 833
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@4d
    move-result v0

    #@4e
    if-eqz v0, :cond_0

    #@50
    .line 835
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@52
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@55
    move-result-object v0

    #@56
    .line 836
    const v1, 0x10302ef

    #@59
    .line 835
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    #@5c
    .line 838
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@5e
    const v1, 0x1020387

    #@61
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@64
    move-result-object v0

    #@65
    check-cast v0, Landroid/view/ViewGroup;

    #@67
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@69
    .line 839
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    #@6b
    .line 840
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
    .line 841
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    #@7a
    .line 842
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@7c
    .line 843
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@7e
    .line 844
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@80
    .line 845
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    #@82
    .line 847
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
    .line 848
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
    .line 849
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    #@9e
    .line 850
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    #@a0
    .line 852
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    #@a2
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@a5
    .line 853
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    #@a8
    move-result v0

    #@a9
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@ab
    .line 854
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@ad
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@af
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@b2
    .line 855
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@b4
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@b7
    .line 819
    return-void
.end method

.method initialize()V
    .locals 1

    #@0
    .prologue
    .line 813
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 814
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    #@7
    .line 815
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    #@a
    .line 812
    :cond_0
    return-void
.end method

.method public isExtractViewShown()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1152
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
    .line 1102
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    #@2
    return v0
.end method

.method public isInputViewShown()Z
    .locals 1

    #@0
    .prologue
    .line 1251
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
    .line 1242
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
    .line 2081
    return-void
.end method

.method public onBindInput()V
    .locals 0

    #@0
    .prologue
    .line 1732
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 4
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1193
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    #@3
    .line 1194
    .local v1, "loc":[I
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@5
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_1

    #@b
    .line 1195
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@d
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    #@10
    .line 1200
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 1202
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
    .line 1203
    .local v0, "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@25
    move-result v2

    #@26
    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    #@28
    .line 1207
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
    .line 1208
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@32
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    #@35
    .line 1210
    :cond_0
    aget v2, v1, v3

    #@37
    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    #@39
    .line 1211
    const/4 v2, 0x2

    #@3a
    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    #@3c
    .line 1212
    iget-object v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    #@3e
    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    #@41
    .line 1192
    return-void

    #@42
    .line 1197
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
    .line 1198
    .restart local v0    # "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@51
    move-result v2

    #@52
    aput v2, v1, v3

    #@54
    goto :goto_0

    #@55
    .line 1205
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
    .line 893
    invoke-super {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 894
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->resetStateForNewConfiguration()V

    #@6
    .line 892
    return-void
.end method

.method public onConfigureWindow(Landroid/view/Window;ZZ)V
    .locals 5
    .param p1, "win"    # Landroid/view/Window;
    .param p2, "isFullscreen"    # Z
    .param p3, "isCandidatesOnly"    # Z

    #@0
    .prologue
    .line 1087
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
    .line 1088
    .local v0, "currentHeight":I
    if-eqz p2, :cond_1

    #@e
    const/4 v1, -0x1

    #@f
    .line 1089
    .local v1, "newHeight":I
    :goto_0
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    #@11
    if-eqz v2, :cond_0

    #@13
    if-eq v0, v1, :cond_0

    #@15
    .line 1090
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
    .line 1091
    const-string/jumbo v4, " -> "

    #@2b
    .line 1090
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
    .line 1093
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
    .line 1086
    return-void

    #@45
    .line 1088
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
    .line 778
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@7
    .line 779
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@a
    move-result-object v1

    #@b
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@d
    .line 780
    const v2, 0x1030054

    #@10
    .line 781
    const v3, 0x103007f

    #@13
    move v5, v4

    #@14
    .line 778
    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@1a
    .line 784
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@1c
    invoke-super {p0, v0}, Landroid/inputmethodservice/AbstractInputMethodService;->setTheme(I)V

    #@1f
    .line 785
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreate()V

    #@22
    .line 786
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
    .line 787
    invoke-static {p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->createAndRegister(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@33
    .line 790
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
    .line 792
    const-string/jumbo v0, "layout_inflater"

    #@41
    .line 791
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/view/LayoutInflater;

    #@47
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    #@49
    .line 793
    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    #@4b
    const-string/jumbo v2, "InputMethod"

    #@4e
    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@50
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    #@52
    .line 794
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
    .line 793
    invoke-direct/range {v0 .. v9}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    #@5c
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@5e
    .line 795
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    #@60
    if-eqz v0, :cond_0

    #@62
    .line 796
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
    .line 798
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    #@70
    .line 799
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
    .line 777
    return-void

    #@7c
    :cond_1
    move v0, v9

    #@7d
    .line 790
    goto :goto_0
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 1413
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreateExtractTextView()Landroid/view/View;
    .locals 3

    #@0
    .prologue
    .line 1398
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    #@2
    .line 1399
    const v1, 0x109006e

    #@5
    const/4 v2, 0x0

    #@6
    .line 1398
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
    .line 942
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
    .line 951
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
    .line 1428
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .param p1, "newSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 2575
    return-void
.end method

.method public onDestroy()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 859
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onDestroy()V

    #@4
    .line 860
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    #@6
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@9
    move-result-object v0

    #@a
    .line 861
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@c
    .line 860
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    #@f
    .line 862
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    #@12
    .line 863
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 867
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
    .line 868
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@22
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V

    #@25
    .line 870
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 871
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@2b
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->unregister()V

    #@2e
    .line 872
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@30
    .line 858
    :cond_1
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 1833
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1114
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@8
    move-result-object v0

    #@9
    .line 1115
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    #@b
    const/4 v2, 0x2

    #@c
    if-eq v1, v2, :cond_0

    #@e
    .line 1116
    return v3

    #@f
    .line 1118
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 1119
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
    .line 1120
    return v3

    #@1d
    .line 1122
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
    .line 1267
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@4
    if-nez v3, :cond_0

    #@6
    .line 1268
    const-string/jumbo v1, "InputMethodService"

    #@9
    const-string/jumbo v3, "onEvaluateInputViewShown: mSettingsObserver must not be null here."

    #@c
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1269
    return v2

    #@10
    .line 1271
    :cond_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@12
    invoke-static {v3}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-wrap0(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 1272
    return v1

    #@19
    .line 1274
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@20
    move-result-object v0

    #@21
    .line 1275
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    #@23
    if-eq v3, v1, :cond_2

    #@25
    .line 1276
    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@27
    const/4 v4, 0x2

    #@28
    if-ne v3, v4, :cond_3

    #@2a
    .line 1275
    :cond_2
    :goto_0
    return v1

    #@2b
    :cond_3
    move v1, v2

    #@2c
    .line 1276
    goto :goto_0
.end method

.method public onExtractTextContextMenuItem(I)Z
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 2367
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 2368
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@6
    .line 2369
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    #@9
    .line 2371
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
    .line 2350
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@3
    if-eqz v0, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 2351
    :cond_0
    return-void

    #@8
    .line 2353
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@a
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 2354
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    #@13
    .line 2349
    :cond_2
    return-void
.end method

.method public onExtractedDeleteText(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 2288
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 2289
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@6
    .line 2290
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@9
    .line 2291
    invoke-interface {v0, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    #@c
    .line 2292
    sub-int v1, p2, p1

    #@e
    const/4 v2, 0x0

    #@f
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    #@12
    .line 2287
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
    .line 2300
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 2301
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@6
    .line 2302
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    #@9
    .line 2303
    const/4 v1, 0x1

    #@a
    invoke-interface {v0, p3, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@d
    .line 2299
    :cond_0
    return-void
.end method

.method public onExtractedSelectionChanged(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 2278
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 2279
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@6
    .line 2280
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    #@9
    .line 2277
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
    .line 2311
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@4
    move-result-object v0

    #@5
    .line 2312
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    #@7
    .line 2313
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    return-void

    #@e
    .line 2314
    :cond_0
    invoke-interface {v0, v5}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    #@11
    move-result-object v1

    #@12
    .line 2315
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    #@14
    if-eqz v2, :cond_1

    #@16
    move-object v2, v1

    #@17
    .line 2316
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
    .line 2317
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    #@24
    .line 2318
    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@27
    .line 2310
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public onExtractedTextClicked()V
    .locals 1

    #@0
    .prologue
    .line 2331
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2332
    return-void

    #@5
    .line 2334
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@7
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 2335
    const/4 v0, 0x0

    #@e
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    #@11
    .line 2330
    :cond_1
    return-void
.end method

.method public onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    .line 2516
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2517
    const/4 v0, 0x2

    #@5
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    #@8
    .line 2515
    :cond_0
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    #@0
    .prologue
    .line 1505
    if-nez p1, :cond_0

    #@2
    .line 1506
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@5
    move-result-object v0

    #@6
    .line 1507
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@8
    .line 1508
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@b
    .line 1504
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public onFinishInput()V
    .locals 1

    #@0
    .prologue
    .line 1818
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 1819
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@6
    .line 1820
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@9
    .line 1817
    :cond_0
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    #@0
    .prologue
    .line 1460
    if-nez p1, :cond_0

    #@2
    .line 1461
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@5
    move-result-object v0

    #@6
    .line 1462
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@8
    .line 1463
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@b
    .line 1459
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2078
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onInitializeInterface()V
    .locals 0

    #@0
    .prologue
    .line 808
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
    .line 1991
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x4

    #@7
    if-ne v1, v2, :cond_2

    #@9
    .line 1992
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    #@c
    move-result-object v0

    #@d
    .line 1993
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_0

    #@f
    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 1994
    return v4

    #@16
    .line 1996
    :cond_0
    invoke-direct {p0, v3}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 1997
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    #@1f
    .line 1998
    return v4

    #@20
    .line 2000
    :cond_1
    return v3

    #@21
    .line 2002
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
    .line 2011
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
    .line 2027
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
    .line 2043
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@4
    move-result v1

    #@5
    const/4 v2, 0x4

    #@6
    if-ne v1, v2, :cond_1

    #@8
    .line 2044
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    #@b
    move-result-object v0

    #@c
    .line 2045
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 2046
    return v3

    #@15
    .line 2048
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
    .line 2052
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
    .line 2049
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
    .line 1529
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1530
    return v1

    #@9
    .line 1532
    :cond_0
    and-int/lit8 v0, p1, 0x1

    #@b
    if-nez v0, :cond_2

    #@d
    .line 1533
    if-nez p2, :cond_1

    #@f
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1539
    return v1

    #@16
    .line 1541
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    #@18
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-wrap0(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 1542
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
    .line 1546
    return v1

    #@2b
    .line 1549
    :cond_2
    return v2
.end method

.method public onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    #@0
    .prologue
    .line 1487
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    #@0
    .prologue
    .line 1758
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    #@0
    .prologue
    .line 1442
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2065
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onUnbindInput()V
    .locals 0

    #@0
    .prologue
    .line 1742
    return-void
.end method

.method public onUpdateCursor(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "newCursor"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1906
    return-void
.end method

.method public onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    #@0
    .prologue
    .line 1917
    return-void
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    #@0
    .prologue
    .line 1844
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1845
    return-void

    #@5
    .line 1847
    :cond_0
    if-eqz p2, :cond_1

    #@7
    .line 1848
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1849
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@d
    .line 1850
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@f
    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    #@12
    .line 1843
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
    .line 2470
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 2471
    return-void

    #@a
    .line 2474
    :cond_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@c
    if-nez v3, :cond_1

    #@e
    .line 2475
    return-void

    #@f
    .line 2477
    :cond_1
    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@11
    if-nez v3, :cond_3

    #@13
    .line 2478
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@15
    and-int/lit16 v3, v3, 0xff

    #@17
    if-eq v3, v1, :cond_5

    #@19
    .line 2479
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@1b
    const/high16 v4, 0x20000000

    #@1d
    and-int/2addr v3, v4

    #@1e
    if-nez v3, :cond_5

    #@20
    .line 2480
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@22
    if-eqz v3, :cond_4

    #@24
    :goto_0
    move v0, v1

    #@25
    .line 2481
    .local v0, "hasAction":Z
    :goto_1
    if-eqz v0, :cond_9

    #@27
    .line 2482
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@29
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@2c
    .line 2483
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 2484
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@32
    instance-of v1, v1, Landroid/widget/ImageButton;

    #@34
    if-eqz v1, :cond_7

    #@36
    .line 2485
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@38
    check-cast v1, Landroid/widget/ImageButton;

    #@3a
    .line 2486
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@3c
    invoke-direct {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getIconForImeAction(I)I

    #@3f
    move-result v2

    #@40
    .line 2485
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    #@43
    .line 2487
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@45
    if-eqz v1, :cond_6

    #@47
    .line 2488
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@49
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@4b
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    #@4e
    .line 2499
    :goto_2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@50
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    #@52
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@55
    .line 2469
    :cond_2
    :goto_3
    return-void

    #@56
    .end local v0    # "hasAction":Z
    :cond_3
    move v0, v1

    #@57
    .line 2477
    goto :goto_1

    #@58
    :cond_4
    move v1, v2

    #@59
    .line 2480
    goto :goto_0

    #@5a
    :cond_5
    move v0, v2

    #@5b
    .line 2477
    goto :goto_1

    #@5c
    .line 2490
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
    .line 2493
    :cond_7
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@6a
    if-eqz v1, :cond_8

    #@6c
    .line 2494
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
    .line 2496
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
    .line 2502
    :cond_9
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@86
    const/16 v2, 0x8

    #@88
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@8b
    .line 2503
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@8d
    if-eqz v1, :cond_2

    #@8f
    .line 2504
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
    .line 2444
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2445
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@7
    const/high16 v1, 0x10000000

    #@9
    and-int/2addr v0, v1

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 2447
    :cond_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    #@f
    .line 2448
    return-void

    #@10
    .line 2451
    :cond_1
    const/4 v0, 0x1

    #@11
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    #@14
    .line 2443
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
    .line 1872
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@2
    .line 1873
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
    .line 1874
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@10
    iget v2, v3, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    #@12
    .line 1875
    .local v2, "off":I
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    #@15
    .line 1876
    sub-int/2addr p3, v2

    #@16
    .line 1877
    sub-int/2addr p4, v2

    #@17
    .line 1878
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    #@1a
    move-result-object v3

    #@1b
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    #@1e
    move-result v1

    #@1f
    .line 1879
    .local v1, "len":I
    if-gez p3, :cond_3

    #@21
    const/4 p3, 0x0

    #@22
    .line 1881
    :cond_0
    :goto_0
    if-gez p4, :cond_4

    #@24
    const/4 p4, 0x0

    #@25
    .line 1883
    :cond_1
    :goto_1
    invoke-virtual {v0, p3, p4}, Landroid/inputmethodservice/ExtractEditText;->setSelection(II)V

    #@28
    .line 1884
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    #@2b
    .line 1871
    .end local v1    # "len":I
    .end local v2    # "off":I
    :cond_2
    return-void

    #@2c
    .line 1880
    .restart local v1    # "len":I
    .restart local v2    # "off":I
    :cond_3
    if-le p3, v1, :cond_0

    #@2e
    move p3, v1

    #@2f
    goto :goto_0

    #@30
    .line 1882
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
    .line 1895
    return-void
.end method

.method public onWindowHidden()V
    .locals 0

    #@0
    .prologue
    .line 1708
    return-void
.end method

.method public onWindowShown()V
    .locals 0

    #@0
    .prologue
    .line 1700
    return-void
.end method

.method reportExtractedMovement(II)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 2100
    const/4 v0, 0x0

    #@1
    .local v0, "dx":I
    const/4 v1, 0x0

    #@2
    .line 2101
    .local v1, "dy":I
    packed-switch p1, :pswitch_data_0

    #@5
    .line 2115
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    #@8
    .line 2099
    return-void

    #@9
    .line 2103
    :pswitch_0
    neg-int v0, p2

    #@a
    .line 2104
    goto :goto_0

    #@b
    .line 2106
    :pswitch_1
    move v0, p2

    #@c
    .line 2107
    goto :goto_0

    #@d
    .line 2109
    :pswitch_2
    neg-int v1, p2

    #@e
    .line 2110
    goto :goto_0

    #@f
    .line 2112
    :pswitch_3
    move v1, p2

    #@10
    .line 2113
    goto :goto_0

    #@11
    .line 2101
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
    .line 1930
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    #@7
    .line 1929
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
    .line 2217
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    #@5
    move-result-object v0

    #@6
    .line 2218
    .local v0, "ei":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_2

    #@8
    .line 2219
    if-eqz p1, :cond_0

    #@a
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@c
    .line 2220
    const/high16 v3, 0x40000000    # 2.0f

    #@e
    .line 2219
    and-int/2addr v2, v3

    #@f
    if-nez v2, :cond_2

    #@11
    .line 2221
    :cond_0
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@13
    and-int/lit16 v2, v2, 0xff

    #@15
    if-eq v2, v5, :cond_2

    #@17
    .line 2226
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@1a
    move-result-object v1

    #@1b
    .line 2227
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    #@1d
    .line 2228
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@1f
    and-int/lit16 v2, v2, 0xff

    #@21
    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    #@24
    .line 2230
    :cond_1
    return v5

    #@25
    .line 2233
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    return v4
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 13
    .param p1, "keyEventCode"    # I

    #@0
    .prologue
    .line 2189
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    .line 2190
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 2191
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a
    move-result-wide v2

    #@b
    .line 2192
    .local v2, "eventTime":J
    new-instance v1, Landroid/view/KeyEvent;

    #@d
    .line 2193
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
    .line 2194
    const/4 v12, 0x6

    #@13
    move-wide v4, v2

    #@14
    move v7, p1

    #@15
    .line 2192
    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    #@18
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    #@1b
    .line 2195
    new-instance v1, Landroid/view/KeyEvent;

    #@1d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@20
    move-result-wide v4

    #@21
    .line 2196
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
    .line 2197
    const/4 v12, 0x6

    #@27
    move v7, p1

    #@28
    .line 2195
    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    #@2b
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    #@2e
    .line 2188
    return-void
.end method

.method public sendKeyChar(C)V
    .locals 3
    .param p1, "charCode"    # C

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2251
    packed-switch p1, :pswitch_data_0

    #@4
    .line 2259
    const/16 v1, 0x30

    #@6
    if-lt p1, v1, :cond_1

    #@8
    const/16 v1, 0x39

    #@a
    if-gt p1, v1, :cond_1

    #@c
    .line 2260
    add-int/lit8 v1, p1, -0x30

    #@e
    add-int/lit8 v1, v1, 0x7

    #@10
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    #@13
    .line 2250
    :cond_0
    :goto_0
    return-void

    #@14
    .line 2253
    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 2254
    const/16 v1, 0x42

    #@1c
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    #@1f
    goto :goto_0

    #@20
    .line 2262
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@23
    move-result-object v0

    #@24
    .line 2263
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@26
    .line 2264
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@2d
    goto :goto_0

    #@2e
    .line 2251
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
    .line 963
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    #@2
    .line 962
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1371
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@5
    .line 1372
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@7
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@9
    .line 1373
    const/4 v2, -0x1

    #@a
    .line 1374
    const/4 v3, -0x2

    #@b
    .line 1372
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@e
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    .line 1370
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 1284
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    #@3
    .line 1285
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@5
    if-nez v0, :cond_0

    #@7
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@9
    if-eq v0, p1, :cond_0

    #@b
    .line 1289
    if-eqz p1, :cond_1

    #@d
    .line 1290
    const/4 v0, 0x0

    #@e
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    #@11
    .line 1283
    :cond_0
    :goto_0
    return-void

    #@12
    .line 1292
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
    .line 1341
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    #@4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@7
    .line 1342
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    #@9
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@b
    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@e
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    .line 1345
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    #@13
    .line 1346
    if-eqz p1, :cond_1

    #@15
    .line 1348
    const v0, 0x1020025

    #@18
    .line 1347
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/inputmethodservice/ExtractEditText;

    #@1e
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@20
    .line 1349
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@22
    invoke-virtual {v0, p0}, Landroid/inputmethodservice/ExtractEditText;->setIME(Landroid/inputmethodservice/InputMethodService;)V

    #@25
    .line 1351
    const v0, 0x1020389

    #@28
    .line 1350
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@2e
    .line 1352
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@30
    if-eqz v0, :cond_0

    #@32
    .line 1354
    const v0, 0x1020388

    #@35
    .line 1353
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/view/ViewGroup;

    #@3b
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@3d
    .line 1356
    :cond_0
    const/4 v0, 0x0

    #@3e
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    #@41
    .line 1340
    :goto_0
    return-void

    #@42
    .line 1358
    :cond_1
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@44
    .line 1359
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    #@46
    .line 1360
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    #@48
    goto :goto_0
.end method

.method public setExtractViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 1135
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 1136
    if-eqz p1, :cond_1

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    #@9
    .line 1137
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    #@c
    .line 1134
    :cond_0
    return-void

    #@d
    .line 1136
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
    .line 1384
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@5
    .line 1385
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@7
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@9
    .line 1386
    const/4 v2, -0x1

    #@a
    .line 1387
    const/4 v3, -0x2

    #@b
    .line 1385
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@e
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    .line 1388
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    #@13
    .line 1383
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "theme"    # I

    #@0
    .prologue
    .line 748
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 749
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Must be called before onCreate()"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 751
    :cond_0
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    #@f
    .line 747
    return-void
.end method

.method public showStatusIcon(I)V
    .locals 3
    .param p1, "iconResId"    # I

    #@0
    .prologue
    .line 1320
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    #@2
    .line 1321
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
    .line 1319
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
    .line 1584
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1585
    const-string/jumbo v1, "InputMethodService"

    #@9
    const-string/jumbo v2, "Re-entrance in to showWindow"

    #@c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1586
    return-void

    #@10
    .line 1590
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@12
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    #@14
    .line 1591
    const/4 v1, 0x1

    #@15
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    #@17
    .line 1592
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindowInner(Z)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 1606
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    #@1c
    .line 1607
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    #@1e
    .line 1575
    return-void

    #@1f
    .line 1593
    :catch_0
    move-exception v0

    #@20
    .line 1597
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const/4 v1, 0x0

    #@21
    :try_start_1
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@23
    .line 1598
    const/4 v1, 0x0

    #@24
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    #@26
    .line 1603
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 1604
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v1

    #@28
    .line 1606
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    #@2a
    .line 1607
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    #@2c
    .line 1604
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
    .line 1612
    const/4 v0, 0x0

    #@4
    .line 1614
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
    .line 1615
    .local v2, "previousImeWindowStatus":I
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@14
    .line 1616
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
    .line 1617
    const/4 v0, 0x1

    #@1f
    .line 1618
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@21
    .line 1622
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    #@24
    .line 1623
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    #@27
    .line 1624
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateInputViewShown()V

    #@2a
    .line 1626
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    #@2c
    if-eqz v4, :cond_8

    #@2e
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    #@30
    if-eqz v4, :cond_8

    #@32
    .line 1637
    :cond_1
    :goto_2
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@34
    if-eqz v4, :cond_9

    #@36
    .line 1638
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@38
    if-nez v4, :cond_2

    #@3a
    .line 1640
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    #@3c
    .line 1641
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@3e
    invoke-virtual {p0, v4, v6}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    #@41
    .line 1649
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    #@43
    .line 1650
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    #@46
    .line 1653
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
    .line 1654
    .local v1, "nextImeWindowStatus":I
    if-eq v2, v1, :cond_4

    #@50
    .line 1655
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@52
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@54
    iget v7, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    #@56
    invoke-virtual {v4, v5, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    #@59
    .line 1657
    :cond_4
    and-int/lit8 v4, v2, 0x1

    #@5b
    if-nez v4, :cond_5

    #@5d
    .line 1659
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    #@60
    .line 1660
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@62
    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    #@65
    .line 1663
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    #@67
    .line 1611
    :cond_5
    return-void

    #@68
    .end local v1    # "nextImeWindowStatus":I
    .end local v2    # "previousImeWindowStatus":I
    :cond_6
    move v4, v6

    #@69
    .line 1614
    goto :goto_0

    #@6a
    :cond_7
    move v7, v6

    #@6b
    goto :goto_1

    #@6c
    .line 1627
    .restart local v2    # "previousImeWindowStatus":I
    :cond_8
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    #@6e
    .line 1628
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    #@70
    .line 1629
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    #@73
    .line 1631
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    #@76
    move-result-object v3

    #@77
    .line 1633
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1

    #@79
    .line 1634
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->setCandidatesView(Landroid/view/View;)V

    #@7c
    goto :goto_2

    #@7d
    .line 1643
    .end local v3    # "v":Landroid/view/View;
    :cond_9
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@7f
    if-nez v4, :cond_2

    #@81
    .line 1645
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    #@83
    .line 1646
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    #@85
    invoke-virtual {p0, v4, v6}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    #@88
    goto :goto_3

    #@89
    :cond_a
    move v8, v6

    #@8a
    .line 1653
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
    .line 2522
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    #@4
    .line 2523
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_3

    #@6
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputStarted()Z

    #@9
    move-result v6

    #@a
    if-eqz v6, :cond_3

    #@c
    .line 2524
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    #@f
    move-result v6

    #@10
    .line 2523
    if-eqz v6, :cond_3

    #@12
    .line 2525
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    #@14
    add-int/lit8 v6, v6, 0x1

    #@16
    iput v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    #@18
    .line 2526
    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    #@1a
    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    #@1d
    .line 2527
    .local v4, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    #@1f
    iput v6, v4, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    #@21
    .line 2528
    iput v8, v4, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    #@23
    .line 2529
    const/16 v6, 0xa

    #@25
    iput v6, v4, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    #@27
    .line 2530
    const/16 v6, 0x2710

    #@29
    iput v6, v4, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    #@2b
    .line 2531
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@2e
    move-result-object v2

    #@2f
    .line 2532
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_4

    #@31
    :goto_0
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@33
    .line 2534
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@35
    if-eqz v5, :cond_0

    #@37
    if-nez v2, :cond_1

    #@39
    .line 2535
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
    .line 2536
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@4a
    .line 2535
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    .line 2536
    const-string/jumbo v7, ", input connection = "

    #@51
    .line 2535
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
    .line 2538
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    #@63
    move-result-object v1

    #@64
    .line 2541
    .local v1, "ei":Landroid/view/inputmethod/EditorInfo;
    :try_start_0
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    #@67
    .line 2542
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V

    #@6a
    .line 2543
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V

    #@6d
    .line 2544
    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@6f
    .line 2545
    .local v3, "inputType":I
    and-int/lit8 v5, v3, 0xf

    #@71
    if-ne v5, v8, :cond_2

    #@73
    .line 2547
    const/high16 v5, 0x40000

    #@75
    and-int/2addr v5, v3

    #@76
    if-eqz v5, :cond_2

    #@78
    .line 2548
    const/high16 v5, 0x20000

    #@7a
    or-int/2addr v3, v5

    #@7b
    .line 2551
    :cond_2
    invoke-virtual {v0, v3}, Landroid/inputmethodservice/ExtractEditText;->setInputType(I)V

    #@7e
    .line 2552
    iget-object v5, v1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    #@80
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setHint(Ljava/lang/CharSequence;)V

    #@83
    .line 2553
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@85
    if-eqz v5, :cond_5

    #@87
    .line 2554
    const/4 v5, 0x1

    #@88
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    #@8b
    .line 2555
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@8d
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@90
    .line 2561
    :goto_1
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    #@93
    .line 2564
    if-eqz p1, :cond_3

    #@95
    .line 2565
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V

    #@98
    .line 2521
    .end local v1    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "inputType":I
    .end local v4    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_3
    return-void

    #@99
    .line 2533
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v4    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_4
    invoke-interface {v2, v4, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    #@9c
    move-result-object v5

    #@9d
    goto :goto_0

    #@9e
    .line 2557
    .restart local v1    # "ei":Landroid/view/inputmethod/EditorInfo;
    .restart local v3    # "inputType":I
    :cond_5
    const/4 v5, 0x0

    #@9f
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    #@a2
    .line 2558
    const-string/jumbo v5, ""

    #@a5
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a8
    goto :goto_1

    #@a9
    .line 2560
    .end local v3    # "inputType":I
    :catchall_0
    move-exception v5

    #@aa
    .line 2561
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    #@ad
    .line 2560
    throw v5
.end method

.method public switchInputMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1337
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    #@7
    .line 1336
    return-void
.end method

.method updateCandidatesVisibility(Z)V
    .locals 2
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 1298
    if-eqz p1, :cond_1

    #@2
    const/4 v0, 0x0

    #@3
    .line 1299
    .local v0, "vis":I
    :goto_0
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@5
    if-eq v1, v0, :cond_0

    #@7
    .line 1300
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    #@9
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@c
    .line 1301
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    #@e
    .line 1297
    :cond_0
    return-void

    #@f
    .line 1298
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
    .line 1157
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 1158
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    #@a
    if-eqz v2, :cond_1

    #@c
    const/4 v1, 0x4

    #@d
    .line 1160
    .local v1, "vis":I
    :goto_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    #@f
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@12
    .line 1165
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
    .line 1166
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
    .line 1167
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    #@28
    if-nez v1, :cond_4

    #@2a
    :goto_3
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2d
    move-result v0

    #@2e
    .line 1171
    .local v0, "animRes":I
    if-eqz v0, :cond_0

    #@30
    .line 1172
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@32
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    #@39
    .line 1176
    .end local v0    # "animRes":I
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@3b
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@3e
    .line 1155
    return-void

    #@3f
    .line 1158
    .end local v1    # "vis":I
    :cond_1
    const/4 v1, 0x0

    #@40
    .restart local v1    # "vis":I
    goto :goto_0

    #@41
    .line 1162
    .end local v1    # "vis":I
    :cond_2
    const/4 v1, 0x0

    #@42
    .line 1163
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
    .line 1165
    goto :goto_2

    #@4c
    .line 1169
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
    .line 1028
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@5
    if-eqz v5, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    #@a
    move-result v2

    #@b
    .line 1029
    :goto_0
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    #@d
    iget-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@f
    if-eq v5, v8, :cond_2

    #@11
    const/4 v0, 0x1

    #@12
    .line 1030
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
    .line 1063
    :goto_2
    if-eqz v0, :cond_0

    #@1c
    .line 1064
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
    .line 1065
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@2c
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    #@2e
    .line 1027
    :cond_0
    return-void

    #@2f
    .line 1028
    .end local v0    # "changed":Z
    :cond_1
    const/4 v2, 0x0

    #@30
    .local v2, "isFullscreen":Z
    goto :goto_0

    #@31
    .line 1029
    .end local v2    # "isFullscreen":Z
    :cond_2
    const/4 v0, 0x0

    #@32
    .restart local v0    # "changed":Z
    goto :goto_1

    #@33
    .line 1031
    :cond_3
    const/4 v0, 0x1

    #@34
    .line 1032
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    #@36
    .line 1033
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@39
    move-result-object v1

    #@3a
    .line 1034
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_4

    #@3c
    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    #@3f
    .line 1035
    :cond_4
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    #@41
    .line 1036
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    #@44
    .line 1038
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@46
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@49
    move-result-object v3

    #@4a
    .line 1037
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    #@4c
    .line 1039
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_7

    #@4e
    .line 1040
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
    .line 1042
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@5b
    .line 1043
    const/high16 v5, 0x3f800000    # 1.0f

    #@5d
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@5f
    .line 1049
    :goto_4
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@61
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@64
    move-result-object v5

    #@65
    check-cast v5, Landroid/view/ViewGroup;

    #@67
    .line 1050
    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@69
    .line 1049
    invoke-virtual {v5, v8, v3}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@6c
    .line 1051
    if-eqz v2, :cond_6

    #@6e
    .line 1052
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    #@70
    if-nez v5, :cond_5

    #@72
    .line 1053
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    #@75
    move-result-object v4

    #@76
    .line 1054
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_5

    #@78
    .line 1055
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->setExtractView(Landroid/view/View;)V

    #@7b
    .line 1058
    .end local v4    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    #@7e
    .line 1060
    :cond_6
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    #@81
    goto :goto_2

    #@82
    .line 1045
    :cond_7
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    #@84
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@87
    .line 1046
    const/4 v5, -0x2

    #@88
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@8a
    .line 1047
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
    .line 1064
    goto :goto_3
.end method

.method public updateInputViewShown()V
    .locals 4

    #@0
    .prologue
    .line 1224
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@2
    if-eqz v2, :cond_1

    #@4
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    #@7
    move-result v0

    #@8
    .line 1225
    :goto_0
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    #@a
    if-eq v2, v0, :cond_0

    #@c
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1226
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    #@12
    .line 1227
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    #@14
    if-eqz v0, :cond_2

    #@16
    const/4 v2, 0x0

    #@17
    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@1a
    .line 1228
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 1229
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    #@21
    .line 1230
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    #@24
    move-result-object v1

    #@25
    .line 1231
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    #@27
    .line 1232
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    #@2a
    .line 1223
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void

    #@2b
    .line 1224
    :cond_1
    const/4 v0, 0x0

    #@2c
    .local v0, "isShown":Z
    goto :goto_0

    #@2d
    .line 1227
    .end local v0    # "isShown":Z
    :cond_2
    const/16 v2, 0x8

    #@2f
    goto :goto_1
.end method
