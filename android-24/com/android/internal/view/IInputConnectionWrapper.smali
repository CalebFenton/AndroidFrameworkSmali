.class public abstract Lcom/android/internal/view/IInputConnectionWrapper;
.super Lcom/android/internal/view/IInputContext$Stub;
.source "IInputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;,
        Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    }
.end annotation


# static fields
.field private static final DO_BEGIN_BATCH_EDIT:I = 0x5a

.field private static final DO_CLEAR_META_KEY_STATES:I = 0x82

.field private static final DO_CLOSE_CONNECTION:I = 0x96

.field private static final DO_COMMIT_COMPLETION:I = 0x37

.field private static final DO_COMMIT_CORRECTION:I = 0x38

.field private static final DO_COMMIT_TEXT:I = 0x32

.field private static final DO_DELETE_SURROUNDING_TEXT:I = 0x50

.field private static final DO_DELETE_SURROUNDING_TEXT_IN_CODE_POINTS:I = 0x51

.field private static final DO_END_BATCH_EDIT:I = 0x5f

.field private static final DO_FINISH_COMPOSING_TEXT:I = 0x41

.field private static final DO_GET_CURSOR_CAPS_MODE:I = 0x1e

.field private static final DO_GET_EXTRACTED_TEXT:I = 0x28

.field private static final DO_GET_SELECTED_TEXT:I = 0x19

.field private static final DO_GET_TEXT_AFTER_CURSOR:I = 0xa

.field private static final DO_GET_TEXT_BEFORE_CURSOR:I = 0x14

.field private static final DO_PERFORM_CONTEXT_MENU_ACTION:I = 0x3b

.field private static final DO_PERFORM_EDITOR_ACTION:I = 0x3a

.field private static final DO_PERFORM_PRIVATE_COMMAND:I = 0x78

.field private static final DO_REPORT_FULLSCREEN_MODE:I = 0x64

.field private static final DO_REQUEST_UPDATE_CURSOR_ANCHOR_INFO:I = 0x8c

.field private static final DO_SEND_KEY_EVENT:I = 0x46

.field private static final DO_SET_COMPOSING_REGION:I = 0x3f

.field private static final DO_SET_COMPOSING_TEXT:I = 0x3c

.field private static final DO_SET_SELECTION:I = 0x39

.field static final TAG:Ljava/lang/String; = "IInputConnectionWrapper"


# instance fields
.field private mFinished:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mH:Landroid/os/Handler;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mInputMethodId:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "mainLooper"    # Landroid/os/Looper;
    .param p2, "inputConnection"    # Landroid/view/inputmethod/InputConnection;

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    #@3
    .line 71
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    #@a
    .line 73
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    #@d
    .line 96
    iput-object p2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    #@f
    .line 97
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    #@11
    .line 98
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;

    #@13
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    #@15
    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;-><init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@1a
    .line 95
    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    #@0
    .prologue
    .line 219
    const/16 v0, 0x5a

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 218
    return-void
.end method

.method public clearMetaKeyStates(I)V
    .locals 2
    .param p1, "states"    # I

    #@0
    .prologue
    .line 205
    const/16 v0, 0x82

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@a
    .line 204
    return-void
.end method

.method public closeConnection()V
    .locals 1

    #@0
    .prologue
    .line 241
    const/16 v0, 0x96

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 240
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 169
    const/16 v0, 0x37

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 168
    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    #@0
    .prologue
    .line 173
    const/16 v0, 0x38

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 172
    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    #@0
    .prologue
    .line 165
    const/16 v0, 0x32

    #@2
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 164
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    #@0
    .prologue
    .line 209
    const/16 v0, 0x50

    #@2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 208
    return-void
.end method

.method public deleteSurroundingTextInCodePoints(II)V
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    #@0
    .prologue
    .line 214
    const/16 v0, 0x51

    #@2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 213
    return-void
.end method

.method dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 248
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 249
    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    #@b
    .line 250
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    #@e
    .line 251
    return-void

    #@f
    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@11
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@14
    .line 244
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    #@0
    .prologue
    .line 223
    const/16 v0, 0x5f

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 222
    return-void
.end method

.method executeMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 258
    iget v6, p1, Landroid/os/Message;->what:I

    #@3
    sparse-switch v6, :sswitch_data_0

    #@6
    .line 556
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@9
    new-instance v7, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v8, "Unhandled message code: "

    #@11
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v7

    #@15
    iget v8, p1, Landroid/os/Message;->what:I

    #@17
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v7

    #@1b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 257
    return-void

    #@23
    .line 260
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@25
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@27
    .line 262
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@2a
    move-result-object v3

    #@2b
    .line 263
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_0

    #@2d
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@30
    move-result v6

    #@31
    if-eqz v6, :cond_0

    #@33
    .line 268
    iget-object v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@35
    .line 269
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@37
    iget v8, p1, Landroid/os/Message;->arg2:I

    #@39
    .line 268
    invoke-interface {v3, v7, v8}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    #@3c
    move-result-object v7

    #@3d
    .line 269
    iget v8, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@3f
    .line 268
    invoke-interface {v6, v7, v8}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V

    #@42
    .line 273
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return-void

    #@43
    .line 264
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@46
    const-string/jumbo v7, "getTextAfterCursor on inactive InputConnection"

    #@49
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 265
    iget-object v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@4e
    iget v7, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@50
    const/4 v8, 0x0

    #@51
    invoke-interface {v6, v8, v7}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    .line 266
    return-void

    #@55
    .line 270
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_0
    move-exception v1

    #@56
    .line 271
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@59
    const-string/jumbo v7, "Got RemoteException calling setTextAfterCursor"

    #@5c
    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5f
    goto :goto_0

    #@60
    .line 276
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@62
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@64
    .line 278
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@67
    move-result-object v3

    #@68
    .line 279
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_1

    #@6a
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@6d
    move-result v6

    #@6e
    if-eqz v6, :cond_1

    #@70
    .line 284
    iget-object v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@72
    .line 285
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@74
    iget v8, p1, Landroid/os/Message;->arg2:I

    #@76
    .line 284
    invoke-interface {v3, v7, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    #@79
    move-result-object v7

    #@7a
    .line 285
    iget v8, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@7c
    .line 284
    invoke-interface {v6, v7, v8}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V

    #@7f
    .line 289
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_1
    return-void

    #@80
    .line 280
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@83
    const-string/jumbo v7, "getTextBeforeCursor on inactive InputConnection"

    #@86
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    .line 281
    iget-object v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@8b
    iget v7, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@8d
    const/4 v8, 0x0

    #@8e
    invoke-interface {v6, v8, v7}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@91
    .line 282
    return-void

    #@92
    .line 286
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_1
    move-exception v1

    #@93
    .line 287
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@96
    const-string/jumbo v7, "Got RemoteException calling setTextBeforeCursor"

    #@99
    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9c
    goto :goto_1

    #@9d
    .line 292
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9f
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@a1
    .line 294
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@a4
    move-result-object v3

    #@a5
    .line 295
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_2

    #@a7
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@aa
    move-result v6

    #@ab
    if-eqz v6, :cond_2

    #@ad
    .line 300
    iget-object v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@af
    .line 301
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@b1
    .line 300
    invoke-interface {v3, v7}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    #@b4
    move-result-object v7

    #@b5
    .line 301
    iget v8, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@b7
    .line 300
    invoke-interface {v6, v7, v8}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V

    #@ba
    .line 305
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_2
    return-void

    #@bb
    .line 296
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@be
    const-string/jumbo v7, "getSelectedText on inactive InputConnection"

    #@c1
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c4
    .line 297
    iget-object v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@c6
    iget v7, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@c8
    const/4 v8, 0x0

    #@c9
    invoke-interface {v6, v8, v7}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@cc
    .line 298
    return-void

    #@cd
    .line 302
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_2
    move-exception v1

    #@ce
    .line 303
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@d1
    const-string/jumbo v7, "Got RemoteException calling setSelectedText"

    #@d4
    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@d7
    goto :goto_2

    #@d8
    .line 308
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@da
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@dc
    .line 310
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@df
    move-result-object v3

    #@e0
    .line 311
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_3

    #@e2
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@e5
    move-result v6

    #@e6
    if-eqz v6, :cond_3

    #@e8
    .line 316
    iget-object v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@ea
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@ec
    invoke-interface {v3, v7}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    #@ef
    move-result v7

    #@f0
    .line 317
    iget v8, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@f2
    .line 316
    invoke-interface {v6, v7, v8}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V

    #@f5
    .line 321
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_3
    return-void

    #@f6
    .line 312
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@f9
    const-string/jumbo v7, "getCursorCapsMode on inactive InputConnection"

    #@fc
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ff
    .line 313
    iget-object v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@101
    iget v7, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@103
    const/4 v8, 0x0

    #@104
    invoke-interface {v6, v8, v7}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    #@107
    .line 314
    return-void

    #@108
    .line 318
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_3
    move-exception v1

    #@109
    .line 319
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@10c
    const-string/jumbo v7, "Got RemoteException calling setCursorCapsMode"

    #@10f
    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@112
    goto :goto_3

    #@113
    .line 324
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@115
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@117
    .line 326
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@11a
    move-result-object v3

    #@11b
    .line 327
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_4

    #@11d
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@120
    move-result v6

    #@121
    if-eqz v6, :cond_4

    #@123
    .line 332
    iget-object v7, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@125
    .line 333
    iget-object v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    #@127
    check-cast v6, Landroid/view/inputmethod/ExtractedTextRequest;

    #@129
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@12b
    .line 332
    invoke-interface {v3, v6, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    #@12e
    move-result-object v6

    #@12f
    .line 333
    iget v8, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@131
    .line 332
    invoke-interface {v7, v6, v8}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V

    #@134
    .line 337
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_4
    return-void

    #@135
    .line 328
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@138
    const-string/jumbo v7, "getExtractedText on inactive InputConnection"

    #@13b
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13e
    .line 329
    iget-object v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@140
    iget v7, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@142
    const/4 v8, 0x0

    #@143
    invoke-interface {v6, v8, v7}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    #@146
    .line 330
    return-void

    #@147
    .line 334
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_4
    move-exception v1

    #@148
    .line 335
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@14b
    const-string/jumbo v7, "Got RemoteException calling setExtractedText"

    #@14e
    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@151
    goto :goto_4

    #@152
    .line 340
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@155
    move-result-object v3

    #@156
    .line 341
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_5

    #@158
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@15b
    move-result v6

    #@15c
    if-eqz v6, :cond_5

    #@15e
    .line 345
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@160
    check-cast v6, Ljava/lang/CharSequence;

    #@162
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@164
    invoke-interface {v3, v6, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@167
    .line 346
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    #@16a
    .line 347
    return-void

    #@16b
    .line 342
    :cond_5
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@16e
    const-string/jumbo v7, "commitText on inactive InputConnection"

    #@171
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@174
    .line 343
    return-void

    #@175
    .line 350
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@178
    move-result-object v3

    #@179
    .line 351
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_6

    #@17b
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@17e
    move-result v6

    #@17f
    if-eqz v6, :cond_6

    #@181
    .line 355
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@183
    iget v7, p1, Landroid/os/Message;->arg2:I

    #@185
    invoke-interface {v3, v6, v7}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    #@188
    .line 356
    return-void

    #@189
    .line 352
    :cond_6
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@18c
    const-string/jumbo v7, "setSelection on inactive InputConnection"

    #@18f
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@192
    .line 353
    return-void

    #@193
    .line 359
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@196
    move-result-object v3

    #@197
    .line 360
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_7

    #@199
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@19c
    move-result v6

    #@19d
    if-eqz v6, :cond_7

    #@19f
    .line 364
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@1a1
    invoke-interface {v3, v6}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    #@1a4
    .line 365
    return-void

    #@1a5
    .line 361
    :cond_7
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@1a8
    const-string/jumbo v7, "performEditorAction on inactive InputConnection"

    #@1ab
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1ae
    .line 362
    return-void

    #@1af
    .line 368
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@1b2
    move-result-object v3

    #@1b3
    .line 369
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_8

    #@1b5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@1b8
    move-result v6

    #@1b9
    if-eqz v6, :cond_8

    #@1bb
    .line 373
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@1bd
    invoke-interface {v3, v6}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    #@1c0
    .line 374
    return-void

    #@1c1
    .line 370
    :cond_8
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@1c4
    const-string/jumbo v7, "performContextMenuAction on inactive InputConnection"

    #@1c7
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1ca
    .line 371
    return-void

    #@1cb
    .line 377
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@1ce
    move-result-object v3

    #@1cf
    .line 378
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_9

    #@1d1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@1d4
    move-result v6

    #@1d5
    if-eqz v6, :cond_9

    #@1d7
    .line 382
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d9
    check-cast v6, Landroid/view/inputmethod/CompletionInfo;

    #@1db
    invoke-interface {v3, v6}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    #@1de
    .line 383
    return-void

    #@1df
    .line 379
    :cond_9
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@1e2
    const-string/jumbo v7, "commitCompletion on inactive InputConnection"

    #@1e5
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e8
    .line 380
    return-void

    #@1e9
    .line 386
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@1ec
    move-result-object v3

    #@1ed
    .line 387
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_a

    #@1ef
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@1f2
    move-result v6

    #@1f3
    if-eqz v6, :cond_a

    #@1f5
    .line 391
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f7
    check-cast v6, Landroid/view/inputmethod/CorrectionInfo;

    #@1f9
    invoke-interface {v3, v6}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    #@1fc
    .line 392
    return-void

    #@1fd
    .line 388
    :cond_a
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@200
    const-string/jumbo v7, "commitCorrection on inactive InputConnection"

    #@203
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@206
    .line 389
    return-void

    #@207
    .line 395
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@20a
    move-result-object v3

    #@20b
    .line 396
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_b

    #@20d
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@210
    move-result v6

    #@211
    if-eqz v6, :cond_b

    #@213
    .line 400
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@215
    check-cast v6, Ljava/lang/CharSequence;

    #@217
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@219
    invoke-interface {v3, v6, v7}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    #@21c
    .line 401
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    #@21f
    .line 402
    return-void

    #@220
    .line 397
    :cond_b
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@223
    const-string/jumbo v7, "setComposingText on inactive InputConnection"

    #@226
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@229
    .line 398
    return-void

    #@22a
    .line 405
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@22d
    move-result-object v3

    #@22e
    .line 406
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_c

    #@230
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@233
    move-result v6

    #@234
    if-eqz v6, :cond_c

    #@236
    .line 410
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@238
    iget v7, p1, Landroid/os/Message;->arg2:I

    #@23a
    invoke-interface {v3, v6, v7}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    #@23d
    .line 411
    return-void

    #@23e
    .line 407
    :cond_c
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@241
    const-string/jumbo v7, "setComposingRegion on inactive InputConnection"

    #@244
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@247
    .line 408
    return-void

    #@248
    .line 414
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@24b
    move-result-object v3

    #@24c
    .line 419
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v3, :cond_d

    #@24e
    .line 420
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@251
    const-string/jumbo v7, "finishComposingText on inactive InputConnection"

    #@254
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@257
    .line 421
    return-void

    #@258
    .line 423
    :cond_d
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@25b
    .line 424
    return-void

    #@25c
    .line 427
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@25f
    move-result-object v3

    #@260
    .line 428
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_e

    #@262
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@265
    move-result v6

    #@266
    if-eqz v6, :cond_e

    #@268
    .line 432
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@26a
    check-cast v6, Landroid/view/KeyEvent;

    #@26c
    invoke-interface {v3, v6}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    #@26f
    .line 433
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    #@272
    .line 434
    return-void

    #@273
    .line 429
    :cond_e
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@276
    const-string/jumbo v7, "sendKeyEvent on inactive InputConnection"

    #@279
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27c
    .line 430
    return-void

    #@27d
    .line 437
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@280
    move-result-object v3

    #@281
    .line 438
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_f

    #@283
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@286
    move-result v6

    #@287
    if-eqz v6, :cond_f

    #@289
    .line 442
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@28b
    invoke-interface {v3, v6}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    #@28e
    .line 443
    return-void

    #@28f
    .line 439
    :cond_f
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@292
    const-string/jumbo v7, "clearMetaKeyStates on inactive InputConnection"

    #@295
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@298
    .line 440
    return-void

    #@299
    .line 446
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_10
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@29c
    move-result-object v3

    #@29d
    .line 447
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_10

    #@29f
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@2a2
    move-result v6

    #@2a3
    if-eqz v6, :cond_10

    #@2a5
    .line 451
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@2a7
    iget v7, p1, Landroid/os/Message;->arg2:I

    #@2a9
    invoke-interface {v3, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    #@2ac
    .line 452
    return-void

    #@2ad
    .line 448
    :cond_10
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@2b0
    const-string/jumbo v7, "deleteSurroundingText on inactive InputConnection"

    #@2b3
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2b6
    .line 449
    return-void

    #@2b7
    .line 455
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_11
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@2ba
    move-result-object v3

    #@2bb
    .line 456
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_11

    #@2bd
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@2c0
    move-result v6

    #@2c1
    if-eqz v6, :cond_11

    #@2c3
    .line 460
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@2c5
    iget v7, p1, Landroid/os/Message;->arg2:I

    #@2c7
    invoke-interface {v3, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingTextInCodePoints(II)Z

    #@2ca
    .line 461
    return-void

    #@2cb
    .line 457
    :cond_11
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@2ce
    const-string/jumbo v7, "deleteSurroundingTextInCodePoints on inactive InputConnection"

    #@2d1
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d4
    .line 458
    return-void

    #@2d5
    .line 464
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_12
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@2d8
    move-result-object v3

    #@2d9
    .line 465
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_12

    #@2db
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@2de
    move-result v6

    #@2df
    if-eqz v6, :cond_12

    #@2e1
    .line 469
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    #@2e4
    .line 470
    return-void

    #@2e5
    .line 466
    :cond_12
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@2e8
    const-string/jumbo v7, "beginBatchEdit on inactive InputConnection"

    #@2eb
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2ee
    .line 467
    return-void

    #@2ef
    .line 473
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_13
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@2f2
    move-result-object v3

    #@2f3
    .line 474
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_13

    #@2f5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@2f8
    move-result v6

    #@2f9
    if-eqz v6, :cond_13

    #@2fb
    .line 478
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    #@2fe
    .line 479
    return-void

    #@2ff
    .line 475
    :cond_13
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@302
    const-string/jumbo v7, "endBatchEdit on inactive InputConnection"

    #@305
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@308
    .line 476
    return-void

    #@309
    .line 482
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_14
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@30c
    move-result-object v3

    #@30d
    .line 483
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v4, 0x0

    #@30e
    .line 484
    .local v4, "isBackground":Z
    if-eqz v3, :cond_15

    #@310
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@313
    move-result v6

    #@314
    if-eqz v6, :cond_15

    #@316
    .line 488
    :goto_5
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@318
    if-ne v6, v8, :cond_16

    #@31a
    const/4 v2, 0x1

    #@31b
    .line 489
    .local v2, "enabled":Z
    :goto_6
    if-nez v4, :cond_14

    #@31d
    .line 490
    invoke-interface {v3, v2}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    #@320
    .line 495
    :cond_14
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/view/IInputConnectionWrapper;->onReportFullscreenMode(ZZ)V

    #@323
    .line 496
    return-void

    #@324
    .line 485
    .end local v2    # "enabled":Z
    :cond_15
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@327
    const-string/jumbo v7, "reportFullscreenMode on inexistent InputConnection"

    #@32a
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32d
    .line 486
    const/4 v4, 0x1

    #@32e
    goto :goto_5

    #@32f
    .line 488
    :cond_16
    const/4 v2, 0x0

    #@330
    .restart local v2    # "enabled":Z
    goto :goto_6

    #@331
    .line 499
    .end local v2    # "enabled":Z
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v4    # "isBackground":Z
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@334
    move-result-object v3

    #@335
    .line 500
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_17

    #@337
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@33a
    move-result v6

    #@33b
    if-eqz v6, :cond_17

    #@33d
    .line 504
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33f
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@341
    .line 505
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    #@343
    check-cast v6, Ljava/lang/String;

    #@345
    .line 506
    iget-object v7, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    #@347
    check-cast v7, Landroid/os/Bundle;

    #@349
    .line 505
    invoke-interface {v3, v6, v7}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    #@34c
    .line 507
    return-void

    #@34d
    .line 501
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :cond_17
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@350
    const-string/jumbo v7, "performPrivateCommand on inactive InputConnection"

    #@353
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@356
    .line 502
    return-void

    #@357
    .line 510
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@359
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@35b
    .line 512
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@35e
    move-result-object v3

    #@35f
    .line 513
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_18

    #@361
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@364
    move-result v6

    #@365
    if-eqz v6, :cond_18

    #@367
    .line 518
    iget-object v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@369
    .line 519
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@36b
    invoke-interface {v3, v7}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    #@36e
    move-result v7

    #@36f
    iget v8, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@371
    .line 518
    invoke-interface {v6, v7, v8}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V

    #@374
    .line 523
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_7
    return-void

    #@375
    .line 514
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_18
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@378
    const-string/jumbo v7, "requestCursorAnchorInfo on inactive InputConnection"

    #@37b
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@37e
    .line 515
    iget-object v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@380
    iget v7, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@382
    const/4 v8, 0x0

    #@383
    invoke-interface {v6, v8, v7}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    #@386
    .line 516
    return-void

    #@387
    .line 520
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_5
    move-exception v1

    #@388
    .line 521
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "IInputConnectionWrapper"

    #@38b
    const-string/jumbo v7, "Got RemoteException calling requestCursorAnchorInfo"

    #@38e
    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@391
    goto :goto_7

    #@392
    .line 530
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_17
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isFinished()Z

    #@395
    move-result v6

    #@396
    if-eqz v6, :cond_19

    #@398
    .line 531
    return-void

    #@399
    .line 534
    :cond_19
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@39c
    move-result-object v3

    #@39d
    .line 539
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v3, :cond_1a

    #@39f
    .line 548
    iget-object v7, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    #@3a1
    monitor-enter v7

    #@3a2
    .line 549
    const/4 v6, 0x0

    #@3a3
    :try_start_7
    iput-object v6, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    #@3a5
    .line 550
    const/4 v6, 0x1

    #@3a6
    iput-boolean v6, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@3a8
    monitor-exit v7

    #@3a9
    .line 540
    return-void

    #@3aa
    .line 548
    :catchall_0
    move-exception v6

    #@3ab
    monitor-exit v7

    #@3ac
    throw v6

    #@3ad
    .line 543
    :cond_1a
    :try_start_8
    invoke-static {v3}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I

    #@3b0
    move-result v5

    #@3b1
    .line 544
    .local v5, "missingMethods":I
    and-int/lit8 v6, v5, 0x40

    #@3b3
    if-nez v6, :cond_1b

    #@3b5
    .line 545
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->closeConnection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@3b8
    .line 548
    :cond_1b
    iget-object v7, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    #@3ba
    monitor-enter v7

    #@3bb
    .line 549
    const/4 v6, 0x0

    #@3bc
    :try_start_9
    iput-object v6, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    #@3be
    .line 550
    const/4 v6, 0x1

    #@3bf
    iput-boolean v6, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@3c1
    monitor-exit v7

    #@3c2
    .line 553
    return-void

    #@3c3
    .line 548
    :catchall_1
    move-exception v6

    #@3c4
    monitor-exit v7

    #@3c5
    throw v6

    #@3c6
    .line 547
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v5    # "missingMethods":I
    :catchall_2
    move-exception v6

    #@3c7
    .line 548
    iget-object v7, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    #@3c9
    monitor-enter v7

    #@3ca
    .line 549
    const/4 v8, 0x0

    #@3cb
    :try_start_a
    iput-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    #@3cd
    .line 550
    const/4 v8, 0x1

    #@3ce
    iput-boolean v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@3d0
    monitor-exit v7

    #@3d1
    .line 547
    throw v6

    #@3d2
    .line 548
    :catchall_3
    move-exception v6

    #@3d3
    monitor-exit v7

    #@3d4
    throw v6

    #@3d5
    .line 258
    nop

    #@3d6
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x19 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
        0x32 -> :sswitch_5
        0x37 -> :sswitch_9
        0x38 -> :sswitch_a
        0x39 -> :sswitch_6
        0x3a -> :sswitch_7
        0x3b -> :sswitch_8
        0x3c -> :sswitch_b
        0x3f -> :sswitch_c
        0x41 -> :sswitch_d
        0x46 -> :sswitch_e
        0x50 -> :sswitch_10
        0x51 -> :sswitch_11
        0x5a -> :sswitch_12
        0x5f -> :sswitch_13
        0x64 -> :sswitch_14
        0x78 -> :sswitch_15
        0x82 -> :sswitch_f
        0x8c -> :sswitch_16
        0x96 -> :sswitch_17
    .end sparse-switch
.end method

.method public finishComposingText()V
    .locals 1

    #@0
    .prologue
    .line 197
    const/16 v0, 0x41

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 196
    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "reqModes"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    .line 155
    const/16 v0, 0x1e

    #@2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 154
    return-void
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    .line 160
    const/16 v1, 0x28

    #@2
    move-object v0, p0

    #@3
    move v2, p2

    #@4
    move-object v3, p1

    #@5
    move v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@e
    .line 159
    return-void
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 103
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getInputMethodId()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputMethodId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 115
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    .line 151
    const/16 v0, 0x19

    #@2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 150
    return-void
.end method

.method public getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    .line 143
    const/16 v1, 0xa

    #@2
    move-object v0, p0

    #@3
    move v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@e
    .line 142
    return-void
.end method

.method public getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    .line 147
    const/16 v1, 0x14

    #@2
    move-object v0, p0

    #@3
    move v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@e
    .line 146
    return-void
.end method

.method protected abstract isActive()Z
.end method

.method protected isFinished()Z
    .locals 2

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 110
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 109
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method obtainMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method obtainMessageII(III)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    #@0
    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "seq"    # I
    .param p5, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    .line 579
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@2
    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    #@5
    .line 580
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@7
    .line 581
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@9
    .line 582
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@b
    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "seq"    # I
    .param p5, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    .line 595
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@2
    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    #@5
    .line 596
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    #@7
    .line 597
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@9
    .line 598
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@b
    .line 599
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    .line 572
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@2
    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    #@5
    .line 573
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@7
    .line 574
    iput p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@9
    .line 575
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 568
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 607
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@3
    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    #@6
    .line 608
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    #@8
    .line 609
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    #@a
    .line 610
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@c
    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method obtainMessageOSC(ILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 586
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@3
    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    #@6
    .line 587
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    #@8
    .line 588
    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@a
    .line 589
    iput p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@c
    .line 590
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@e
    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method protected abstract onReportFullscreenMode(ZZ)V
.end method

.method protected abstract onUserAction()V
.end method

.method public performContextMenuAction(I)V
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 185
    const/16 v0, 0x3b

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@a
    .line 184
    return-void
.end method

.method public performEditorAction(I)V
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 181
    const/16 v0, 0x3a

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@a
    .line 180
    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 231
    const/16 v0, 0x78

    #@2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 230
    return-void
.end method

.method public reportFullscreenMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 227
    if-eqz p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    const/16 v2, 0x64

    #@6
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@d
    .line 226
    return-void

    #@e
    :cond_0
    move v0, v1

    #@f
    .line 227
    goto :goto_0
.end method

.method public requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "cursorUpdateMode"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    .line 236
    const/16 v0, 0x8c

    #@2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 235
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 201
    const/16 v0, 0x46

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 200
    return-void
.end method

.method public setComposingRegion(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 189
    const/16 v0, 0x3f

    #@2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 188
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    #@0
    .prologue
    .line 193
    const/16 v0, 0x3c

    #@2
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 192
    return-void
.end method

.method public setInputMethodId(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputMethodId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 122
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputMethodId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 120
    return-void

    #@7
    .line 121
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setSelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 177
    const/16 v0, 0x39

    #@2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 176
    return-void
.end method
