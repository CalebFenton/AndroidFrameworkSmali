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
    .line 889
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 892
    iget v5, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v5, :pswitch_data_0

    #@7
    .line 891
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 894
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v4, Landroid/app/trust/ITrustListener;

    #@e
    invoke-static {v5, v4}, Lcom/android/server/trust/TrustManagerService;->-wrap4(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    #@11
    goto :goto_0

    #@12
    .line 897
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@14
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    check-cast v4, Landroid/app/trust/ITrustListener;

    #@18
    invoke-static {v5, v4}, Lcom/android/server/trust/TrustManagerService;->-wrap9(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    #@1b
    goto :goto_0

    #@1c
    .line 900
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@1e
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@20
    if-eqz v6, :cond_1

    #@22
    const/4 v4, 0x1

    #@23
    :cond_1
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@25
    invoke-static {v5, v4, v6}, Lcom/android/server/trust/TrustManagerService;->-wrap5(Lcom/android/server/trust/TrustManagerService;ZI)V

    #@28
    goto :goto_0

    #@29
    .line 903
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2b
    invoke-virtual {v4, v6}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@2e
    .line 905
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@30
    invoke-static {v4, v6}, Lcom/android/server/trust/TrustManagerService;->-wrap7(Lcom/android/server/trust/TrustManagerService;I)V

    #@33
    goto :goto_0

    #@34
    .line 908
    :pswitch_5
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@36
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@38
    invoke-static {v5}, Lcom/android/server/trust/TrustManagerService;->-get2(Lcom/android/server/trust/TrustManagerService;)I

    #@3b
    move-result v5

    #@3c
    invoke-static {v4, v5}, Lcom/android/server/trust/TrustManagerService;->-wrap7(Lcom/android/server/trust/TrustManagerService;I)V

    #@3f
    goto :goto_0

    #@40
    .line 913
    :pswitch_6
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@42
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@44
    invoke-virtual {v4, v5}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@47
    goto :goto_0

    #@48
    .line 916
    :pswitch_7
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@4a
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@4c
    invoke-static {v4, v5}, Lcom/android/server/trust/TrustManagerService;->-set0(Lcom/android/server/trust/TrustManagerService;I)I

    #@4f
    .line 917
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@51
    invoke-static {v4, v6}, Lcom/android/server/trust/TrustManagerService;->-wrap7(Lcom/android/server/trust/TrustManagerService;I)V

    #@54
    goto :goto_0

    #@55
    .line 921
    :pswitch_8
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@57
    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get8(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    #@5a
    move-result-object v5

    #@5b
    monitor-enter v5

    #@5c
    .line 922
    :try_start_0
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@5e
    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get8(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    move-result-object v2

    #@66
    .local v2, "usuallyManaged":Landroid/util/SparseBooleanArray;
    monitor-exit v5

    #@67
    .line 925
    const/4 v0, 0x0

    #@68
    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    #@6b
    move-result v4

    #@6c
    if-ge v0, v4, :cond_0

    #@6e
    .line 926
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@71
    move-result v1

    #@72
    .line 927
    .local v1, "userId":I
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@75
    move-result v3

    #@76
    .line 928
    .local v3, "value":Z
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@78
    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    #@7f
    move-result v4

    #@80
    if-eq v3, v4, :cond_2

    #@82
    .line 929
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@84
    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v4, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setTrustUsuallyManaged(ZI)V

    #@8b
    .line 925
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@8d
    goto :goto_1

    #@8e
    .line 921
    .end local v0    # "i":I
    .end local v1    # "userId":I
    .end local v2    # "usuallyManaged":Landroid/util/SparseBooleanArray;
    .end local v3    # "value":Z
    :catchall_0
    move-exception v4

    #@8f
    monitor-exit v5

    #@90
    throw v4

    #@91
    .line 892
    nop

    #@92
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
        :pswitch_6
    .end packed-switch
.end method
