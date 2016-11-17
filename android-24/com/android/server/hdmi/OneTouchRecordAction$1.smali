.class Lcom/android/server/hdmi/OneTouchRecordAction$1;
.super Ljava/lang/Object;
.source "OneTouchRecordAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/OneTouchRecordAction;->sendRecordOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/OneTouchRecordAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/OneTouchRecordAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/OneTouchRecordAction;

    #@0
    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/server/hdmi/OneTouchRecordAction$1;->this$0:Lcom/android/server/hdmi/OneTouchRecordAction;

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
    .line 65
    if-eqz p1, :cond_0

    #@2
    .line 66
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction$1;->this$0:Lcom/android/server/hdmi/OneTouchRecordAction;

    #@4
    invoke-virtual {v0}, Lcom/android/server/hdmi/OneTouchRecordAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@7
    move-result-object v0

    #@8
    .line 67
    iget-object v1, p0, Lcom/android/server/hdmi/OneTouchRecordAction$1;->this$0:Lcom/android/server/hdmi/OneTouchRecordAction;

    #@a
    invoke-static {v1}, Lcom/android/server/hdmi/OneTouchRecordAction;->-get0(Lcom/android/server/hdmi/OneTouchRecordAction;)I

    #@d
    move-result v1

    #@e
    .line 68
    const/16 v2, 0x31

    #@10
    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    #@13
    .line 69
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction$1;->this$0:Lcom/android/server/hdmi/OneTouchRecordAction;

    #@15
    invoke-virtual {v0}, Lcom/android/server/hdmi/OneTouchRecordAction;->finish()V

    #@18
    .line 70
    return-void

    #@19
    .line 63
    :cond_0
    return-void
.end method
