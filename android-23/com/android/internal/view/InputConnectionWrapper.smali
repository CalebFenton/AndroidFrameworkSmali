.class public Lcom/android/internal/view/InputConnectionWrapper;
.super Ljava/lang/Object;
.source "InputConnectionWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    }
.end annotation


# static fields
.field private static final MAX_WAIT_TIME_MILLIS:I = 0x7d0


# instance fields
.field private final mIInputContext:Lcom/android/internal/view/IInputContext;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/IInputContext;)V
    .locals 0
    .param p1, "inputContext"    # Lcom/android/internal/view/IInputContext;

    #@0
    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 194
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@5
    .line 193
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 2

    #@0
    .prologue
    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->beginBatchEdit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 371
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 372
    :catch_0
    move-exception v0

    #@8
    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .param p1, "states"    # I

    #@0
    .prologue
    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->clearMetaKeyStates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 398
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 399
    :catch_0
    move-exception v0

    #@8
    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 299
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 300
    :catch_0
    move-exception v0

    #@8
    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 2
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    #@0
    .prologue
    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 308
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 309
    :catch_0
    move-exception v0

    #@8
    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    #@0
    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->commitText(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 290
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 291
    :catch_0
    move-exception v0

    #@8
    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public deleteSurroundingText(II)Z
    .locals 2
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    #@0
    .prologue
    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->deleteSurroundingText(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 407
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 408
    :catch_0
    move-exception v0

    #@8
    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public endBatchEdit()Z
    .locals 2

    #@0
    .prologue
    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->endBatchEdit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 380
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 381
    :catch_0
    move-exception v0

    #@8
    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public finishComposingText()Z
    .locals 2

    #@0
    .prologue
    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 362
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 363
    :catch_0
    move-exception v0

    #@8
    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public getCursorCapsMode(I)I
    .locals 5
    .param p1, "reqModes"    # I

    #@0
    .prologue
    .line 252
    const/4 v2, 0x0

    #@1
    .line 254
    .local v2, "value":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@4
    move-result-object v0

    #@5
    .line 255
    .local v0, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@7
    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@9
    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/view/IInputContext;->getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V

    #@c
    .line 256
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 257
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    #@10
    .line 258
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 259
    iget v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mCursorCapsMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    :cond_0
    :try_start_2
    monitor-exit v0

    #@17
    .line 262
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    #@1a
    .line 266
    return v2

    #@1b
    .line 256
    :catchall_0
    move-exception v3

    #@1c
    monitor-exit v0

    #@1d
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 263
    .end local v0    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v1

    #@1f
    .line 264
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    #@20
    return v3
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 5
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 270
    const/4 v2, 0x0

    #@1
    .line 272
    .local v2, "value":Landroid/view/inputmethod/ExtractedText;
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@4
    move-result-object v0

    #@5
    .line 273
    .local v0, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@7
    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@9
    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V

    #@c
    .line 274
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 275
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    #@10
    .line 276
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 277
    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mExtractedText:Landroid/view/inputmethod/ExtractedText;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .end local v2    # "value":Landroid/view/inputmethod/ExtractedText;
    :cond_0
    :try_start_2
    monitor-exit v0

    #@17
    .line 280
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    #@1a
    .line 284
    return-object v2

    #@1b
    .line 274
    .restart local v2    # "value":Landroid/view/inputmethod/ExtractedText;
    :catchall_0
    move-exception v3

    #@1c
    monitor-exit v0

    #@1d
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 281
    .end local v0    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .end local v2    # "value":Landroid/view/inputmethod/ExtractedText;
    :catch_0
    move-exception v1

    #@1f
    .line 282
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    #@20
    return-object v3
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 234
    const/4 v2, 0x0

    #@1
    .line 236
    .local v2, "value":Ljava/lang/CharSequence;
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@4
    move-result-object v0

    #@5
    .line 237
    .local v0, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@7
    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@9
    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/view/IInputContext;->getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V

    #@c
    .line 238
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 239
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    #@10
    .line 240
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 241
    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSelectedText:Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .end local v2    # "value":Ljava/lang/CharSequence;
    :cond_0
    :try_start_2
    monitor-exit v0

    #@17
    .line 244
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    #@1a
    .line 248
    return-object v2

    #@1b
    .line 238
    .restart local v2    # "value":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v3

    #@1c
    monitor-exit v0

    #@1d
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 245
    .end local v0    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .end local v2    # "value":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    #@1f
    .line 246
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    #@20
    return-object v3
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "length"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 198
    const/4 v2, 0x0

    #@1
    .line 200
    .local v2, "value":Ljava/lang/CharSequence;
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@4
    move-result-object v0

    #@5
    .line 201
    .local v0, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@7
    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@9
    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    #@c
    .line 202
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 203
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    #@10
    .line 204
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 205
    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextAfterCursor:Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .end local v2    # "value":Ljava/lang/CharSequence;
    :cond_0
    :try_start_2
    monitor-exit v0

    #@17
    .line 208
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    #@1a
    .line 212
    return-object v2

    #@1b
    .line 202
    .restart local v2    # "value":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v3

    #@1c
    monitor-exit v0

    #@1d
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 209
    .end local v0    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .end local v2    # "value":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    #@1f
    .line 210
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    #@20
    return-object v3
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "length"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 216
    const/4 v2, 0x0

    #@1
    .line 218
    .local v2, "value":Ljava/lang/CharSequence;
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@4
    move-result-object v0

    #@5
    .line 219
    .local v0, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@7
    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@9
    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    #@c
    .line 220
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 221
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    #@10
    .line 222
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 223
    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .end local v2    # "value":Ljava/lang/CharSequence;
    :cond_0
    :try_start_2
    monitor-exit v0

    #@17
    .line 226
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    #@1a
    .line 230
    return-object v2

    #@1b
    .line 220
    .restart local v2    # "value":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v3

    #@1c
    monitor-exit v0

    #@1d
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 227
    .end local v0    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .end local v2    # "value":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    #@1f
    .line 228
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    #@20
    return-object v3
.end method

.method public performContextMenuAction(I)Z
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->performContextMenuAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 335
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 336
    :catch_0
    move-exception v0

    #@8
    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public performEditorAction(I)Z
    .locals 2
    .param p1, "actionCode"    # I

    #@0
    .prologue
    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->performEditorAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 326
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 327
    :catch_0
    move-exception v0

    #@8
    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 425
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 426
    :catch_0
    move-exception v0

    #@8
    .line 427
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public reportFullscreenMode(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->reportFullscreenMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 416
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 417
    :catch_0
    move-exception v0

    #@8
    .line 418
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public requestCursorUpdates(I)Z
    .locals 5
    .param p1, "cursorUpdateMode"    # I

    #@0
    .prologue
    .line 432
    const/4 v2, 0x0

    #@1
    .line 434
    .local v2, "result":Z
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@4
    move-result-object v0

    #@5
    .line 435
    .local v0, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@7
    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@9
    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/view/IInputContext;->requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V

    #@c
    .line 436
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 437
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    #@10
    .line 438
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 439
    iget-boolean v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mRequestUpdateCursorAnchorInfoResult:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .end local v2    # "result":Z
    :cond_0
    :try_start_2
    monitor-exit v0

    #@17
    .line 442
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    #@1a
    .line 446
    return v2

    #@1b
    .line 436
    .restart local v2    # "result":Z
    :catchall_0
    move-exception v3

    #@1c
    monitor-exit v0

    #@1d
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 443
    .end local v0    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .end local v2    # "result":Z
    :catch_0
    move-exception v1

    #@1f
    .line 444
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    #@20
    return v3
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->sendKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 389
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 390
    :catch_0
    move-exception v0

    #@8
    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public setComposingRegion(II)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingRegion(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 344
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 345
    :catch_0
    move-exception v0

    #@8
    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    #@0
    .prologue
    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingText(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 353
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 354
    :catch_0
    move-exception v0

    #@8
    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public setSelection(II)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setSelection(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 317
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 318
    :catch_0
    move-exception v0

    #@8
    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method
