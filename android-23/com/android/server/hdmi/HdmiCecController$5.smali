.class Lcom/android/server/hdmi/HdmiCecController$5;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field final synthetic val$allocated:Ljava/util/List;

.field final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

.field final synthetic val$candidate:Ljava/lang/Integer;

.field final synthetic val$candidates:Ljava/util/List;

.field final synthetic val$retryCount:I

.field final synthetic val$sourceAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/lang/Integer;ILjava/util/List;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p2, "val$sourceAddress"    # I
    .param p3, "val$candidate"    # Ljava/lang/Integer;
    .param p4, "val$retryCount"    # I
    .param p7, "val$callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    #@0
    .prologue
    .line 450
    .local p5, "val$allocated":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "val$candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$sourceAddress:I

    #@4
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidate:Ljava/lang/Integer;

    #@6
    iput p4, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$retryCount:I

    #@8
    iput-object p5, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$allocated:Ljava/util/List;

    #@a
    iput-object p6, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidates:Ljava/util/List;

    #@c
    iput-object p7, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$callback:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    #@e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$sourceAddress:I

    #@4
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidate:Ljava/lang/Integer;

    #@6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v2

    #@a
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$retryCount:I

    #@c
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecController;->-wrap1(Lcom/android/server/hdmi/HdmiCecController;III)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 454
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$allocated:Ljava/util/List;

    #@14
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidate:Ljava/lang/Integer;

    #@16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 456
    :cond_0
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    #@1b
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$5$1;

    #@1d
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$sourceAddress:I

    #@1f
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidates:Ljava/util/List;

    #@21
    iget v4, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$retryCount:I

    #@23
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$callback:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    #@25
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$allocated:Ljava/util/List;

    #@27
    move-object v1, p0

    #@28
    invoke-direct/range {v0 .. v6}, Lcom/android/server/hdmi/HdmiCecController$5$1;-><init>(Lcom/android/server/hdmi/HdmiCecController$5;ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    #@2b
    invoke-static {v7, v0}, Lcom/android/server/hdmi/HdmiCecController;->-wrap6(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    #@2e
    .line 452
    return-void
.end method
