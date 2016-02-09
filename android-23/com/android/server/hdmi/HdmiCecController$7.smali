.class Lcom/android/server/hdmi/HdmiCecController$7;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

.field final synthetic val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p2, "val$cecMessage"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p3, "val$callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    #@0
    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    #@4
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 569
    new-instance v5, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v6, "[S]:"

    #@9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v5

    #@d
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    new-array v6, v7, [Ljava/lang/Object;

    #@19
    invoke-static {v5, v6}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1c
    .line 570
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    #@1e
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@21
    move-result v5

    #@22
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    #@24
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@27
    move-result-object v6

    #@28
    invoke-static {v5, v6}, Lcom/android/server/hdmi/HdmiCecController;->-wrap2(I[B)[B

    #@2b
    move-result-object v0

    #@2c
    .line 571
    .local v0, "body":[B
    const/4 v3, 0x0

    #@2d
    .line 572
    .local v3, "i":I
    const/4 v1, 0x0

    #@2e
    .line 574
    .local v1, "errorCode":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    #@30
    invoke-static {v5}, Lcom/android/server/hdmi/HdmiCecController;->-get0(Lcom/android/server/hdmi/HdmiCecController;)J

    #@33
    move-result-wide v6

    #@34
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    #@36
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@39
    move-result v5

    #@3a
    .line 575
    iget-object v8, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    #@3c
    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    #@3f
    move-result v8

    #@40
    .line 574
    invoke-static {v6, v7, v5, v8, v0}, Lcom/android/server/hdmi/HdmiCecController;->-wrap3(JII[B)I

    #@43
    move-result v1

    #@44
    .line 576
    if-nez v1, :cond_2

    #@46
    .line 581
    :goto_1
    move v2, v1

    #@47
    .line 582
    .local v2, "finalError":I
    if-eqz v2, :cond_0

    #@49
    .line 583
    const-string/jumbo v5, "HdmiCecController"

    #@4c
    new-instance v6, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v7, "Failed to send "

    #@54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    #@5a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v6

    #@62
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 585
    :cond_0
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    #@67
    if-eqz v5, :cond_1

    #@69
    .line 586
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    #@6b
    new-instance v6, Lcom/android/server/hdmi/HdmiCecController$7$1;

    #@6d
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    #@6f
    invoke-direct {v6, p0, v7, v2}, Lcom/android/server/hdmi/HdmiCecController$7$1;-><init>(Lcom/android/server/hdmi/HdmiCecController$7;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;I)V

    #@72
    invoke-static {v5, v6}, Lcom/android/server/hdmi/HdmiCecController;->-wrap6(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    #@75
    .line 568
    :cond_1
    return-void

    #@76
    .line 579
    .end local v2    # "finalError":I
    :cond_2
    add-int/lit8 v4, v3, 0x1

    #@78
    .end local v3    # "i":I
    .local v4, "i":I
    const/4 v5, 0x1

    #@79
    if-ge v3, v5, :cond_3

    #@7b
    move v3, v4

    #@7c
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@7d
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_3
    move v3, v4

    #@7e
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1
.end method
