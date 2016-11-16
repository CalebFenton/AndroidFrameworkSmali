.class Lcom/android/server/WiredAccessoryManager$1;
.super Landroid/os/Handler;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method constructor <init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/WiredAccessoryManager;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "$anonymous1"    # Landroid/os/Handler$Callback;
    .param p4, "$anonymous2"    # Z

    #@0
    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    #@2
    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 229
    :goto_0
    return-void

    #@6
    .line 232
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    #@8
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@a
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e
    check-cast v0, Ljava/lang/String;

    #@10
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/WiredAccessoryManager;->-wrap1(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V

    #@13
    .line 233
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    #@15
    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-get4(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1c
    goto :goto_0

    #@1d
    .line 236
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    #@1f
    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-wrap0(Lcom/android/server/WiredAccessoryManager;)V

    #@22
    .line 237
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    #@24
    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-get4(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2b
    goto :goto_0

    #@2c
    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
