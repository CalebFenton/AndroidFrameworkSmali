.class Lcom/android/server/hdmi/HdmiCecLocalDevice$2;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevice.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field final synthetic val$originalCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "val$originalCallback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    #@0
    .prologue
    .line 862
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;->val$originalCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 2
    .param p1, "device"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@0
    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->-get0(Lcom/android/server/hdmi/HdmiCecLocalDevice;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@a
    .line 866
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;->val$originalCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    #@c
    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    #@f
    .line 864
    return-void
.end method
