.class public Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;
.super Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputMethodSessionImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public constructor whitelist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1438
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;)V

    return-void
.end method


# virtual methods
.method public whitelist appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1508
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1509
    return-void

    .line 1511
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1512
    return-void
.end method

.method public whitelist displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 3
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 1452
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1453
    return-void

    .line 1455
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p1, v0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1456
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 1457
    return-void
.end method

.method public whitelist finishInput()V
    .registers 2

    .line 1440
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1441
    return-void

    .line 1444
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 1445
    return-void
.end method

.method public final blacklist invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 7
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p3, "sessionId"    # I

    .line 1554
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    instance-of v0, v0, Landroid/inputmethodservice/RemoteInputConnection;

    if-eqz v0, :cond_34

    .line 1555
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    check-cast v0, Landroid/inputmethodservice/RemoteInputConnection;

    .line 1556
    .local v0, "ric":Landroid/inputmethodservice/RemoteInputConnection;
    invoke-virtual {v0, p2}, Landroid/inputmethodservice/RemoteInputConnection;->isSameConnection(Lcom/android/internal/inputmethod/IRemoteInputConnection;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1561
    return-void

    .line 1563
    :cond_15
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p1, v1}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    .line 1564
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmLastHandwritingRegion(Landroid/inputmethodservice/InputMethodService;Landroid/graphics/Region;)V

    .line 1565
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getInputMethodInternal()Landroid/view/inputmethod/InputMethod;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/RemoteInputConnection;

    invoke-direct {v2, v0, p3}, Landroid/inputmethodservice/RemoteInputConnection;-><init>(Landroid/inputmethodservice/RemoteInputConnection;I)V

    invoke-interface {v1, v2, p1}, Landroid/view/inputmethod/InputMethod;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 1568
    .end local v0    # "ric":Landroid/inputmethodservice/RemoteInputConnection;
    :cond_34
    return-void
.end method

.method public final blacklist removeImeSurface()V
    .registers 2

    .line 1544
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mscheduleImeSurfaceRemoval(Landroid/inputmethodservice/InputMethodService;)V

    .line 1545
    return-void
.end method

.method public whitelist toggleSoftInput(II)V
    .registers 4
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1525
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$monToggleSoftInput(Landroid/inputmethodservice/InputMethodService;II)V

    .line 1526
    return-void
.end method

.method public whitelist updateCursor(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "newCursor"    # Landroid/graphics/Rect;

    .line 1497
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1498
    return-void

    .line 1500
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onUpdateCursor(Landroid/graphics/Rect;)V

    .line 1501
    return-void
.end method

.method public whitelist updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 1533
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1534
    return-void

    .line 1536
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 1537
    return-void
.end method

.method public whitelist updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .registers 4
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 1464
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1465
    return-void

    .line 1467
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 1468
    return-void
.end method

.method public whitelist updateSelection(IIIIII)V
    .registers 15
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 1477
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1478
    return-void

    .line 1480
    :cond_7
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "oldSelStart":I
    .end local p2    # "oldSelEnd":I
    .end local p3    # "newSelStart":I
    .end local p4    # "newSelEnd":I
    .end local p5    # "candidatesStart":I
    .end local p6    # "candidatesEnd":I
    .local v2, "oldSelStart":I
    .local v3, "oldSelEnd":I
    .local v4, "newSelStart":I
    .local v5, "newSelEnd":I
    .local v6, "candidatesStart":I
    .local v7, "candidatesEnd":I
    invoke-virtual/range {v1 .. v7}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 1482
    return-void
.end method

.method public whitelist viewClicked(Z)V
    .registers 3
    .param p1, "focusChanged"    # Z

    .line 1486
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1487
    return-void

    .line 1489
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onViewClicked(Z)V

    .line 1490
    return-void
.end method
