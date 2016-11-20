.class Lcom/android/server/hdmi/HdmiCecController$5$1;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecController$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiCecController$5;

.field final synthetic val$allocated:Ljava/util/List;

.field final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

.field final synthetic val$candidates:Ljava/util/List;

.field final synthetic val$retryCount:I

.field final synthetic val$sourceAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController$5;ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiCecController$5;
    .param p2, "val$sourceAddress"    # I
    .param p4, "val$retryCount"    # I
    .param p5, "val$callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    #@0
    .prologue
    .line 456
    .local p3, "val$candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "val$allocated":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$5;

    #@2
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->val$sourceAddress:I

    #@4
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->val$candidates:Ljava/util/List;

    #@6
    iput p4, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->val$retryCount:I

    #@8
    iput-object p5, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->val$callback:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    #@a
    iput-object p6, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->val$allocated:Ljava/util/List;

    #@c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$5;

    #@2
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    #@4
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->val$sourceAddress:I

    #@6
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->val$candidates:Ljava/util/List;

    #@8
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->val$retryCount:I

    #@a
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->val$callback:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    #@c
    .line 460
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->val$allocated:Ljava/util/List;

    #@e
    .line 459
    invoke-static/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecController;->-wrap5(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    #@11
    .line 458
    return-void
.end method
