.class Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    #@0
    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 273
    iget v2, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v2, :pswitch_data_0

    #@5
    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "processMessage: unhandled message type "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    iget v3, p1, Landroid/os/Message;->what:I

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 280
    const-string/jumbo v3, " currState="

    #@1a
    .line 279
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    .line 280
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@20
    invoke-static {v3}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap0(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/util/IState;

    #@23
    move-result-object v3

    #@24
    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    .line 279
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .line 281
    .local v0, "errorText":Ljava/lang/String;
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 282
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@36
    const-string/jumbo v3, "---- Dumping InboundSmsHandler ----"

    #@39
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@3c
    .line 283
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@3e
    new-instance v3, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v4, "Total records="

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@4c
    invoke-virtual {v4}, Lcom/android/internal/telephony/InboundSmsHandler;->getLogRecCount()I

    #@4f
    move-result v4

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@5b
    .line 284
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@5d
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->getLogRecSize()I

    #@60
    move-result v2

    #@61
    add-int/lit8 v2, v2, -0x14

    #@63
    const/4 v3, 0x0

    #@64
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@67
    move-result v1

    #@68
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@6a
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->getLogRecSize()I

    #@6d
    move-result v2

    #@6e
    if-ge v1, v2, :cond_0

    #@70
    .line 285
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@72
    new-instance v3, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v4, "Rec[%d]: %s\n"

    #@7a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@81
    move-result-object v3

    #@82
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@84
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v4}, Lcom/android/internal/util/StateMachine$LogRec;->toString()Ljava/lang/String;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v3

    #@90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v3

    #@94
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@97
    .line 284
    add-int/lit8 v1, v1, 0x1

    #@99
    goto :goto_0

    #@9a
    .line 275
    .end local v0    # "errorText":Ljava/lang/String;
    .end local v1    # "i":I
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@9c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9e
    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    #@a0
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    #@a3
    .line 296
    :goto_1
    const/4 v2, 0x1

    #@a4
    return v2

    #@a5
    .line 287
    .restart local v0    # "errorText":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@a7
    const-string/jumbo v3, "---- Dumped InboundSmsHandler ----"

    #@aa
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@ad
    .line 289
    new-instance v2, Ljava/lang/RuntimeException;

    #@af
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b2
    throw v2

    #@b3
    .line 291
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@b5
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@b8
    goto :goto_1

    #@b9
    .line 273
    nop

    #@ba
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
