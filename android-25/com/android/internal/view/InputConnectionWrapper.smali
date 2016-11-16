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

.field private final mInputMethodService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/inputmethodservice/AbstractInputMethodService;",
            ">;"
        }
    .end annotation
.end field

.field private final mMissingMethods:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/view/IInputContext;I)V
    .locals 0
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "missingMethods"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/inputmethodservice/AbstractInputMethodService;",
            ">;",
            "Lcom/android/internal/view/IInputContext;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 220
    .local p1, "inputMethodService":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/inputmethodservice/AbstractInputMethodService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 223
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mInputMethodService:Ljava/lang/ref/WeakReference;

    #@5
    .line 224
    iput-object p2, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@7
    .line 225
    iput p3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mMissingMethods:I

    #@9
    .line 222
    return-void
.end method

.method private isMethodMissing(I)Z
    .locals 1
    .param p1, "methodFlag"    # I

    #@0
    .prologue
    .line 550
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mMissingMethods:I

    #@2
    and-int/2addr v0, p1

    #@3
    if-ne v0, p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 2

    #@0
    .prologue
    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->beginBatchEdit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 414
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 415
    :catch_0
    move-exception v0

    #@8
    .line 416
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
    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->clearMetaKeyStates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 441
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 442
    :catch_0
    move-exception v0

    #@8
    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public closeConnection()V
    .locals 0

    #@0
    .prologue
    .line 514
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 3
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 332
    const/4 v1, 0x4

    #@2
    invoke-direct {p0, v1}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 334
    return v2

    #@9
    .line 337
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@b
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 338
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 339
    :catch_0
    move-exception v0

    #@11
    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 10
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 519
    const/4 v8, 0x0

    #@2
    .line 520
    .local v8, "result":Z
    const/16 v0, 0x80

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 522
    return v9

    #@b
    .line 525
    :cond_0
    and-int/lit8 v0, p2, 0x1

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mInputMethodService:Ljava/lang/ref/WeakReference;

    #@11
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@14
    move-result-object v7

    #@15
    check-cast v7, Landroid/inputmethodservice/AbstractInputMethodService;

    #@17
    .line 527
    .local v7, "inputMethodService":Landroid/inputmethodservice/AbstractInputMethodService;
    if-nez v7, :cond_1

    #@19
    .line 529
    return v9

    #@1a
    .line 531
    :cond_1
    invoke-virtual {v7, p1, p0}, Landroid/inputmethodservice/AbstractInputMethodService;->exposeContent(Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/InputConnection;)V

    #@1d
    .line 534
    .end local v7    # "inputMethodService":Landroid/inputmethodservice/AbstractInputMethodService;
    :cond_2
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@20
    move-result-object v5

    #@21
    .line 535
    .local v5, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@23
    iget v4, v5, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@25
    move-object v1, p1

    #@26
    move v2, p2

    #@27
    move-object v3, p3

    #@28
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/view/IInputContext;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;ILcom/android/internal/view/IInputContextCallback;)V

    #@2b
    .line 536
    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 537
    :try_start_1
    invoke-virtual {v5}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    #@2f
    .line 538
    iget-boolean v0, v5, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@31
    if-eqz v0, :cond_3

    #@33
    .line 539
    iget-boolean v8, v5, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mCommitContentResult:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .end local v8    # "result":Z
    :cond_3
    :try_start_2
    monitor-exit v5

    #@36
    .line 542
    invoke-static {v5}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    #@39
    .line 546
    return v8

    #@3a
    .line 536
    .restart local v8    # "result":Z
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v5

    #@3c
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@3d
    .line 543
    .end local v5    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .end local v8    # "result":Z
    :catch_0
    move-exception v6

    #@3e
    .line 544
    .local v6, "e":Landroid/os/RemoteException;
    return v9
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 2
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    #@0
    .prologue
    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 347
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 348
    :catch_0
    move-exception v0

    #@8
    .line 349
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
    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->commitText(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 325
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 326
    :catch_0
    move-exception v0

    #@8
    .line 327
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
    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->deleteSurroundingText(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 450
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 451
    :catch_0
    move-exception v0

    #@8
    .line 452
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 3
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 457
    const/16 v1, 0x10

    #@3
    invoke-direct {p0, v1}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 459
    return v2

    #@a
    .line 462
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@c
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->deleteSurroundingTextInCodePoints(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 463
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 464
    :catch_0
    move-exception v0

    #@12
    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public endBatchEdit()Z
    .locals 2

    #@0
    .prologue
    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->endBatchEdit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 423
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 424
    :catch_0
    move-exception v0

    #@8
    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public finishComposingText()Z
    .locals 2

    #@0
    .prologue
    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 405
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 406
    :catch_0
    move-exception v0

    #@8
    .line 407
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
    .line 287
    const/4 v2, 0x0

    #@1
    .line 289
    .local v2, "value":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@4
    move-result-object v0

    #@5
    .line 290
    .local v0, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@7
    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@9
    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/view/IInputContext;->getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V

    #@c
    .line 291
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 292
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    #@10
    .line 293
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 294
    iget v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mCursorCapsMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    :cond_0
    :try_start_2
    monitor-exit v0

    #@17
    .line 297
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    #@1a
    .line 301
    return v2

    #@1b
    .line 291
    :catchall_0
    move-exception v3

    #@1c
    monitor-exit v0

    #@1d
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 298
    .end local v0    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v1

    #@1f
    .line 299
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
    .line 305
    const/4 v2, 0x0

    #@1
    .line 307
    .local v2, "value":Landroid/view/inputmethod/ExtractedText;
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@4
    move-result-object v0

    #@5
    .line 308
    .local v0, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@7
    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@9
    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V

    #@c
    .line 309
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 310
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    #@10
    .line 311
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 312
    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mExtractedText:Landroid/view/inputmethod/ExtractedText;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .end local v2    # "value":Landroid/view/inputmethod/ExtractedText;
    :cond_0
    :try_start_2
    monitor-exit v0

    #@17
    .line 315
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    #@1a
    .line 319
    return-object v2

    #@1b
    .line 309
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
    .line 316
    .end local v0    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .end local v2    # "value":Landroid/view/inputmethod/ExtractedText;
    :catch_0
    move-exception v1

    #@1f
    .line 317
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    #@20
    return-object v3
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 511
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "flags"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 265
    const/4 v3, 0x1

    #@2
    invoke-direct {p0, v3}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 267
    return-object v5

    #@9
    .line 269
    :cond_0
    const/4 v2, 0x0

    #@a
    .line 271
    .local v2, "value":Ljava/lang/CharSequence;
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@d
    move-result-object v0

    #@e
    .line 272
    .local v0, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@10
    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@12
    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/view/IInputContext;->getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V

    #@15
    .line 273
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 274
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    #@19
    .line 275
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 276
    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSelectedText:Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    .end local v2    # "value":Ljava/lang/CharSequence;
    :cond_1
    :try_start_2
    monitor-exit v0

    #@20
    .line 279
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    #@23
    .line 283
    return-object v2

    #@24
    .line 273
    .restart local v2    # "value":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v3

    #@25
    monitor-exit v0

    #@26
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@27
    .line 280
    .end local v0    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .end local v2    # "value":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    #@28
    .line 281
    .local v1, "e":Landroid/os/RemoteException;
    return-object v5
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "length"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 229
    const/4 v2, 0x0

    #@1
    .line 231
    .local v2, "value":Ljava/lang/CharSequence;
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@4
    move-result-object v0

    #@5
    .line 232
    .local v0, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@7
    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@9
    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    #@c
    .line 233
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 234
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    #@10
    .line 235
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 236
    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextAfterCursor:Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .end local v2    # "value":Ljava/lang/CharSequence;
    :cond_0
    :try_start_2
    monitor-exit v0

    #@17
    .line 239
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    #@1a
    .line 243
    return-object v2

    #@1b
    .line 233
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
    .line 240
    .end local v0    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .end local v2    # "value":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    #@1f
    .line 241
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
    .line 247
    const/4 v2, 0x0

    #@1
    .line 249
    .local v2, "value":Ljava/lang/CharSequence;
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@4
    move-result-object v0

    #@5
    .line 250
    .local v0, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@7
    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@9
    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    #@c
    .line 251
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 252
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    #@10
    .line 253
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 254
    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .end local v2    # "value":Ljava/lang/CharSequence;
    :cond_0
    :try_start_2
    monitor-exit v0

    #@17
    .line 257
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    #@1a
    .line 261
    return-object v2

    #@1b
    .line 251
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
    .line 258
    .end local v0    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .end local v2    # "value":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    #@1f
    .line 259
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
    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->performContextMenuAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 374
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 375
    :catch_0
    move-exception v0

    #@8
    .line 376
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
    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->performEditorAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 365
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 366
    :catch_0
    move-exception v0

    #@8
    .line 367
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
    .line 480
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 481
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 482
    :catch_0
    move-exception v0

    #@8
    .line 483
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
    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->reportFullscreenMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 472
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 473
    :catch_0
    move-exception v0

    #@8
    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public requestCursorUpdates(I)Z
    .locals 6
    .param p1, "cursorUpdateMode"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 488
    const/4 v2, 0x0

    #@2
    .line 489
    .local v2, "result":Z
    const/16 v3, 0x8

    #@4
    invoke-direct {p0, v3}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 491
    return v5

    #@b
    .line 494
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    #@e
    move-result-object v0

    #@f
    .line 495
    .local v0, "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@11
    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    #@13
    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/view/IInputContext;->requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V

    #@16
    .line 496
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 497
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    #@1a
    .line 498
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    #@1c
    if-eqz v3, :cond_1

    #@1e
    .line 499
    iget-boolean v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mRequestUpdateCursorAnchorInfoResult:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .end local v2    # "result":Z
    :cond_1
    :try_start_2
    monitor-exit v0

    #@21
    .line 502
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    #@24
    .line 506
    return v2

    #@25
    .line 496
    .restart local v2    # "result":Z
    :catchall_0
    move-exception v3

    #@26
    monitor-exit v0

    #@27
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@28
    .line 503
    .end local v0    # "callback":Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .end local v2    # "result":Z
    :catch_0
    move-exception v1

    #@29
    .line 504
    .local v1, "e":Landroid/os/RemoteException;
    return v5
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 431
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->sendKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 432
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 433
    :catch_0
    move-exception v0

    #@8
    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public setComposingRegion(II)Z
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 381
    const/4 v1, 0x2

    #@2
    invoke-direct {p0, v1}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 383
    return v2

    #@9
    .line 386
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@b
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingRegion(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 387
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 388
    :catch_0
    move-exception v0

    #@11
    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    #@0
    .prologue
    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingText(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 396
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 397
    :catch_0
    move-exception v0

    #@8
    .line 398
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
    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setSelection(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 356
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 357
    :catch_0
    move-exception v0

    #@8
    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "InputConnectionWrapper{idHash=#"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 556
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 557
    const-string/jumbo v1, " mMissingMethods="

    #@1b
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 558
    iget v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mMissingMethods:I

    #@21
    invoke-static {v1}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlagsAsString(I)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 558
    const-string/jumbo v1, "}"

    #@2c
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0
.end method
