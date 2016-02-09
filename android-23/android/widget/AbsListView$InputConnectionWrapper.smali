.class Landroid/widget/AbsListView$InputConnectionWrapper;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputConnectionWrapper"
.end annotation


# instance fields
.field private final mOutAttrs:Landroid/view/inputmethod/EditorInfo;

.field private mTarget:Landroid/view/inputmethod/InputConnection;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;
    .param p2, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    .line 5668
    iput-object p1, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 5669
    iput-object p2, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mOutAttrs:Landroid/view/inputmethod/EditorInfo;

    #@7
    .line 5668
    return-void
.end method

.method private getTarget()Landroid/view/inputmethod/InputConnection;
    .locals 2

    #@0
    .prologue
    .line 5673
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5674
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    #@6
    invoke-static {v0}, Landroid/widget/AbsListView;->-wrap0(Landroid/widget/AbsListView;)Landroid/widget/EditText;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mOutAttrs:Landroid/view/inputmethod/EditorInfo;

    #@c
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@12
    .line 5676
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@14
    return-object v0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    #@0
    .prologue
    .line 5785
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 1
    .param p1, "states"    # I

    #@0
    .prologue
    .line 5795
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 5765
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    #@0
    .prologue
    .line 5770
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    #@0
    .prologue
    .line 5760
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    #@0
    .prologue
    .line 5740
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public endBatchEdit()Z
    .locals 1

    #@0
    .prologue
    .line 5790
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    #@0
    .prologue
    .line 5755
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@6
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public getCursorCapsMode(I)I
    .locals 1
    .param p1, "reqModes"    # I

    #@0
    .prologue
    .line 5729
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    if-nez v0, :cond_0

    #@4
    const/16 v0, 0x4000

    #@6
    return v0

    #@7
    .line 5730
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@9
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 5735
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 5723
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, ""

    #@7
    return-object v0

    #@8
    .line 5724
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@a
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "n"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 5717
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, ""

    #@7
    return-object v0

    #@8
    .line 5718
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@a
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "n"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 5711
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, ""

    #@7
    return-object v0

    #@8
    .line 5712
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@a
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 5780
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public performEditorAction(I)Z
    .locals 4
    .param p1, "editorAction"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5690
    const/4 v1, 0x6

    #@2
    if-ne p1, v1, :cond_1

    #@4
    .line 5692
    iget-object v1, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    #@6
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    const-string/jumbo v2, "input_method"

    #@d
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    .line 5691
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@13
    .line 5693
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    #@15
    .line 5694
    iget-object v1, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    #@17
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWindowToken()Landroid/os/IBinder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@1e
    .line 5696
    :cond_0
    const/4 v1, 0x1

    #@1f
    return v1

    #@20
    .line 5698
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v3
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 5800
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 5683
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    #@2
    invoke-static {v0}, Landroid/widget/AbsListView;->-get2(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public requestCursorUpdates(I)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I

    #@0
    .prologue
    .line 5805
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 5706
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    #@2
    invoke-static {v0}, Landroid/widget/AbsListView;->-get2(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 5750
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    #@0
    .prologue
    .line 5745
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public setSelection(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 5775
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    #@7
    move-result v0

    #@8
    return v0
.end method
