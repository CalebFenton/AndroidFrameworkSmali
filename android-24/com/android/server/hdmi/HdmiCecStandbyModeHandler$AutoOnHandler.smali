.class final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;
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
    name = "AutoOnHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    #@0
    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)V

    #@3
    return-void
.end method


# virtual methods
.method public handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->-get3(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 60
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    #@e
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->-get1(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    #@11
    move-result-object v0

    #@12
    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@15
    .line 61
    const/4 v0, 0x1

    #@16
    return v0

    #@17
    .line 63
    :cond_0
    const/4 v0, 0x0

    #@18
    return v0
.end method
