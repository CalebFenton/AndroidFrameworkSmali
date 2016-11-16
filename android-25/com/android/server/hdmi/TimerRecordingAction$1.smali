.class Lcom/android/server/hdmi/TimerRecordingAction$1;
.super Ljava/lang/Object;
.source "TimerRecordingAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/TimerRecordingAction;->sendTimerMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/TimerRecordingAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/TimerRecordingAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/TimerRecordingAction;

    #@0
    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 3
    .param p1, "error"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 85
    if-eqz p1, :cond_0

    #@3
    .line 86
    iget-object v0, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    #@5
    invoke-virtual {v0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@8
    move-result-object v0

    #@9
    iget-object v1, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    #@b
    invoke-static {v1}, Lcom/android/server/hdmi/TimerRecordingAction;->-get0(Lcom/android/server/hdmi/TimerRecordingAction;)I

    #@e
    move-result v1

    #@f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    #@12
    .line 88
    iget-object v0, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    #@14
    invoke-virtual {v0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    #@17
    .line 89
    return-void

    #@18
    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    #@1a
    iput v2, v0, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    #@1c
    .line 92
    iget-object v0, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    #@1e
    iget-object v1, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    #@20
    iget v1, v1, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    #@22
    const v2, 0x1d4c0

    #@25
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/TimerRecordingAction;->addTimer(II)V

    #@28
    .line 84
    return-void
.end method
