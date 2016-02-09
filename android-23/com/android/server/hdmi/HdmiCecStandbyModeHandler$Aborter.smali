.class final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;
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
    name = "Aborter"
.end annotation


# instance fields
.field private final mReason:I

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 47
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->mReason:I

    #@7
    .line 46
    return-void
.end method


# virtual methods
.method public handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->-get2(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiControlService;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->mReason:I

    #@8
    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    #@b
    .line 52
    const/4 v0, 0x1

    #@c
    return v0
.end method
