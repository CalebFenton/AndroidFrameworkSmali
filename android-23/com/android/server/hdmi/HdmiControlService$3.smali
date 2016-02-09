.class Lcom/android/server/hdmi/HdmiControlService$3;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->onStandby(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$devices:Ljava/util/List;

.field final synthetic val$standbyAction:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p3, "val$standbyAction"    # I

    #@0
    .prologue
    .line 2013
    .local p2, "val$devices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$3;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$3;->val$devices:Ljava/util/List;

    #@4
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$3;->val$standbyAction:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 3
    .param p1, "device"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@0
    .prologue
    .line 2016
    const-string/jumbo v0, "HdmiControlService"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "On standby-action cleared:"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 2017
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$3;->val$devices:Ljava/util/List;

    #@1e
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@21
    .line 2018
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$3;->val$devices:Ljava/util/List;

    #@23
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 2019
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$3;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2b
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$3;->val$standbyAction:I

    #@2d
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap18(Lcom/android/server/hdmi/HdmiControlService;I)V

    #@30
    .line 2015
    :cond_0
    return-void
.end method
