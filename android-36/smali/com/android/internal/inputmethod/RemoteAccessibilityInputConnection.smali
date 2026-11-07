.class public final Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
.super Ljava/lang/Object;
.source "RemoteAccessibilityInputConnection.java"


# static fields
.field private static final blacklist MAX_WAIT_TIME_MILLIS:I = 0x7d0

.field private static final blacklist TAG:Ljava/lang/String; = "RemoteA11yInputConnection"


# instance fields
.field private final blacklist mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

.field blacklist mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/CancellationGroup;)V
    .registers 4
    .param p1, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "cancellationGroup"    # Lcom/android/internal/inputmethod/CancellationGroup;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->create(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    .line 59
    iput-object p2, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;I)V
    .registers 4
    .param p1, "original"    # Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    .param p2, "sessionId"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget-object v0, p1, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->cloneWithSessionId(I)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    .line 65
    iget-object v0, p1, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    iput-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 66
    return-void
.end method


# virtual methods
.method public blacklist clearMetaKeyStates(I)V
    .registers 3
    .param p1, "states"    # I

    .line 199
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->clearMetaKeyStates(I)V

    .line 200
    return-void
.end method

.method public blacklist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 90
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    .line 91
    return-void
.end method

.method public blacklist deleteSurroundingText(II)V
    .registers 4
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 136
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->deleteSurroundingText(II)V

    .line 137
    return-void
.end method

.method public blacklist getCursorCapsMode(I)I
    .registers 9
    .param p1, "reqModes"    # I

    .line 181
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 182
    const/4 v0, 0x0

    return v0

    .line 185
    :cond_a
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->getCursorCapsMode(I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    .line 187
    .local v1, "value":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteA11yInputConnection"

    const-string v3, "getCursorCapsMode()"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrZero(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)I

    move-result v0

    return v0
.end method

.method public blacklist getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .registers 11
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "flags"    # I

    .line 117
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_a
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->getSurroundingText(III)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    .line 123
    .local v1, "value":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/view/inputmethod/SurroundingText;>;"
    iget-object v4, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteA11yInputConnection"

    const-string v3, "getSurroundingText()"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/SurroundingText;

    return-object v0
.end method

.method public blacklist isSameConnection(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;)Z
    .registers 3
    .param p1, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 76
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->isSameConnection(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;)Z

    move-result v0

    return v0
.end method

.method public blacklist performContextMenuAction(I)V
    .registers 3
    .param p1, "id"    # I

    .line 169
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->performContextMenuAction(I)V

    .line 170
    return-void
.end method

.method public blacklist performEditorAction(I)V
    .registers 3
    .param p1, "actionCode"    # I

    .line 158
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->performEditorAction(I)V

    .line 159
    return-void
.end method

.method public blacklist sendKeyEvent(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 147
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->sendKeyEvent(Landroid/view/KeyEvent;)V

    .line 148
    return-void
.end method

.method public blacklist setSelection(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 102
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->setSelection(II)V

    .line 103
    return-void
.end method
