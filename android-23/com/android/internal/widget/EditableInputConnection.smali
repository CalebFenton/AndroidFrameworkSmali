.class public Lcom/android/internal/widget/EditableInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "EditableInputConnection.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EditableInputConnection"


# instance fields
.field private mBatchEditNesting:I

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textview"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 45
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    #@4
    .line 46
    iput-object p1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@6
    .line 44
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 60
    monitor-enter p0

    #@2
    .line 61
    :try_start_0
    iget v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I

    #@4
    if-ltz v0, :cond_0

    #@6
    .line 62
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    #@b
    .line 63
    iget v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    iput v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 64
    const/4 v0, 0x1

    #@12
    monitor-exit p0

    #@13
    return v0

    #@14
    :cond_0
    monitor-exit p0

    #@15
    .line 67
    return v1

    #@16
    .line 60
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 4
    .param p1, "states"    # I

    #@0
    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/internal/widget/EditableInputConnection;->getEditable()Landroid/text/Editable;

    #@3
    move-result-object v0

    #@4
    .line 102
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    #@6
    const/4 v3, 0x0

    #@7
    return v3

    #@8
    .line 103
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@a
    invoke-virtual {v3}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@d
    move-result-object v2

    #@e
    .line 104
    .local v2, "kl":Landroid/text/method/KeyListener;
    if-eqz v2, :cond_1

    #@10
    .line 106
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@12
    invoke-interface {v2, v3, v0, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 112
    :cond_1
    :goto_0
    const/4 v3, 0x1

    #@16
    return v3

    #@17
    .line 107
    :catch_0
    move-exception v1

    #@18
    .local v1, "e":Ljava/lang/AbstractMethodError;
    goto :goto_0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    #@5
    .line 119
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    #@a
    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@c
    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    #@f
    .line 121
    const/4 v0, 0x1

    #@10
    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    #@5
    .line 131
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    #@a
    .line 132
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@c
    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    #@f
    .line 133
    const/4 v0, 0x1

    #@10
    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    #@0
    .prologue
    .line 174
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 175
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 177
    :cond_0
    instance-of v3, p1, Landroid/text/Spanned;

    #@b
    if-eqz v3, :cond_1

    #@d
    move-object v0, p1

    #@e
    .line 178
    check-cast v0, Landroid/text/Spanned;

    #@10
    .line 179
    .local v0, "spanned":Landroid/text/Spanned;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@13
    move-result v3

    #@14
    const-class v4, Landroid/text/style/SuggestionSpan;

    #@16
    const/4 v5, 0x0

    #@17
    invoke-interface {v0, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, [Landroid/text/style/SuggestionSpan;

    #@1d
    .line 180
    .local v1, "spans":[Landroid/text/style/SuggestionSpan;
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@1f
    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodManager;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V

    #@22
    .line 183
    .end local v0    # "spanned":Landroid/text/Spanned;
    .end local v1    # "spans":[Landroid/text/style/SuggestionSpan;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@24
    invoke-virtual {v3}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    #@27
    .line 184
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@2a
    move-result v2

    #@2b
    .line 185
    .local v2, "success":Z
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@2d
    invoke-virtual {v3}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    #@30
    .line 187
    return v2
.end method

.method public endBatchEdit()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 72
    monitor-enter p0

    #@2
    .line 73
    :try_start_0
    iget v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I

    #@4
    if-lez v0, :cond_0

    #@6
    .line 78
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    #@b
    .line 79
    iget v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I

    #@d
    add-int/lit8 v0, v0, -0x1

    #@f
    iput v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 80
    const/4 v0, 0x1

    #@12
    monitor-exit p0

    #@13
    return v0

    #@14
    :cond_0
    monitor-exit p0

    #@15
    .line 83
    return v1

    #@16
    .line 72
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 51
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@3
    .line 52
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    #@5
    .line 53
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 55
    :cond_0
    return-object v1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 3
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 154
    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 155
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    #@7
    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    #@a
    .line 156
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@c
    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 157
    and-int/lit8 v1, p2, 0x1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 158
    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@18
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V

    #@1b
    .line 160
    :cond_0
    return-object v0

    #@1c
    .line 163
    .end local v0    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_1
    return-object v2
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    #@5
    .line 147
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@a
    .line 148
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@c
    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    #@f
    .line 149
    const/4 v0, 0x1

    #@10
    return v0
.end method

.method public performEditorAction(I)Z
    .locals 1
    .param p1, "actionCode"    # I

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    #@5
    .line 140
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    #@5
    .line 169
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method protected reportFinish()V
    .locals 1

    #@0
    .prologue
    .line 88
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->reportFinish()V

    #@3
    .line 90
    monitor-enter p0

    #@4
    .line 91
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I

    #@6
    if-lez v0, :cond_0

    #@8
    .line 92
    invoke-virtual {p0}, Lcom/android/internal/widget/EditableInputConnection;->endBatchEdit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    goto :goto_0

    #@c
    .line 90
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 95
    :cond_0
    const/4 v0, -0x1

    #@10
    :try_start_1
    iput v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 87
    return-void
.end method

.method public requestCursorUpdates(I)Z
    .locals 4
    .param p1, "cursorUpdateMode"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 196
    const/4 v0, 0x3

    #@2
    .line 198
    .local v0, "KNOWN_FLAGS_MASK":I
    and-int/lit8 v1, p1, -0x4

    #@4
    .line 199
    .local v1, "unknownFlags":I
    if-eqz v1, :cond_0

    #@6
    .line 205
    return v3

    #@7
    .line 208
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@9
    if-nez v2, :cond_1

    #@b
    .line 212
    return v3

    #@c
    .line 214
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@e
    invoke-virtual {v2, p1}, Landroid/view/inputmethod/InputMethodManager;->setUpdateCursorAnchorInfoMode(I)V

    #@11
    .line 215
    and-int/lit8 v2, p1, 0x1

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 216
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@17
    if-nez v2, :cond_3

    #@19
    .line 230
    :cond_2
    :goto_0
    const/4 v2, 0x1

    #@1a
    return v2

    #@1b
    .line 220
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@1d
    invoke-virtual {v2}, Landroid/widget/TextView;->isInLayout()Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_2

    #@23
    .line 227
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    #@25
    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    #@28
    goto :goto_0
.end method
