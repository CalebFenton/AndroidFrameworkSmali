.class public Lcom/android/internal/view/IInputConnectionWrapper;
.super Lcom/android/internal/view/IInputContext$Stub;
.source "IInputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;,
        Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;
    }
.end annotation


# static fields
.field private static final DO_BEGIN_BATCH_EDIT:I = 0x5a

.field private static final DO_CLEAR_META_KEY_STATES:I = 0x82

.field private static final DO_COMMIT_COMPLETION:I = 0x37

.field private static final DO_COMMIT_CORRECTION:I = 0x38

.field private static final DO_COMMIT_TEXT:I = 0x32

.field private static final DO_DELETE_SURROUNDING_TEXT:I = 0x50

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
.field private mH:Landroid/os/Handler;

.field private mInputConnection:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/inputmethod/InputConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "mainLooper"    # Landroid/os/Looper;
    .param p2, "conn"    # Landroid/view/inputmethod/InputConnection;

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    #@3
    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@a
    .line 84
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    #@c
    .line 85
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;

    #@e
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    #@10
    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;-><init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V

    #@13
    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@15
    .line 82
    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    #@0
    .prologue
    .line 164
    const/16 v0, 0x5a

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 163
    return-void
.end method

.method public clearMetaKeyStates(I)V
    .locals 2
    .param p1, "states"    # I

    #@0
    .prologue
    .line 155
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
    .line 154
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 119
    const/16 v0, 0x37

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 118
    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    #@0
    .prologue
    .line 123
    const/16 v0, 0x38

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 122
    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    #@0
    .prologue
    .line 115
    const/16 v0, 0x32

    #@2
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 114
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 1
    .param p1, "leftLength"    # I
    .param p2, "rightLength"    # I

    #@0
    .prologue
    .line 159
    const/16 v0, 0x50

    #@2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 158
    return-void
.end method

.method dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 189
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 190
    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    #@b
    .line 191
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    #@e
    .line 192
    return-void

    #@f
    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@11
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@14
    .line 185
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    #@0
    .prologue
    .line 168
    const/16 v0, 0x5f

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 167
    return-void
.end method

.method executeMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 199
    iget v5, p1, Landroid/os/Message;->what:I

    #@4
    sparse-switch v5, :sswitch_data_0

    #@7
    .line 447
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@a
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v5, "Unhandled message code: "

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    iget v5, p1, Landroid/os/Message;->what:I

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 198
    return-void

    #@24
    .line 201
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@26
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@28
    .line 203
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@2a
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@30
    .line 204
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    #@32
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_0

    #@38
    .line 209
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@3a
    .line 210
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@3c
    iget v5, p1, Landroid/os/Message;->arg2:I

    #@3e
    .line 209
    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    #@41
    move-result-object v4

    #@42
    .line 210
    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@44
    .line 209
    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V

    #@47
    .line 214
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return-void

    #@48
    .line 205
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@4b
    const-string/jumbo v4, "getTextAfterCursor on inactive InputConnection"

    #@4e
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 206
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@53
    iget v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@55
    const/4 v5, 0x0

    #@56
    invoke-interface {v3, v5, v4}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@59
    .line 207
    return-void

    #@5a
    .line 211
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_0
    move-exception v1

    #@5b
    .line 212
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@5e
    const-string/jumbo v4, "Got RemoteException calling setTextAfterCursor"

    #@61
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@64
    goto :goto_0

    #@65
    .line 217
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@67
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@69
    .line 219
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@6b
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6e
    move-result-object v2

    #@6f
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@71
    .line 220
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_1

    #@73
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@76
    move-result v3

    #@77
    if-eqz v3, :cond_1

    #@79
    .line 225
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@7b
    .line 226
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@7d
    iget v5, p1, Landroid/os/Message;->arg2:I

    #@7f
    .line 225
    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    #@82
    move-result-object v4

    #@83
    .line 226
    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@85
    .line 225
    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V

    #@88
    .line 230
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_1
    return-void

    #@89
    .line 221
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@8c
    const-string/jumbo v4, "getTextBeforeCursor on inactive InputConnection"

    #@8f
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 222
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@94
    iget v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@96
    const/4 v5, 0x0

    #@97
    invoke-interface {v3, v5, v4}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@9a
    .line 223
    return-void

    #@9b
    .line 227
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_1
    move-exception v1

    #@9c
    .line 228
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@9f
    const-string/jumbo v4, "Got RemoteException calling setTextBeforeCursor"

    #@a2
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a5
    goto :goto_1

    #@a6
    .line 233
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a8
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@aa
    .line 235
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@ac
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@af
    move-result-object v2

    #@b0
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@b2
    .line 236
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2

    #@b4
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@b7
    move-result v3

    #@b8
    if-eqz v3, :cond_2

    #@ba
    .line 241
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@bc
    .line 242
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@be
    .line 241
    invoke-interface {v2, v4}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    #@c1
    move-result-object v4

    #@c2
    .line 242
    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@c4
    .line 241
    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V

    #@c7
    .line 246
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_2
    return-void

    #@c8
    .line 237
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@cb
    const-string/jumbo v4, "getSelectedText on inactive InputConnection"

    #@ce
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d1
    .line 238
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@d3
    iget v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@d5
    const/4 v5, 0x0

    #@d6
    invoke-interface {v3, v5, v4}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@d9
    .line 239
    return-void

    #@da
    .line 243
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_2
    move-exception v1

    #@db
    .line 244
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@de
    const-string/jumbo v4, "Got RemoteException calling setSelectedText"

    #@e1
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e4
    goto :goto_2

    #@e5
    .line 249
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e7
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@e9
    .line 251
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@eb
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@ee
    move-result-object v2

    #@ef
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@f1
    .line 252
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_3

    #@f3
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@f6
    move-result v3

    #@f7
    if-eqz v3, :cond_3

    #@f9
    .line 257
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@fb
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@fd
    invoke-interface {v2, v4}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    #@100
    move-result v4

    #@101
    .line 258
    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@103
    .line 257
    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V

    #@106
    .line 262
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_3
    return-void

    #@107
    .line 253
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@10a
    const-string/jumbo v4, "getCursorCapsMode on inactive InputConnection"

    #@10d
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@110
    .line 254
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@112
    iget v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@114
    const/4 v5, 0x0

    #@115
    invoke-interface {v3, v5, v4}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    #@118
    .line 255
    return-void

    #@119
    .line 259
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_3
    move-exception v1

    #@11a
    .line 260
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@11d
    const-string/jumbo v4, "Got RemoteException calling setCursorCapsMode"

    #@120
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@123
    goto :goto_3

    #@124
    .line 265
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@126
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@128
    .line 267
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@12a
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@12d
    move-result-object v2

    #@12e
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@130
    .line 268
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_4

    #@132
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@135
    move-result v3

    #@136
    if-eqz v3, :cond_4

    #@138
    .line 273
    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@13a
    .line 274
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    #@13c
    check-cast v3, Landroid/view/inputmethod/ExtractedTextRequest;

    #@13e
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@140
    .line 273
    invoke-interface {v2, v3, v5}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    #@143
    move-result-object v3

    #@144
    .line 274
    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@146
    .line 273
    invoke-interface {v4, v3, v5}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V

    #@149
    .line 278
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_4
    return-void

    #@14a
    .line 269
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@14d
    const-string/jumbo v4, "getExtractedText on inactive InputConnection"

    #@150
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@153
    .line 270
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@155
    iget v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@157
    const/4 v5, 0x0

    #@158
    invoke-interface {v3, v5, v4}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    #@15b
    .line 271
    return-void

    #@15c
    .line 275
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_4
    move-exception v1

    #@15d
    .line 276
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@160
    const-string/jumbo v4, "Got RemoteException calling setExtractedText"

    #@163
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@166
    goto :goto_4

    #@167
    .line 281
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_5
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@169
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@16c
    move-result-object v2

    #@16d
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@16f
    .line 282
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_5

    #@171
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@174
    move-result v3

    #@175
    if-eqz v3, :cond_5

    #@177
    .line 286
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@179
    check-cast v3, Ljava/lang/CharSequence;

    #@17b
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@17d
    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    #@180
    .line 287
    return-void

    #@181
    .line 283
    :cond_5
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@184
    const-string/jumbo v4, "commitText on inactive InputConnection"

    #@187
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18a
    .line 284
    return-void

    #@18b
    .line 290
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_6
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@18d
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@190
    move-result-object v2

    #@191
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@193
    .line 291
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_6

    #@195
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@198
    move-result v3

    #@199
    if-eqz v3, :cond_6

    #@19b
    .line 295
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@19d
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@19f
    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    #@1a2
    .line 296
    return-void

    #@1a3
    .line 292
    :cond_6
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@1a6
    const-string/jumbo v4, "setSelection on inactive InputConnection"

    #@1a9
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1ac
    .line 293
    return-void

    #@1ad
    .line 299
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_7
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@1af
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1b2
    move-result-object v2

    #@1b3
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@1b5
    .line 300
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_7

    #@1b7
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@1ba
    move-result v3

    #@1bb
    if-eqz v3, :cond_7

    #@1bd
    .line 304
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@1bf
    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    #@1c2
    .line 305
    return-void

    #@1c3
    .line 301
    :cond_7
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@1c6
    const-string/jumbo v4, "performEditorAction on inactive InputConnection"

    #@1c9
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1cc
    .line 302
    return-void

    #@1cd
    .line 308
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_8
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@1cf
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1d2
    move-result-object v2

    #@1d3
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@1d5
    .line 309
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_8

    #@1d7
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@1da
    move-result v3

    #@1db
    if-eqz v3, :cond_8

    #@1dd
    .line 313
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@1df
    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    #@1e2
    .line 314
    return-void

    #@1e3
    .line 310
    :cond_8
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@1e6
    const-string/jumbo v4, "performContextMenuAction on inactive InputConnection"

    #@1e9
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1ec
    .line 311
    return-void

    #@1ed
    .line 317
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_9
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@1ef
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1f2
    move-result-object v2

    #@1f3
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@1f5
    .line 318
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_9

    #@1f7
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@1fa
    move-result v3

    #@1fb
    if-eqz v3, :cond_9

    #@1fd
    .line 322
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1ff
    check-cast v3, Landroid/view/inputmethod/CompletionInfo;

    #@201
    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    #@204
    .line 323
    return-void

    #@205
    .line 319
    :cond_9
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@208
    const-string/jumbo v4, "commitCompletion on inactive InputConnection"

    #@20b
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20e
    .line 320
    return-void

    #@20f
    .line 326
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_a
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@211
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@214
    move-result-object v2

    #@215
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@217
    .line 327
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_a

    #@219
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@21c
    move-result v3

    #@21d
    if-eqz v3, :cond_a

    #@21f
    .line 331
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@221
    check-cast v3, Landroid/view/inputmethod/CorrectionInfo;

    #@223
    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    #@226
    .line 332
    return-void

    #@227
    .line 328
    :cond_a
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@22a
    const-string/jumbo v4, "commitCorrection on inactive InputConnection"

    #@22d
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@230
    .line 329
    return-void

    #@231
    .line 335
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_b
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@233
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@236
    move-result-object v2

    #@237
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@239
    .line 336
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_b

    #@23b
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@23e
    move-result v3

    #@23f
    if-eqz v3, :cond_b

    #@241
    .line 340
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@243
    check-cast v3, Ljava/lang/CharSequence;

    #@245
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@247
    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    #@24a
    .line 341
    return-void

    #@24b
    .line 337
    :cond_b
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@24e
    const-string/jumbo v4, "setComposingText on inactive InputConnection"

    #@251
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@254
    .line 338
    return-void

    #@255
    .line 344
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_c
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@257
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@25a
    move-result-object v2

    #@25b
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@25d
    .line 345
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_c

    #@25f
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@262
    move-result v3

    #@263
    if-eqz v3, :cond_c

    #@265
    .line 349
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@267
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@269
    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    #@26c
    .line 350
    return-void

    #@26d
    .line 346
    :cond_c
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@270
    const-string/jumbo v4, "setComposingRegion on inactive InputConnection"

    #@273
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@276
    .line 347
    return-void

    #@277
    .line 353
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_d
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@279
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@27c
    move-result-object v2

    #@27d
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@27f
    .line 358
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_d

    #@281
    .line 359
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@284
    const-string/jumbo v4, "finishComposingText on inactive InputConnection"

    #@287
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28a
    .line 360
    return-void

    #@28b
    .line 362
    :cond_d
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@28e
    .line 363
    return-void

    #@28f
    .line 366
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_e
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@291
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@294
    move-result-object v2

    #@295
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@297
    .line 367
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_e

    #@299
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@29c
    move-result v3

    #@29d
    if-eqz v3, :cond_e

    #@29f
    .line 371
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2a1
    check-cast v3, Landroid/view/KeyEvent;

    #@2a3
    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    #@2a6
    .line 372
    return-void

    #@2a7
    .line 368
    :cond_e
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@2aa
    const-string/jumbo v4, "sendKeyEvent on inactive InputConnection"

    #@2ad
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2b0
    .line 369
    return-void

    #@2b1
    .line 375
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_f
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@2b3
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2b6
    move-result-object v2

    #@2b7
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@2b9
    .line 376
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_f

    #@2bb
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@2be
    move-result v3

    #@2bf
    if-eqz v3, :cond_f

    #@2c1
    .line 380
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@2c3
    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    #@2c6
    .line 381
    return-void

    #@2c7
    .line 377
    :cond_f
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@2ca
    const-string/jumbo v4, "clearMetaKeyStates on inactive InputConnection"

    #@2cd
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d0
    .line 378
    return-void

    #@2d1
    .line 384
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_10
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@2d3
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2d6
    move-result-object v2

    #@2d7
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@2d9
    .line 385
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_10

    #@2db
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@2de
    move-result v3

    #@2df
    if-eqz v3, :cond_10

    #@2e1
    .line 389
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@2e3
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@2e5
    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    #@2e8
    .line 390
    return-void

    #@2e9
    .line 386
    :cond_10
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@2ec
    const-string/jumbo v4, "deleteSurroundingText on inactive InputConnection"

    #@2ef
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f2
    .line 387
    return-void

    #@2f3
    .line 393
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_11
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@2f5
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2f8
    move-result-object v2

    #@2f9
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@2fb
    .line 394
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_11

    #@2fd
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@300
    move-result v3

    #@301
    if-eqz v3, :cond_11

    #@303
    .line 398
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    #@306
    .line 399
    return-void

    #@307
    .line 395
    :cond_11
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@30a
    const-string/jumbo v4, "beginBatchEdit on inactive InputConnection"

    #@30d
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@310
    .line 396
    return-void

    #@311
    .line 402
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_12
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@313
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@316
    move-result-object v2

    #@317
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@319
    .line 403
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_12

    #@31b
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@31e
    move-result v3

    #@31f
    if-eqz v3, :cond_12

    #@321
    .line 407
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    #@324
    .line 408
    return-void

    #@325
    .line 404
    :cond_12
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@328
    const-string/jumbo v4, "endBatchEdit on inactive InputConnection"

    #@32b
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32e
    .line 405
    return-void

    #@32f
    .line 411
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_13
    iget-object v5, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@331
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@334
    move-result-object v2

    #@335
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@337
    .line 412
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_13

    #@339
    .line 413
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@33c
    const-string/jumbo v4, "reportFullscreenMode on inexistent InputConnection"

    #@33f
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@342
    .line 414
    return-void

    #@343
    .line 416
    :cond_13
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@345
    if-ne v5, v3, :cond_14

    #@347
    :goto_5
    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    #@34a
    .line 417
    return-void

    #@34b
    :cond_14
    move v3, v4

    #@34c
    .line 416
    goto :goto_5

    #@34d
    .line 420
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_14
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@34f
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@352
    move-result-object v2

    #@353
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@355
    .line 421
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_15

    #@357
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@35a
    move-result v3

    #@35b
    if-eqz v3, :cond_15

    #@35d
    .line 425
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@35f
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@361
    .line 426
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    #@363
    check-cast v3, Ljava/lang/String;

    #@365
    .line 427
    iget-object v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    #@367
    check-cast v4, Landroid/os/Bundle;

    #@369
    .line 426
    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    #@36c
    .line 428
    return-void

    #@36d
    .line 422
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :cond_15
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@370
    const-string/jumbo v4, "performPrivateCommand on inactive InputConnection"

    #@373
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@376
    .line 423
    return-void

    #@377
    .line 431
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@379
    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@37b
    .line 433
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    #@37d
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@380
    move-result-object v2

    #@381
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@383
    .line 434
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_16

    #@385
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    #@388
    move-result v3

    #@389
    if-eqz v3, :cond_16

    #@38b
    .line 439
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@38d
    .line 440
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@38f
    invoke-interface {v2, v4}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    #@392
    move-result v4

    #@393
    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@395
    .line 439
    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V

    #@398
    .line 444
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_6
    return-void

    #@399
    .line 435
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_16
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@39c
    const-string/jumbo v4, "requestCursorAnchorInfo on inactive InputConnection"

    #@39f
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a2
    .line 436
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@3a4
    iget v4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@3a6
    const/4 v5, 0x0

    #@3a7
    invoke-interface {v3, v5, v4}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    #@3aa
    .line 437
    return-void

    #@3ab
    .line 441
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_5
    move-exception v1

    #@3ac
    .line 442
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "IInputConnectionWrapper"

    #@3af
    const-string/jumbo v4, "Got RemoteException calling requestCursorAnchorInfo"

    #@3b2
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b5
    goto :goto_6

    #@3b6
    .line 199
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
        0x5a -> :sswitch_11
        0x5f -> :sswitch_12
        0x64 -> :sswitch_13
        0x78 -> :sswitch_14
        0x82 -> :sswitch_f
        0x8c -> :sswitch_15
    .end sparse-switch
.end method

.method public finishComposingText()V
    .locals 1

    #@0
    .prologue
    .line 147
    const/16 v0, 0x41

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 146
    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "reqModes"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    .line 105
    const/16 v0, 0x1e

    #@2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 104
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
    .line 110
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
    .line 109
    return-void
.end method

.method public getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    .line 101
    const/16 v0, 0x19

    #@2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 100
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
    .line 93
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
    .line 92
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
    .line 97
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
    .line 96
    return-void
.end method

.method public isActive()Z
    .locals 1

    #@0
    .prologue
    .line 89
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method obtainMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 451
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
    .line 455
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
    .line 470
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@2
    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    #@5
    .line 471
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@7
    .line 472
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@9
    .line 473
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
    .line 494
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
    .line 486
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@2
    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    #@5
    .line 487
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    #@7
    .line 488
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@9
    .line 489
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@b
    .line 490
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
    .line 463
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@2
    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    #@5
    .line 464
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@7
    .line 465
    iput p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@9
    .line 466
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
    .line 459
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
    .line 498
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@3
    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    #@6
    .line 499
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    #@8
    .line 500
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    #@a
    .line 501
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
    .line 477
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    #@3
    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    #@6
    .line 478
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    #@8
    .line 479
    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    #@a
    .line 480
    iput p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    #@c
    .line 481
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    #@e
    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public performContextMenuAction(I)V
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 135
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
    .line 134
    return-void
.end method

.method public performEditorAction(I)V
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 131
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
    .line 130
    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 176
    const/16 v0, 0x78

    #@2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 175
    return-void
.end method

.method public reportFullscreenMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 172
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
    .line 171
    return-void

    #@e
    :cond_0
    move v0, v1

    #@f
    .line 172
    goto :goto_0
.end method

.method public requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "cursorUpdateMode"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    #@0
    .prologue
    .line 181
    const/16 v0, 0x8c

    #@2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 180
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 151
    const/16 v0, 0x46

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 150
    return-void
.end method

.method public setComposingRegion(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 139
    const/16 v0, 0x3f

    #@2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 138
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    #@0
    .prologue
    .line 143
    const/16 v0, 0x3c

    #@2
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 142
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 127
    const/16 v0, 0x39

    #@2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    #@9
    .line 126
    return-void
.end method
