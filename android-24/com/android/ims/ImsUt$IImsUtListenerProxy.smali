.class Lcom/android/ims/ImsUt$IImsUtListenerProxy;
.super Lcom/android/ims/internal/IImsUtListener$Stub;
.source "ImsUt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IImsUtListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsUt;


# direct methods
.method private constructor <init>(Lcom/android/ims/ImsUt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsUt;

    #@0
    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@2
    invoke-direct {p0}, Lcom/android/ims/internal/IImsUtListener$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/ImsUt;Lcom/android/ims/ImsUt$IImsUtListenerProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsUt;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;-><init>(Lcom/android/ims/ImsUt;)V

    #@3
    return-void
.end method


# virtual methods
.method public utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cbInfo"    # [Lcom/android/ims/ImsSsInfo;

    #@0
    .prologue
    .line 637
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 639
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@6
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get0(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    monitor-enter v2

    #@b
    .line 640
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@d
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@f
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get1(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/os/Message;

    #@19
    invoke-static {v3, v1, p3}, Lcom/android/ims/ImsUt;->-wrap2(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    #@1c
    .line 641
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@1e
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get1(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v2

    #@26
    .line 636
    return-void

    #@27
    .line 639
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1
.end method

.method public utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cfInfo"    # [Lcom/android/ims/ImsCallForwardInfo;

    #@0
    .prologue
    .line 651
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 653
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@6
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get0(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    monitor-enter v2

    #@b
    .line 654
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@d
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@f
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get1(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/os/Message;

    #@19
    invoke-static {v3, v1, p3}, Lcom/android/ims/ImsUt;->-wrap2(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    #@1c
    .line 655
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@1e
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get1(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v2

    #@26
    .line 650
    return-void

    #@27
    .line 653
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1
.end method

.method public utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cwInfo"    # [Lcom/android/ims/ImsSsInfo;

    #@0
    .prologue
    .line 665
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 667
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@6
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get0(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    monitor-enter v2

    #@b
    .line 668
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@d
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@f
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get1(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/os/Message;

    #@19
    invoke-static {v3, v1, p3}, Lcom/android/ims/ImsUt;->-wrap2(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    #@1c
    .line 669
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@1e
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get1(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v2

    #@26
    .line 664
    return-void

    #@27
    .line 667
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1
.end method

.method public utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "ssInfo"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 613
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 615
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@6
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get0(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    monitor-enter v2

    #@b
    .line 616
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@d
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@f
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get1(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/os/Message;

    #@19
    invoke-static {v3, v1, p3}, Lcom/android/ims/ImsUt;->-wrap2(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    #@1c
    .line 617
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@1e
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get1(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v2

    #@26
    .line 612
    return-void

    #@27
    .line 615
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1
.end method

.method public utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 623
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 625
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@6
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get0(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    monitor-enter v2

    #@b
    .line 626
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@d
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@f
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get1(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/os/Message;

    #@19
    invoke-static {v3, v1, p3}, Lcom/android/ims/ImsUt;->-wrap0(Lcom/android/ims/ImsUt;Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V

    #@1c
    .line 627
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@1e
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get1(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v2

    #@26
    .line 622
    return-void

    #@27
    .line 625
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1
.end method

.method public utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 600
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 602
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@6
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get0(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    monitor-enter v2

    #@b
    .line 603
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@d
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@f
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get1(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/os/Message;

    #@19
    invoke-static {v3, v1, p3}, Lcom/android/ims/ImsUt;->-wrap0(Lcom/android/ims/ImsUt;Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V

    #@1c
    .line 604
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@1e
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get1(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v2

    #@26
    .line 599
    return-void

    #@27
    .line 602
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1
.end method

.method public utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I

    #@0
    .prologue
    .line 590
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 592
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@6
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get0(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    monitor-enter v2

    #@b
    .line 593
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@d
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@f
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get1(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/os/Message;

    #@19
    invoke-static {v3, v1}, Lcom/android/ims/ImsUt;->-wrap1(Lcom/android/ims/ImsUt;Landroid/os/Message;)V

    #@1c
    .line 594
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    #@1e
    invoke-static {v1}, Lcom/android/ims/ImsUt;->-get1(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v2

    #@26
    .line 589
    return-void

    #@27
    .line 592
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1
.end method
