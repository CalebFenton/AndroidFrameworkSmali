.class Lcom/android/server/hdmi/HdmiCecController$3;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecController;->allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field final synthetic val$callback:Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;

.field final synthetic val$deviceType:I

.field final synthetic val$preferredAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p2, "val$deviceType"    # I
    .param p3, "val$preferredAddress"    # I
    .param p4, "val$callback"    # Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;

    #@0
    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$3;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$deviceType:I

    #@4
    iput p3, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$preferredAddress:I

    #@6
    iput-object p4, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$callback:Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;

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
    .line 164
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$3;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$deviceType:I

    #@4
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$preferredAddress:I

    #@6
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$callback:Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;

    #@8
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecController;->-wrap4(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    #@b
    .line 163
    return-void
.end method
