.class final Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;
.super Ljava/lang/Object;
.source "IRemoteAccessibilityInputConnectionInvoker.java"


# instance fields
.field private final blacklist mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field private final blacklist mSessionId:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 3
    .param p1, "inputContext"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "sessionId"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 39
    iput p2, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mSessionId:I

    .line 40
    return-void
.end method

.method public static blacklist create(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;
    .registers 3
    .param p0, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 51
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;-><init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-object v0
.end method


# virtual methods
.method public blacklist clearMetaKeyStates(I)V
    .registers 4
    .param p1, "states"    # I

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 229
    goto :goto_b

    .line 228
    :catch_a
    move-exception v0

    .line 230
    :goto_b
    return-void
.end method

.method public blacklist cloneWithSessionId(I)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;
    .registers 4
    .param p1, "sessionId"    # I

    .line 64
    new-instance v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    iget-object v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;-><init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-object v0
.end method

.method public blacklist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 99
    goto :goto_b

    .line 98
    :catch_a
    move-exception v0

    .line 100
    :goto_b
    return-void
.end method

.method blacklist createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .registers 3

    .line 82
    new-instance v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mSessionId:I

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;-><init>(I)V

    return-object v0
.end method

.method public blacklist deleteSurroundingText(II)V
    .registers 5
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 153
    goto :goto_b

    .line 152
    :catch_a
    move-exception v0

    .line 154
    :goto_b
    return-void
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

    .line 209
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 211
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 214
    goto :goto_13

    .line 212
    :catch_f
    move-exception v1

    .line 213
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 215
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

    .line 131
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    move-object v6, v0

    .line 133
    .local v6, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/view/inputmethod/SurroundingText;>;"
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

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
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 137
    goto :goto_1e

    .line 135
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

    .line 136
    .end local p2    # "afterLength":I
    .end local p3    # "flags":I
    .restart local v3    # "beforeLength":I
    .restart local v4    # "afterLength":I
    .restart local v5    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {v6, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 138
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-object v6
.end method

.method public blacklist isSameConnection(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;)Z
    .registers 5
    .param p1, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 74
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 75
    return v0

    .line 77
    :cond_4
    iget-object v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public blacklist performContextMenuAction(I)V
    .registers 4
    .param p1, "id"    # I

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 195
    goto :goto_b

    .line 194
    :catch_a
    move-exception v0

    .line 196
    :goto_b
    return-void
.end method

.method public blacklist performEditorAction(I)V
    .registers 4
    .param p1, "actionCode"    # I

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 181
    goto :goto_b

    .line 180
    :catch_a
    move-exception v0

    .line 182
    :goto_b
    return-void
.end method

.method public blacklist sendKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 167
    goto :goto_b

    .line 166
    :catch_a
    move-exception v0

    .line 168
    :goto_b
    return-void
.end method

.method public blacklist setSelection(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 114
    goto :goto_b

    .line 113
    :catch_a
    move-exception v0

    .line 115
    :goto_b
    return-void
.end method
