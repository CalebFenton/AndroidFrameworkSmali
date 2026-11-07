.class final Landroid/view/inputmethod/IInputMethodSessionInvoker;
.super Ljava/lang/Object;
.source "IInputMethodSessionInvoker.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodSessionWrapper"

.field private static blacklist sAsyncBinderEmulationHandler:Landroid/os/Handler;

.field private static final blacklist sAsyncBinderEmulationHandlerLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mCustomHandler:Landroid/os/Handler;

.field private final blacklist mSession:Lcom/android/internal/inputmethod/IInputMethodSession;


# direct methods
.method public static synthetic blacklist $r8$lambda$31vpNOzQGW8rOnf_6t7MbbL6kPc(Landroid/view/inputmethod/IInputMethodSessionInvoker;ILandroid/view/inputmethod/ExtractedText;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->lambda$updateExtractedText$2(ILandroid/view/inputmethod/ExtractedText;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7BWK4m0xuSeCgtwFSKMSLANFdRg(Landroid/view/inputmethod/IInputMethodSessionInvoker;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->finishInputInternal()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EbPxi0XYPX5hK85VMISAxtm89-4(Landroid/view/inputmethod/IInputMethodSessionInvoker;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->lambda$invalidateInput$7(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$M7MNaYPOrmYIPzNIH01_JjWW-10(Landroid/view/inputmethod/IInputMethodSessionInvoker;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->lambda$updateCursorAnchorInfo$0(Landroid/view/inputmethod/CursorAnchorInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QUJ-zQMIB425UVNuYnEj4fcQYro(Landroid/view/inputmethod/IInputMethodSessionInvoker;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->lambda$appPrivateCommand$3(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pRRhb6pwbh8MEmz3aWA8wFejiec(Landroid/view/inputmethod/IInputMethodSessionInvoker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->lambda$viewClicked$4(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$r4itiwUHJxo5w9MQQnCocVBcGmM(Landroid/view/inputmethod/IInputMethodSessionInvoker;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->lambda$updateCursor$5(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vrVC47yjuV1AoTAJcbktiCBhNd4(Landroid/view/inputmethod/IInputMethodSessionInvoker;[Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->lambda$displayCompletions$1([Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ztlbwNmjoslWF9FXNnHNSQARG3M(Landroid/view/inputmethod/IInputMethodSessionInvoker;IIIIII)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->lambda$updateSelection$6(IIIIII)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->sAsyncBinderEmulationHandlerLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/os/Handler;)V
    .registers 3
    .param p1, "inputMethodSession"    # Lcom/android/internal/inputmethod/IInputMethodSession;
    .param p2, "customHandler"    # Landroid/os/Handler;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 67
    iput-object p2, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method private blacklist appPrivateCommandInternal(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 184
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 187
    goto :goto_e

    .line 185
    :catch_6
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public static blacklist createOrNull(Lcom/android/internal/inputmethod/IInputMethodSession;)Landroid/view/inputmethod/IInputMethodSessionInvoker;
    .registers 4
    .param p0, "inputMethodSession"    # Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 82
    if-eqz p0, :cond_2a

    invoke-static {p0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 83
    sget-object v0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->sAsyncBinderEmulationHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_b
    sget-object v1, Landroid/view/inputmethod/IInputMethodSessionInvoker;->sAsyncBinderEmulationHandler:Landroid/os/Handler;

    if-nez v1, :cond_23

    .line 85
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "IMM.binder-emu"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 88
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v2

    sput-object v2, Landroid/view/inputmethod/IInputMethodSessionInvoker;->sAsyncBinderEmulationHandler:Landroid/os/Handler;

    .line 90
    .end local v1    # "thread":Landroid/os/HandlerThread;
    :cond_23
    sget-object v1, Landroid/view/inputmethod/IInputMethodSessionInvoker;->sAsyncBinderEmulationHandler:Landroid/os/Handler;

    .line 91
    .local v1, "customHandler":Landroid/os/Handler;
    monitor-exit v0

    goto :goto_2b

    .end local v1    # "customHandler":Landroid/os/Handler;
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw v1

    .line 93
    :cond_2a
    const/4 v1, 0x0

    .line 96
    .restart local v1    # "customHandler":Landroid/os/Handler;
    :goto_2b
    if-eqz p0, :cond_33

    .line 97
    new-instance v0, Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;-><init>(Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/os/Handler;)V

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    .line 96
    :goto_34
    return-object v0
.end method

.method private blacklist finishInputInternal()V
    .registers 4

    .line 112
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodSession;->finishInput()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 115
    goto :goto_e

    .line 113
    :catch_6
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private blacklist invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 7
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p3, "sessionId"    # I

    .line 264
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IInputMethodSession;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 267
    goto :goto_e

    .line 265
    :catch_6
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private synthetic blacklist lambda$appPrivateCommand$3(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 177
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->appPrivateCommandInternal(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$displayCompletions$1([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 141
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->displayCompletionsInternal([Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$invalidateInput$7(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 4
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p3, "sessionId"    # I

    .line 255
    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateCursor$5(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "newCursor"    # Landroid/graphics/Rect;

    .line 213
    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursorInternal(Landroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateCursorAnchorInfo$0(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 2
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 123
    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursorAnchorInfoInternal(Landroid/view/inputmethod/CursorAnchorInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateExtractedText$2(ILandroid/view/inputmethod/ExtractedText;)V
    .registers 3
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 159
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateExtractedTextInternal(ILandroid/view/inputmethod/ExtractedText;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSelection$6(IIIIII)V
    .registers 7
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "selStart"    # I
    .param p4, "selEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 233
    invoke-direct/range {p0 .. p6}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateSelectionInternal(IIIIII)V

    return-void
.end method

.method private synthetic blacklist lambda$viewClicked$4(Z)V
    .registers 2
    .param p1, "focusChanged"    # Z

    .line 195
    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->viewClickedInternal(Z)V

    return-void
.end method

.method private blacklist updateCursorAnchorInfoInternal(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 5
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 130
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodSession;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 133
    goto :goto_e

    .line 131
    :catch_6
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private blacklist updateCursorInternal(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "newCursor"    # Landroid/graphics/Rect;

    .line 220
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodSession;->updateCursor(Landroid/graphics/Rect;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 223
    goto :goto_e

    .line 221
    :catch_6
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private blacklist updateExtractedTextInternal(ILandroid/view/inputmethod/ExtractedText;)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 166
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 169
    goto :goto_e

    .line 167
    :catch_6
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private blacklist updateSelectionInternal(IIIIII)V
    .registers 14
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "selStart"    # I
    .param p4, "selEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 242
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_f

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "oldSelStart":I
    .end local p2    # "oldSelEnd":I
    .end local p3    # "selStart":I
    .end local p4    # "selEnd":I
    .end local p5    # "candidatesStart":I
    .end local p6    # "candidatesEnd":I
    .local v1, "oldSelStart":I
    .local v2, "oldSelEnd":I
    .local v3, "selStart":I
    .local v4, "selEnd":I
    .local v5, "candidatesStart":I
    .local v6, "candidatesEnd":I
    :try_start_8
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/inputmethod/IInputMethodSession;->updateSelection(IIIIII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 246
    goto :goto_1e

    .line 244
    :catch_c
    move-exception v0

    move-object p1, v0

    goto :goto_17

    .end local v1    # "oldSelStart":I
    .end local v2    # "oldSelEnd":I
    .end local v3    # "selStart":I
    .end local v4    # "selEnd":I
    .end local v5    # "candidatesStart":I
    .end local v6    # "candidatesEnd":I
    .restart local p1    # "oldSelStart":I
    .restart local p2    # "oldSelEnd":I
    .restart local p3    # "selStart":I
    .restart local p4    # "selEnd":I
    .restart local p5    # "candidatesStart":I
    .restart local p6    # "candidatesEnd":I
    :catch_f
    move-exception v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object p1, v0

    .line 245
    .end local p2    # "oldSelEnd":I
    .end local p3    # "selStart":I
    .end local p4    # "selEnd":I
    .end local p5    # "candidatesStart":I
    .end local p6    # "candidatesEnd":I
    .restart local v1    # "oldSelStart":I
    .restart local v2    # "oldSelEnd":I
    .restart local v3    # "selStart":I
    .restart local v4    # "selEnd":I
    .restart local v5    # "candidatesStart":I
    .restart local v6    # "candidatesEnd":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_17
    const-string p2, "InputMethodSessionWrapper"

    const-string p3, "IME died"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method private blacklist viewClickedInternal(Z)V
    .registers 5
    .param p1, "focusChanged"    # Z

    .line 202
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodSession;->viewClicked(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 205
    goto :goto_e

    .line 203
    :catch_6
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method


# virtual methods
.method blacklist appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 174
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_8

    .line 175
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->appPrivateCommandInternal(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_12

    .line 177
    :cond_8
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda7;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    :goto_12
    return-void
.end method

.method blacklist displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 4
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 138
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_8

    .line 139
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->displayCompletionsInternal([Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_12

    .line 141
    :cond_8
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda6;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;[Landroid/view/inputmethod/CompletionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    :goto_12
    return-void
.end method

.method blacklist displayCompletionsInternal([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 5
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 148
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 151
    goto :goto_e

    .line 149
    :catch_6
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method blacklist finishInput()V
    .registers 3

    .line 102
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_8

    .line 103
    invoke-direct {p0}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->finishInputInternal()V

    goto :goto_12

    .line 105
    :cond_8
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda5;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    :goto_12
    return-void
.end method

.method blacklist invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 6
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p3, "sessionId"    # I

    .line 252
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_8

    .line 253
    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    goto :goto_12

    .line 255
    :cond_8
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    :goto_12
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 277
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodSession;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist updateCursor(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "newCursor"    # Landroid/graphics/Rect;

    .line 210
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_8

    .line 211
    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursorInternal(Landroid/graphics/Rect;)V

    goto :goto_12

    .line 213
    :cond_8
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda1;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    :goto_12
    return-void
.end method

.method blacklist updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 4
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 120
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_8

    .line 121
    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursorAnchorInfoInternal(Landroid/view/inputmethod/CursorAnchorInfo;)V

    goto :goto_12

    .line 123
    :cond_8
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda4;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;Landroid/view/inputmethod/CursorAnchorInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    :goto_12
    return-void
.end method

.method blacklist updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 156
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_8

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateExtractedTextInternal(ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_12

    .line 159
    :cond_8
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;ILandroid/view/inputmethod/ExtractedText;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    :goto_12
    return-void
.end method

.method blacklist updateSelection(IIIIII)V
    .registers 16
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "selStart"    # I
    .param p4, "selEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 229
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_9

    .line 230
    invoke-direct/range {p0 .. p6}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateSelectionInternal(IIIIII)V

    move-object v2, p0

    goto :goto_1a

    .line 233
    :cond_9
    move-object v2, p0

    iget-object v0, v2, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda8;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .end local p1    # "oldSelStart":I
    .end local p2    # "oldSelEnd":I
    .end local p3    # "selStart":I
    .end local p4    # "selEnd":I
    .end local p5    # "candidatesStart":I
    .end local p6    # "candidatesEnd":I
    .local v3, "oldSelStart":I
    .local v4, "oldSelEnd":I
    .local v5, "selStart":I
    .local v6, "selEnd":I
    .local v7, "candidatesStart":I
    .local v8, "candidatesEnd":I
    invoke-direct/range {v1 .. v8}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda8;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;IIIIII)V

    .end local v3    # "oldSelStart":I
    .end local v4    # "oldSelEnd":I
    .end local v5    # "selStart":I
    .end local v6    # "selEnd":I
    .end local v7    # "candidatesStart":I
    .end local v8    # "candidatesEnd":I
    .restart local p1    # "oldSelStart":I
    .restart local p2    # "oldSelEnd":I
    .restart local p3    # "selStart":I
    .restart local p4    # "selEnd":I
    .restart local p5    # "candidatesStart":I
    .restart local p6    # "candidatesEnd":I
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    :goto_1a
    return-void
.end method

.method blacklist viewClicked(Z)V
    .registers 4
    .param p1, "focusChanged"    # Z

    .line 192
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_8

    .line 193
    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->viewClickedInternal(Z)V

    goto :goto_12

    .line 195
    :cond_8
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda3;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    :goto_12
    return-void
.end method
