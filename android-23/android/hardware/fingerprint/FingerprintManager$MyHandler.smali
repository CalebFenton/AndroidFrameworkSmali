.class Landroid/hardware/fingerprint/FingerprintManager$MyHandler;
.super Landroid/os/Handler;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method private constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 672
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    .line 673
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    .line 672
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager$MyHandler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 676
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    .line 677
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 676
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$MyHandler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;)V

    #@3
    return-void
.end method

.method private sendAcquiredResult(JI)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "acquireInfo"    # I

    #@0
    .prologue
    .line 748
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 749
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@a
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p3}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    #@11
    .line 751
    :cond_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@13
    invoke-static {v1, p3}, Landroid/hardware/fingerprint/FingerprintManager;->-wrap0(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 752
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_1

    #@19
    .line 753
    return-void

    #@1a
    .line 755
    :cond_1
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@1c
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get2(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    #@1f
    move-result-object v1

    #@20
    if-eqz v1, :cond_3

    #@22
    .line 756
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@24
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get2(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p3, v0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    #@2b
    .line 747
    :cond_2
    :goto_0
    return-void

    #@2c
    .line 757
    :cond_3
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2e
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    #@31
    move-result-object v1

    #@32
    if-eqz v1, :cond_2

    #@34
    .line 758
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@36
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p3, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    #@3d
    goto :goto_0
.end method

.method private sendAuthenticatedFailed()V
    .locals 1

    #@0
    .prologue
    .line 742
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 743
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@a
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    #@11
    .line 741
    :cond_0
    return-void
.end method

.method private sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 2
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;

    #@0
    .prologue
    .line 735
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 736
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    #@a
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@c
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get1(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;-><init>(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;)V

    #@13
    .line 737
    .local v0, "result":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@15
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    #@1c
    .line 734
    .end local v0    # "result":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    :cond_0
    return-void
.end method

.method private sendEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 1
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    #@0
    .prologue
    .line 729
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get2(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 730
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@a
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get2(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    #@11
    .line 728
    :cond_0
    return-void
.end method

.method private sendErrorResult(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "errMsgId"    # I

    #@0
    .prologue
    .line 718
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get2(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 719
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@a
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get2(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@10
    invoke-static {v1, p3}, Landroid/hardware/fingerprint/FingerprintManager;->-wrap1(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, p3, v1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    #@17
    .line 717
    :cond_0
    :goto_0
    return-void

    #@18
    .line 720
    :cond_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@1a
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    #@1d
    move-result-object v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 721
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@22
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@28
    invoke-static {v1, p3}, Landroid/hardware/fingerprint/FingerprintManager;->-wrap1(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, p3, v1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    #@2f
    goto :goto_0

    #@30
    .line 722
    :cond_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@32
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get4(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    #@35
    move-result-object v0

    #@36
    if-eqz v0, :cond_0

    #@38
    .line 723
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@3a
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get4(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    #@3d
    move-result-object v0

    #@3e
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@40
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;

    #@43
    move-result-object v1

    #@44
    .line 724
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@46
    invoke-static {v2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->-wrap1(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    .line 723
    invoke-virtual {v0, v1, p3, v2}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    #@4d
    goto :goto_0
.end method

.method private sendRemovedResult(JII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    #@0
    .prologue
    .line 704
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-static {v2}, Landroid/hardware/fingerprint/FingerprintManager;->-get4(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    #@5
    move-result-object v2

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 705
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@a
    invoke-static {v2}, Landroid/hardware/fingerprint/FingerprintManager;->-get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    #@11
    move-result v0

    #@12
    .line 706
    .local v0, "reqFingerId":I
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@14
    invoke-static {v2}, Landroid/hardware/fingerprint/FingerprintManager;->-get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    #@1b
    move-result v1

    #@1c
    .line 707
    .local v1, "reqGroupId":I
    if-eq p3, v0, :cond_0

    #@1e
    .line 708
    const-string/jumbo v2, "FingerprintManager"

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "Finger id didn\'t match: "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    const-string/jumbo v4, " != "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 710
    :cond_0
    if-eq p3, v0, :cond_1

    #@45
    .line 711
    const-string/jumbo v2, "FingerprintManager"

    #@48
    new-instance v3, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v4, "Group id didn\'t match: "

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    const-string/jumbo v4, " != "

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 713
    :cond_1
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@6c
    invoke-static {v2}, Landroid/hardware/fingerprint/FingerprintManager;->-get4(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    #@6f
    move-result-object v2

    #@70
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@72
    invoke-static {v3}, Landroid/hardware/fingerprint/FingerprintManager;->-get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V

    #@79
    .line 703
    .end local v0    # "reqFingerId":I
    .end local v1    # "reqGroupId":I
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 681
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 680
    :goto_0
    return-void

    #@6
    .line 683
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    #@a
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@c
    invoke-direct {p0, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V

    #@f
    goto :goto_0

    #@10
    .line 686
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12
    check-cast v0, Ljava/lang/Long;

    #@14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@17
    move-result-wide v0

    #@18
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@1a
    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendAcquiredResult(JI)V

    #@1d
    goto :goto_0

    #@1e
    .line 689
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@20
    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    #@22
    invoke-direct {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V

    #@25
    goto :goto_0

    #@26
    .line 692
    :pswitch_3
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendAuthenticatedFailed()V

    #@29
    goto :goto_0

    #@2a
    .line 695
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2c
    check-cast v0, Ljava/lang/Long;

    #@2e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@31
    move-result-wide v0

    #@32
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@34
    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendErrorResult(JI)V

    #@37
    goto :goto_0

    #@38
    .line 698
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a
    check-cast v0, Ljava/lang/Long;

    #@3c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@3f
    move-result-wide v0

    #@40
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@42
    .line 699
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@44
    .line 698
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendRemovedResult(JII)V

    #@47
    goto :goto_0

    #@48
    .line 681
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
