.class Lcom/android/server/hdmi/HdmiCecController$7$1;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecController$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiCecController$7;

.field final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

.field final synthetic val$finalError:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController$7;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiCecController$7;
    .param p2, "val$callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    .param p3, "val$finalError"    # I

    #@0
    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$7;

    #@2
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    #@4
    iput p3, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->val$finalError:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    #@2
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->val$finalError:I

    #@4
    invoke-interface {v0, v1}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    #@7
    .line 588
    return-void
.end method
