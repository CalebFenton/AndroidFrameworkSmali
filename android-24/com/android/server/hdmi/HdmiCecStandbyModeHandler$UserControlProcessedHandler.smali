.class final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;
.super Ljava/lang/Object;
.source "HdmiCecStandbyModeHandler.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserControlProcessedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    #@0
    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)V

    #@3
    return-void
.end method


# virtual methods
.method public handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 71
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 72
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 73
    :cond_0
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 74
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    #@12
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->-get0(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    #@15
    move-result-object v0

    #@16
    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@19
    move-result v0

    #@1a
    return v0
.end method
