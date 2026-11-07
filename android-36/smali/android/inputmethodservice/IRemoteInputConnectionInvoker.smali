.class final Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
.super Ljava/lang/Object;
.source "IRemoteInputConnectionInvoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver;,
        Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver;,
        Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;
    }
.end annotation


# instance fields
.field private blacklist mBeamer:Landroid/os/CancellationSignalBeamer$Sender;

.field private final blacklist mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field private final blacklist mSessionId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnection(Landroid/inputmethodservice/IRemoteInputConnectionInvoker;)Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 3
    .param p1, "inputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p2, "sessionId"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 69
    iput p2, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mSessionId:I

    .line 70
    return-void
.end method

.method public static blacklist create(Lcom/android/internal/inputmethod/IRemoteInputConnection;)Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
    .registers 3
    .param p0, "connection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 151
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;-><init>(Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-object v0
.end method

.method private blacklist getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Sender;
    .registers 2

    .line 737
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mBeamer:Landroid/os/CancellationSignalBeamer$Sender;

    if-eqz v0, :cond_7

    .line 738
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mBeamer:Landroid/os/CancellationSignalBeamer$Sender;

    return-object v0

    .line 740
    :cond_7
    new-instance v0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$1;-><init>(Landroid/inputmethodservice/IRemoteInputConnectionInvoker;)V

    iput-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mBeamer:Landroid/os/CancellationSignalBeamer$Sender;

    .line 760
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mBeamer:Landroid/os/CancellationSignalBeamer$Sender;

    return-object v0
.end method

.method static synthetic blacklist lambda$performHandwritingGesture$0(Ljava/util/function/IntConsumer;)V
    .registers 2
    .param p0, "consumer"    # Ljava/util/function/IntConsumer;

    .line 702
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTextBoundsInfo$1(Ljava/util/function/Consumer;)V
    .registers 3
    .param p0, "consumer"    # Ljava/util/function/Consumer;

    .line 827
    new-instance v0, Landroid/view/inputmethod/TextBoundsInfoResult;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/view/inputmethod/TextBoundsInfoResult;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method blacklist beam(Landroid/os/CancellationSignal;)Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;
    .registers 3
    .param p1, "cs"    # Landroid/os/CancellationSignal;

    .line 730
    if-nez p1, :cond_4

    .line 731
    const/4 v0, 0x0

    return-object v0

    .line 733
    :cond_4
    invoke-direct {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Sender;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/CancellationSignalBeamer$Sender;->beam(Landroid/os/CancellationSignal;)Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;

    move-result-object v0

    return-object v0
.end method

.method public blacklist beginBatchEdit()Z
    .registers 3

    .line 551
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->beginBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 552
    const/4 v0, 0x1

    return v0

    .line 553
    :catch_b
    move-exception v0

    .line 554
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist clearMetaKeyStates(I)Z
    .registers 4
    .param p1, "states"    # I

    .line 601
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 602
    const/4 v0, 0x1

    return v0

    .line 603
    :catch_b
    move-exception v0

    .line 604
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist cloneWithSessionId(I)Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
    .registers 4
    .param p1, "sessionId"    # I

    .line 164
    new-instance v0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-direct {v0, v1, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;-><init>(Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-object v0
.end method

.method public blacklist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 4
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 366
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitCompletion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 367
    const/4 v0, 0x1

    return v0

    .line 368
    :catch_b
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Lcom/android/internal/infra/AndroidFuture;
    .registers 11
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputContentInfo;",
            "I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 845
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    move-object v6, v0

    .line 847
    .local v6, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_6
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_16

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .end local p1    # "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    .end local p2    # "flags":I
    .end local p3    # "opts":Landroid/os/Bundle;
    .local v3, "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    .local v4, "flags":I
    .local v5, "opts":Landroid/os/Bundle;
    :try_start_f
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitContent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 850
    goto :goto_1e

    .line 848
    :catch_13
    move-exception v0

    move-object p1, v0

    goto :goto_1b

    .end local v3    # "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    .end local v4    # "flags":I
    .end local v5    # "opts":Landroid/os/Bundle;
    .restart local p1    # "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    .restart local p2    # "flags":I
    .restart local p3    # "opts":Landroid/os/Bundle;
    :catch_16
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object p1, v0

    .line 849
    .end local p2    # "flags":I
    .end local p3    # "opts":Landroid/os/Bundle;
    .restart local v3    # "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    .restart local v4    # "flags":I
    .restart local v5    # "opts":Landroid/os/Bundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {v6, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 851
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-object v6
.end method

.method public blacklist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 4
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 384
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitCorrection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 385
    const/4 v0, 0x1

    return v0

    .line 386
    :catch_b
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist commitText(Ljava/lang/CharSequence;I)Z
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 326
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 327
    const/4 v0, 0x1

    return v0

    .line 328
    :catch_b
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 347
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 348
    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    .line 347
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 349
    const/4 v0, 0x1

    return v0

    .line 350
    :catch_b
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method blacklist createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mSessionId:I

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;-><init>(I)V

    return-object v0
.end method

.method public blacklist deleteSurroundingText(II)Z
    .registers 5
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 620
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 621
    const/4 v0, 0x1

    return v0

    .line 622
    :catch_b
    move-exception v0

    .line 623
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist deleteSurroundingTextInCodePoints(II)Z
    .registers 5
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 639
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->deleteSurroundingTextInCodePoints(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 641
    const/4 v0, 0x1

    return v0

    .line 642
    :catch_b
    move-exception v0

    .line 643
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist endBatchEdit()Z
    .registers 3

    .line 567
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->endBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 568
    const/4 v0, 0x1

    return v0

    .line 569
    :catch_b
    move-exception v0

    .line 570
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist finishComposingText()Z
    .registers 3

    .line 535
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->finishComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 536
    const/4 v0, 0x1

    return v0

    .line 537
    :catch_b
    move-exception v0

    .line 538
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getCursorCapsMode(I)Lcom/android/internal/infra/AndroidFuture;
    .registers 5
    .param p1, "reqModes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 285
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    :try_start_5
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 288
    goto :goto_13

    .line 286
    :catch_f
    move-exception v1

    .line 287
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 289
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_13
    return-object v0
.end method

.method public blacklist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Lcom/android/internal/infra/AndroidFuture;
    .registers 6
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/ExtractedTextRequest;",
            "I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/view/inputmethod/ExtractedText;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 307
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/view/inputmethod/ExtractedText;>;"
    :try_start_5
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getExtractedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 310
    goto :goto_13

    .line 308
    :catch_f
    move-exception v1

    .line 309
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 311
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_13
    return-object v0
.end method

.method public blacklist getSelectedText(I)Lcom/android/internal/infra/AndroidFuture;
    .registers 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 240
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/CharSequence;>;"
    :try_start_5
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getSelectedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 243
    goto :goto_13

    .line 241
    :catch_f
    move-exception v1

    .line 242
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 244
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_13
    return-object v0
.end method

.method public blacklist getSurroundingText(III)Lcom/android/internal/infra/AndroidFuture;
    .registers 11
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/view/inputmethod/SurroundingText;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    move-object v6, v0

    .line 264
    .local v6, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/view/inputmethod/SurroundingText;>;"
    :try_start_6
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_16

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "beforeLength":I
    .end local p2    # "afterLength":I
    .end local p3    # "flags":I
    .local v3, "beforeLength":I
    .local v4, "afterLength":I
    .local v5, "flags":I
    :try_start_f
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 268
    goto :goto_1e

    .line 266
    :catch_13
    move-exception v0

    move-object p1, v0

    goto :goto_1b

    .end local v3    # "beforeLength":I
    .end local v4    # "afterLength":I
    .end local v5    # "flags":I
    .restart local p1    # "beforeLength":I
    .restart local p2    # "afterLength":I
    .restart local p3    # "flags":I
    :catch_16
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object p1, v0

    .line 267
    .end local p2    # "afterLength":I
    .end local p3    # "flags":I
    .restart local v3    # "beforeLength":I
    .restart local v4    # "afterLength":I
    .restart local v5    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {v6, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 269
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-object v6
.end method

.method public blacklist getTextAfterCursor(II)Lcom/android/internal/infra/AndroidFuture;
    .registers 6
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 199
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/CharSequence;>;"
    :try_start_5
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getTextAfterCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 202
    goto :goto_13

    .line 200
    :catch_f
    move-exception v1

    .line 201
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 203
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_13
    return-object v0
.end method

.method public blacklist getTextBeforeCursor(II)Lcom/android/internal/infra/AndroidFuture;
    .registers 6
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 220
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/CharSequence;>;"
    :try_start_5
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getTextBeforeCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 223
    goto :goto_13

    .line 221
    :catch_f
    move-exception v1

    .line 222
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 224
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_13
    return-object v0
.end method

.method public blacklist isSameConnection(Lcom/android/internal/inputmethod/IRemoteInputConnection;)Z
    .registers 5
    .param p1, "connection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 174
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 175
    return v0

    .line 177
    :cond_4
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public blacklist performContextMenuAction(I)Z
    .registers 4
    .param p1, "id"    # I

    .line 438
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 439
    const/4 v0, 0x1

    return v0

    .line 440
    :catch_b
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist performEditorAction(I)Z
    .registers 4
    .param p1, "actionCode"    # I

    .line 420
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 421
    const/4 v0, 0x1

    return v0

    .line 422
    :catch_b
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 9
    .param p1, "gesture"    # Landroid/view/inputmethod/HandwritingGesture;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "consumer"    # Ljava/util/function/IntConsumer;

    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, "resultReceiver":Landroid/os/ResultReceiver;
    if-eqz p3, :cond_c

    .line 691
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    new-instance v1, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver;

    invoke-direct {v1, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    move-object v0, v1

    .line 695
    :cond_c
    :try_start_c
    invoke-direct {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Sender;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/CancellationSignalBeamer$Sender;->beamScopeIfNeeded(Landroid/view/inputmethod/HandwritingGesture;)Landroid/os/CancellationSignalBeamer$Sender$MustClose;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_33

    .line 696
    .local v1, "ignored":Landroid/os/CancellationSignalBeamer$Sender$MustClose;
    :try_start_14
    iget-object v2, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v3

    .line 697
    invoke-static {p1}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->of(Landroid/view/inputmethod/HandwritingGesture;)Landroid/view/inputmethod/ParcelableHandwritingGesture;

    move-result-object v4

    .line 696
    invoke-interface {v2, v3, v4, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->performHandwritingGesture(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ParcelableHandwritingGesture;Landroid/os/ResultReceiver;)V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_27

    .line 699
    if-eqz v1, :cond_26

    :try_start_23
    invoke-interface {v1}, Landroid/os/CancellationSignalBeamer$Sender$MustClose;->close()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_33

    .line 705
    .end local v1    # "ignored":Landroid/os/CancellationSignalBeamer$Sender$MustClose;
    :cond_26
    goto :goto_40

    .line 695
    .restart local v1    # "ignored":Landroid/os/CancellationSignalBeamer$Sender$MustClose;
    :catchall_27
    move-exception v2

    if-eqz v1, :cond_32

    :try_start_2a
    invoke-interface {v1}, Landroid/os/CancellationSignalBeamer$Sender$MustClose;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v3

    :try_start_2f
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local p0    # "this":Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
    .end local p1    # "gesture":Landroid/view/inputmethod/HandwritingGesture;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "consumer":Ljava/util/function/IntConsumer;
    :cond_32
    :goto_32
    throw v2
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_33} :catch_33

    .line 700
    .end local v1    # "ignored":Landroid/os/CancellationSignalBeamer$Sender$MustClose;
    .restart local v0    # "resultReceiver":Landroid/os/ResultReceiver;
    .restart local p0    # "this":Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
    .restart local p1    # "gesture":Landroid/view/inputmethod/HandwritingGesture;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "consumer":Ljava/util/function/IntConsumer;
    :catch_33
    move-exception v1

    .line 701
    .local v1, "e":Landroid/os/RemoteException;
    if-eqz p3, :cond_40

    if-eqz p2, :cond_40

    .line 702
    new-instance v2, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 706
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_40
    :goto_40
    return-void
.end method

.method public blacklist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 675
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->performPrivateCommand(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 676
    const/4 v0, 0x1

    return v0

    .line 677
    :catch_b
    move-exception v0

    .line 678
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist performSpellCheck()Z
    .registers 3

    .line 656
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->performSpellCheck(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 657
    const/4 v0, 0x1

    return v0

    .line 658
    :catch_b
    move-exception v0

    .line 659
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist previewHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Landroid/os/CancellationSignal;)Z
    .registers 7
    .param p1, "gesture"    # Landroid/view/inputmethod/HandwritingGesture;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 717
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->beam(Landroid/os/CancellationSignal;)Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_24

    .line 718
    .local v0, "csToken":Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;
    :try_start_4
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    .line 719
    invoke-static {p1}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->of(Landroid/view/inputmethod/HandwritingGesture;)Landroid/view/inputmethod/ParcelableHandwritingGesture;

    move-result-object v3

    .line 718
    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->previewHandwritingGesture(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ParcelableHandwritingGesture;Landroid/os/IBinder;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_18

    .line 721
    if-eqz v0, :cond_16

    :try_start_13
    invoke-interface {v0}, Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;->close()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_24

    .line 722
    .end local v0    # "csToken":Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;
    :cond_16
    const/4 v0, 0x1

    return v0

    .line 717
    .restart local v0    # "csToken":Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;
    :catchall_18
    move-exception v1

    if-eqz v0, :cond_23

    :try_start_1b
    invoke-interface {v0}, Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v2

    :try_start_20
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
    .end local p1    # "gesture":Landroid/view/inputmethod/HandwritingGesture;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_23
    :goto_23
    throw v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_24

    .line 723
    .end local v0    # "csToken":Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;
    .restart local p0    # "this":Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
    .restart local p1    # "gesture":Landroid/view/inputmethod/HandwritingGesture;
    .restart local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_24
    move-exception v0

    .line 724
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist replaceText(IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 13
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "newCursorPosition"    # I
    .param p5, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 895
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 896
    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_13

    .line 895
    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "start":I
    .end local p2    # "end":I
    .end local p3    # "text":Ljava/lang/CharSequence;
    .end local p4    # "newCursorPosition":I
    .end local p5    # "textAttribute":Landroid/view/inputmethod/TextAttribute;
    .local v2, "start":I
    .local v3, "end":I
    .local v4, "text":Ljava/lang/CharSequence;
    .local v5, "newCursorPosition":I
    .local v6, "textAttribute":Landroid/view/inputmethod/TextAttribute;
    :try_start_b
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->replaceText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    .line 897
    const/4 p1, 0x1

    return p1

    .line 898
    :catch_10
    move-exception v0

    move-object p1, v0

    goto :goto_1a

    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "newCursorPosition":I
    .end local v6    # "textAttribute":Landroid/view/inputmethod/TextAttribute;
    .restart local p1    # "start":I
    .restart local p2    # "end":I
    .restart local p3    # "text":Ljava/lang/CharSequence;
    .restart local p4    # "newCursorPosition":I
    .restart local p5    # "textAttribute":Landroid/view/inputmethod/TextAttribute;
    :catch_13
    move-exception v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object p1, v0

    .line 899
    .end local p2    # "end":I
    .end local p3    # "text":Ljava/lang/CharSequence;
    .end local p4    # "newCursorPosition":I
    .end local p5    # "textAttribute":Landroid/view/inputmethod/TextAttribute;
    .restart local v2    # "start":I
    .restart local v3    # "end":I
    .restart local v4    # "text":Ljava/lang/CharSequence;
    .restart local v5    # "newCursorPosition":I
    .restart local v6    # "textAttribute":Landroid/view/inputmethod/TextAttribute;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1a
    const/4 p2, 0x0

    return p2
.end method

.method public blacklist requestCursorUpdates(II)Lcom/android/internal/infra/AndroidFuture;
    .registers 6
    .param p1, "cursorUpdateMode"    # I
    .param p2, "imeDisplayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 775
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 777
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_5
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->requestCursorUpdates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 781
    goto :goto_13

    .line 779
    :catch_f
    move-exception v1

    .line 780
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 782
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_13
    return-object v0
.end method

.method public blacklist requestCursorUpdates(III)Lcom/android/internal/infra/AndroidFuture;
    .registers 11
    .param p1, "cursorUpdateMode"    # I
    .param p2, "cursorUpdateFilter"    # I
    .param p3, "imeDisplayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 799
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    move-object v6, v0

    .line 801
    .local v6, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_6
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_16

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "cursorUpdateMode":I
    .end local p2    # "cursorUpdateFilter":I
    .end local p3    # "imeDisplayId":I
    .local v3, "cursorUpdateMode":I
    .local v4, "cursorUpdateFilter":I
    .local v5, "imeDisplayId":I
    :try_start_f
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->requestCursorUpdatesWithFilter(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 805
    goto :goto_1e

    .line 803
    :catch_13
    move-exception v0

    move-object p1, v0

    goto :goto_1b

    .end local v3    # "cursorUpdateMode":I
    .end local v4    # "cursorUpdateFilter":I
    .end local v5    # "imeDisplayId":I
    .restart local p1    # "cursorUpdateMode":I
    .restart local p2    # "cursorUpdateFilter":I
    .restart local p3    # "imeDisplayId":I
    :catch_16
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object p1, v0

    .line 804
    .end local p2    # "cursorUpdateFilter":I
    .end local p3    # "imeDisplayId":I
    .restart local v3    # "cursorUpdateMode":I
    .restart local v4    # "cursorUpdateFilter":I
    .restart local v5    # "imeDisplayId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {v6, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 806
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-object v6
.end method

.method public blacklist requestTextBoundsInfo(Landroid/graphics/RectF;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/TextBoundsInfoResult;",
            ">;)V"
        }
    .end annotation

    .line 820
    .local p3, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/TextBoundsInfoResult;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    new-instance v0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver;

    invoke-direct {v0, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 825
    .local v0, "resultReceiver":Landroid/os/ResultReceiver;
    :try_start_b
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->requestTextBoundsInfo(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/graphics/RectF;Landroid/os/ResultReceiver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    .line 828
    goto :goto_1e

    .line 826
    :catch_15
    move-exception v1

    .line 827
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 829
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method public blacklist sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 584
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 585
    const/4 v0, 0x1

    return v0

    .line 586
    :catch_b
    move-exception v0

    .line 587
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setComposingRegion(II)Z
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 457
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setComposingRegion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 458
    const/4 v0, 0x1

    return v0

    .line 459
    :catch_b
    move-exception v0

    .line 460
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 477
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 478
    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    .line 477
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setComposingRegionWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 479
    const/4 v0, 0x1

    return v0

    .line 480
    :catch_b
    move-exception v0

    .line 481
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 497
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 498
    const/4 v0, 0x1

    return v0

    .line 499
    :catch_b
    move-exception v0

    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 518
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 519
    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    .line 518
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setComposingTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 520
    const/4 v0, 0x1

    return v0

    .line 521
    :catch_b
    move-exception v0

    .line 522
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setImeConsumesInput(Z)Z
    .registers 4
    .param p1, "imeConsumesInput"    # Z

    .line 865
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setImeConsumesInput(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 866
    const/4 v0, 0x1

    return v0

    .line 867
    :catch_b
    move-exception v0

    .line 868
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setSelection(II)Z
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 402
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 403
    const/4 v0, 0x1

    return v0

    .line 404
    :catch_b
    move-exception v0

    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method
