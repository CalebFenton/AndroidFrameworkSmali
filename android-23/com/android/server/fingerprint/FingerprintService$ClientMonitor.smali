.class Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientMonitor"
.end annotation


# instance fields
.field receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field restricted:Z

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;

.field token:Landroid/os/IBinder;

.field userId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z
    .locals 1
    .param p1, "acquiredInfo"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z
    .locals 1
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAuthenticated(II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;III)Z
    .locals 1
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendEnrollResult(III)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z
    .locals 1
    .param p1, "error"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z
    .locals 1
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendRemoved(II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "userId"    # I
    .param p5, "restricted"    # Z

    #@0
    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 497
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    #@7
    .line 498
    iput-object p3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@9
    .line 499
    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    #@b
    .line 500
    iput-boolean p5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->restricted:Z

    #@d
    .line 502
    const/4 v1, 0x0

    #@e
    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 496
    :goto_0
    return-void

    #@12
    .line 503
    :catch_0
    move-exception v0

    #@13
    .line 504
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    #@16
    const-string/jumbo v2, "caught remote exception in linkToDeath: "

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_0
.end method

.method private sendAcquired(I)Z
    .locals 6
    .param p1, "acquiredInfo"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 606
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@4
    if-nez v1, :cond_0

    #@6
    return v5

    #@7
    .line 608
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@9
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@b
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get2(Lcom/android/server/fingerprint/FingerprintService;)J

    #@e
    move-result-wide v2

    #@f
    invoke-interface {v1, v2, v3, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 616
    if-nez p1, :cond_1

    #@14
    .line 617
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@16
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-wrap4(Lcom/android/server/fingerprint/FingerprintService;)V

    #@19
    .line 609
    :cond_1
    return v4

    #@1a
    .line 610
    :catch_0
    move-exception v0

    #@1b
    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "FingerprintService"

    #@1e
    const-string/jumbo v2, "Failed to invoke sendAcquired:"

    #@21
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    .line 616
    if-nez p1, :cond_2

    #@26
    .line 617
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@28
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-wrap4(Lcom/android/server/fingerprint/FingerprintService;)V

    #@2b
    .line 612
    :cond_2
    return v5

    #@2c
    .line 614
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2d
    .line 616
    if-nez p1, :cond_3

    #@2f
    .line 617
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@31
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-wrap4(Lcom/android/server/fingerprint/FingerprintService;)V

    #@34
    .line 614
    :cond_3
    throw v1
.end method

.method private sendAuthenticated(II)Z
    .locals 9
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I

    #@0
    .prologue
    .line 573
    const/4 v8, 0x0

    #@1
    .line 574
    .local v8, "result":Z
    if-eqz p1, :cond_0

    #@3
    const/4 v6, 0x1

    #@4
    .line 575
    .local v6, "authenticated":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@6
    if-eqz v1, :cond_3

    #@8
    .line 577
    if-nez v6, :cond_1

    #@a
    .line 578
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@c
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@e
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get2(Lcom/android/server/fingerprint/FingerprintService;)J

    #@11
    move-result-wide v2

    #@12
    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 591
    :goto_1
    if-nez p1, :cond_4

    #@17
    .line 592
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@19
    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintError(Landroid/content/Context;)V

    #@20
    .line 593
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@22
    invoke-static {v1, p0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap1(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    #@25
    move-result v1

    #@26
    or-int/2addr v8, v1

    #@27
    .line 599
    .local v8, "result":Z
    :goto_2
    return v8

    #@28
    .line 574
    .end local v6    # "authenticated":Z
    .local v8, "result":Z
    :cond_0
    const/4 v6, 0x0

    #@29
    .restart local v6    # "authenticated":Z
    goto :goto_0

    #@2a
    .line 580
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->restricted:Z

    #@2c
    if-nez v1, :cond_2

    #@2e
    .line 581
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    #@30
    const-string/jumbo v1, ""

    #@33
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@35
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get2(Lcom/android/server/fingerprint/FingerprintService;)J

    #@38
    move-result-wide v4

    #@39
    move v2, p2

    #@3a
    move v3, p1

    #@3b
    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    #@3e
    .line 582
    :goto_3
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@40
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@42
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get2(Lcom/android/server/fingerprint/FingerprintService;)J

    #@45
    move-result-wide v2

    #@46
    invoke-interface {v1, v2, v3, v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@49
    goto :goto_1

    #@4a
    .line 584
    :catch_0
    move-exception v7

    #@4b
    .line 585
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    #@4e
    const-string/jumbo v2, "Failed to notify Authenticated:"

    #@51
    invoke-static {v1, v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@54
    .line 586
    const/4 v8, 0x1

    #@55
    goto :goto_1

    #@56
    .line 581
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v0, 0x0

    #@57
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_3

    #@58
    .line 589
    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_3
    const/4 v8, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 595
    :cond_4
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@5c
    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    #@5f
    move-result-object v1

    #@60
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintSuccess(Landroid/content/Context;)V

    #@63
    .line 596
    const/4 v1, 0x1

    #@64
    or-int/2addr v8, v1

    #@65
    .line 597
    .local v8, "result":Z
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@67
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get3(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;

    #@6a
    move-result-object v1

    #@6b
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    #@6e
    goto :goto_2
.end method

.method private sendEnrollResult(III)Z
    .locals 9
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 558
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@4
    if-nez v1, :cond_0

    #@6
    return v7

    #@7
    .line 559
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@9
    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v1

    #@d
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintSuccess(Landroid/content/Context;)V

    #@10
    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@12
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@14
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get2(Lcom/android/server/fingerprint/FingerprintService;)J

    #@17
    move-result-wide v2

    #@18
    move v4, p1

    #@19
    move v5, p2

    #@1a
    move v6, p3

    #@1b
    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 562
    if-nez p3, :cond_1

    #@20
    move v1, v7

    #@21
    :goto_0
    return v1

    #@22
    :cond_1
    move v1, v8

    #@23
    goto :goto_0

    #@24
    .line 563
    :catch_0
    move-exception v0

    #@25
    .line 564
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    #@28
    const-string/jumbo v2, "Failed to notify EnrollResult:"

    #@2b
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    .line 565
    return v7
.end method

.method private sendError(I)Z
    .locals 4
    .param p1, "error"    # I

    #@0
    .prologue
    .line 626
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@6
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@8
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get2(Lcom/android/server/fingerprint/FingerprintService;)J

    #@b
    move-result-wide v2

    #@c
    invoke-interface {v1, v2, v3, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 633
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 629
    :catch_0
    move-exception v0

    #@12
    .line 630
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    #@15
    const-string/jumbo v2, "Failed to invoke sendError:"

    #@18
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    goto :goto_0
.end method

.method private sendRemoved(II)Z
    .locals 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 544
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@4
    if-nez v3, :cond_0

    #@6
    return v1

    #@7
    .line 546
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@9
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@b
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->-get2(Lcom/android/server/fingerprint/FingerprintService;)J

    #@e
    move-result-wide v4

    #@f
    invoke-interface {v3, v4, v5, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 547
    if-nez p1, :cond_1

    #@14
    :goto_0
    return v1

    #@15
    :cond_1
    move v1, v2

    #@16
    goto :goto_0

    #@17
    .line 548
    :catch_0
    move-exception v0

    #@18
    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    #@1b
    const-string/jumbo v3, "Failed to notify Removed:"

    #@1e
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 551
    return v2
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 523
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    #@3
    .line 524
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@5
    invoke-static {v0, p0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap2(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    #@8
    .line 525
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@a
    .line 522
    return-void
.end method

.method public destroy()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 509
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 516
    :goto_0
    iput-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    #@d
    .line 518
    :cond_0
    iput-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@f
    .line 508
    return-void

    #@10
    .line 512
    :catch_0
    move-exception v0

    #@11
    .line 514
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string/jumbo v1, "FingerprintService"

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "destroy(): "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, ":"

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    new-instance v3, Ljava/lang/Exception;

    #@31
    const-string/jumbo v4, "here"

    #@34
    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@37
    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 532
    const-string/jumbo v0, "FingerprintService"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "removing leaked reference: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 533
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@22
    invoke-static {v0, p0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap2(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 536
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@28
    .line 529
    return-void

    #@29
    .line 535
    :catchall_0
    move-exception v0

    #@2a
    .line 536
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@2d
    .line 535
    throw v0
.end method
