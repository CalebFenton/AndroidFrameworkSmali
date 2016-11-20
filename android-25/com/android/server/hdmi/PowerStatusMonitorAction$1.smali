.class Lcom/android/server/hdmi/PowerStatusMonitorAction$1;
.super Ljava/lang/Object;
.source "PowerStatusMonitorAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/PowerStatusMonitorAction;->queryPowerStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/PowerStatusMonitorAction;

.field final synthetic val$logicalAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/PowerStatusMonitorAction;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/PowerStatusMonitorAction;
    .param p2, "val$logicalAddress"    # I

    #@0
    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;->this$0:Lcom/android/server/hdmi/PowerStatusMonitorAction;

    #@2
    iput p2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;->val$logicalAddress:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 4
    .param p1, "error"    # I

    #@0
    .prologue
    .line 126
    if-eqz p1, :cond_0

    #@2
    .line 127
    iget-object v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;->this$0:Lcom/android/server/hdmi/PowerStatusMonitorAction;

    #@4
    iget v1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;->val$logicalAddress:I

    #@6
    const/4 v2, -0x1

    #@7
    const/4 v3, 0x1

    #@8
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->-wrap0(Lcom/android/server/hdmi/PowerStatusMonitorAction;IIZ)V

    #@b
    .line 123
    :cond_0
    return-void
.end method
