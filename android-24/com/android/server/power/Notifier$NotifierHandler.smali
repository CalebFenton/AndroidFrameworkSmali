.class final Lcom/android/server/power/Notifier$NotifierHandler;
.super Landroid/os/Handler;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotifierHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/power/Notifier;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    #@2
    .line 666
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 665
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 671
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 670
    :goto_0
    return-void

    #@6
    .line 673
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    #@8
    invoke-static {v0}, Lcom/android/server/power/Notifier;->-wrap3(Lcom/android/server/power/Notifier;)V

    #@b
    goto :goto_0

    #@c
    .line 677
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    #@e
    invoke-static {v0}, Lcom/android/server/power/Notifier;->-wrap2(Lcom/android/server/power/Notifier;)V

    #@11
    goto :goto_0

    #@12
    .line 681
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    #@14
    invoke-static {v0}, Lcom/android/server/power/Notifier;->-wrap0(Lcom/android/server/power/Notifier;)V

    #@17
    goto :goto_0

    #@18
    .line 684
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    #@1a
    invoke-static {v0}, Lcom/android/server/power/Notifier;->-wrap1(Lcom/android/server/power/Notifier;)V

    #@1d
    goto :goto_0

    #@1e
    .line 671
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
