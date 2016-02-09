.class final Landroid/telecom/InCallService$InCallServiceBinder;
.super Lcom/android/internal/telecom/IInCallService$Stub;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InCallServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method private constructor <init>(Landroid/telecom/InCallService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/InCallService;

    #@0
    .prologue
    .line 124
    iput-object p1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    #@2
    invoke-direct {p0}, Lcom/android/internal/telecom/IInCallService$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/InCallService;Landroid/telecom/InCallService$InCallServiceBinder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/InCallService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/InCallService$InCallServiceBinder;-><init>(Landroid/telecom/InCallService;)V

    #@3
    return-void
.end method


# virtual methods
.method public addCall(Landroid/telecom/ParcelableCall;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/ParcelableCall;

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    #@2
    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 131
    return-void
.end method

.method public bringToForeground(Z)V
    .locals 4
    .param p1, "showDialpad"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 160
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    #@3
    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    #@6
    move-result-object v2

    #@7
    if-eqz p1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    const/4 v3, 0x6

    #@b
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 159
    return-void

    #@13
    :cond_0
    move v0, v1

    #@14
    .line 160
    goto :goto_0
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 2
    .param p1, "callAudioState"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    #@2
    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

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
    .line 154
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 4
    .param p1, "canAddCall"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 165
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    #@3
    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    #@6
    move-result-object v2

    #@7
    if-eqz p1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    const/4 v3, 0x7

    #@b
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 164
    return-void

    #@13
    :cond_0
    move v0, v1

    #@14
    .line 165
    goto :goto_0
.end method

.method public setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V
    .locals 2
    .param p1, "inCallAdapter"    # Lcom/android/internal/telecom/IInCallAdapter;

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    #@2
    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

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
    .line 126
    return-void
.end method

.method public setPostDial(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    #@0
    .prologue
    .line 141
    return-void
.end method

.method public setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    #@0
    .prologue
    .line 147
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 148
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 149
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 150
    iget-object v1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    #@a
    invoke-static {v1}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x4

    #@f
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 146
    return-void
.end method

.method public updateCall(Landroid/telecom/ParcelableCall;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/ParcelableCall;

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    #@2
    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

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
    .line 136
    return-void
.end method
