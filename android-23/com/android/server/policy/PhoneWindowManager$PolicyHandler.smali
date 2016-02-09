.class Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    #@0
    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 642
    iget v0, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 641
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 644
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@a
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap4(Lcom/android/server/policy/PhoneWindowManager;)V

    #@d
    goto :goto_0

    #@e
    .line 647
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@10
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap3(Lcom/android/server/policy/PhoneWindowManager;)V

    #@13
    goto :goto_0

    #@14
    .line 650
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@18
    check-cast v0, Landroid/view/KeyEvent;

    #@1a
    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V

    #@1d
    goto :goto_0

    #@1e
    .line 653
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@22
    check-cast v0, Landroid/view/KeyEvent;

    #@24
    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V

    #@27
    goto :goto_0

    #@28
    .line 656
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2a
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap14(Lcom/android/server/policy/PhoneWindowManager;Z)V

    #@2d
    goto :goto_0

    #@2e
    .line 659
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@30
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    #@33
    goto :goto_0

    #@34
    .line 663
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@36
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap5(Lcom/android/server/policy/PhoneWindowManager;)V

    #@39
    goto :goto_0

    #@3a
    .line 666
    :pswitch_8
    const-string/jumbo v0, "WindowManager"

    #@3d
    const-string/jumbo v1, "Keyguard drawn timeout. Setting mKeyguardDrawComplete"

    #@40
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 667
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@45
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap5(Lcom/android/server/policy/PhoneWindowManager;)V

    #@48
    goto :goto_0

    #@49
    .line 671
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@4b
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap7(Lcom/android/server/policy/PhoneWindowManager;)V

    #@4e
    goto :goto_0

    #@4f
    .line 674
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@51
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap8(Lcom/android/server/policy/PhoneWindowManager;)V

    #@54
    goto :goto_0

    #@55
    .line 677
    :pswitch_b
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@57
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@59
    if-eqz v0, :cond_0

    #@5b
    move v0, v1

    #@5c
    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssistWithWakeLock(Z)V

    #@5f
    goto :goto_0

    #@60
    :cond_0
    move v0, v2

    #@61
    goto :goto_1

    #@62
    .line 680
    :pswitch_c
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@64
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@66
    check-cast v0, Ljava/lang/Long;

    #@68
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@6b
    move-result-wide v4

    #@6c
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@6e
    if-eqz v0, :cond_1

    #@70
    :goto_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    #@72
    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap12(Lcom/android/server/policy/PhoneWindowManager;JZI)V

    #@75
    .line 681
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@77
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap6(Lcom/android/server/policy/PhoneWindowManager;)V

    #@7a
    goto :goto_0

    #@7b
    :cond_1
    move v1, v2

    #@7c
    .line 680
    goto :goto_2

    #@7d
    .line 684
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@7f
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap11(Lcom/android/server/policy/PhoneWindowManager;)V

    #@82
    goto :goto_0

    #@83
    .line 687
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@85
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@87
    if-eqz v3, :cond_2

    #@89
    :goto_3
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap16(Lcom/android/server/policy/PhoneWindowManager;Z)V

    #@8c
    goto/16 :goto_0

    #@8e
    :cond_2
    move v1, v2

    #@8f
    goto :goto_3

    #@90
    .line 642
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
