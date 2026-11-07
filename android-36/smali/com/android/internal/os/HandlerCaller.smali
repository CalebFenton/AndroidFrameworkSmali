.class public Lcom/android/internal/os/HandlerCaller;
.super Ljava/lang/Object;
.source "HandlerCaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/HandlerCaller$MyHandler;,
        Lcom/android/internal/os/HandlerCaller$Callback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final greylist-max-o mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

.field final greylist-max-o mH:Landroid/os/Handler;

.field final greylist-max-o mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lcom/android/internal/os/HandlerCaller$Callback;
    .param p4, "asyncHandler"    # Z

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p2, :cond_7

    move-object v0, p2

    goto :goto_b

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mMainLooper:Landroid/os/Looper;

    .line 55
    new-instance v0, Lcom/android/internal/os/HandlerCaller$MyHandler;

    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1, p4}, Lcom/android/internal/os/HandlerCaller$MyHandler;-><init>(Lcom/android/internal/os/HandlerCaller;Landroid/os/Looper;Z)V

    iput-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    .line 56
    iput-object p3, p0, Lcom/android/internal/os/HandlerCaller;->mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    .line 57
    return-void
.end method


# virtual methods
.method public greylist-max-o executeOrSendMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 67
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_11

    .line 68
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/os/HandlerCaller$Callback;->executeMessage(Landroid/os/Message;)V

    .line 69
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 70
    return-void

    .line 73
    :cond_11
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    return-void
.end method

.method public greylist-max-o getHandler()Landroid/os/Handler;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method public greylist-max-o hasMessages(I)Z
    .registers 3
    .param p1, "what"    # I

    .line 81
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public greylist obtainMessage(I)Landroid/os/Message;
    .registers 3
    .param p1, "what"    # I

    .line 119
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o obtainMessageBO(IZLjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o obtainMessageBOO(IZLjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 8
    .param p1, "what"    # I
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;

    .line 127
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 128
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 129
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o obtainMessageI(II)Landroid/os/Message;
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 139
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o obtainMessageII(III)Landroid/os/Message;
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 143
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o obtainMessageIIII(IIIII)Landroid/os/Message;
    .registers 9
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # I

    .line 250
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 251
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 252
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 253
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 254
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 255
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o obtainMessageIIIIII(IIIIIII)Landroid/os/Message;
    .registers 11
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # I
    .param p6, "arg5"    # I
    .param p7, "arg6"    # I

    .line 260
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 261
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 262
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 263
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 264
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 265
    iput p6, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 266
    iput p7, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 267
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o obtainMessageIIIIO(IIIIILjava/lang/Object;)Landroid/os/Message;
    .registers 10
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # I
    .param p6, "arg5"    # Ljava/lang/Object;

    .line 272
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 273
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 274
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 275
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 276
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 277
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 278
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o obtainMessageIIOO(IIILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 8
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;

    .line 157
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 158
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 159
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o obtainMessageIIOOO(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 9
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "arg5"    # Ljava/lang/Object;

    .line 181
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 182
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 183
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 184
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 185
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o obtainMessageIIOOOO(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 10
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "arg5"    # Ljava/lang/Object;
    .param p7, "arg6"    # Ljava/lang/Object;

    .line 190
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 191
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 192
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 193
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 194
    iput-object p7, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public greylist obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 8
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;

    .line 165
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 166
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 167
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 168
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o obtainMessageIOOO(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 9
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;

    .line 172
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 173
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 174
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 175
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 176
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public greylist obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 200
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 201
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 202
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 8
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;

    .line 208
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 209
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 210
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 211
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 212
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 9
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;

    .line 217
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 218
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 219
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 220
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 221
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 222
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o obtainMessageOOOOII(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Landroid/os/Message;
    .registers 11
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "arg5"    # I
    .param p7, "arg6"    # I

    .line 238
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 239
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 240
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 241
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 242
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 243
    iput p6, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 244
    iput p7, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 245
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o obtainMessageOOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 10
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "arg5"    # Ljava/lang/Object;

    .line 227
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 228
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 229
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 230
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 231
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 232
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 233
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o removeMessages(I)V
    .registers 3
    .param p1, "what"    # I

    .line 85
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    return-void
.end method

.method public greylist-max-o removeMessages(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 90
    return-void
.end method

.method public greylist sendMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 94
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    return-void
.end method

.method public greylist-max-o sendMessageAndWait(Landroid/os/Message;)Lcom/android/internal/os/SomeArgs;
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 98
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2d

    .line 101
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 102
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    .line 103
    iget-object v2, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    monitor-enter v0

    .line 105
    :goto_19
    :try_start_19
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->mWaitState:I
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_2a

    if-ne v2, v1, :cond_25

    .line 107
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21
    .catchall {:try_start_1d .. :try_end_20} :catchall_2a

    .line 110
    goto :goto_19

    .line 108
    :catch_21
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_22
    monitor-exit v0

    const/4 v2, 0x0

    return-object v2

    .line 112
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_2a

    .line 113
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    .line 114
    return-object v0

    .line 112
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1

    .line 99
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t wait on same thread as looper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o sendMessageDelayed(Landroid/os/Message;J)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .line 77
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 78
    return-void
.end method
