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
    .line 885
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v7, -0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 888
    iget v6, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v6, :pswitch_data_0

    #@8
    .line 887
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@9
    .line 890
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@b
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d
    check-cast v4, Landroid/app/trust/ITrustListener;

    #@f
    invoke-static {v5, v4}, Lcom/android/server/trust/TrustManagerService;->-wrap4(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    #@12
    goto :goto_0

    #@13
    .line 893
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@15
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17
    check-cast v4, Landroid/app/trust/ITrustListener;

    #@19
    invoke-static {v5, v4}, Lcom/android/server/trust/TrustManagerService;->-wrap9(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    #@1c
    goto :goto_0

    #@1d
    .line 896
    :pswitch_3
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@1f
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@21
    if-eqz v7, :cond_1

    #@23
    :goto_1
    iget v5, p1, Landroid/os/Message;->arg2:I

    #@25
    invoke-static {v6, v4, v5}, Lcom/android/server/trust/TrustManagerService;->-wrap5(Lcom/android/server/trust/TrustManagerService;ZI)V

    #@28
    goto :goto_0

    #@29
    :cond_1
    move v4, v5

    #@2a
    goto :goto_1

    #@2b
    .line 899
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2d
    invoke-virtual {v4, v7}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@30
    .line 901
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@32
    invoke-static {v4, v7}, Lcom/android/server/trust/TrustManagerService;->-wrap7(Lcom/android/server/trust/TrustManagerService;I)V

    #@35
    goto :goto_0

    #@36
    .line 904
    :pswitch_5
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@38
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@3a
    invoke-static {v5}, Lcom/android/server/trust/TrustManagerService;->-get2(Lcom/android/server/trust/TrustManagerService;)I

    #@3d
    move-result v5

    #@3e
    invoke-static {v4, v5}, Lcom/android/server/trust/TrustManagerService;->-wrap7(Lcom/android/server/trust/TrustManagerService;I)V

    #@41
    goto :goto_0

    #@42
    .line 909
    :pswitch_6
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@44
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@46
    invoke-virtual {v4, v5}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@49
    goto :goto_0

    #@4a
    .line 912
    :pswitch_7
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@4c
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@4e
    invoke-static {v4, v5}, Lcom/android/server/trust/TrustManagerService;->-set0(Lcom/android/server/trust/TrustManagerService;I)I

    #@51
    .line 913
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@53
    invoke-static {v4, v7}, Lcom/android/server/trust/TrustManagerService;->-wrap7(Lcom/android/server/trust/TrustManagerService;I)V

    #@56
    goto :goto_0

    #@57
    .line 916
    :pswitch_8
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@59
    iget v7, p1, Landroid/os/Message;->arg2:I

    #@5b
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@5d
    if-eqz v8, :cond_2

    #@5f
    :goto_2
    invoke-virtual {v6, v7, v4}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    #@62
    goto :goto_0

    #@63
    :cond_2
    move v4, v5

    #@64
    goto :goto_2

    #@65
    .line 920
    :pswitch_9
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@67
    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get8(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    #@6a
    move-result-object v5

    #@6b
    monitor-enter v5

    #@6c
    .line 921
    :try_start_0
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@6e
    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get8(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@75
    move-result-object v2

    #@76
    .local v2, "usuallyManaged":Landroid/util/SparseBooleanArray;
    monitor-exit v5

    #@77
    .line 924
    const/4 v0, 0x0

    #@78
    .local v0, "i":I
    :goto_3
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    #@7b
    move-result v4

    #@7c
    if-ge v0, v4, :cond_0

    #@7e
    .line 925
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@81
    move-result v1

    #@82
    .line 926
    .local v1, "userId":I
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@85
    move-result v3

    #@86
    .line 927
    .local v3, "value":Z
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@88
    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    #@8f
    move-result v4

    #@90
    if-eq v3, v4, :cond_3

    #@92
    .line 928
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@94
    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    #@97
    move-result-object v4

    #@98
    invoke-virtual {v4, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setTrustUsuallyManaged(ZI)V

    #@9b
    .line 924
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@9d
    goto :goto_3

    #@9e
    .line 920
    .end local v0    # "i":I
    .end local v1    # "userId":I
    .end local v2    # "usuallyManaged":Landroid/util/SparseBooleanArray;
    .end local v3    # "value":Z
    :catchall_0
    move-exception v4

    #@9f
    monitor-exit v5

    #@a0
    throw v4

    #@a1
    .line 888
    nop

    #@a2
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
