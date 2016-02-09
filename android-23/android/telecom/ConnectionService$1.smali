.class Landroid/telecom/ConnectionService$1;
.super Lcom/android/internal/telecom/IConnectionService$Stub;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;

    #@0
    .prologue
    .line 119
    iput-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-direct {p0}, Lcom/android/internal/telecom/IConnectionService$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public abort(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 146
    return-void
.end method

.method public addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 121
    return-void
.end method

.method public answer(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 159
    return-void
.end method

.method public answerVideo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    #@0
    .prologue
    .line 152
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 153
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 154
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@8
    .line 155
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@a
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0x11

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 151
    return-void
.end method

.method public conference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 203
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 204
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 205
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 206
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@a
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0xc

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 202
    return-void
.end method

.method public createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 4
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 136
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@5
    move-result-object v0

    #@6
    .line 137
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@8
    .line 138
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@a
    .line 139
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@c
    .line 140
    if-eqz p4, :cond_0

    #@e
    move v1, v2

    #@f
    :goto_0
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@11
    .line 141
    if-eqz p5, :cond_1

    #@13
    :goto_1
    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@15
    .line 142
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@17
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x2

    #@1c
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@23
    .line 135
    return-void

    #@24
    :cond_0
    move v1, v3

    #@25
    .line 140
    goto :goto_0

    #@26
    :cond_1
    move v2, v3

    #@27
    .line 141
    goto :goto_1
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x6

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 169
    return-void
.end method

.method public hold(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x7

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 174
    return-void
.end method

.method public mergeConference(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x12

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 215
    return-void
.end method

.method public onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 185
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 186
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 187
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 188
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@a
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0x9

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 184
    return-void
.end method

.method public onPostDialContinue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    #@0
    .prologue
    .line 226
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 227
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 228
    if-eqz p2, :cond_0

    #@8
    const/4 v1, 0x1

    #@9
    :goto_0
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@b
    .line 229
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@d
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@10
    move-result-object v1

    #@11
    const/16 v2, 0xe

    #@13
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@1a
    .line 225
    return-void

    #@1b
    .line 228
    :cond_0
    const/4 v1, 0x0

    #@1c
    goto :goto_0
.end method

.method public playDtmfTone(Ljava/lang/String;C)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xa

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@10
    .line 192
    return-void
.end method

.method public reject(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x5

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 164
    return-void
.end method

.method public removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x10

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 125
    return-void
.end method

.method public splitFromConference(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xd

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 210
    return-void
.end method

.method public stopDtmfTone(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xb

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 197
    return-void
.end method

.method public swapConference(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x13

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 220
    return-void
.end method

.method public unhold(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x8

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 179
    return-void
.end method
