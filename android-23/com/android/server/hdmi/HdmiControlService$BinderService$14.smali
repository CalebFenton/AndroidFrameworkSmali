.class Lcom/android/server/hdmi/HdmiControlService$BinderService$14;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->startTimerRecording(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$recordSource:[B

.field final synthetic val$recorderAddress:I

.field final synthetic val$sourceType:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;
    .param p2, "val$recorderAddress"    # I
    .param p3, "val$sourceType"    # I
    .param p4, "val$recordSource"    # [B

    #@0
    .prologue
    .line 1576
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->val$recorderAddress:I

    #@4
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->val$sourceType:I

    #@6
    iput-object p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->val$recordSource:[B

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 1579
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@4
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1580
    const-string/jumbo v0, "HdmiControlService"

    #@d
    const-string/jumbo v1, "TV device is not enabled."

    #@10
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 1581
    return-void

    #@14
    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@16
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@18
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap1(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@1b
    move-result-object v0

    #@1c
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->val$recorderAddress:I

    #@1e
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->val$sourceType:I

    #@20
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->val$recordSource:[B

    #@22
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startTimerRecording(II[B)V

    #@25
    .line 1578
    return-void
.end method
