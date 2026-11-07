.class final Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;
.super Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;
.source "AccessibilityInputMethodSessionWrapper.java"


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/accessibilityservice/AccessibilityInputMethodSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$30z7XTXxohrgSLkuDZwX8E6VvXc(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;IIIIII)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->lambda$updateSelection$0(IIIIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KbzcIbsESe6V8d27iiiqUlsOMP0(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doFinishSession()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QsD4e57Q7rFSzMmkYEJd64kgyYQ(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->lambda$invalidateInput$1(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tmk09NY5t0y14mtiAgXqAIfDILQ(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doFinishInput()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityInputMethodSession;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "session"    # Landroid/accessibilityservice/AccessibilityInputMethodSession;

    .line 38
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    invoke-static {p1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method private blacklist doFinishInput()V
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    .line 81
    .local v0, "session":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    if-eqz v0, :cond_d

    .line 82
    invoke-interface {v0}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->finishInput()V

    .line 84
    :cond_d
    return-void
.end method

.method private blacklist doFinishSession()V
    .registers 3

    .line 96
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method private blacklist doInvalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 5
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p3, "sessionId"    # I

    .line 111
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    .line 112
    .local v0, "session":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    if-eqz v0, :cond_d

    .line 113
    invoke-interface {v0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    .line 115
    :cond_d
    return-void
.end method

.method private blacklist doUpdateSelection(IIIIII)V
    .registers 15
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 63
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    .line 64
    .local v1, "session":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    if-eqz v1, :cond_15

    .line 65
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "oldSelStart":I
    .end local p2    # "oldSelEnd":I
    .end local p3    # "newSelStart":I
    .end local p4    # "newSelEnd":I
    .end local p5    # "candidatesStart":I
    .end local p6    # "candidatesEnd":I
    .local v2, "oldSelStart":I
    .local v3, "oldSelEnd":I
    .local v4, "newSelStart":I
    .local v5, "newSelEnd":I
    .local v6, "candidatesStart":I
    .local v7, "candidatesEnd":I
    invoke-interface/range {v1 .. v7}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->updateSelection(IIIIII)V

    goto :goto_1b

    .line 64
    .end local v2    # "oldSelStart":I
    .end local v3    # "oldSelEnd":I
    .end local v4    # "newSelStart":I
    .end local v5    # "newSelEnd":I
    .end local v6    # "candidatesStart":I
    .end local v7    # "candidatesEnd":I
    .restart local p1    # "oldSelStart":I
    .restart local p2    # "oldSelEnd":I
    .restart local p3    # "newSelStart":I
    .restart local p4    # "newSelEnd":I
    .restart local p5    # "candidatesStart":I
    .restart local p6    # "candidatesEnd":I
    :cond_15
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 68
    .end local p1    # "oldSelStart":I
    .end local p2    # "oldSelEnd":I
    .end local p3    # "newSelStart":I
    .end local p4    # "newSelEnd":I
    .end local p5    # "candidatesStart":I
    .end local p6    # "candidatesEnd":I
    .restart local v2    # "oldSelStart":I
    .restart local v3    # "oldSelEnd":I
    .restart local v4    # "newSelStart":I
    .restart local v5    # "newSelEnd":I
    .restart local v6    # "candidatesStart":I
    .restart local v7    # "candidatesEnd":I
    :goto_1b
    return-void
.end method

.method private synthetic blacklist lambda$invalidateInput$1(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 4
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p3, "sessionId"    # I

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doInvalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSelection$0(IIIIII)V
    .registers 7
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 56
    invoke-direct/range {p0 .. p6}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doUpdateSelection(IIIIII)V

    return-void
.end method


# virtual methods
.method public blacklist finishInput()V
    .registers 3

    .line 72
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 73
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doFinishInput()V

    goto :goto_1a

    .line 75
    :cond_10
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    :goto_1a
    return-void
.end method

.method public blacklist finishSession()V
    .registers 3

    .line 88
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 89
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doFinishSession()V

    goto :goto_1a

    .line 91
    :cond_10
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    :goto_1a
    return-void
.end method

.method blacklist getSession()Landroid/accessibilityservice/AccessibilityInputMethodSession;
    .registers 2

    .line 46
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    return-object v0
.end method

.method public blacklist invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 6
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p3, "sessionId"    # I

    .line 102
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doInvalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    goto :goto_1a

    .line 105
    :cond_10
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    :goto_1a
    return-void
.end method

.method public blacklist updateSelection(IIIIII)V
    .registers 16
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 52
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 53
    invoke-direct/range {p0 .. p6}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doUpdateSelection(IIIIII)V

    move-object v2, p0

    goto :goto_22

    .line 56
    :cond_11
    move-object v2, p0

    iget-object v0, v2, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda1;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .end local p1    # "oldSelStart":I
    .end local p2    # "oldSelEnd":I
    .end local p3    # "newSelStart":I
    .end local p4    # "newSelEnd":I
    .end local p5    # "candidatesStart":I
    .end local p6    # "candidatesEnd":I
    .local v3, "oldSelStart":I
    .local v4, "oldSelEnd":I
    .local v5, "newSelStart":I
    .local v6, "newSelEnd":I
    .local v7, "candidatesStart":I
    .local v8, "candidatesEnd":I
    invoke-direct/range {v1 .. v8}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;IIIIII)V

    .end local v3    # "oldSelStart":I
    .end local v4    # "oldSelEnd":I
    .end local v5    # "newSelStart":I
    .end local v6    # "newSelEnd":I
    .end local v7    # "candidatesStart":I
    .end local v8    # "candidatesEnd":I
    .restart local p1    # "oldSelStart":I
    .restart local p2    # "oldSelEnd":I
    .restart local p3    # "newSelStart":I
    .restart local p4    # "newSelEnd":I
    .restart local p5    # "candidatesStart":I
    .restart local p6    # "candidatesEnd":I
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    :goto_22
    return-void
.end method
