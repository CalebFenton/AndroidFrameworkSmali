.class Lcom/android/server/hdmi/HdmiControlService$4;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->setControlEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;

    #@0
    .prologue
    .line 2201
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$4;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 2204
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$4;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap11(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 2203
    return-void
.end method
