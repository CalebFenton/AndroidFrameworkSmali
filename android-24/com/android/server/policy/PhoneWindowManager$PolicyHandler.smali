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
    .line 724
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
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 727
    iget v1, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 726
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 729
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@a
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap6(Lcom/android/server/policy/PhoneWindowManager;)V

    #@d
    goto :goto_0

    #@e
    .line 732
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@10
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap4(Lcom/android/server/policy/PhoneWindowManager;)V

    #@13
    goto :goto_0

    #@14
    .line 735
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@16
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@18
    check-cast v1, Landroid/view/KeyEvent;

    #@1a
    invoke-virtual {v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V

    #@1d
    goto :goto_0

    #@1e
    .line 738
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@20
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@22
    check-cast v1, Landroid/view/KeyEvent;

    #@24
    invoke-virtual {v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V

    #@27
    goto :goto_0

    #@28
    .line 741
    :pswitch_5
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2a
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@2c
    if-eqz v1, :cond_1

    #@2e
    move v1, v2

    #@2f
    :goto_1
    invoke-static {v4, v3, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap17(Lcom/android/server/policy/PhoneWindowManager;ZZ)V

    #@32
    goto :goto_0

    #@33
    :cond_1
    move v1, v3

    #@34
    goto :goto_1

    #@35
    .line 744
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@37
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    #@3a
    goto :goto_0

    #@3b
    .line 748
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@3d
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap7(Lcom/android/server/policy/PhoneWindowManager;)V

    #@40
    goto :goto_0

    #@41
    .line 751
    :pswitch_8
    const-string/jumbo v1, "WindowManager"

    #@44
    const-string/jumbo v2, "Keyguard drawn timeout. Setting mKeyguardDrawComplete"

    #@47
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 752
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@4c
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap7(Lcom/android/server/policy/PhoneWindowManager;)V

    #@4f
    goto :goto_0

    #@50
    .line 756
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@52
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap9(Lcom/android/server/policy/PhoneWindowManager;)V

    #@55
    goto :goto_0

    #@56
    .line 759
    :pswitch_a
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@58
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap10(Lcom/android/server/policy/PhoneWindowManager;)V

    #@5b
    goto :goto_0

    #@5c
    .line 762
    :pswitch_b
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@5e
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@60
    if-eqz v4, :cond_2

    #@62
    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssistWithWakeLock(Z)V

    #@65
    goto :goto_0

    #@66
    :cond_2
    move v2, v3

    #@67
    goto :goto_2

    #@68
    .line 765
    :pswitch_c
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@6a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6c
    check-cast v1, Ljava/lang/Long;

    #@6e
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@71
    move-result-wide v6

    #@72
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@74
    if-eqz v1, :cond_3

    #@76
    :goto_3
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@78
    invoke-static {v4, v6, v7, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap15(Lcom/android/server/policy/PhoneWindowManager;JZI)V

    #@7b
    .line 766
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@7d
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap8(Lcom/android/server/policy/PhoneWindowManager;)V

    #@80
    goto :goto_0

    #@81
    :cond_3
    move v2, v3

    #@82
    .line 765
    goto :goto_3

    #@83
    .line 769
    :pswitch_d
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@85
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap14(Lcom/android/server/policy/PhoneWindowManager;)V

    #@88
    goto/16 :goto_0

    #@8a
    .line 772
    :pswitch_e
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@8c
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@8e
    if-eqz v4, :cond_4

    #@90
    :goto_4
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap20(Lcom/android/server/policy/PhoneWindowManager;Z)V

    #@93
    goto/16 :goto_0

    #@95
    :cond_4
    move v2, v3

    #@96
    goto :goto_4

    #@97
    .line 775
    :pswitch_f
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@99
    if-nez v1, :cond_5

    #@9b
    .line 776
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@9d
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@9f
    .line 777
    .local v0, "targetBar":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_5
    if-eqz v0, :cond_0

    #@a1
    .line 778
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@a3
    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap16(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    #@a6
    goto/16 :goto_0

    #@a8
    .line 776
    .end local v0    # "targetBar":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@aa
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@ac
    goto :goto_5

    #@ad
    .line 782
    :pswitch_10
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@af
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap18(Lcom/android/server/policy/PhoneWindowManager;)V

    #@b2
    goto/16 :goto_0

    #@b4
    .line 785
    :pswitch_11
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@b6
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap3(Lcom/android/server/policy/PhoneWindowManager;)V

    #@b9
    goto/16 :goto_0

    #@bb
    .line 788
    :pswitch_12
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@bd
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@bf
    check-cast v1, Landroid/view/WindowManagerPolicy$InputConsumer;

    #@c1
    invoke-static {v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap5(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$InputConsumer;)V

    #@c4
    goto/16 :goto_0

    #@c6
    .line 727
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
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
