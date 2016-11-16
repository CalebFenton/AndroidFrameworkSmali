.class final Lcom/android/server/hdmi/RequestArcInitiationAction;
.super Lcom/android/server/hdmi/RequestArcAction;
.source "RequestArcInitiationAction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestArcInitiationAction"


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 0
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/RequestArcAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    #@3
    .line 32
    return-void
.end method


# virtual methods
.method start()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 39
    iput v3, p0, Lcom/android/server/hdmi/RequestArcInitiationAction;->mState:I

    #@3
    .line 40
    iget v1, p0, Lcom/android/server/hdmi/RequestArcInitiationAction;->mState:I

    #@5
    const/16 v2, 0x7d0

    #@7
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/RequestArcInitiationAction;->addTimer(II)V

    #@a
    .line 43
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcInitiationAction;->getSourceAddress()I

    #@d
    move-result v1

    #@e
    iget v2, p0, Lcom/android/server/hdmi/RequestArcInitiationAction;->mAvrAddress:I

    #@10
    .line 42
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRequestArcInitiation(II)Lcom/android/server/hdmi/HdmiCecMessage;

    #@13
    move-result-object v0

    #@14
    .line 44
    .local v0, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    new-instance v1, Lcom/android/server/hdmi/RequestArcInitiationAction$1;

    #@16
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/RequestArcInitiationAction$1;-><init>(Lcom/android/server/hdmi/RequestArcInitiationAction;)V

    #@19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/RequestArcInitiationAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    #@1c
    .line 54
    return v3
.end method
