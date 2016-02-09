.class public Landroid/view/inputmethod/InputConnectionWrapper;
.super Ljava/lang/Object;
.source "InputConnectionWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# instance fields
.field final mMutable:Z

.field private mTarget:Landroid/view/inputmethod/InputConnection;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .param p1, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "mutable"    # Z

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput-boolean p2, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mMutable:Z

    #@5
    .line 32
    iput-object p1, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@7
    .line 30
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 1
    .param p1, "states"    # I

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public endBatchEdit()Z
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 1
    .param p1, "reqModes"    # I

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "n"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "n"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public performEditorAction(I)Z
    .locals 1
    .param p1, "editorAction"    # I

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public requestCursorUpdates(I)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setSelection(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setTarget(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "target"    # Landroid/view/inputmethod/InputConnection;

    #@0
    .prologue
    .line 39
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mMutable:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 42
    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    #@a
    .line 38
    return-void

    #@b
    .line 40
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    #@d
    const-string/jumbo v1, "not mutable"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
.end method
