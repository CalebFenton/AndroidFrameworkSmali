.class Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;
.super Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;
.source "HdmiCecMessageValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemAudioModeRequestValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@0
    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;)V

    #@6
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V

    #@3
    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 2
    .param p1, "params"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 310
    array-length v0, p1

    #@2
    if-nez v0, :cond_0

    #@4
    .line 311
    return v1

    #@5
    .line 313
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;->isValid([B)I

    #@8
    move-result v0

    #@9
    return v0
.end method
