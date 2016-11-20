.class Lcom/android/internal/telephony/InboundSmsHandler$StartupState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartupState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    #@0
    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$StartupState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    #@3
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "StartupState.processMessage:"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget v2, p1, Landroid/os/Message;->what:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@1c
    .line 323
    iget v0, p1, Landroid/os/Message;->what:I

    #@1e
    packed-switch v0, :pswitch_data_0

    #@21
    .line 339
    :pswitch_0
    const/4 v0, 0x0

    #@22
    return v0

    #@23
    .line 327
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@25
    invoke-static {v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap4(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V

    #@28
    .line 328
    return v3

    #@29
    .line 331
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2b
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2d
    invoke-static {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->-get1(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    #@30
    move-result-object v1

    #@31
    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap12(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V

    #@34
    .line 332
    return v3

    #@35
    .line 323
    nop

    #@36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
