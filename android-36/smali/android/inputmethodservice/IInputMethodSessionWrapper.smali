.class Landroid/inputmethodservice/IInputMethodSessionWrapper;
.super Lcom/android/internal/inputmethod/IInputMethodSession$Stub;
.source "IInputMethodSessionWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;
    }
.end annotation


# static fields
.field private static final blacklist DO_APP_PRIVATE_COMMAND:I = 0x64

.field private static final blacklist DO_DISPLAY_COMPLETIONS:I = 0x41

.field private static final blacklist DO_FINISH_INPUT:I = 0x8c

.field private static final blacklist DO_FINISH_SESSION:I = 0x6e

.field private static final blacklist DO_INVALIDATE_INPUT:I = 0x96

.field private static final blacklist DO_REMOVE_IME_SURFACE:I = 0x82

.field private static final blacklist DO_UPDATE_CURSOR:I = 0x5f

.field private static final blacklist DO_UPDATE_CURSOR_ANCHOR_INFO:I = 0x63

.field private static final blacklist DO_UPDATE_EXTRACTED_TEXT:I = 0x43

.field private static final blacklist DO_UPDATE_SELECTION:I = 0x5a

.field private static final blacklist DO_VIEW_CLICKED:I = 0x73

.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodWrapper"


# instance fields
.field greylist mCaller:Lcom/android/internal/os/HandlerCaller;

.field blacklist mChannel:Landroid/view/InputChannel;

.field private final blacklist mContext:Landroid/content/Context;

.field blacklist mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

.field blacklist mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/inputmethodservice/IInputMethodSessionWrapper;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSession;Landroid/view/InputChannel;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputMethodSession"    # Landroid/view/inputmethod/InputMethodSession;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .line 75
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 79
    iput-object p2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    .line 80
    iput-object p3, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    .line 81
    if-eqz p3, :cond_1f

    .line 82
    new-instance v0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p3, v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;-><init>(Landroid/inputmethodservice/IInputMethodSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    .line 84
    :cond_1f
    return-void
.end method

.method private blacklist doFinishSession()V
    .registers 3

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    .line 167
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    if-eqz v1, :cond_e

    .line 168
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    invoke-virtual {v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->dispose()V

    .line 169
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    .line 171
    :cond_e
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_19

    .line 172
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 173
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    .line 175
    :cond_19
    return-void
.end method


# virtual methods
.method public blacklist appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 222
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 223
    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 224
    return-void
.end method

.method public blacklist displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 5
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 179
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x41

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 181
    return-void
.end method

.method public blacklist executeMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 92
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    if-nez v0, :cond_12

    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_c6

    goto :goto_11

    .line 98
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 99
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 102
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_11
    return-void

    .line 105
    :cond_12
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_d0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 152
    :sswitch_32
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 154
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_37
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/EditorInfo;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, v3, v4}, Landroid/view/inputmethod/InputMethodSession;->invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_4b

    .line 157
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 158
    nop

    .line 159
    return-void

    .line 157
    :catchall_4b
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 158
    throw v0

    .line 148
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_50
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodSession;->finishInput()V

    .line 149
    return-void

    .line 144
    :sswitch_56
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodSession;->removeImeSurface()V

    .line 145
    return-void

    .line 140
    :sswitch_5c
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_64

    goto :goto_65

    :cond_64
    const/4 v2, 0x0

    :goto_65
    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputMethodSession;->viewClicked(Z)V

    .line 141
    return-void

    .line 136
    :sswitch_69
    invoke-direct {p0}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->doFinishSession()V

    .line 137
    return-void

    .line 129
    :sswitch_6d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 130
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 133
    return-void

    .line 125
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_82
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputMethodSession;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 126
    return-void

    .line 121
    :sswitch_8c
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    .line 122
    return-void

    .line 114
    :sswitch_96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 115
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-interface/range {v1 .. v7}, Landroid/view/inputmethod/InputMethodSession;->updateSelection(IIIIII)V

    .line 117
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 118
    return-void

    .line 110
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_af
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/ExtractedText;

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 112
    return-void

    .line 107
    :sswitch_bb
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 108
    return-void

    nop

    :sswitch_data_c6
    .sparse-switch
        0x5a -> :sswitch_a
        0x64 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_d0
    .sparse-switch
        0x41 -> :sswitch_bb
        0x43 -> :sswitch_af
        0x5a -> :sswitch_96
        0x5f -> :sswitch_8c
        0x63 -> :sswitch_82
        0x64 -> :sswitch_6d
        0x6e -> :sswitch_69
        0x73 -> :sswitch_5c
        0x82 -> :sswitch_56
        0x8c -> :sswitch_50
        0x96 -> :sswitch_32
    .end sparse-switch
.end method

.method public blacklist finishInput()V
    .registers 4

    .line 240
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 241
    return-void
.end method

.method public blacklist finishSession()V
    .registers 4

    .line 228
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 229
    return-void
.end method

.method public blacklist getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    return-object v0
.end method

.method public blacklist invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 7
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p3, "sessionId"    # I

    .line 234
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x96

    invoke-virtual {v1, v2, p3, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 236
    return-void
.end method

.method public blacklist removeImeSurface()V
    .registers 4

    .line 205
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 206
    return-void
.end method

.method public blacklist updateCursor(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "newCursor"    # Landroid/graphics/Rect;

    .line 210
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 211
    const/16 v2, 0x5f

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 212
    return-void
.end method

.method public blacklist updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 5
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 216
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 217
    const/16 v2, 0x63

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 218
    return-void
.end method

.method public blacklist updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 185
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x43

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 187
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

    .line 192
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x5a

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
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIIIII(IIIIIII)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 195
    return-void
.end method

.method public blacklist viewClicked(Z)V
    .registers 5
    .param p1, "focusChanged"    # Z

    .line 199
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 200
    const/16 v2, 0x73

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 201
    return-void
.end method
