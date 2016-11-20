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

.field private static final DO_COMMIT_CONTENT:I = 0xa0

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
    .line 97
    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    #@3
    .line 73
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    #@a
    .line 75
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    #@d
    .line 98
    iput-object p2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    #@f
    .line 99
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    #@11
    .line 100
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;

    #@13
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    #@15
    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;-><init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@1a
    .line 97
    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    #@0
    .prologue
    .line 221
    const/16 v0, 0x5a

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 220
    return-void
.end method

.method public clearMetaKeyStates(I)V
    .locals 2
    .param p1, "states"    # I

    #@0
    .prologue
    .line 207
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
    .line 206
    return-void
.end method

.method public closeConnection()V
    .locals 1

    #@0
    .prologue
    .line 243
    const/16 v0, 0x96

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 242
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 171
    const/16 v0, 0x37

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 170
    return-void
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;ILcom/android/internal/view/IInputContextCallback;)V
    .locals 7
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "seq"    # I
    .param p5, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    .line 248
    const/16 v1, 0xa0

    #@2
    move-object v0, p0

    #@3
    move v2, p2

    #@4
    move-object v3, p1

    #@5
    move-object v4, p3

    #@6
    move v5, p4

    #@7
    move-object v6, p5

    #@8
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOOSC(IILjava/lang/Object;Ljava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@f
    .line 247
    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    #@0
    .prologue
    .line 175
    const/16 v0, 0x38

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 174
    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    #@0
    .prologue
    .line 167
    const/16 v0, 0x32

    #@2
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 166
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    #@0
    .prologue
    .line 211
    const/16 v0, 0x50

    #@2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 210
    return-void
.end method

.method public deleteSurroundingTextInCodePoints(II)V
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    #@0
    .prologue
    .line 216
    const/16 v0, 0x51

    #@2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 215
    return-void
.end method

.method dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 256
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 257
    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    #@b
    .line 258
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    #@e
    .line 259
    return-void

    #@f
    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@11
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@14
    .line 252
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    #@0
    .prologue
    .line 225
    const/16 v0, 0x5f

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 224
    return-void
.end method

.method executeMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    .line 266
    iget v10, p1, Landroid/os/Message;->what:I

    #@3
    sparse-switch v10, :sswitch_data_0

    #@6
    .line 599
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@9
    new-instance v11, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v12, "Unhandled message code: "

    #@11
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v11

    #@15
    iget v12, p1, Landroid/os/Message;->what:I

    #@17
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v11

    #@1b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v11

    #@1f
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 265
    return-void

    #@23
    .line 268
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@25
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@27
    .line 270
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@2a
    move-result-object v5

    #@2b
    .line 271
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_0

    #@2d
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@30
    move-result v10

    #@31
    if-eqz v10, :cond_0

    #@33
    .line 276
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@35
    .line 277
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@37
    iget v12, p1, Landroid/os/Message;->arg2:I

    #@39
    .line 276
    invoke-interface {v5, v11, v12}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    #@3c
    move-result-object v11

    #@3d
    .line 277
    iget v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@3f
    .line 276
    invoke-interface {v10, v11, v12}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V

    #@42
    .line 281
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return-void

    #@43
    .line 272
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@46
    const-string/jumbo v11, "getTextAfterCursor on inactive InputConnection"

    #@49
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 273
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@4e
    iget v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@50
    const/4 v12, 0x0

    #@51
    invoke-interface {v10, v12, v11}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    .line 274
    return-void

    #@55
    .line 278
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_0
    move-exception v1

    #@56
    .line 279
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@59
    const-string/jumbo v11, "Got RemoteException calling setTextAfterCursor"

    #@5c
    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5f
    goto :goto_0

    #@60
    .line 284
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@62
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@64
    .line 286
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@67
    move-result-object v5

    #@68
    .line 287
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_1

    #@6a
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@6d
    move-result v10

    #@6e
    if-eqz v10, :cond_1

    #@70
    .line 292
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@72
    .line 293
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@74
    iget v12, p1, Landroid/os/Message;->arg2:I

    #@76
    .line 292
    invoke-interface {v5, v11, v12}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    #@79
    move-result-object v11

    #@7a
    .line 293
    iget v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@7c
    .line 292
    invoke-interface {v10, v11, v12}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V

    #@7f
    .line 297
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_1
    return-void

    #@80
    .line 288
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@83
    const-string/jumbo v11, "getTextBeforeCursor on inactive InputConnection"

    #@86
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    .line 289
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@8b
    iget v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@8d
    const/4 v12, 0x0

    #@8e
    invoke-interface {v10, v12, v11}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@91
    .line 290
    return-void

    #@92
    .line 294
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_1
    move-exception v1

    #@93
    .line 295
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@96
    const-string/jumbo v11, "Got RemoteException calling setTextBeforeCursor"

    #@99
    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9c
    goto :goto_1

    #@9d
    .line 300
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9f
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@a1
    .line 302
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@a4
    move-result-object v5

    #@a5
    .line 303
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_2

    #@a7
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@aa
    move-result v10

    #@ab
    if-eqz v10, :cond_2

    #@ad
    .line 308
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@af
    .line 309
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@b1
    .line 308
    invoke-interface {v5, v11}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    #@b4
    move-result-object v11

    #@b5
    .line 309
    iget v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@b7
    .line 308
    invoke-interface {v10, v11, v12}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V

    #@ba
    .line 313
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_2
    return-void

    #@bb
    .line 304
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@be
    const-string/jumbo v11, "getSelectedText on inactive InputConnection"

    #@c1
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c4
    .line 305
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@c6
    iget v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@c8
    const/4 v12, 0x0

    #@c9
    invoke-interface {v10, v12, v11}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@cc
    .line 306
    return-void

    #@cd
    .line 310
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_2
    move-exception v1

    #@ce
    .line 311
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@d1
    const-string/jumbo v11, "Got RemoteException calling setSelectedText"

    #@d4
    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@d7
    goto :goto_2

    #@d8
    .line 316
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@da
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@dc
    .line 318
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@df
    move-result-object v5

    #@e0
    .line 319
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_3

    #@e2
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@e5
    move-result v10

    #@e6
    if-eqz v10, :cond_3

    #@e8
    .line 324
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@ea
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@ec
    invoke-interface {v5, v11}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    #@ef
    move-result v11

    #@f0
    .line 325
    iget v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@f2
    .line 324
    invoke-interface {v10, v11, v12}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V

    #@f5
    .line 329
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_3
    return-void

    #@f6
    .line 320
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@f9
    const-string/jumbo v11, "getCursorCapsMode on inactive InputConnection"

    #@fc
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ff
    .line 321
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@101
    iget v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@103
    const/4 v12, 0x0

    #@104
    invoke-interface {v10, v12, v11}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    #@107
    .line 322
    return-void

    #@108
    .line 326
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_3
    move-exception v1

    #@109
    .line 327
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@10c
    const-string/jumbo v11, "Got RemoteException calling setCursorCapsMode"

    #@10f
    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@112
    goto :goto_3

    #@113
    .line 332
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@115
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@117
    .line 334
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@11a
    move-result-object v5

    #@11b
    .line 335
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_4

    #@11d
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@120
    move-result v10

    #@121
    if-eqz v10, :cond_4

    #@123
    .line 340
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@125
    .line 341
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    #@127
    check-cast v10, Landroid/view/inputmethod/ExtractedTextRequest;

    #@129
    iget v12, p1, Landroid/os/Message;->arg1:I

    #@12b
    .line 340
    invoke-interface {v5, v10, v12}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    #@12e
    move-result-object v10

    #@12f
    .line 341
    iget v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@131
    .line 340
    invoke-interface {v11, v10, v12}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V

    #@134
    .line 345
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_4
    return-void

    #@135
    .line 336
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@138
    const-string/jumbo v11, "getExtractedText on inactive InputConnection"

    #@13b
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13e
    .line 337
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@140
    iget v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@142
    const/4 v12, 0x0

    #@143
    invoke-interface {v10, v12, v11}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    #@146
    .line 338
    return-void

    #@147
    .line 342
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_4
    move-exception v1

    #@148
    .line 343
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@14b
    const-string/jumbo v11, "Got RemoteException calling setExtractedText"

    #@14e
    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@151
    goto :goto_4

    #@152
    .line 348
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@155
    move-result-object v5

    #@156
    .line 349
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_5

    #@158
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@15b
    move-result v10

    #@15c
    if-eqz v10, :cond_5

    #@15e
    .line 353
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@160
    check-cast v10, Ljava/lang/CharSequence;

    #@162
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@164
    invoke-interface {v5, v10, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@167
    .line 354
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    #@16a
    .line 355
    return-void

    #@16b
    .line 350
    :cond_5
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@16e
    const-string/jumbo v11, "commitText on inactive InputConnection"

    #@171
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@174
    .line 351
    return-void

    #@175
    .line 358
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@178
    move-result-object v5

    #@179
    .line 359
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_6

    #@17b
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@17e
    move-result v10

    #@17f
    if-eqz v10, :cond_6

    #@181
    .line 363
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@183
    iget v11, p1, Landroid/os/Message;->arg2:I

    #@185
    invoke-interface {v5, v10, v11}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    #@188
    .line 364
    return-void

    #@189
    .line 360
    :cond_6
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@18c
    const-string/jumbo v11, "setSelection on inactive InputConnection"

    #@18f
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@192
    .line 361
    return-void

    #@193
    .line 367
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@196
    move-result-object v5

    #@197
    .line 368
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_7

    #@199
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@19c
    move-result v10

    #@19d
    if-eqz v10, :cond_7

    #@19f
    .line 372
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@1a1
    invoke-interface {v5, v10}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    #@1a4
    .line 373
    return-void

    #@1a5
    .line 369
    :cond_7
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@1a8
    const-string/jumbo v11, "performEditorAction on inactive InputConnection"

    #@1ab
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1ae
    .line 370
    return-void

    #@1af
    .line 376
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@1b2
    move-result-object v5

    #@1b3
    .line 377
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_8

    #@1b5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@1b8
    move-result v10

    #@1b9
    if-eqz v10, :cond_8

    #@1bb
    .line 381
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@1bd
    invoke-interface {v5, v10}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    #@1c0
    .line 382
    return-void

    #@1c1
    .line 378
    :cond_8
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@1c4
    const-string/jumbo v11, "performContextMenuAction on inactive InputConnection"

    #@1c7
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1ca
    .line 379
    return-void

    #@1cb
    .line 385
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@1ce
    move-result-object v5

    #@1cf
    .line 386
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_9

    #@1d1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@1d4
    move-result v10

    #@1d5
    if-eqz v10, :cond_9

    #@1d7
    .line 390
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d9
    check-cast v10, Landroid/view/inputmethod/CompletionInfo;

    #@1db
    invoke-interface {v5, v10}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    #@1de
    .line 391
    return-void

    #@1df
    .line 387
    :cond_9
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@1e2
    const-string/jumbo v11, "commitCompletion on inactive InputConnection"

    #@1e5
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e8
    .line 388
    return-void

    #@1e9
    .line 394
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@1ec
    move-result-object v5

    #@1ed
    .line 395
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_a

    #@1ef
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@1f2
    move-result v10

    #@1f3
    if-eqz v10, :cond_a

    #@1f5
    .line 399
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f7
    check-cast v10, Landroid/view/inputmethod/CorrectionInfo;

    #@1f9
    invoke-interface {v5, v10}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    #@1fc
    .line 400
    return-void

    #@1fd
    .line 396
    :cond_a
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@200
    const-string/jumbo v11, "commitCorrection on inactive InputConnection"

    #@203
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@206
    .line 397
    return-void

    #@207
    .line 403
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@20a
    move-result-object v5

    #@20b
    .line 404
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_b

    #@20d
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@210
    move-result v10

    #@211
    if-eqz v10, :cond_b

    #@213
    .line 408
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@215
    check-cast v10, Ljava/lang/CharSequence;

    #@217
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@219
    invoke-interface {v5, v10, v11}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    #@21c
    .line 409
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    #@21f
    .line 410
    return-void

    #@220
    .line 405
    :cond_b
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@223
    const-string/jumbo v11, "setComposingText on inactive InputConnection"

    #@226
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@229
    .line 406
    return-void

    #@22a
    .line 413
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@22d
    move-result-object v5

    #@22e
    .line 414
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_c

    #@230
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@233
    move-result v10

    #@234
    if-eqz v10, :cond_c

    #@236
    .line 418
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@238
    iget v11, p1, Landroid/os/Message;->arg2:I

    #@23a
    invoke-interface {v5, v10, v11}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    #@23d
    .line 419
    return-void

    #@23e
    .line 415
    :cond_c
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@241
    const-string/jumbo v11, "setComposingRegion on inactive InputConnection"

    #@244
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@247
    .line 416
    return-void

    #@248
    .line 422
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@24b
    move-result-object v5

    #@24c
    .line 427
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v5, :cond_d

    #@24e
    .line 428
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@251
    const-string/jumbo v11, "finishComposingText on inactive InputConnection"

    #@254
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@257
    .line 429
    return-void

    #@258
    .line 431
    :cond_d
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@25b
    .line 432
    return-void

    #@25c
    .line 435
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@25f
    move-result-object v5

    #@260
    .line 436
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_e

    #@262
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@265
    move-result v10

    #@266
    if-eqz v10, :cond_e

    #@268
    .line 440
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@26a
    check-cast v10, Landroid/view/KeyEvent;

    #@26c
    invoke-interface {v5, v10}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    #@26f
    .line 441
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    #@272
    .line 442
    return-void

    #@273
    .line 437
    :cond_e
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@276
    const-string/jumbo v11, "sendKeyEvent on inactive InputConnection"

    #@279
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27c
    .line 438
    return-void

    #@27d
    .line 445
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@280
    move-result-object v5

    #@281
    .line 446
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_f

    #@283
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@286
    move-result v10

    #@287
    if-eqz v10, :cond_f

    #@289
    .line 450
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@28b
    invoke-interface {v5, v10}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    #@28e
    .line 451
    return-void

    #@28f
    .line 447
    :cond_f
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@292
    const-string/jumbo v11, "clearMetaKeyStates on inactive InputConnection"

    #@295
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@298
    .line 448
    return-void

    #@299
    .line 454
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_10
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@29c
    move-result-object v5

    #@29d
    .line 455
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_10

    #@29f
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@2a2
    move-result v10

    #@2a3
    if-eqz v10, :cond_10

    #@2a5
    .line 459
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@2a7
    iget v11, p1, Landroid/os/Message;->arg2:I

    #@2a9
    invoke-interface {v5, v10, v11}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    #@2ac
    .line 460
    return-void

    #@2ad
    .line 456
    :cond_10
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@2b0
    const-string/jumbo v11, "deleteSurroundingText on inactive InputConnection"

    #@2b3
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2b6
    .line 457
    return-void

    #@2b7
    .line 463
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_11
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@2ba
    move-result-object v5

    #@2bb
    .line 464
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_11

    #@2bd
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@2c0
    move-result v10

    #@2c1
    if-eqz v10, :cond_11

    #@2c3
    .line 468
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@2c5
    iget v11, p1, Landroid/os/Message;->arg2:I

    #@2c7
    invoke-interface {v5, v10, v11}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingTextInCodePoints(II)Z

    #@2ca
    .line 469
    return-void

    #@2cb
    .line 465
    :cond_11
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@2ce
    const-string/jumbo v11, "deleteSurroundingTextInCodePoints on inactive InputConnection"

    #@2d1
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d4
    .line 466
    return-void

    #@2d5
    .line 472
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_12
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@2d8
    move-result-object v5

    #@2d9
    .line 473
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_12

    #@2db
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@2de
    move-result v10

    #@2df
    if-eqz v10, :cond_12

    #@2e1
    .line 477
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    #@2e4
    .line 478
    return-void

    #@2e5
    .line 474
    :cond_12
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@2e8
    const-string/jumbo v11, "beginBatchEdit on inactive InputConnection"

    #@2eb
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2ee
    .line 475
    return-void

    #@2ef
    .line 481
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_13
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@2f2
    move-result-object v5

    #@2f3
    .line 482
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_13

    #@2f5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@2f8
    move-result v10

    #@2f9
    if-eqz v10, :cond_13

    #@2fb
    .line 486
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    #@2fe
    .line 487
    return-void

    #@2ff
    .line 483
    :cond_13
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@302
    const-string/jumbo v11, "endBatchEdit on inactive InputConnection"

    #@305
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@308
    .line 484
    return-void

    #@309
    .line 490
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_14
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@30c
    move-result-object v5

    #@30d
    .line 491
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v7, 0x0

    #@30e
    .line 492
    .local v7, "isBackground":Z
    if-eqz v5, :cond_15

    #@310
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@313
    move-result v10

    #@314
    if-eqz v10, :cond_15

    #@316
    .line 496
    :goto_5
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@318
    if-ne v10, v12, :cond_16

    #@31a
    const/4 v2, 0x1

    #@31b
    .line 497
    .local v2, "enabled":Z
    :goto_6
    if-nez v7, :cond_14

    #@31d
    .line 498
    invoke-interface {v5, v2}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    #@320
    .line 503
    :cond_14
    invoke-virtual {p0, v2, v7}, Lcom/android/internal/view/IInputConnectionWrapper;->onReportFullscreenMode(ZZ)V

    #@323
    .line 504
    return-void

    #@324
    .line 493
    .end local v2    # "enabled":Z
    :cond_15
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@327
    const-string/jumbo v11, "reportFullscreenMode on inexistent InputConnection"

    #@32a
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32d
    .line 494
    const/4 v7, 0x1

    #@32e
    goto :goto_5

    #@32f
    .line 496
    :cond_16
    const/4 v2, 0x0

    #@330
    .restart local v2    # "enabled":Z
    goto :goto_6

    #@331
    .line 507
    .end local v2    # "enabled":Z
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v7    # "isBackground":Z
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@334
    move-result-object v5

    #@335
    .line 508
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_17

    #@337
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@33a
    move-result v10

    #@33b
    if-eqz v10, :cond_17

    #@33d
    .line 512
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33f
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@341
    .line 513
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    #@343
    check-cast v10, Ljava/lang/String;

    #@345
    .line 514
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    #@347
    check-cast v11, Landroid/os/Bundle;

    #@349
    .line 513
    invoke-interface {v5, v10, v11}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    #@34c
    .line 515
    return-void

    #@34d
    .line 509
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :cond_17
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@350
    const-string/jumbo v11, "performPrivateCommand on inactive InputConnection"

    #@353
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@356
    .line 510
    return-void

    #@357
    .line 518
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@359
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@35b
    .line 520
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@35e
    move-result-object v5

    #@35f
    .line 521
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_18

    #@361
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@364
    move-result v10

    #@365
    if-eqz v10, :cond_18

    #@367
    .line 526
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@369
    .line 527
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@36b
    invoke-interface {v5, v11}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    #@36e
    move-result v11

    #@36f
    iget v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@371
    .line 526
    invoke-interface {v10, v11, v12}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V

    #@374
    .line 531
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_7
    return-void

    #@375
    .line 522
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_18
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@378
    const-string/jumbo v11, "requestCursorAnchorInfo on inactive InputConnection"

    #@37b
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@37e
    .line 523
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@380
    iget v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@382
    const/4 v12, 0x0

    #@383
    invoke-interface {v10, v12, v11}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    #@386
    .line 524
    return-void

    #@387
    .line 528
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_5
    move-exception v1

    #@388
    .line 529
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@38b
    const-string/jumbo v11, "Got RemoteException calling requestCursorAnchorInfo"

    #@38e
    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@391
    goto :goto_7

    #@392
    .line 538
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_17
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isFinished()Z

    #@395
    move-result v10

    #@396
    if-eqz v10, :cond_19

    #@398
    .line 539
    return-void

    #@399
    .line 542
    :cond_19
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@39c
    move-result-object v5

    #@39d
    .line 547
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v5, :cond_1a

    #@39f
    .line 556
    iget-object v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    #@3a1
    monitor-enter v11

    #@3a2
    .line 557
    const/4 v10, 0x0

    #@3a3
    :try_start_7
    iput-object v10, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    #@3a5
    .line 558
    const/4 v10, 0x1

    #@3a6
    iput-boolean v10, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@3a8
    monitor-exit v11

    #@3a9
    .line 548
    return-void

    #@3aa
    .line 556
    :catchall_0
    move-exception v10

    #@3ab
    monitor-exit v11

    #@3ac
    throw v10

    #@3ad
    .line 551
    :cond_1a
    :try_start_8
    invoke-static {v5}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I

    #@3b0
    move-result v8

    #@3b1
    .line 552
    .local v8, "missingMethods":I
    and-int/lit8 v10, v8, 0x40

    #@3b3
    if-nez v10, :cond_1b

    #@3b5
    .line 553
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->closeConnection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@3b8
    .line 556
    :cond_1b
    iget-object v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    #@3ba
    monitor-enter v11

    #@3bb
    .line 557
    const/4 v10, 0x0

    #@3bc
    :try_start_9
    iput-object v10, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    #@3be
    .line 558
    const/4 v10, 0x1

    #@3bf
    iput-boolean v10, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@3c1
    monitor-exit v11

    #@3c2
    .line 561
    return-void

    #@3c3
    .line 556
    :catchall_1
    move-exception v10

    #@3c4
    monitor-exit v11

    #@3c5
    throw v10

    #@3c6
    .line 555
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v8    # "missingMethods":I
    :catchall_2
    move-exception v10

    #@3c7
    .line 556
    iget-object v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    #@3c9
    monitor-enter v11

    #@3ca
    .line 557
    const/4 v12, 0x0

    #@3cb
    :try_start_a
    iput-object v12, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    #@3cd
    .line 558
    const/4 v12, 0x1

    #@3ce
    iput-boolean v12, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@3d0
    monitor-exit v11

    #@3d1
    .line 555
    throw v10

    #@3d2
    .line 556
    :catchall_3
    move-exception v10

    #@3d3
    monitor-exit v11

    #@3d4
    throw v10

    #@3d5
    .line 564
    :sswitch_18
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@3d7
    .line 566
    .local v3, "flags":I
    and-int/lit8 v10, v3, 0x1

    #@3d9
    if-eqz v10, :cond_1e

    #@3db
    const/4 v4, 0x1

    #@3dc
    .line 567
    .local v4, "grantUriPermission":Z
    :goto_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3de
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@3e0
    .line 569
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_b
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@3e3
    move-result-object v5

    #@3e4
    .line 570
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_1f

    #@3e6
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@3e9
    move-result v10

    #@3ea
    if-eqz v10, :cond_1f

    #@3ec
    .line 575
    iget-object v6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    #@3ee
    check-cast v6, Landroid/view/inputmethod/InputContentInfo;

    #@3f0
    .line 576
    .local v6, "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    if-eqz v6, :cond_20

    #@3f2
    invoke-virtual {v6}, Landroid/view/inputmethod/InputContentInfo;->validate()Z

    #@3f5
    move-result v10

    #@3f6
    if-eqz v10, :cond_20

    #@3f8
    .line 582
    if-eqz v4, :cond_1c

    #@3fa
    .line 583
    invoke-virtual {v6}, Landroid/view/inputmethod/InputContentInfo;->requestPermission()V

    #@3fd
    .line 586
    :cond_1c
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    #@3ff
    check-cast v10, Landroid/os/Bundle;

    #@401
    invoke-interface {v5, v6, v3, v10}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    #@404
    move-result v9

    #@405
    .line 589
    .local v9, "result":Z
    if-eqz v4, :cond_1d

    #@407
    if-eqz v9, :cond_21

    #@409
    .line 592
    :cond_1d
    :goto_9
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@40b
    iget v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@40d
    invoke-interface {v10, v9, v11}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V

    #@410
    .line 596
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v6    # "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    .end local v9    # "result":Z
    :goto_a
    return-void

    #@411
    .line 566
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v4    # "grantUriPermission":Z
    :cond_1e
    const/4 v4, 0x0

    #@412
    .restart local v4    # "grantUriPermission":Z
    goto :goto_8

    #@413
    .line 571
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1f
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@416
    const-string/jumbo v11, "commitContent on inactive InputConnection"

    #@419
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@41c
    .line 572
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@41e
    iget v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@420
    const/4 v12, 0x0

    #@421
    invoke-interface {v10, v12, v11}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V

    #@424
    .line 573
    return-void

    #@425
    .line 577
    .restart local v6    # "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    :cond_20
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@428
    new-instance v11, Ljava/lang/StringBuilder;

    #@42a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@42d
    const-string/jumbo v12, "commitContent with invalid inputContentInfo="

    #@430
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@433
    move-result-object v11

    #@434
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@437
    move-result-object v11

    #@438
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43b
    move-result-object v11

    #@43c
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@43f
    .line 579
    iget-object v10, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@441
    iget v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@443
    const/4 v12, 0x0

    #@444
    invoke-interface {v10, v12, v11}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V

    #@447
    .line 580
    return-void

    #@448
    .line 590
    .restart local v9    # "result":Z
    :cond_21
    invoke-virtual {v6}, Landroid/view/inputmethod/InputContentInfo;->releasePermission()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_6

    #@44b
    goto :goto_9

    #@44c
    .line 593
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v6    # "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    .end local v9    # "result":Z
    :catch_6
    move-exception v1

    #@44d
    .line 594
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "IInputConnectionWrapper"

    #@450
    const-string/jumbo v11, "Got RemoteException calling commitContent"

    #@453
    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@456
    goto :goto_a

    #@457
    .line 266
    nop

    #@458
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
        0xa0 -> :sswitch_18
    .end sparse-switch
.end method

.method public finishComposingText()V
    .locals 1

    #@0
    .prologue
    .line 199
    const/16 v0, 0x41

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 198
    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "reqModes"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    .line 157
    const/16 v0, 0x1e

    #@2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 156
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
    .line 162
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
    .line 161
    return-void
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 105
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
    .line 117
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputMethodId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 117
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
    .line 153
    const/16 v0, 0x19

    #@2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 152
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
    .line 145
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
    .line 144
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
    .line 149
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
    .line 148
    return-void
.end method

.method protected abstract isActive()Z
.end method

.method protected isFinished()Z
    .locals 2

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 112
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 111
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
    .line 603
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
    .line 607
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
    .line 622
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@2
    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    #@5
    .line 623
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@7
    .line 624
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@9
    .line 625
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
    .line 648
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

.method obtainMessageIOOSC(IILjava/lang/Object;Ljava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "objArg1"    # Ljava/lang/Object;
    .param p4, "objArg2"    # Ljava/lang/Object;
    .param p5, "seq"    # I
    .param p6, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    .line 630
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@2
    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    #@5
    .line 631
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    #@7
    .line 632
    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    #@9
    .line 633
    iput-object p6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@b
    .line 634
    iput p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@d
    .line 635
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    return-object v1
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
    .line 640
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@2
    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    #@5
    .line 641
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    #@7
    .line 642
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@9
    .line 643
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@b
    .line 644
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
    .line 615
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@2
    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    #@5
    .line 616
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@7
    .line 617
    iput p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@9
    .line 618
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
    .line 611
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
    .line 652
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@3
    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    #@6
    .line 653
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    #@8
    .line 654
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    #@a
    .line 655
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@c
    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@f
    move-result-object v1

    #@10
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
    .line 187
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
    .line 186
    return-void
.end method

.method public performEditorAction(I)V
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 183
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
    .line 182
    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 233
    const/16 v0, 0x78

    #@2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 232
    return-void
.end method

.method public reportFullscreenMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 229
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
    .line 228
    return-void

    #@e
    :cond_0
    move v0, v1

    #@f
    .line 229
    goto :goto_0
.end method

.method public requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "cursorUpdateMode"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    .line 238
    const/16 v0, 0x8c

    #@2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 237
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 203
    const/16 v0, 0x46

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 202
    return-void
.end method

.method public setComposingRegion(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 191
    const/16 v0, 0x3f

    #@2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 190
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    #@0
    .prologue
    .line 195
    const/16 v0, 0x3c

    #@2
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 194
    return-void
.end method

.method public setInputMethodId(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputMethodId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 124
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputMethodId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 122
    return-void

    #@7
    .line 123
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
    .line 179
    const/16 v0, 0x39

    #@2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 178
    return-void
.end method
