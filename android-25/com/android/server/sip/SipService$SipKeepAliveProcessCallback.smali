.class Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;
.super Ljava/lang/Object;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipKeepAliveProcessCallback"
.end annotation


# static fields
.field private static final MIN_INTERVAL:I = 0x5

.field private static final NAT_MEASUREMENT_RETRY_INTERVAL:I = 0x78

.field private static final PASS_THRESHOLD:I = 0xa

.field private static final SKAI_DBG:Z = true

.field private static final SKAI_TAG:Ljava/lang/String; = "SipKeepAliveProcessCallback"


# instance fields
.field private mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

.field private mInterval:I

.field private mLocalProfile:Landroid/net/sip/SipProfile;

.field private mMaxInterval:I

.field private mMinInterval:I

.field private mPassCount:I

.field private mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/sip/SipService;
    .param p2, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "minInterval"    # I
    .param p4, "maxInterval"    # I

    #@0
    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 646
    iput p4, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    #@7
    .line 647
    iput p3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    #@9
    .line 648
    iput-object p2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mLocalProfile:Landroid/net/sip/SipProfile;

    #@b
    .line 645
    return-void
.end method

.method private checkTermination()Z
    .locals 2

    #@0
    .prologue
    .line 716
    iget v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    #@2
    iget v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    #@4
    sub-int/2addr v0, v1

    #@5
    const/4 v1, 0x5

    #@6
    if-ge v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 787
    const-string/jumbo v0, "SipKeepAliveProcessCallback"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 786
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 791
    const-string/jumbo v0, "SipKeepAliveProcessCallback"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 790
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 795
    const-string/jumbo v0, "SipKeepAliveProcessCallback"

    #@3
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6
    .line 794
    return-void
.end method

.method private restart()V
    .locals 4

    #@0
    .prologue
    .line 700
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@2
    monitor-enter v2

    #@3
    .line 702
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v1, :cond_0

    #@7
    monitor-exit v2

    #@8
    return-void

    #@9
    .line 704
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "restart: interval="

    #@11
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    #@17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 706
    :try_start_2
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@24
    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    #@27
    .line 707
    const/4 v1, 0x0

    #@28
    iput v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mPassCount:I

    #@2a
    .line 708
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2c
    iget v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    #@2e
    invoke-virtual {v1, v3, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_2
    .catch Ljavax/sip/SipException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    :goto_0
    monitor-exit v2

    #@32
    .line 699
    return-void

    #@33
    .line 709
    :catch_0
    move-exception v0

    #@34
    .line 710
    .local v0, "e":Ljavax/sip/SipException;
    :try_start_3
    const-string/jumbo v1, "restart"

    #@37
    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 700
    .end local v0    # "e":Ljavax/sip/SipException;
    :catchall_0
    move-exception v1

    #@3c
    monitor-exit v2

    #@3d
    throw v1
.end method

.method private restartLater()V
    .locals 3

    #@0
    .prologue
    .line 779
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@2
    monitor-enter v1

    #@3
    .line 781
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@5
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get6(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    #@c
    .line 782
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@e
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get6(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    #@11
    move-result-object v0

    #@12
    const v2, 0x1d4c0

    #@15
    invoke-virtual {v0, v2, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 778
    return-void

    #@1a
    .line 779
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "onError: errorCode="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " desc="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->loge(Ljava/lang/String;)V

    #@22
    .line 768
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->restartLater()V

    #@25
    .line 766
    return-void
.end method

.method public onResponse(Z)V
    .locals 3
    .param p1, "portChanged"    # Z

    #@0
    .prologue
    .line 722
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@2
    monitor-enter v1

    #@3
    .line 723
    if-nez p1, :cond_2

    #@5
    .line 724
    :try_start_0
    iget v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mPassCount:I

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iput v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mPassCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    const/16 v2, 0xa

    #@d
    if-eq v0, v2, :cond_0

    #@f
    monitor-exit v1

    #@10
    return-void

    #@11
    .line 727
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@13
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get2(Lcom/android/server/sip/SipService;)I

    #@16
    move-result v0

    #@17
    if-lez v0, :cond_1

    #@19
    .line 728
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@1b
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@1d
    invoke-static {v2}, Lcom/android/server/sip/SipService;->-get2(Lcom/android/server/sip/SipService;)I

    #@20
    move-result v2

    #@21
    invoke-static {v0, v2}, Lcom/android/server/sip/SipService;->-set1(Lcom/android/server/sip/SipService;I)I

    #@24
    .line 730
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@26
    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    #@28
    iput v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    #@2a
    invoke-static {v0, v2}, Lcom/android/server/sip/SipService;->-set0(Lcom/android/server/sip/SipService;I)I

    #@2d
    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v2, "onResponse: portChanged="

    #@35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    const-string/jumbo v2, " mKeepAliveInterval="

    #@40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 733
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@46
    invoke-static {v2}, Lcom/android/server/sip/SipService;->-get2(Lcom/android/server/sip/SipService;)I

    #@49
    move-result v2

    #@4a
    .line 732
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V

    #@55
    .line 735
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@57
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-wrap8(Lcom/android/server/sip/SipService;)V

    #@5a
    .line 740
    :goto_0
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->checkTermination()Z

    #@5d
    move-result v0

    #@5e
    if-eqz v0, :cond_3

    #@60
    .line 742
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->stop()V

    #@63
    .line 747
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@65
    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    #@67
    invoke-static {v0, v2}, Lcom/android/server/sip/SipService;->-set0(Lcom/android/server/sip/SipService;I)I

    #@6a
    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v2, "onResponse: checkTermination mKeepAliveInterval="

    #@72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    .line 750
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@78
    invoke-static {v2}, Lcom/android/server/sip/SipService;->-get2(Lcom/android/server/sip/SipService;)I

    #@7b
    move-result v2

    #@7c
    .line 749
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v0

    #@84
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@87
    :goto_1
    monitor-exit v1

    #@88
    .line 721
    return-void

    #@89
    .line 738
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    #@8b
    iput v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8d
    goto :goto_0

    #@8e
    .line 722
    :catchall_0
    move-exception v0

    #@8f
    monitor-exit v1

    #@90
    throw v0

    #@91
    .line 754
    :cond_3
    :try_start_3
    iget v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    #@93
    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    #@95
    add-int/2addr v0, v2

    #@96
    div-int/lit8 v0, v0, 0x2

    #@98
    iput v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    #@9a
    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v2, "onResponse: mKeepAliveInterval="

    #@a2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v0

    #@a6
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@a8
    invoke-static {v2}, Lcom/android/server/sip/SipService;->-get2(Lcom/android/server/sip/SipService;)I

    #@ab
    move-result v2

    #@ac
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    move-result-object v0

    #@b0
    .line 757
    const-string/jumbo v2, ", new mInterval="

    #@b3
    .line 756
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v0

    #@b7
    .line 757
    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    #@b9
    .line 756
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v0

    #@bd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v0

    #@c1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V

    #@c4
    .line 759
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->restart()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c7
    goto :goto_1
.end method

.method public run()V
    .locals 1

    #@0
    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@2
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get6(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    #@9
    .line 775
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->restart()V

    #@c
    .line 773
    return-void
.end method

.method public start()V
    .locals 7

    #@0
    .prologue
    .line 652
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@2
    monitor-enter v2

    #@3
    .line 653
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    monitor-exit v2

    #@8
    .line 654
    return-void

    #@9
    .line 657
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    #@b
    iget v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    #@d
    add-int/2addr v1, v3

    #@e
    div-int/lit8 v1, v1, 0x2

    #@10
    iput v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    #@12
    .line 658
    const/4 v1, 0x0

    #@13
    iput v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mPassCount:I

    #@15
    .line 661
    iget v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    #@17
    const/16 v3, 0xa

    #@19
    if-lt v1, v3, :cond_1

    #@1b
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->checkTermination()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 662
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "start: measurement aborted; interval=["

    #@29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 663
    iget v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    #@2f
    .line 662
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 663
    const-string/jumbo v3, ","

    #@36
    .line 662
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 663
    iget v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    #@3c
    .line 662
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    .line 663
    const-string/jumbo v3, "]"

    #@43
    .line 662
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    monitor-exit v2

    #@4f
    .line 664
    return-void

    #@50
    .line 668
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v3, "start: interval="

    #@58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    iget v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    #@5e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V

    #@69
    .line 670
    new-instance v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    #@6b
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@6d
    iget-object v4, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mLocalProfile:Landroid/net/sip/SipProfile;

    #@6f
    const/4 v5, 0x0

    #@70
    const/4 v6, 0x0

    #@71
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    #@74
    iput-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    #@76
    .line 673
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    #@78
    new-instance v3, Lcom/android/server/sip/SipWakeupTimer;

    #@7a
    iget-object v4, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@7c
    invoke-static {v4}, Lcom/android/server/sip/SipService;->-get0(Lcom/android/server/sip/SipService;)Landroid/content/Context;

    #@7f
    move-result-object v4

    #@80
    iget-object v5, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@82
    invoke-static {v5}, Lcom/android/server/sip/SipService;->-get1(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;

    #@85
    move-result-object v5

    #@86
    invoke-direct {v3, v4, v5}, Lcom/android/server/sip/SipWakeupTimer;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    #@89
    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setWakeupTimer(Lcom/android/server/sip/SipWakeupTimer;)V

    #@8c
    .line 676
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    #@8e
    const/4 v3, 0x0

    #@8f
    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    #@92
    move-result-object v1

    #@93
    .line 675
    check-cast v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@95
    iput-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@97
    .line 677
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@99
    iget v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    #@9b
    invoke-virtual {v1, v3, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9e
    :goto_0
    monitor-exit v2

    #@9f
    .line 651
    return-void

    #@a0
    .line 678
    :catch_0
    move-exception v0

    #@a1
    .line 679
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@a4
    move-result-object v1

    #@a5
    const/4 v3, -0x4

    #@a6
    invoke-virtual {p0, v3, v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->onError(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a9
    goto :goto_0

    #@aa
    .line 652
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@ab
    monitor-exit v2

    #@ac
    throw v1
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    .line 685
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@2
    monitor-enter v1

    #@3
    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 687
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@9
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    #@c
    .line 688
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@f
    .line 690
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 691
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    #@15
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->close()V

    #@18
    .line 692
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    #@1b
    .line 694
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    #@1d
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get6(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    #@24
    .line 695
    const-string/jumbo v0, "stop"

    #@27
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v1

    #@2b
    .line 684
    return-void

    #@2c
    .line 685
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0
.end method
