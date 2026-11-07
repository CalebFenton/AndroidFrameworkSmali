.class public Lcom/android/ims/ImsUt$IImsUtListenerProxy;
.super Lcom/android/ims/internal/IImsUtListener$Stub;
.source "ImsUt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IImsUtListenerProxy"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/ImsUt;


# direct methods
.method public static synthetic blacklist $r8$lambda$1IXiV_8duQUMYsyf9jet9QRsQ1U(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$utConfigurationCallForwardQueried$5(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7AGp-AI-YXO5Dcr27J3InwUHNP8(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$utConfigurationCallBarringQueried$4(I[Landroid/telephony/ims/ImsSsInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JbdoQJfXZfwcZNVvofBYYmAgldM(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$utConfigurationCallWaitingQueried$6(I[Landroid/telephony/ims/ImsSsInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$W2begNeA7PNUsSlSwEil_UzhsiU(Lcom/android/ims/ImsUt$IImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$utConfigurationUpdateFailed$1(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$f216zsn6j6ozXsXKMVjC3wM1Bz8(Lcom/android/ims/ImsUt$IImsUtListenerProxy;ILandroid/telephony/ims/ImsSsInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$lineIdentificationSupplementaryServiceResponse$2(ILandroid/telephony/ims/ImsSsInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gUIbCOegBPEVmgE33QabrQ514n4(Lcom/android/ims/ImsUt$IImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$utConfigurationQueryFailed$3(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uhUNtUXwSCqzToFQMxS5NeAignw(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$utConfigurationUpdated$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$x0bnHCbXRVm0_UlgkeTr7u00Nd8(Lcom/android/ims/ImsUt$IImsUtListenerProxy;Landroid/telephony/ims/ImsSsData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$onSupplementaryServiceIndication$7(Landroid/telephony/ims/ImsSsData;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/ims/ImsUt;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/ImsUt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 667
    iput-object p1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsUtListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$lineIdentificationSupplementaryServiceResponse$2(ILandroid/telephony/ims/ImsSsInfo;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "config"    # Landroid/telephony/ims/ImsSsInfo;

    .line 724
    iget-object v0, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v0}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 725
    :try_start_7
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-static {v1, v2, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 726
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    monitor-exit v0

    .line 728
    return-void

    .line 727
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private synthetic blacklist lambda$onSupplementaryServiceIndication$7(Landroid/telephony/ims/ImsSsData;)V
    .registers 3
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;

    .line 797
    iget-object v0, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v0}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmSsIndicationRegistrant(Lcom/android/ims/ImsUt;)Lcom/android/ims/Registrant;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 798
    iget-object v0, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v0}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmSsIndicationRegistrant(Lcom/android/ims/ImsUt;)Lcom/android/ims/Registrant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 800
    :cond_11
    return-void
.end method

.method private synthetic blacklist lambda$utConfigurationCallBarringQueried$4(I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "cbInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 750
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 752
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 753
    :try_start_b
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v3}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 754
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    monitor-exit v1

    .line 756
    return-void

    .line 755
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw v2
.end method

.method private synthetic blacklist lambda$utConfigurationCallForwardQueried$5(I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 766
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 768
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 769
    :try_start_b
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v3}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 770
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    monitor-exit v1

    .line 772
    return-void

    .line 771
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw v2
.end method

.method private synthetic blacklist lambda$utConfigurationCallWaitingQueried$6(I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "cwInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 782
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 784
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 785
    :try_start_b
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v3}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 786
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    monitor-exit v1

    .line 788
    return-void

    .line 787
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw v2
.end method

.method private synthetic blacklist lambda$utConfigurationQueryFailed$3(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 734
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 736
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 737
    :try_start_b
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v3}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendFailureReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 738
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    monitor-exit v1

    .line 740
    return-void

    .line 739
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw v2
.end method

.method private synthetic blacklist lambda$utConfigurationUpdateFailed$1(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 686
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 688
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 689
    :try_start_b
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v3}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendFailureReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 690
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    monitor-exit v1

    .line 692
    return-void

    .line 691
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw v2
.end method

.method private synthetic blacklist lambda$utConfigurationUpdated$0(I)V
    .registers 6
    .param p1, "id"    # I

    .line 674
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 676
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 677
    :try_start_b
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v3}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3}, Lcom/android/ims/ImsUt;->-$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;)V

    .line 678
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    monitor-exit v1

    .line 680
    return-void

    .line 679
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw v2
.end method


# virtual methods
.method public blacklist lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "config"    # Landroid/telephony/ims/ImsSsInfo;

    .line 723
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;ILandroid/telephony/ims/ImsSsInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 729
    return-void
.end method

.method public blacklist onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .registers 4
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;

    .line 796
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;Landroid/telephony/ims/ImsSsData;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 801
    return-void
.end method

.method public blacklist utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 6
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cbInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 749
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda2;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 757
    return-void
.end method

.method public blacklist utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .registers 6
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 765
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 773
    return-void
.end method

.method public blacklist utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 6
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cwInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 781
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda7;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 789
    return-void
.end method

.method public blacklist utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "ssInfo"    # Landroid/os/Bundle;

    .line 701
    const-string v0, "queryClir"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 702
    .local v0, "clirResponse":[I
    if-eqz v0, :cond_28

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    .line 704
    new-instance v1, Landroid/telephony/ims/ImsSsInfo$Builder;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    const/4 v2, 0x0

    aget v2, v0, v2

    .line 705
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, v0, v2

    .line 706
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v1

    .line 707
    .local v1, "info":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {p0, p2, v1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 708
    return-void

    .line 710
    .end local v1    # "info":Landroid/telephony/ims/ImsSsInfo;
    :cond_28
    const-string v1, "imsSsInfo"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSsInfo;

    .line 711
    .restart local v1    # "info":Landroid/telephony/ims/ImsSsInfo;
    if-eqz v1, :cond_36

    .line 712
    invoke-virtual {p0, p2, v1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 713
    return-void

    .line 715
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid utConfigurationQueried response received for Bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsUt"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-void
.end method

.method public blacklist utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 733
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda6;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 741
    return-void
.end method

.method public blacklist utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 685
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda3;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 693
    return-void
.end method

.method public blacklist utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    .registers 5
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I

    .line 673
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda5;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 681
    return-void
.end method
