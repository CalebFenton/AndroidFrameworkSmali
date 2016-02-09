.class Lcom/android/server/trust/TrustManagerService$2;
.super Landroid/os/Handler;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/trust/TrustManagerService;

    #@0
    .prologue
    .line 855
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 858
    iget v1, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 857
    :goto_0
    return-void

    #@8
    .line 860
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v0, Landroid/app/trust/ITrustListener;

    #@e
    invoke-static {v1, v0}, Lcom/android/server/trust/TrustManagerService;->-wrap5(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    #@11
    goto :goto_0

    #@12
    .line 863
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    check-cast v0, Landroid/app/trust/ITrustListener;

    #@18
    invoke-static {v1, v0}, Lcom/android/server/trust/TrustManagerService;->-wrap10(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    #@1b
    goto :goto_0

    #@1c
    .line 866
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@1e
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@20
    if-eqz v2, :cond_0

    #@22
    const/4 v0, 0x1

    #@23
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@25
    invoke-static {v1, v0, v2}, Lcom/android/server/trust/TrustManagerService;->-wrap6(Lcom/android/server/trust/TrustManagerService;ZI)V

    #@28
    goto :goto_0

    #@29
    .line 869
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2b
    invoke-virtual {v0, v2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@2e
    .line 871
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@30
    invoke-static {v0, v2}, Lcom/android/server/trust/TrustManagerService;->-wrap8(Lcom/android/server/trust/TrustManagerService;I)V

    #@33
    goto :goto_0

    #@34
    .line 874
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@36
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@38
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->-wrap11(Lcom/android/server/trust/TrustManagerService;I)V

    #@3b
    goto :goto_0

    #@3c
    .line 877
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@3e
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@40
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-get2(Lcom/android/server/trust/TrustManagerService;)I

    #@43
    move-result v1

    #@44
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->-wrap8(Lcom/android/server/trust/TrustManagerService;I)V

    #@47
    goto :goto_0

    #@48
    .line 881
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@4a
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@4c
    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@4f
    goto :goto_0

    #@50
    .line 884
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@52
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@54
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->-set0(Lcom/android/server/trust/TrustManagerService;I)I

    #@57
    .line 885
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@59
    invoke-static {v0, v2}, Lcom/android/server/trust/TrustManagerService;->-wrap8(Lcom/android/server/trust/TrustManagerService;I)V

    #@5c
    goto :goto_0

    #@5d
    .line 858
    nop

    #@5e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
