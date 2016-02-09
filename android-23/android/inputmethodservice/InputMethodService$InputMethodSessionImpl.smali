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
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;

    #@0
    .prologue
    .line 467
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@2
    invoke-direct {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;)V

    #@5
    return-void
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 537
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 538
    return-void

    #@7
    .line 540
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    #@c
    .line 536
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 481
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 482
    return-void

    #@7
    .line 484
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@9
    iput-object p1, v0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    #@b
    .line 485
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@d
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    #@10
    .line 480
    return-void
.end method

.method public finishInput()V
    .locals 1

    #@0
    .prologue
    .line 469
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 470
    return-void

    #@7
    .line 473
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@9
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    #@c
    .line 468
    return-void
.end method

.method public toggleSoftInput(II)V
    .locals 1
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    #@0
    .prologue
    .line 547
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@2
    invoke-static {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->-wrap2(Landroid/inputmethodservice/InputMethodService;II)V

    #@5
    .line 546
    return-void
.end method

.method public updateCursor(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "newCursor"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 527
    return-void

    #@7
    .line 529
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@9
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onUpdateCursor(Landroid/graphics/Rect;)V

    #@c
    .line 525
    return-void
.end method

.method public updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CursorAnchorInfo;

    #@0
    .prologue
    .line 555
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 556
    return-void

    #@7
    .line 558
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@9
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    #@c
    .line 554
    return-void
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    #@0
    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 494
    return-void

    #@7
    .line 496
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    #@c
    .line 492
    return-void
.end method

.method public updateSelection(IIIIII)V
    .locals 7
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    #@0
    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 507
    return-void

    #@7
    .line 509
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@9
    move v1, p1

    #@a
    move v2, p2

    #@b
    move v3, p3

    #@c
    move v4, p4

    #@d
    move v5, p5

    #@e
    move v6, p6

    #@f
    invoke-virtual/range {v0 .. v6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    #@12
    .line 505
    return-void
.end method

.method public viewClicked(Z)V
    .locals 1
    .param p1, "focusChanged"    # Z

    #@0
    .prologue
    .line 515
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 516
    return-void

    #@7
    .line 518
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@9
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onViewClicked(Z)V

    #@c
    .line 514
    return-void
.end method
