.class Lcom/android/server/hdmi/HdmiCecController$6;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecController;->flush(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p2, "val$runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$6;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController$6;->val$runnable:Ljava/lang/Runnable;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$6;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$6;->val$runnable:Ljava/lang/Runnable;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->-wrap6(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    #@7
    .line 511
    return-void
.end method
