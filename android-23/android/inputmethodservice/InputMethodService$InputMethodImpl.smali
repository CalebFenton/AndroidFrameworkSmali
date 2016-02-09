.class public Landroid/inputmethodservice/InputMethodService$InputMethodImpl;
.super Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputMethodImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;

    #@0
    .prologue
    .line 361
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@2
    invoke-direct {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;)V

    #@5
    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@2
    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 367
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@8
    iput-object p1, v0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@a
    .line 368
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@c
    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@e
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/SoftInputWindow;->setToken(Landroid/os/IBinder;)V

    #@11
    .line 365
    :cond_0
    return-void
.end method

.method public bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 3
    .param p1, "binding"    # Landroid/view/inputmethod/InputBinding;

    #@0
    .prologue
    .line 378
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@2
    iput-object p1, v1, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    #@4
    .line 379
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@6
    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnection()Landroid/view/inputmethod/InputConnection;

    #@9
    move-result-object v2

    #@a
    iput-object v2, v1, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    #@c
    .line 382
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@e
    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@11
    move-result-object v0

    #@12
    .line 383
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@14
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@16
    iget-boolean v1, v1, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    #@18
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    #@1b
    .line 384
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@1d
    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    #@20
    .line 385
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@22
    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->onBindInput()V

    #@25
    .line 377
    return-void
.end method

.method public changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 458
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@2
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V

    #@5
    .line 457
    return-void
.end method

.method public hideSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 414
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@4
    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    #@7
    move-result v0

    #@8
    .line 415
    .local v0, "wasVis":Z
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@a
    iput v1, v2, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    #@c
    .line 416
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@e
    iput-boolean v1, v2, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    #@10
    .line 417
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@12
    iput-boolean v1, v2, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    #@14
    .line 418
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@16
    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-wrap1(Landroid/inputmethodservice/InputMethodService;)V

    #@19
    .line 419
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@1b
    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-wrap0(Landroid/inputmethodservice/InputMethodService;)V

    #@1e
    .line 420
    if-eqz p2, :cond_1

    #@20
    .line 421
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@22
    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    #@25
    move-result v2

    #@26
    if-eq v0, v2, :cond_2

    #@28
    .line 422
    const/4 v1, 0x3

    #@29
    .line 421
    :cond_0
    :goto_0
    invoke-virtual {p2, v1, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@2c
    .line 412
    :cond_1
    return-void

    #@2d
    .line 423
    :cond_2
    if-nez v0, :cond_0

    #@2f
    .line 424
    const/4 v1, 0x1

    #@30
    goto :goto_0
.end method

.method public restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, p1, p2, v1}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    #@6
    .line 404
    return-void
.end method

.method public showSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 11
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 433
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@6
    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    #@9
    move-result v2

    #@a
    .line 434
    .local v2, "wasVis":Z
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@c
    iput v5, v3, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    #@e
    .line 435
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@10
    invoke-virtual {v3, p1, v5}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 437
    :try_start_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@18
    const/4 v7, 0x1

    #@19
    invoke-virtual {v3, v7}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 444
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@1e
    invoke-static {v3}, Landroid/inputmethodservice/InputMethodService;->-wrap0(Landroid/inputmethodservice/InputMethodService;)V

    #@21
    .line 446
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@23
    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    #@26
    move-result v1

    #@27
    .line 447
    .local v1, "showing":Z
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@29
    iget-object v7, v3, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    #@2b
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@2d
    iget-object v8, v3, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    #@2f
    if-eqz v1, :cond_2

    #@31
    move v3, v4

    #@32
    :goto_1
    or-int/lit8 v3, v3, 0x1

    #@34
    .line 448
    iget-object v9, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@36
    iget v9, v9, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    #@38
    .line 447
    invoke-virtual {v7, v8, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    #@3b
    .line 449
    if-eqz p2, :cond_1

    #@3d
    .line 450
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@3f
    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    #@42
    move-result v3

    #@43
    if-eq v2, v3, :cond_3

    #@45
    :goto_2
    invoke-virtual {p2, v4, v10}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@48
    .line 431
    :cond_1
    return-void

    #@49
    .line 438
    .end local v1    # "showing":Z
    :catch_0
    move-exception v0

    #@4a
    .line 440
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@4c
    iput-boolean v5, v3, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    #@4e
    .line 441
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@50
    iput-boolean v5, v3, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    #@52
    goto :goto_0

    #@53
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    .restart local v1    # "showing":Z
    :cond_2
    move v3, v5

    #@54
    .line 447
    goto :goto_1

    #@55
    .line 452
    :cond_3
    if-eqz v2, :cond_4

    #@57
    move v4, v5

    #@58
    goto :goto_2

    #@59
    :cond_4
    move v4, v6

    #@5a
    .line 453
    goto :goto_2
.end method

.method public startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    .line 401
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, p2, v1}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    #@6
    .line 399
    return-void
.end method

.method public unbindInput()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 394
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@3
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onUnbindInput()V

    #@6
    .line 395
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@8
    iput-object v1, v0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    #@a
    .line 396
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@c
    iput-object v1, v0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    #@e
    .line 391
    return-void
.end method
