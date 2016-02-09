.class Lcom/android/server/hdmi/HdmiControlService$BinderService$7;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->setSystemAudioVolume(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$maxIndex:I

.field final synthetic val$newIndex:I

.field final synthetic val$oldIndex:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;
    .param p2, "val$oldIndex"    # I
    .param p3, "val$newIndex"    # I
    .param p4, "val$maxIndex"    # I

    #@0
    .prologue
    .line 1431
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;->val$oldIndex:I

    #@4
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;->val$newIndex:I

    #@6
    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;->val$maxIndex:I

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
    .line 1434
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    #@2
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@4
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap1(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@7
    move-result-object v0

    #@8
    .line 1435
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v0, :cond_0

    #@a
    .line 1436
    const-string/jumbo v1, "HdmiControlService"

    #@d
    const-string/jumbo v2, "Local tv device not available"

    #@10
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 1437
    return-void

    #@14
    .line 1439
    :cond_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;->val$oldIndex:I

    #@16
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;->val$newIndex:I

    #@18
    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;->val$oldIndex:I

    #@1a
    sub-int/2addr v2, v3

    #@1b
    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;->val$maxIndex:I

    #@1d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->changeVolume(III)V

    #@20
    .line 1433
    return-void
.end method
