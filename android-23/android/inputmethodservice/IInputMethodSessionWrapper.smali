.class Landroid/inputmethodservice/IInputMethodSessionWrapper;
.super Lcom/android/internal/view/IInputMethodSession$Stub;
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
.field private static final DO_APP_PRIVATE_COMMAND:I = 0x64

.field private static final DO_DISPLAY_COMPLETIONS:I = 0x41

.field private static final DO_FINISH_INPUT:I = 0x3c

.field private static final DO_FINISH_SESSION:I = 0x6e

.field private static final DO_TOGGLE_SOFT_INPUT:I = 0x69

.field private static final DO_UPDATE_CURSOR:I = 0x5f

.field private static final DO_UPDATE_CURSOR_ANCHOR_INFO:I = 0x63

.field private static final DO_UPDATE_EXTRACTED_TEXT:I = 0x43

.field private static final DO_UPDATE_SELECTION:I = 0x5a

.field private static final DO_VIEW_CLICKED:I = 0x73

.field private static final TAG:Ljava/lang/String; = "InputMethodWrapper"


# instance fields
.field mCaller:Lcom/android/internal/os/HandlerCaller;

.field mChannel:Landroid/view/InputChannel;

.field mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

.field mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSession;Landroid/view/InputChannel;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputMethodSession"    # Landroid/view/inputmethod/InputMethodSession;
    .param p3, "channel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 61
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodSession$Stub;-><init>()V

    #@4
    .line 63
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    #@6
    .line 64
    const/4 v1, 0x1

    #@7
    .line 63
    invoke-direct {v0, p1, v2, p0, v1}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    #@a
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@c
    .line 65
    iput-object p2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@e
    .line 66
    iput-object p3, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    #@10
    .line 67
    if-eqz p3, :cond_0

    #@12
    .line 68
    new-instance v0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    #@14
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, p0, p3, v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;-><init>(Landroid/inputmethodservice/IInputMethodSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@1b
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    #@1d
    .line 62
    :cond_0
    return-void
.end method

.method private doFinishSession()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 141
    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@3
    .line 142
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 143
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    #@9
    invoke-virtual {v0}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->dispose()V

    #@c
    .line 144
    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    #@e
    .line 146
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 147
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    #@14
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@17
    .line 148
    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    #@19
    .line 140
    :cond_1
    return-void
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    .line 198
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x64

    #@6
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    .line 197
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 196
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    .line 160
    const/16 v2, 0x41

    #@6
    .line 159
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 158
    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 78
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    #@7
    sparse-switch v0, :sswitch_data_0

    #@a
    .line 88
    :goto_0
    return-void

    #@b
    .line 84
    :sswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@f
    .line 85
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@12
    goto :goto_0

    #@13
    .line 91
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    #@15
    sparse-switch v1, :sswitch_data_1

    #@18
    .line 137
    const-string/jumbo v0, "InputMethodWrapper"

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "Unhandled message code: "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget v2, p1, Landroid/os/Message;->what:I

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 77
    return-void

    #@35
    .line 93
    :sswitch_1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@37
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodSession;->finishInput()V

    #@3a
    .line 94
    return-void

    #@3b
    .line 96
    :sswitch_2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@3d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3f
    check-cast v0, [Landroid/view/inputmethod/CompletionInfo;

    #@41
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    #@44
    .line 97
    return-void

    #@45
    .line 99
    :sswitch_3
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@47
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@49
    .line 100
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4b
    check-cast v0, Landroid/view/inputmethod/ExtractedText;

    #@4d
    .line 99
    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/InputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    #@50
    .line 101
    return-void

    #@51
    .line 103
    :sswitch_4
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@53
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@55
    .line 104
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@57
    iget v1, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@59
    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@5b
    .line 105
    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@5d
    iget v4, v7, Lcom/android/internal/os/SomeArgs;->argi4:I

    #@5f
    iget v5, v7, Lcom/android/internal/os/SomeArgs;->argi5:I

    #@61
    iget v6, v7, Lcom/android/internal/os/SomeArgs;->argi6:I

    #@63
    .line 104
    invoke-interface/range {v0 .. v6}, Landroid/view/inputmethod/InputMethodSession;->updateSelection(IIIIII)V

    #@66
    .line 106
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@69
    .line 107
    return-void

    #@6a
    .line 110
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@6c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6e
    check-cast v0, Landroid/graphics/Rect;

    #@70
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    #@73
    .line 111
    return-void

    #@74
    .line 114
    :sswitch_6
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@76
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@78
    check-cast v0, Landroid/view/inputmethod/CursorAnchorInfo;

    #@7a
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodSession;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    #@7d
    .line 115
    return-void

    #@7e
    .line 118
    :sswitch_7
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@80
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@82
    .line 119
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@84
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@86
    check-cast v0, Ljava/lang/String;

    #@88
    .line 120
    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8a
    check-cast v1, Landroid/os/Bundle;

    #@8c
    .line 119
    invoke-interface {v2, v0, v1}, Landroid/view/inputmethod/InputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    #@8f
    .line 121
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@92
    .line 122
    return-void

    #@93
    .line 125
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_8
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@95
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@97
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@99
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputMethodSession;->toggleSoftInput(II)V

    #@9c
    .line 126
    return-void

    #@9d
    .line 129
    :sswitch_9
    invoke-direct {p0}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->doFinishSession()V

    #@a0
    .line 130
    return-void

    #@a1
    .line 133
    :sswitch_a
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@a3
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@a5
    if-ne v2, v0, :cond_1

    #@a7
    :goto_1
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodSession;->viewClicked(Z)V

    #@aa
    .line 134
    return-void

    #@ab
    .line 133
    :cond_1
    const/4 v0, 0x0

    #@ac
    goto :goto_1

    #@ad
    .line 81
    nop

    #@ae
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch

    #@b8
    .line 91
    :sswitch_data_1
    .sparse-switch
        0x3c -> :sswitch_1
        0x41 -> :sswitch_2
        0x43 -> :sswitch_3
        0x5a -> :sswitch_4
        0x5f -> :sswitch_5
        0x63 -> :sswitch_6
        0x64 -> :sswitch_7
        0x69 -> :sswitch_8
        0x6e -> :sswitch_9
        0x73 -> :sswitch_a
    .end sparse-switch
.end method

.method public finishInput()V
    .locals 3

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x3c

    #@6
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 153
    return-void
.end method

.method public finishSession()V
    .locals 3

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x6e

    #@6
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 208
    return-void
.end method

.method public getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@2
    return-object v0
.end method

.method public toggleSoftInput(II)V
    .locals 3
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    .line 204
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x69

    #@6
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    .line 203
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 202
    return-void
.end method

.method public updateCursor(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "newCursor"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    .line 186
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x5f

    #@6
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    .line 185
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 184
    return-void
.end method

.method public updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 3
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    .line 192
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x63

    #@6
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    .line 191
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 190
    return-void
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    .line 166
    const/16 v2, 0x43

    #@6
    .line 165
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 164
    return-void
.end method

.method public updateSelection(IIIIII)V
    .locals 9
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    #@0
    .prologue
    .line 172
    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v1, 0x5a

    #@6
    move v2, p1

    #@7
    move v3, p2

    #@8
    move v4, p3

    #@9
    move v5, p4

    #@a
    move v6, p5

    #@b
    move v7, p6

    #@c
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIIIII(IIIIIII)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v8, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@13
    .line 171
    return-void
.end method

.method public viewClicked(Z)V
    .locals 4
    .param p1, "focusChanged"    # Z

    #@0
    .prologue
    .line 179
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    .line 180
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    if-eqz p1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    const/16 v3, 0x73

    #@9
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 179
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@10
    .line 178
    return-void

    #@11
    .line 180
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method
