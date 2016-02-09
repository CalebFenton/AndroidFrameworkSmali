.class Lcom/android/server/hdmi/HdmiControlService$6;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->changeInputForMhl(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$lastInput:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "val$lastInput"    # I

    #@0
    .prologue
    .line 2270
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$6;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$6;->val$lastInput:I

    #@4
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 2
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2276
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$6;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$6;->val$lastInput:I

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    #@7
    .line 2272
    return-void
.end method
