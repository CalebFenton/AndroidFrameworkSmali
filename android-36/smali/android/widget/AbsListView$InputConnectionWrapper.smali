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
.field private final greylist-max-o mOutAttrs:Landroid/view/inputmethod/EditorInfo;

.field private greylist-max-o mTarget:Landroid/view/inputmethod/InputConnection;

.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V
    .registers 3
    .param p2, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 6268
    iput-object p1, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6269
    iput-object p2, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mOutAttrs:Landroid/view/inputmethod/EditorInfo;

    .line 6270
    return-void
.end method

.method private greylist-max-o getTarget()Landroid/view/inputmethod/InputConnection;
    .registers 3

    .line 6273
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_12

    .line 6274
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$mgetTextFilterInput(Landroid/widget/AbsListView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mOutAttrs:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    .line 6276
    :cond_12
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method


# virtual methods
.method public whitelist beginBatchEdit()Z
    .registers 2

    .line 6396
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public whitelist clearMetaKeyStates(I)Z
    .registers 3
    .param p1, "states"    # I

    .line 6406
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    move-result v0

    return v0
.end method

.method public whitelist closeConnection()V
    .registers 2

    .line 6431
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->closeConnection()V

    .line 6432
    return-void
.end method

.method public whitelist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 3
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 6376
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v0

    return v0
.end method

.method public whitelist commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 6436
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 3
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 6381
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result v0

    return v0
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;I)Z
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 6371
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public whitelist deleteSurroundingText(II)Z
    .registers 4
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 6346
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public whitelist deleteSurroundingTextInCodePoints(II)Z
    .registers 4
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 6351
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingTextInCodePoints(II)Z

    move-result v0

    return v0
.end method

.method public whitelist endBatchEdit()Z
    .registers 2

    .line 6401
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public whitelist finishComposingText()Z
    .registers 2

    .line 6366
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist getCursorCapsMode(I)I
    .registers 3
    .param p1, "reqModes"    # I

    .line 6335
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_7

    const/16 v0, 0x4000

    return v0

    .line 6336
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    return v0
.end method

.method public whitelist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 4
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .line 6341
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHandler()Landroid/os/Handler;
    .registers 2

    .line 6426
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSelectedText(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "flags"    # I

    .line 6323
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 6324
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .registers 5
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "flags"    # I

    .line 6329
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 6330
    :cond_6
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .line 6317
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 6318
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .line 6311
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 6312
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist performContextMenuAction(I)Z
    .registers 3
    .param p1, "id"    # I

    .line 6391
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method public whitelist performEditorAction(I)Z
    .registers 5
    .param p1, "editorAction"    # I

    .line 6290
    const/4 v0, 0x6

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1f

    .line 6291
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    .line 6292
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6293
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1d

    .line 6294
    iget-object v2, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 6296
    :cond_1d
    const/4 v1, 0x1

    return v1

    .line 6298
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1f
    return v1
.end method

.method public whitelist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 6411
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist reportFullscreenMode(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .line 6283
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmDefInputConnection(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    move-result v0

    return v0
.end method

.method public whitelist requestCursorUpdates(I)Z
    .registers 3
    .param p1, "cursorUpdateMode"    # I

    .line 6416
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    move-result v0

    return v0
.end method

.method public whitelist requestCursorUpdates(II)Z
    .registers 4
    .param p1, "cursorUpdateMode"    # I
    .param p2, "cursorUpdateFilter"    # I

    .line 6421
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(II)Z

    move-result v0

    return v0
.end method

.method public whitelist sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 6306
    iget-object v0, p0, Landroid/widget/AbsListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmDefInputConnection(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist setComposingRegion(II)Z
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 6361
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    move-result v0

    return v0
.end method

.method public whitelist setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 6356
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public whitelist setSelection(II)Z
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 6386
    invoke-direct {p0}, Landroid/widget/AbsListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v0

    return v0
.end method
